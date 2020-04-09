def label = "buildpod.${env.JOB_NAME}".replaceAll(/[^A-Za-z-_\.]+/, '_').take(62) + "p"

podTemplate(
	name: label,
	label: label,
	containers: [
		containerTemplate(
			name: 'build-docker',
			image: 'eu.gcr.io/gce-smedia-k8s/build-docker:master',
			ttyEnabled: true,
			command: 'cat',
			privileged: true,
			resourceRequestCpu: '500m',
			resourceRequestMemory: '500Mi',
			resourceLimitCpu: '2000m',
			resourceLimitMemory: '500Mi',
		),
	],
	volumes: [
		secretVolume(mountPath: '/ssh', secretName: 'ssh'),
		secretVolume(mountPath: '/root/.docker', secretName: 'docker-quay'),
		hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock'),
	],
	inheritFrom: '',
	namespace: 'jenkins',
	nodeSelector: 'cloud.google.com/gke-preemptible=true',
	serviceAccount: '',
	workspaceVolume: emptyDirWorkspaceVolume(false),
) {
	node(label) {
		properties([
			buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '10')),
			pipelineTriggers([
				cron('H 2 * * *'),
				pollSCM('H/5 * * * *'),
				[$class: 'PeriodicFolderTrigger', interval: '5m']
			]),
		])
		try {
			container('build-docker') {
				stage('Fix SSH Permissions') {
					retry(3) {
						timeout(time: 1, unit: 'MINUTES') {
							sh 'cp -R /ssh /root/.ssh'
							sh 'cp -R /ssh /home/jenkins/.ssh'
							sh 'chmod 600 /root/.ssh/* /home/jenkins/.ssh/*'
						}
					}
				}
				stage('Checkout') {
					retry(3) {
						timeout(time: 5, unit: 'MINUTES') {
							checkout([
								$class: 'GitSCM',
								branches: scm.branches,
								doGenerateSubmoduleConfigurations: scm.doGenerateSubmoduleConfigurations,
								extensions: scm.extensions + [[$class: 'CloneOption', noTags: false, reference: '', shallow: true]],
								submoduleCfg: [],
								userRemoteConfigs: scm.userRemoteConfigs
							])
						}
					}
				}
				stage('Build') {
					retry(3) {
						timeout(time: 60, unit: 'MINUTES') {
							sh "VERSION=${env.BRANCH_NAME} make build"
						}
					}
				}
				stage('Upload') {
					retry(3) {
						timeout(time: 10, unit: 'MINUTES') {
							if (env.BRANCH_NAME == 'master' || env.BRANCH_NAME == 'staging' || env.BRANCH_NAME == 'dev') {
								sh "VERSION=${env.BRANCH_NAME} make upload"
							}
						}
					}
				}
				stage('Clean') {
					retry(3) {
						timeout(time: 5, unit: 'MINUTES') {
							sh "VERSION=${env.BRANCH_NAME} make clean"
						}
					}
				}
			}
			currentBuild.result = 'SUCCESS'
		} catch (any) {
			currentBuild.result = 'FAILURE'
			throw any //rethrow exception to prevent the build from proceeding
		} finally {
			notifyBitbucket()
			if ('FAILURE'.equals(currentBuild.result)) {
				emailext(
					body: '${DEFAULT_CONTENT}',
					mimeType: 'text/html',
					replyTo: '$DEFAULT_REPLYTO',
					subject: '${DEFAULT_SUBJECT}',
					to: emailextrecipients([
						[$class: 'CulpritsRecipientProvider'],
						[$class: 'RequesterRecipientProvider']
					])
				)
			}
		}
	}
}
