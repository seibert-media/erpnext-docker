-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 1bd3e0294da19198
-- ------------------------------------------------------
-- Server version	10.3.9-MariaDB-1:10.3.9+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__Auth`
--

DROP TABLE IF EXISTS `__Auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__Auth` (
  `doctype` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`doctype`,`name`,`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__Auth`
--

LOCK TABLES `__Auth` WRITE;
/*!40000 ALTER TABLE `__Auth` DISABLE KEYS */;
INSERT INTO `__Auth` VALUES ('User','Administrator','password','*1C5D6F703851C291A7B16628B1D9C69193461726','522326dda69b5f74721f9a4a5ef86d1493c053ca8601526647e7c451',0);
/*!40000 ALTER TABLE `__Auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__UserSettings`
--

DROP TABLE IF EXISTS `__UserSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__UserSettings` (
  `user` varchar(180) NOT NULL,
  `doctype` varchar(180) NOT NULL,
  `data` text DEFAULT NULL,
  UNIQUE KEY `user` (`user`,`doctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__UserSettings`
--

LOCK TABLES `__UserSettings` WRITE;
/*!40000 ALTER TABLE `__UserSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `__UserSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__global_search`
--

DROP TABLE IF EXISTS `__global_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__global_search` (
  `doctype` varchar(100) DEFAULT NULL,
  `name` varchar(140) DEFAULT NULL,
  `title` varchar(140) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `route` varchar(140) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  UNIQUE KEY `doctype_name` (`doctype`,`name`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__global_search`
--

LOCK TABLES `__global_search` WRITE;
/*!40000 ALTER TABLE `__global_search` DISABLE KEYS */;
INSERT INTO `__global_search` VALUES ('DocType','DocField','DocField','Name : DocField',NULL,0),('DocType','DocPerm','DocPerm','Name : DocPerm',NULL,0),('DocType','DocType','DocType','Name : DocType',NULL,0),('DocType','Has Role','Has Role','Name : Has Role',NULL,0),('DocType','User','User','Name : User',NULL,0),('DocType','Role','Role','Name : Role',NULL,0),('DocType','Custom Field','Custom Field','Name : Custom Field',NULL,0),('DocType','Property Setter','Property Setter','Name : Property Setter',NULL,0),('DocType','Web Form','Web Form','Name : Web Form',NULL,0),('DocType','Web Form Field','Web Form Field','Name : Web Form Field',NULL,0),('DocType','Portal Menu Item','Portal Menu Item','Name : Portal Menu Item',NULL,0),('DocType','Version','Version','Name : Version',NULL,0),('DocType','Role Profile','Role Profile','Name : Role Profile',NULL,0),('DocType','System Settings','System Settings','Name : System Settings',NULL,0),('DocType','Error Log','Error Log','Name : Error Log',NULL,0),('DocType','SMS Settings','SMS Settings','Name : SMS Settings',NULL,0),('DocType','Feedback Trigger','Feedback Trigger','Name : Feedback Trigger',NULL,0),('DocType','Dynamic Link','Dynamic Link','Name : Dynamic Link',NULL,0),('DocType','DefaultValue','DefaultValue','Name : DefaultValue',NULL,0),('DocType','Custom DocPerm','Custom DocPerm','Name : Custom DocPerm',NULL,0),('Module Def','Core','Core','Name : Core',NULL,0),('DocType','Module Def','Module Def','Name : Module Def',NULL,0),('DocType','Custom Role','Custom Role','Name : Custom Role',NULL,0),('DocType','Error Snapshot','Error Snapshot','Name : Error Snapshot',NULL,0),('DocType','Report','Report','Name : Report',NULL,0),('DocType','Has Domain','Has Domain','Name : Has Domain',NULL,0),('DocType','File','File','Name : File',NULL,0),('DocType','Patch Log','Patch Log','Name : Patch Log',NULL,0),('DocType','Communication','Communication','Name : Communication',NULL,0),('DocType','Data Import','Data Import','Name : Data Import',NULL,0),('DocType','Test Runner','Test Runner','Name : Test Runner',NULL,0),('DocType','Deleted Document','Deleted Document','Name : Deleted Document',NULL,0),('DocType','User Email','User Email','Name : User Email',NULL,0),('DocType','Payment Gateway','Payment Gateway','Name : Payment Gateway',NULL,0),('DocType','Language','Language','Name : Language',NULL,0),('DocType','DocShare','DocShare','Name : DocShare',NULL,0),('DocType','Page','Page','Name : Page',NULL,0),('DocType','Activity Log','Activity Log','Name : Activity Log',NULL,0),('DocType','User Permission','User Permission','Name : User Permission',NULL,0),('DocType','Tag Category','Tag Category','Name : Tag Category',NULL,0),('DocType','Domain Settings','Domain Settings','Name : Domain Settings',NULL,0),('DocType','Tag','Tag','Name : Tag',NULL,0),('DocType','SMS Parameter','SMS Parameter','Name : SMS Parameter',NULL,0),('DocType','User Permission for Page and Report','User Permission for Page and Report','Name : User Permission for Page and Report',NULL,0),('DocType','Tag Doc Category','Tag Doc Category','Name : Tag Doc Category',NULL,0),('DocType','Feedback Request','Feedback Request','Name : Feedback Request',NULL,0),('DocType','Role Permission for Page and Report','Role Permission for Page and Report','Name : Role Permission for Page and Report',NULL,0),('DocType','Block Module','Block Module','Name : Block Module',NULL,0),('DocType','Domain','Domain','Name : Domain',NULL,0),('DocType','Translation','Translation','Name : Translation',NULL,0),('Report','Document Share Report','Document Share Report','Name : Document Share Report',NULL,0),('Report','Permitted Documents For User','Permitted Documents For User','Name : Permitted Documents For User',NULL,0),('Report','Feedback Ratings','Feedback Ratings','Name : Feedback Ratings',NULL,0),('Module Def','Website','Website','Name : Website',NULL,0),('DocType','Top Bar Item','Top Bar Item','Name : Top Bar Item',NULL,0),('DocType','Web Page','Web Page','Name : Web Page',NULL,0),('DocType','About Us Team Member','About Us Team Member','Name : About Us Team Member',NULL,0),('DocType','Footer Item','Footer Item','Name : Footer Item',NULL,0),('DocType','Website Settings','Website Settings','Name : Website Settings',NULL,0),('DocType','Help Category','Help Category','Name : Help Category',NULL,0),('DocType','Website Slideshow Item','Website Slideshow Item','Name : Website Slideshow Item',NULL,0),('DocType','Website Sidebar','Website Sidebar','Name : Website Sidebar',NULL,0),('DocType','Blog Post','Blog Post','Name : Blog Post','/blog',0),('DocType','Website Slideshow','Website Slideshow','Name : Website Slideshow',NULL,0),('DocType','Blog Settings','Blog Settings','Name : Blog Settings',NULL,0),('DocType','Company History','Company History','Name : Company History',NULL,0),('DocType','Blog Category','Blog Category','Name : Blog Category',NULL,0),('DocType','Website Theme','Website Theme','Name : Website Theme',NULL,0),('DocType','Blogger','Blogger','Name : Blogger',NULL,0),('DocType','Website Script','Website Script','Name : Website Script',NULL,0),('DocType','Website Sidebar Item','Website Sidebar Item','Name : Website Sidebar Item',NULL,0),('DocType','About Us Settings','About Us Settings','Name : About Us Settings',NULL,0),('DocType','Portal Settings','Portal Settings','Name : Portal Settings',NULL,0),('DocType','Contact Us Settings','Contact Us Settings','Name : Contact Us Settings',NULL,0),('DocType','Help Article','Help Article','Name : Help Article',NULL,0),('Module Def','Workflow','Workflow','Name : Workflow',NULL,0),('DocType','Workflow','Workflow','Name : Workflow',NULL,0),('DocType','Workflow Document State','Workflow Document State','Name : Workflow Document State',NULL,0),('DocType','Workflow State','Workflow State','Name : Workflow State',NULL,0),('DocType','Workflow Action','Workflow Action','Name : Workflow Action',NULL,0),('DocType','Workflow Transition','Workflow Transition','Name : Workflow Transition',NULL,0),('Module Def','Email','Email','Name : Email',NULL,0),('DocType','Email Flag Queue','Email Flag Queue','Name : Email Flag Queue',NULL,0),('DocType','Auto Email Report','Auto Email Report','Name : Auto Email Report',NULL,0),('DocType','Unhandled Email','Unhandled Email','Name : Unhandled Email',NULL,0),('DocType','Email Rule','Email Rule','Name : Email Rule',NULL,0),('DocType','Standard Reply','Standard Reply','Name : Standard Reply',NULL,0),('DocType','Newsletter Email Group','Newsletter Email Group','Name : Newsletter Email Group',NULL,0),('DocType','Email Alert Recipient','Email Alert Recipient','Name : Email Alert Recipient',NULL,0),('DocType','Email Queue Recipient','Email Queue Recipient','Name : Email Queue Recipient',NULL,0),('DocType','Email Group','Email Group','Name : Email Group',NULL,0),('DocType','Email Unsubscribe','Email Unsubscribe','Name : Email Unsubscribe',NULL,0),('DocType','Newsletter','Newsletter','Name : Newsletter','newsletters',0),('DocType','Email Domain','Email Domain','Name : Email Domain',NULL,0),('DocType','Email Queue','Email Queue','Name : Email Queue',NULL,0),('DocType','Email Alert','Email Alert','Name : Email Alert',NULL,0),('DocType','Email Group Member','Email Group Member','Name : Email Group Member',NULL,0),('DocType','Email Account','Email Account','Name : Email Account',NULL,0),('Module Def','Custom','Custom','Name : Custom',NULL,0),('DocType','Customize Form Field','Customize Form Field','Name : Customize Form Field',NULL,0),('DocType','Customize Form','Customize Form','Name : Customize Form',NULL,0),('DocType','Custom Script','Custom Script','Name : Custom Script',NULL,0),('Module Def','Geo','Geo','Name : Geo',NULL,0),('DocType','Country','Country','Name : Country',NULL,0),('DocType','Currency','Currency','Name : Currency',NULL,0),('Module Def','Desk','Desk','Name : Desk',NULL,0),('DocType','Event','Event','Name : Event',NULL,0),('DocType','Kanban Board Column','Kanban Board Column','Name : Kanban Board Column',NULL,0),('DocType','Calendar View','Calendar View','Name : Calendar View',NULL,0),('DocType','Note','Note','Name : Note',NULL,0),('DocType','Desktop Icon','Desktop Icon','Name : Desktop Icon',NULL,0),('DocType','Note Seen By','Note Seen By','Name : Note Seen By',NULL,0),('DocType','ToDo','ToDo','Name : ToDo',NULL,0),('DocType','Bulk Update','Bulk Update','Name : Bulk Update',NULL,0),('DocType','Kanban Board','Kanban Board','Name : Kanban Board',NULL,0),('Report','ToDo','ToDo','Name : ToDo',NULL,0),('Module Def','Integrations','Integrations','Name : Integrations',NULL,0),('DocType','GSuite Templates','GSuite Templates','Name : GSuite Templates',NULL,0),('DocType','Dropbox Settings','Dropbox Settings','Name : Dropbox Settings',NULL,0),('DocType','OAuth Client','OAuth Client','Name : OAuth Client',NULL,0),('DocType','PayPal Settings','PayPal Settings','Name : PayPal Settings',NULL,0),('DocType','Stripe Settings','Stripe Settings','Name : Stripe Settings',NULL,0),('DocType','GSuite Settings','GSuite Settings','Name : GSuite Settings',NULL,0),('DocType','OAuth Authorization Code','OAuth Authorization Code','Name : OAuth Authorization Code',NULL,0),('DocType','Razorpay Settings','Razorpay Settings','Name : Razorpay Settings',NULL,0),('DocType','Webhook Header','Webhook Header','Name : Webhook Header',NULL,0),('DocType','Webhook Data','Webhook Data','Name : Webhook Data',NULL,0),('DocType','Webhook','Webhook','Name : Webhook',NULL,0),('DocType','Google Maps','Google Maps','Name : Google Maps',NULL,0),('DocType','OAuth Bearer Token','OAuth Bearer Token','Name : OAuth Bearer Token',NULL,0),('DocType','S3 Backup Settings','S3 Backup Settings','Name : S3 Backup Settings',NULL,0),('DocType','Integration Request','Integration Request','Name : Integration Request',NULL,0),('DocType','OAuth Provider Settings','OAuth Provider Settings','Name : OAuth Provider Settings',NULL,0),('DocType','LDAP Settings','LDAP Settings','Name : LDAP Settings',NULL,0),('DocType','Social Login Keys','Social Login Keys','Name : Social Login Keys',NULL,0),('Module Def','Printing','Printing','Name : Printing',NULL,0),('DocType','Print Heading','Print Heading','Name : Print Heading',NULL,0),('DocType','Print Format','Print Format','Name : Print Format',NULL,0),('DocType','Print Style','Print Style','Name : Print Style',NULL,0),('DocType','Print Settings','Print Settings','Name : Print Settings',NULL,0),('DocType','Letter Head','Letter Head','Name : Letter Head',NULL,0),('Module Def','Contacts','Contacts','Name : Contacts',NULL,0),('DocType','Salutation','Salutation','Name : Salutation',NULL,0),('DocType','Address Template','Address Template','Name : Address Template',NULL,0),('DocType','Address','Address','Name : Address',NULL,0),('DocType','Gender','Gender','Name : Gender',NULL,0),('DocType','Contact','Contact','Name : Contact',NULL,0),('Report','Addresses And Contacts','Addresses And Contacts','Name : Addresses And Contacts',NULL,0),('Module Def','Data Migration','Data Migration','Name : Data Migration',NULL,0),('DocType','Data Migration Plan Mapping','Data Migration Plan Mapping','Name : Data Migration Plan Mapping',NULL,0),('DocType','Data Migration Connector','Data Migration Connector','Name : Data Migration Connector',NULL,0),('DocType','Data Migration Run','Data Migration Run','Name : Data Migration Run',NULL,0),('DocType','Data Migration Mapping','Data Migration Mapping','Name : Data Migration Mapping',NULL,0),('DocType','Data Migration Mapping Detail','Data Migration Mapping Detail','Name : Data Migration Mapping Detail',NULL,0),('DocType','Data Migration Plan','Data Migration Plan','Name : Data Migration Plan',NULL,0),('Communication','bd65153bf1','A new document User: Administrator has been shared by with you Administrator.','Subject : A new document User: Administrator has been shared by with you Administrator. ||| From : admin@example.com',NULL,0),('User','Administrator','Administrator','Full Name : Administrator ||| Name : Administrator',NULL,0),('Communication','5fae385f67','A new document User: Guest has been shared by with you Guest.','Subject : A new document User: Guest has been shared by with you Guest. ||| From : admin@example.com',NULL,0),('User','Guest','Guest','Full Name : Guest ||| Name : Guest',NULL,0),('Workflow State','Pending','Pending','Name : Pending',NULL,0),('Workflow State','Approved','Approved','Name : Approved',NULL,0),('Workflow State','Rejected','Rejected','Name : Rejected',NULL,0),('Email Account','Notifications','Notifications','Email Address : notifications@example.com',NULL,0),('Email Account','Replies','Replies','Email Address : replies@example.com',NULL,0),('File','Home','Home','File Name : Home',NULL,0),('File','Home/Attachments','Attachments','File Name : Attachments',NULL,0),('Communication','e1f33b16ac','A new document User: Administrator has been shared by with you Administrator.','Subject : A new document User: Administrator has been shared by with you Administrator. ||| From : admin@example.com',NULL,0);
/*!40000 ALTER TABLE `__global_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAbout Us Team Member`
--

DROP TABLE IF EXISTS `tabAbout Us Team Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAbout Us Team Member` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `image_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAbout Us Team Member`
--

LOCK TABLES `tabAbout Us Team Member` WRITE;
/*!40000 ALTER TABLE `tabAbout Us Team Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAbout Us Team Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabActivity Log`
--

DROP TABLE IF EXISTS `tabActivity Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabActivity Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `link_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `reference_owner` (`reference_owner`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `reference_doctype_reference_name_index` (`reference_doctype`,`reference_name`),
  KEY `timeline_doctype_timeline_name_index` (`timeline_doctype`,`timeline_name`),
  KEY `link_doctype_link_name_index` (`link_doctype`,`link_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabActivity Log`
--

LOCK TABLES `tabActivity Log` WRITE;
/*!40000 ALTER TABLE `tabActivity Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabActivity Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAddress`
--

DROP TABLE IF EXISTS `tabAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAddress` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_your_company_address` int(1) NOT NULL DEFAULT 0,
  `address_line2` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary_address` int(1) NOT NULL DEFAULT 0,
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shipping_address` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `pincode` (`pincode`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAddress`
--

LOCK TABLES `tabAddress` WRITE;
/*!40000 ALTER TABLE `tabAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAddress Template`
--

DROP TABLE IF EXISTS `tabAddress Template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAddress Template` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `country` (`country`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAddress Template`
--

LOCK TABLES `tabAddress Template` WRITE;
/*!40000 ALTER TABLE `tabAddress Template` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAddress Template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAuto Email Report`
--

DROP TABLE IF EXISTS `tabAuto Email Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAuto Email Report` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `frequency` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_if_data` int(1) NOT NULL DEFAULT 1,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter_meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_rows` int(11) NOT NULL DEFAULT 100,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'User',
  `report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_modified_till` int(11) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `day_of_week` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Monday',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAuto Email Report`
--

LOCK TABLES `tabAuto Email Report` WRITE;
/*!40000 ALTER TABLE `tabAuto Email Report` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAuto Email Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlock Module`
--

DROP TABLE IF EXISTS `tabBlock Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlock Module` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlock Module`
--

LOCK TABLES `tabBlock Module` WRITE;
/*!40000 ALTER TABLE `tabBlock Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlock Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Category`
--

DROP TABLE IF EXISTS `tabBlog Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Category`
--

LOCK TABLES `tabBlog Category` WRITE;
/*!40000 ALTER TABLE `tabBlog Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Post`
--

DROP TABLE IF EXISTS `tabBlog Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Post` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `published_on` date DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogger` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` int(1) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `blog_category` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Post`
--

LOCK TABLES `tabBlog Post` WRITE;
/*!40000 ALTER TABLE `tabBlog Post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlogger`
--

DROP TABLE IF EXISTS `tabBlogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlogger` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posts` int(11) NOT NULL DEFAULT 0,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlogger`
--

LOCK TABLES `tabBlogger` WRITE;
/*!40000 ALTER TABLE `tabBlogger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCalendar View`
--

DROP TABLE IF EXISTS `tabCalendar View`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCalendar View` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `subject_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCalendar View`
--

LOCK TABLES `tabCalendar View` WRITE;
/*!40000 ALTER TABLE `tabCalendar View` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCalendar View` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCommunication`
--

DROP TABLE IF EXISTS `tabCommunication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCommunication` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `comment_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` int(1) NOT NULL DEFAULT 0,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_request` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unread_notification_sent` int(1) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication_medium` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_attachment` int(1) NOT NULL DEFAULT 0,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(995) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipients` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Communication',
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_reply_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_receipt` int(1) NOT NULL DEFAULT 0,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_or_received` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication_date` datetime(6) DEFAULT NULL,
  `email_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `reference_owner` (`reference_owner`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `reference_doctype_reference_name_index` (`reference_doctype`,`reference_name`),
  KEY `timeline_doctype_timeline_name_index` (`timeline_doctype`,`timeline_name`),
  KEY `link_doctype_link_name_index` (`link_doctype`,`link_name`),
  KEY `status_communication_type_index` (`status`,`communication_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCommunication`
--

LOCK TABLES `tabCommunication` WRITE;
/*!40000 ALTER TABLE `tabCommunication` DISABLE KEYS */;
INSERT INTO `tabCommunication` VALUES ('5fae385f67','2018-09-23 18:40:48.068899','2018-09-23 18:40:48.068899','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'',NULL,NULL,NULL,'Administrator',0,NULL,'Administrator','A new document User: Guest has been shared by with you Guest.','User',NULL,NULL,0,'A new document <a href=\"http://site1.local/desk#Form/User/Guest\">User: Guest</a> has been shared by with you Guest.','',NULL,0,'Guest',NULL,'Linked',NULL,NULL,NULL,'Chat',NULL,NULL,'Administrator','',NULL,NULL,0,'admin@example.com',NULL,NULL,'Sent',NULL,NULL,'2018-09-23 18:40:48.068354','Open'),('bd65153bf1','2018-09-23 18:40:48.008604','2018-09-23 18:40:48.008604','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'',NULL,NULL,NULL,'Administrator',0,NULL,'Administrator','A new document User: Administrator has been shared by with you Administrator.','User',NULL,NULL,0,'A new document <a href=\"http://site1.local/desk#Form/User/Administrator\">User: Administrator</a> has been shared by with you Administrator.','',NULL,0,'Administrator',NULL,'Linked',NULL,NULL,NULL,'Chat',NULL,NULL,'Administrator','',NULL,NULL,0,'admin@example.com',NULL,NULL,'Sent',NULL,NULL,'2018-09-23 18:40:48.008168','Open'),('e1f33b16ac','2018-09-23 18:40:49.015069','2018-09-23 18:40:49.015069','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'',NULL,NULL,NULL,'Administrator',0,NULL,'Administrator','A new document User: Administrator has been shared by with you Administrator.','User',NULL,NULL,0,'A new document <a href=\"http://site1.local/desk#Form/User/Administrator\">User: Administrator</a> has been shared by with you Administrator.','',NULL,0,'Administrator',NULL,'Linked',NULL,NULL,NULL,'Chat',NULL,NULL,'Administrator','',NULL,NULL,0,'admin@example.com',NULL,NULL,'Sent',NULL,NULL,'2018-09-23 18:40:49.014649','Open');
/*!40000 ALTER TABLE `tabCommunication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCompany History`
--

DROP TABLE IF EXISTS `tabCompany History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCompany History` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `highlight` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCompany History`
--

LOCK TABLES `tabCompany History` WRITE;
/*!40000 ALTER TABLE `tabCompany History` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCompany History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabContact`
--

DROP TABLE IF EXISTS `tabContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabContact` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `last_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed` int(1) NOT NULL DEFAULT 0,
  `department` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Passive',
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary_contact` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `email_id` (`email_id`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabContact`
--

LOCK TABLES `tabContact` WRITE;
/*!40000 ALTER TABLE `tabContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCountry`
--

DROP TABLE IF EXISTS `tabCountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCountry` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `date_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCountry`
--

LOCK TABLES `tabCountry` WRITE;
/*!40000 ALTER TABLE `tabCountry` DISABLE KEYS */;
INSERT INTO `tabCountry` VALUES ('Afghanistan','2018-09-23 18:40:48.397751','2018-09-23 18:40:48.397751',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','af',NULL,NULL,NULL,'Asia/Kabul','Afghanistan',NULL),('Åland Islands','2018-09-23 18:40:48.605840','2018-09-23 18:40:48.605840',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ax',NULL,NULL,NULL,'','Åland Islands',NULL),('Albania','2018-09-23 18:40:48.356430','2018-09-23 18:40:48.356430',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','al',NULL,NULL,NULL,'Europe/Tirane','Albania',NULL),('Algeria','2018-09-23 18:40:48.556598','2018-09-23 18:40:48.556598',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dz',NULL,NULL,NULL,'Africa/Algiers','Algeria',NULL),('American Samoa','2018-09-23 18:40:48.315959','2018-09-23 18:40:48.315959',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','as',NULL,NULL,NULL,'','American Samoa',NULL),('Andorra','2018-09-23 18:40:48.371275','2018-09-23 18:40:48.371275',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ad',NULL,NULL,NULL,'Europe/Andorra','Andorra',NULL),('Angola','2018-09-23 18:40:48.487391','2018-09-23 18:40:48.487391',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ao',NULL,NULL,NULL,'Africa/Luanda','Angola',NULL),('Anguilla','2018-09-23 18:40:48.656153','2018-09-23 18:40:48.656153',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ai',NULL,NULL,NULL,'America/Anguilla','Anguilla',NULL),('Antarctica','2018-09-23 18:40:48.741926','2018-09-23 18:40:48.741926',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','aq',NULL,NULL,NULL,'Antarctica/Casey\nAntarctica/Davis\nAntarctica/DumontDUrville\nAntarctica/Macquarie\nAntarctica/Mawson\nAntarctica/McMurdo\nAntarctica/Palmer\nAntarctica/Rothera\nAntarctica/Syowa\nAntarctica/Vostok','Antarctica',NULL),('Antigua and Barbuda','2018-09-23 18:40:48.623819','2018-09-23 18:40:48.623819',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ag',NULL,NULL,NULL,'America/Antigua','Antigua and Barbuda',NULL),('Argentina','2018-09-23 18:40:48.295173','2018-09-23 18:40:48.295173',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ar',NULL,NULL,NULL,'America/Argentina/Buenos_Aires\nAmerica/Argentina/Catamarca\nAmerica/Argentina/Cordoba\nAmerica/Argentina/Jujuy\nAmerica/Argentina/La_Rioja\nAmerica/Argentina/Mendoza\nAmerica/Argentina/Rio_Gallegos\nAmerica/Argentina/Salta\nAmerica/Argentina/San_Juan\nAmerica/Argentina/San_Luis\nAmerica/Argentina/Tucuman\nAmerica/Argentina/Ushuaia','Argentina',NULL),('Armenia','2018-09-23 18:40:48.450107','2018-09-23 18:40:48.450107',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','am',NULL,NULL,NULL,'Asia/Yerevan','Armenia',NULL),('Aruba','2018-09-23 18:40:48.289793','2018-09-23 18:40:48.289793',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','aw',NULL,NULL,NULL,'America/Aruba','Aruba',NULL),('Australia','2018-09-23 18:40:48.477015','2018-09-23 18:40:48.477015',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','au',NULL,NULL,NULL,'Australia/Adelaide\nAustralia/Brisbane\nAustralia/Broken_Hill\nAustralia/Currie\nAustralia/Darwin\nAustralia/Eucla\nAustralia/Hobart\nAustralia/Lindeman\nAustralia/Lord_Howe\nAustralia/Melbourne\nAustralia/Perth\nAustralia/Sydney','Australia',NULL),('Austria','2018-09-23 18:40:48.507640','2018-09-23 18:40:48.507640',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','at',NULL,NULL,NULL,'Europe/Vienna','Austria',NULL),('Azerbaijan','2018-09-23 18:40:48.384072','2018-09-23 18:40:48.384072',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','az',NULL,NULL,NULL,'Asia/Baku','Azerbaijan',NULL),('Bahamas','2018-09-23 18:40:48.539664','2018-09-23 18:40:48.539664',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bs',NULL,NULL,NULL,'America/Nassau','Bahamas',NULL),('Bahrain','2018-09-23 18:40:48.457880','2018-09-23 18:40:48.457880',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bh',NULL,NULL,NULL,'Asia/Bahrain','Bahrain',NULL),('Bangladesh','2018-09-23 18:40:48.400273','2018-09-23 18:40:48.400273',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bd',NULL,NULL,NULL,'Asia/Dhaka','Bangladesh',NULL),('Barbados','2018-09-23 18:40:48.637436','2018-09-23 18:40:48.637436',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bb',NULL,NULL,NULL,'America/Barbados','Barbados',NULL),('Belarus','2018-09-23 18:40:48.553292','2018-09-23 18:40:48.553292',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','by',NULL,NULL,NULL,'Europe/Minsk','Belarus',NULL),('Belgium','2018-09-23 18:40:48.572573','2018-09-23 18:40:48.572573',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','be',NULL,NULL,NULL,'Europe/Brussels','Belgium',NULL),('Belize','2018-09-23 18:40:48.577212','2018-09-23 18:40:48.577212',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','bz',NULL,NULL,NULL,'America/Belize','Belize',NULL),('Benin','2018-09-23 18:40:48.436796','2018-09-23 18:40:48.436796',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bj',NULL,NULL,NULL,'Africa/Porto-Novo','Benin',NULL),('Bermuda','2018-09-23 18:40:48.415224','2018-09-23 18:40:48.415224',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bm',NULL,NULL,NULL,'Atlantic/Bermuda','Bermuda',NULL),('Bhutan','2018-09-23 18:40:48.642553','2018-09-23 18:40:48.642553',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bt',NULL,NULL,NULL,'Asia/Thimphu','Bhutan',NULL),('Bolivia, Plurinational State of','2018-09-23 18:40:48.645851','2018-09-23 18:40:48.645851',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bo',NULL,NULL,NULL,'','Bolivia, Plurinational State of',NULL),('Bonaire, Sint Eustatius and Saba','2018-09-23 18:40:48.335144','2018-09-23 18:40:48.335144',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bq',NULL,NULL,NULL,'','Bonaire, Sint Eustatius and Saba',NULL),('Bosnia and Herzegovina','2018-09-23 18:40:48.323649','2018-09-23 18:40:48.323649',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ba',NULL,NULL,NULL,'Europe/Sarajevo','Bosnia and Herzegovina',NULL),('Botswana','2018-09-23 18:40:48.737009','2018-09-23 18:40:48.737009',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bw',NULL,NULL,NULL,'Africa/Gaborone','Botswana',NULL),('Bouvet Island','2018-09-23 18:40:48.723250','2018-09-23 18:40:48.723250',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bv',NULL,NULL,NULL,'','Bouvet Island',NULL),('Brazil','2018-09-23 18:40:48.520392','2018-09-23 18:40:48.520392',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','br',NULL,NULL,NULL,'America/Araguaina\nAmerica/Bahia\nAmerica/Belem\nAmerica/Boa_Vista\nAmerica/Campo_Grande\nAmerica/Cuiaba\nAmerica/Eirunepe\nAmerica/Fortaleza\nAmerica/Maceio\nAmerica/Manaus\nAmerica/Noronha\nAmerica/Porto_Velho\nAmerica/Recife\nAmerica/Rio_Branco\nAmerica/Santarem\nAmerica/Sao_Paulo','Brazil',NULL),('British Indian Ocean Territory','2018-09-23 18:40:48.701838','2018-09-23 18:40:48.701838',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','io',NULL,NULL,NULL,'Indian/Chagos','British Indian Ocean Territory',NULL),('Brunei Darussalam','2018-09-23 18:40:48.500857','2018-09-23 18:40:48.500857',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bn',NULL,NULL,NULL,'Asia/Brunei','Brunei Darussalam',NULL),('Bulgaria','2018-09-23 18:40:48.482094','2018-09-23 18:40:48.482094',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bg',NULL,NULL,NULL,'Europe/Sofia','Bulgaria',NULL),('Burkina Faso','2018-09-23 18:40:48.300633','2018-09-23 18:40:48.300633',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bf',NULL,NULL,NULL,'Africa/Ouagadougou','Burkina Faso',NULL),('Burundi','2018-09-23 18:40:48.630370','2018-09-23 18:40:48.630370',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bi',NULL,NULL,NULL,'Africa/Bujumbura','Burundi',NULL),('Cambodia','2018-09-23 18:40:48.276978','2018-09-23 18:40:48.276978',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kh',NULL,NULL,NULL,'Asia/Phnom_Penh','Cambodia',NULL),('Cameroon','2018-09-23 18:40:48.298248','2018-09-23 18:40:48.298248',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cm',NULL,NULL,NULL,'Africa/Douala','Cameroon',NULL),('Canada','2018-09-23 18:40:48.239265','2018-09-23 18:40:48.239265',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','ca',NULL,NULL,NULL,'America/Atikokan\nAmerica/Blanc-Sablon\nAmerica/Cambridge_Bay\nAmerica/Creston\nAmerica/Dawson\nAmerica/Dawson_Creek\nAmerica/Edmonton\nAmerica/Glace_Bay\nAmerica/Goose_Bay\nAmerica/Halifax\nAmerica/Inuvik\nAmerica/Iqaluit\nAmerica/Moncton\nAmerica/Montreal\nAmerica/Nipigon\nAmerica/Pangnirtung\nAmerica/Rainy_River\nAmerica/Rankin_Inlet\nAmerica/Regina\nAmerica/Resolute\nAmerica/St_Johns\nAmerica/Swift_Current\nAmerica/Thunder_Bay\nAmerica/Toronto\nAmerica/Vancouver\nAmerica/Whitehorse\nAmerica/Winnipeg\nAmerica/Yellowknife','Canada',NULL),('Cape Verde','2018-09-23 18:40:48.537671','2018-09-23 18:40:48.537671',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cv',NULL,NULL,NULL,'Atlantic/Cape_Verde','Cape Verde',NULL),('Cayman Islands','2018-09-23 18:40:48.467835','2018-09-23 18:40:48.467835',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ky',NULL,NULL,NULL,'America/Cayman','Cayman Islands',NULL),('Central African Republic','2018-09-23 18:40:48.470023','2018-09-23 18:40:48.470023',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cf',NULL,NULL,NULL,'Africa/Bangui','Central African Republic',NULL),('Chad','2018-09-23 18:40:48.490454','2018-09-23 18:40:48.490454',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','td',NULL,NULL,NULL,'Africa/Ndjamena','Chad',NULL),('Chile','2018-09-23 18:40:48.569291','2018-09-23 18:40:48.569291',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cl',NULL,NULL,NULL,'America/Santiago\nPacific/Easter','Chile',NULL),('China','2018-09-23 18:40:48.447941','2018-09-23 18:40:48.447941',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','cn',NULL,NULL,NULL,'Asia/Chongqing\nAsia/Harbin\nAsia/Kashgar\nAsia/Shanghai\nAsia/Urumqi','China',NULL),('Christmas Island','2018-09-23 18:40:48.657637','2018-09-23 18:40:48.657637',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cx',NULL,NULL,NULL,'Indian/Christmas','Christmas Island',NULL),('Cocos (Keeling) Islands','2018-09-23 18:40:48.318533','2018-09-23 18:40:48.318533',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cc',NULL,NULL,NULL,'Indian/Cocos','Cocos (Keeling) Islands',NULL),('Colombia','2018-09-23 18:40:48.627224','2018-09-23 18:40:48.627224',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','co',NULL,NULL,NULL,'America/Bogota','Colombia',NULL),('Comoros','2018-09-23 18:40:48.751957','2018-09-23 18:40:48.751957',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','km',NULL,NULL,NULL,'Indian/Comoro','Comoros',NULL),('Congo','2018-09-23 18:40:48.743235','2018-09-23 18:40:48.743235',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cg',NULL,NULL,NULL,'','Congo',NULL),('Congo, The Democratic Republic of the','2018-09-23 18:40:48.698957','2018-09-23 18:40:48.698957',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cd',NULL,NULL,NULL,'','Congo, The Democratic Republic of the',NULL),('Cook Islands','2018-09-23 18:40:48.435681','2018-09-23 18:40:48.435681',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ck',NULL,NULL,NULL,'Pacific/Rarotonga','Cook Islands',NULL),('Costa Rica','2018-09-23 18:40:48.534548','2018-09-23 18:40:48.534548',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cr',NULL,NULL,NULL,'America/Costa_Rica','Costa Rica',NULL),('Croatia','2018-09-23 18:40:48.593487','2018-09-23 18:40:48.593487',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hr',NULL,NULL,NULL,'Europe/Zagreb','Croatia',NULL),('Cuba','2018-09-23 18:40:48.439532','2018-09-23 18:40:48.439532',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cu',NULL,NULL,NULL,'America/Havana','Cuba',NULL),('Curaçao','2018-09-23 18:40:48.714524','2018-09-23 18:40:48.714524',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cw',NULL,NULL,NULL,'','Curaçao',NULL),('Cyprus','2018-09-23 18:40:48.497019','2018-09-23 18:40:48.497019',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cy',NULL,NULL,NULL,'Asia/Nicosia','Cyprus',NULL),('Czech Republic','2018-09-23 18:40:48.551463','2018-09-23 18:40:48.551463',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cz',NULL,NULL,NULL,'Europe/Prague','Czech Republic',NULL),('Denmark','2018-09-23 18:40:48.683127','2018-09-23 18:40:48.683127',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dk',NULL,NULL,NULL,'Europe/Copenhagen','Denmark',NULL),('Djibouti','2018-09-23 18:40:48.620880','2018-09-23 18:40:48.620880',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dj',NULL,NULL,NULL,'Africa/Djibouti','Djibouti',NULL),('Dominica','2018-09-23 18:40:48.337522','2018-09-23 18:40:48.337522',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dm',NULL,NULL,NULL,'America/Dominica','Dominica',NULL),('Dominican Republic','2018-09-23 18:40:48.453316','2018-09-23 18:40:48.453316',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','do',NULL,NULL,NULL,'America/Santo_Domingo','Dominican Republic',NULL),('Ecuador','2018-09-23 18:40:48.550430','2018-09-23 18:40:48.550430',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ec',NULL,NULL,NULL,'America/Guayaquil\nPacific/Galapagos','Ecuador',NULL),('Egypt','2018-09-23 18:40:48.724676','2018-09-23 18:40:48.724676',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','eg',NULL,NULL,NULL,'Africa/Cairo','Egypt',NULL),('El Salvador','2018-09-23 18:40:48.562800','2018-09-23 18:40:48.562800',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sv',NULL,NULL,NULL,'America/El_Salvador','El Salvador',NULL),('Equatorial Guinea','2018-09-23 18:40:48.613575','2018-09-23 18:40:48.613575',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gq',NULL,NULL,NULL,'Africa/Malabo','Equatorial Guinea',NULL),('Eritrea','2018-09-23 18:40:48.692514','2018-09-23 18:40:48.692514',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','er',NULL,NULL,NULL,'Africa/Asmara','Eritrea',NULL),('Estonia','2018-09-23 18:40:48.610013','2018-09-23 18:40:48.610013',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ee',NULL,NULL,NULL,'Europe/Tallinn','Estonia',NULL),('Ethiopia','2018-09-23 18:40:48.287780','2018-09-23 18:40:48.287780',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','et',NULL,NULL,NULL,'Africa/Addis_Ababa','Ethiopia',NULL),('Falkland Islands (Malvinas)','2018-09-23 18:40:48.443525','2018-09-23 18:40:48.443525',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fk',NULL,NULL,NULL,'','Falkland Islands (Malvinas)',NULL),('Faroe Islands','2018-09-23 18:40:48.526703','2018-09-23 18:40:48.526703',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fo',NULL,NULL,NULL,'Atlantic/Faroe','Faroe Islands',NULL),('Fiji','2018-09-23 18:40:48.635272','2018-09-23 18:40:48.635272',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fj',NULL,NULL,NULL,'Pacific/Fiji','Fiji',NULL),('Finland','2018-09-23 18:40:48.464079','2018-09-23 18:40:48.464079',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fi',NULL,NULL,NULL,'Europe/Helsinki','Finland',NULL),('France','2018-09-23 18:40:48.411946','2018-09-23 18:40:48.411946',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','fr',NULL,NULL,NULL,'Europe/Paris','France',NULL),('French Guiana','2018-09-23 18:40:48.359085','2018-09-23 18:40:48.359085',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gf',NULL,NULL,NULL,'America/Cayenne','French Guiana',NULL),('French Polynesia','2018-09-23 18:40:48.410940','2018-09-23 18:40:48.410940',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pf',NULL,NULL,NULL,'Pacific/Gambier\nPacific/Marquesas\nPacific/Tahiti','French Polynesia',NULL),('French Southern Territories','2018-09-23 18:40:48.489294','2018-09-23 18:40:48.489294',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tf',NULL,NULL,NULL,'','French Southern Territories',NULL),('Gabon','2018-09-23 18:40:48.749774','2018-09-23 18:40:48.749774',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ga',NULL,NULL,NULL,'Africa/Libreville','Gabon',NULL),('Gambia','2018-09-23 18:40:48.586012','2018-09-23 18:40:48.586012',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gm',NULL,NULL,NULL,'Africa/Banjul','Gambia',NULL),('Georgia','2018-09-23 18:40:48.583007','2018-09-23 18:40:48.583007',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ge',NULL,NULL,NULL,'Asia/Tbilisi','Georgia',NULL),('Germany','2018-09-23 18:40:48.679155','2018-09-23 18:40:48.679155',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','de',NULL,NULL,NULL,'Europe/Berlin','Germany',NULL),('Ghana','2018-09-23 18:40:48.304874','2018-09-23 18:40:48.304874',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gh',NULL,NULL,NULL,'Africa/Accra','Ghana',NULL),('Gibraltar','2018-09-23 18:40:48.541572','2018-09-23 18:40:48.541572',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gi',NULL,NULL,NULL,'Europe/Gibraltar','Gibraltar',NULL),('Greece','2018-09-23 18:40:48.745993','2018-09-23 18:40:48.745993',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gr',NULL,NULL,NULL,'Europe/Athens','Greece',NULL),('Greenland','2018-09-23 18:40:48.373837','2018-09-23 18:40:48.373837',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gl',NULL,NULL,NULL,'America/Danmarkshavn\nAmerica/Godthab\nAmerica/Scoresbysund\nAmerica/Thule','Greenland',NULL),('Grenada','2018-09-23 18:40:48.604507','2018-09-23 18:40:48.604507',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gd',NULL,NULL,NULL,'America/Grenada','Grenada',NULL),('Guadeloupe','2018-09-23 18:40:48.717840','2018-09-23 18:40:48.717840',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gp',NULL,NULL,NULL,'America/Guadeloupe','Guadeloupe',NULL),('Guam','2018-09-23 18:40:48.380792','2018-09-23 18:40:48.380792',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gu',NULL,NULL,NULL,'Pacific/Guam','Guam',NULL),('Guatemala','2018-09-23 18:40:48.321017','2018-09-23 18:40:48.321017',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gt',NULL,NULL,NULL,'America/Guatemala','Guatemala',NULL),('Guernsey','2018-09-23 18:40:48.599135','2018-09-23 18:40:48.599135',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gg',NULL,NULL,NULL,'Europe/London','Guernsey',NULL),('Guinea','2018-09-23 18:40:48.528243','2018-09-23 18:40:48.528243',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gn',NULL,NULL,NULL,'Africa/Conakry','Guinea',NULL),('Guinea-Bissau','2018-09-23 18:40:48.270897','2018-09-23 18:40:48.270897',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gw',NULL,NULL,NULL,'Africa/Bissau','Guinea-Bissau',NULL),('Guyana','2018-09-23 18:40:48.532584','2018-09-23 18:40:48.532584',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gy',NULL,NULL,NULL,'America/Guyana','Guyana',NULL),('Haiti','2018-09-23 18:40:48.575181','2018-09-23 18:40:48.575181',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ht',NULL,NULL,NULL,'America/Guatemala\nAmerica/Port-au-Prince','Haiti',NULL),('Heard Island and McDonald Islands','2018-09-23 18:40:48.622701','2018-09-23 18:40:48.622701',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hm',NULL,NULL,NULL,'','Heard Island and McDonald Islands',NULL),('Holy See (Vatican City State)','2018-09-23 18:40:48.446786','2018-09-23 18:40:48.446786',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','va',NULL,NULL,NULL,'','Holy See (Vatican City State)',NULL),('Honduras','2018-09-23 18:40:48.718934','2018-09-23 18:40:48.718934',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hn',NULL,NULL,NULL,'America/Tegucigalpa','Honduras',NULL),('Hong Kong','2018-09-23 18:40:48.579286','2018-09-23 18:40:48.579286',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hk',NULL,NULL,NULL,'Asia/Hong_Kong','Hong Kong',NULL),('Hungary','2018-09-23 18:40:48.515519','2018-09-23 18:40:48.515519',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','hu',NULL,NULL,NULL,'Europe/Budapest','Hungary',NULL),('Iceland','2018-09-23 18:40:48.663826','2018-09-23 18:40:48.663826',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','is',NULL,NULL,NULL,'Atlantic/Reykjavik','Iceland',NULL),('India','2018-09-23 18:40:48.381915','2018-09-23 18:40:48.381915',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','in',NULL,NULL,NULL,'Asia/Kolkata','India',NULL),('Indonesia','2018-09-23 18:40:48.660643','2018-09-23 18:40:48.660643',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','id',NULL,NULL,NULL,'Asia/Jakarta\nAsia/Jayapura\nAsia/Makassar\nAsia/Pontianak','Indonesia',NULL),('Iran','2018-09-23 18:40:48.554278','2018-09-23 18:40:48.554278',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ir',NULL,NULL,NULL,'Asia/Tehran','Iran',NULL),('Iraq','2018-09-23 18:40:48.606853','2018-09-23 18:40:48.606853',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','iq',NULL,NULL,NULL,'Asia/Baghdad','Iraq',NULL),('Ireland','2018-09-23 18:40:48.544335','2018-09-23 18:40:48.544335',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ie',NULL,NULL,NULL,'Europe/Dublin','Ireland',NULL),('Isle of Man','2018-09-23 18:40:48.519262','2018-09-23 18:40:48.519262',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','im',NULL,NULL,NULL,'Europe/London','Isle of Man',NULL),('Israel','2018-09-23 18:40:48.704934','2018-09-23 18:40:48.704934',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','il',NULL,NULL,NULL,'Asia/Jerusalem','Israel',NULL),('Italy','2018-09-23 18:40:48.640825','2018-09-23 18:40:48.640825',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','it',NULL,NULL,NULL,'Europe/Rome','Italy',NULL),('Ivory Coast','2018-09-23 18:40:48.354570','2018-09-23 18:40:48.354570',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ci',NULL,NULL,NULL,'','Ivory Coast',NULL),('Jamaica','2018-09-23 18:40:48.346325','2018-09-23 18:40:48.346325',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jm',NULL,NULL,NULL,'America/Jamaica','Jamaica',NULL),('Japan','2018-09-23 18:40:48.313768','2018-09-23 18:40:48.313768',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jp',NULL,NULL,NULL,'Asia/Tokyo','Japan',NULL),('Jersey','2018-09-23 18:40:48.370140','2018-09-23 18:40:48.370140',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','je',NULL,NULL,NULL,'Europe/London','Jersey',NULL),('Jordan','2018-09-23 18:40:48.332808','2018-09-23 18:40:48.332808',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jo',NULL,NULL,NULL,'Asia/Amman','Jordan',NULL),('Kazakhstan','2018-09-23 18:40:48.685482','2018-09-23 18:40:48.685482',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kz',NULL,NULL,NULL,'Asia/Almaty\nAsia/Aqtau\nAsia/Aqtobe\nAsia/Oral\nAsia/Qyzylorda','Kazakhstan',NULL),('Kenya','2018-09-23 18:40:48.388781','2018-09-23 18:40:48.388781',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ke',NULL,NULL,NULL,'Africa/Nairobi','Kenya',NULL),('Kiribati','2018-09-23 18:40:48.574035','2018-09-23 18:40:48.574035',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ki',NULL,NULL,NULL,'Pacific/Enderbury\nPacific/Kiritimati\nPacific/Tarawa','Kiribati',NULL),('Korea, Democratic Peoples Republic of','2018-09-23 18:40:48.413358','2018-09-23 18:40:48.413358',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kp',NULL,NULL,NULL,'','Korea, Democratic Peoples Republic of',NULL),('Korea, Republic of','2018-09-23 18:40:48.342772','2018-09-23 18:40:48.342772',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kr',NULL,NULL,NULL,'','Korea, Republic of',NULL),('Kuwait','2018-09-23 18:40:48.326492','2018-09-23 18:40:48.326492',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kw',NULL,NULL,NULL,'Asia/Kuwait','Kuwait',NULL),('Kyrgyzstan','2018-09-23 18:40:48.696103','2018-09-23 18:40:48.696103',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kg',NULL,NULL,NULL,'Asia/Bishkek','Kyrgyzstan',NULL),('Lao Peoples Democratic Republic','2018-09-23 18:40:48.394260','2018-09-23 18:40:48.394260',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','la',NULL,NULL,NULL,'','Lao Peoples Democratic Republic',NULL),('Latvia','2018-09-23 18:40:48.711375','2018-09-23 18:40:48.711375',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lv',NULL,NULL,NULL,'Europe/Riga','Latvia',NULL),('Lebanon','2018-09-23 18:40:48.614786','2018-09-23 18:40:48.614786',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lb',NULL,NULL,NULL,'Asia/Beirut','Lebanon',NULL),('Lesotho','2018-09-23 18:40:48.385182','2018-09-23 18:40:48.385182',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ls',NULL,NULL,NULL,'Africa/Maseru','Lesotho',NULL),('Liberia','2018-09-23 18:40:48.339992','2018-09-23 18:40:48.339992',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lr',NULL,NULL,NULL,'Africa/Monrovia','Liberia',NULL),('Libya','2018-09-23 18:40:48.465758','2018-09-23 18:40:48.465758',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ly',NULL,NULL,NULL,'Africa/Tripoli','Libya',NULL),('Liechtenstein','2018-09-23 18:40:48.475960','2018-09-23 18:40:48.475960',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','li',NULL,NULL,NULL,'Europe/Vaduz','Liechtenstein',NULL),('Lithuania','2018-09-23 18:40:48.273594','2018-09-23 18:40:48.273594',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','lt',NULL,NULL,NULL,'Europe/Vilnius','Lithuania',NULL),('Luxembourg','2018-09-23 18:40:48.536395','2018-09-23 18:40:48.536395',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lu',NULL,NULL,NULL,'Europe/Luxembourg','Luxembourg',NULL),('Macao','2018-09-23 18:40:48.391189','2018-09-23 18:40:48.391189',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mo',NULL,NULL,NULL,'','Macao',NULL),('Macedonia','2018-09-23 18:40:48.707208','2018-09-23 18:40:48.707208',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mk',NULL,NULL,NULL,'','Macedonia',NULL),('Madagascar','2018-09-23 18:40:48.639611','2018-09-23 18:40:48.639611',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mg',NULL,NULL,NULL,'Indian/Antananarivo','Madagascar',NULL),('Malawi','2018-09-23 18:40:48.433396','2018-09-23 18:40:48.433396',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mw',NULL,NULL,NULL,'Africa/Blantyre','Malawi',NULL),('Malaysia','2018-09-23 18:40:48.505482','2018-09-23 18:40:48.505482',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','my',NULL,NULL,NULL,'Asia/Kuala_Lumpur\nAsia/Kuching','Malaysia',NULL),('Maldives','2018-09-23 18:40:48.651745','2018-09-23 18:40:48.651745',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mv',NULL,NULL,NULL,'Indian/Maldives','Maldives',NULL),('Mali','2018-09-23 18:40:48.478952','2018-09-23 18:40:48.478952',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ml',NULL,NULL,NULL,'Africa/Bamako','Mali',NULL),('Malta','2018-09-23 18:40:48.649837','2018-09-23 18:40:48.649837',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mt',NULL,NULL,NULL,'Europe/Malta','Malta',NULL),('Marshall Islands','2018-09-23 18:40:48.568033','2018-09-23 18:40:48.568033',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mh',NULL,NULL,NULL,'Pacific/Kwajalein\nPacific/Majuro','Marshall Islands',NULL),('Martinique','2018-09-23 18:40:48.353077','2018-09-23 18:40:48.353077',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mq',NULL,NULL,NULL,'America/Martinique','Martinique',NULL),('Mauritania','2018-09-23 18:40:48.402770','2018-09-23 18:40:48.402770',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mr',NULL,NULL,NULL,'Africa/Nouakchott','Mauritania',NULL),('Mauritius','2018-09-23 18:40:48.472633','2018-09-23 18:40:48.472633',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mu',NULL,NULL,NULL,'Indian/Mauritius','Mauritius',NULL),('Mayotte','2018-09-23 18:40:48.445687','2018-09-23 18:40:48.445687',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','yt',NULL,NULL,NULL,'Indian/Mayotte','Mayotte',NULL),('Mexico','2018-09-23 18:40:48.584108','2018-09-23 18:40:48.584108',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mx',NULL,NULL,NULL,'America/Bahia_Banderas\nAmerica/Cancun\nAmerica/Chihuahua\nAmerica/Hermosillo\nAmerica/Matamoros\nAmerica/Mazatlan\nAmerica/Merida\nAmerica/Mexico_City\nAmerica/Monterrey\nAmerica/Ojinaga\nAmerica/Santa_Isabel\nAmerica/Tijuana','Mexico',NULL),('Micronesia, Federated States of','2018-09-23 18:40:48.345189','2018-09-23 18:40:48.345189',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fm',NULL,NULL,NULL,'','Micronesia, Federated States of',NULL),('Moldova, Republic of','2018-09-23 18:40:48.689992','2018-09-23 18:40:48.689992',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','md',NULL,NULL,NULL,'','Moldova, Republic of',NULL),('Monaco','2018-09-23 18:40:48.362900','2018-09-23 18:40:48.362900',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mc',NULL,NULL,NULL,'Europe/Monaco','Monaco',NULL),('Mongolia','2018-09-23 18:40:48.596714','2018-09-23 18:40:48.596714',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','mn',NULL,NULL,NULL,'Asia/Choibalsan\nAsia/Hovd\nAsia/Ulaanbaatar','Mongolia',NULL),('Montenegro','2018-09-23 18:40:48.441822','2018-09-23 18:40:48.441822',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','me',NULL,NULL,NULL,'Europe/Belgrade','Montenegro',NULL),('Montserrat','2018-09-23 18:40:48.703166','2018-09-23 18:40:48.703166',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ms',NULL,NULL,NULL,'America/Montserrat','Montserrat',NULL),('Morocco','2018-09-23 18:40:48.590431','2018-09-23 18:40:48.590431',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ma',NULL,NULL,NULL,'Africa/Casablanca','Morocco',NULL),('Mozambique','2018-09-23 18:40:48.511847','2018-09-23 18:40:48.511847',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mz',NULL,NULL,NULL,'Africa/Maputo','Mozambique',NULL),('Myanmar','2018-09-23 18:40:48.721110','2018-09-23 18:40:48.721110',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mm',NULL,NULL,NULL,'Asia/Rangoon','Myanmar',NULL),('Namibia','2018-09-23 18:40:48.602566','2018-09-23 18:40:48.602566',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','na',NULL,NULL,NULL,'Africa/Windhoek','Namibia',NULL),('Nauru','2018-09-23 18:40:48.426458','2018-09-23 18:40:48.426458',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nr',NULL,NULL,NULL,'Pacific/Nauru','Nauru',NULL),('Nepal','2018-09-23 18:40:48.647869','2018-09-23 18:40:48.647869',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','np',NULL,NULL,NULL,'Asia/Kathmandu','Nepal',NULL),('Netherlands','2018-09-23 18:40:48.525054','2018-09-23 18:40:48.525054',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nl',NULL,NULL,NULL,'Europe/Amsterdam','Netherlands',NULL),('New Caledonia','2018-09-23 18:40:48.471468','2018-09-23 18:40:48.471468',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nc',NULL,NULL,NULL,'Pacific/Noumea','New Caledonia',NULL),('New Zealand','2018-09-23 18:40:48.366643','2018-09-23 18:40:48.366643',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nz',NULL,NULL,NULL,'Pacific/Auckland\nPacific/Chatham','New Zealand',NULL),('Nicaragua','2018-09-23 18:40:48.728615','2018-09-23 18:40:48.728615',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ni',NULL,NULL,NULL,'America/Managua','Nicaragua',NULL),('Niger','2018-09-23 18:40:48.517609','2018-09-23 18:40:48.517609',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ne',NULL,NULL,NULL,'Africa/Niamey','Niger',NULL),('Nigeria','2018-09-23 18:40:48.548533','2018-09-23 18:40:48.548533',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ng',NULL,NULL,NULL,'Africa/Lagos','Nigeria',NULL),('Niue','2018-09-23 18:40:48.361008','2018-09-23 18:40:48.361008',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nu',NULL,NULL,NULL,'Pacific/Niue','Niue',NULL),('Norfolk Island','2018-09-23 18:40:48.377481','2018-09-23 18:40:48.377481',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nf',NULL,NULL,NULL,'Pacific/Norfolk','Norfolk Island',NULL),('Northern Mariana Islands','2018-09-23 18:40:48.653923','2018-09-23 18:40:48.653923',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mp',NULL,NULL,NULL,'Pacific/Saipan','Northern Mariana Islands',NULL),('Norway','2018-09-23 18:40:48.431054','2018-09-23 18:40:48.431054',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','no',NULL,NULL,NULL,'Europe/Oslo','Norway',NULL),('Oman','2018-09-23 18:40:48.348459','2018-09-23 18:40:48.348459',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','om',NULL,NULL,NULL,'Asia/Muscat','Oman',NULL),('Pakistan','2018-09-23 18:40:48.545654','2018-09-23 18:40:48.545654',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pk',NULL,NULL,NULL,'Asia/Karachi','Pakistan',NULL),('Palau','2018-09-23 18:40:48.547525','2018-09-23 18:40:48.547525',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','pw',NULL,NULL,NULL,'Pacific/Palau','Palau',NULL),('Palestinian Territory, Occupied','2018-09-23 18:40:48.751010','2018-09-23 18:40:48.751010',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ps',NULL,NULL,NULL,'','Palestinian Territory, Occupied',NULL),('Panama','2018-09-23 18:40:48.531288','2018-09-23 18:40:48.531288',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pa',NULL,NULL,NULL,'America/Panama','Panama',NULL),('Papua New Guinea','2018-09-23 18:40:48.670146','2018-09-23 18:40:48.670146',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pg',NULL,NULL,NULL,'Pacific/Port_Moresby','Papua New Guinea',NULL),('Paraguay','2018-09-23 18:40:48.747563','2018-09-23 18:40:48.747563',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','py',NULL,NULL,NULL,'America/Asuncion','Paraguay',NULL),('Peru','2018-09-23 18:40:48.420891','2018-09-23 18:40:48.420891',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pe',NULL,NULL,NULL,'America/Lima','Peru',NULL),('Philippines','2018-09-23 18:40:48.587888','2018-09-23 18:40:48.587888',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','ph',NULL,NULL,NULL,'Asia/Manila','Philippines',NULL),('Pitcairn','2018-09-23 18:40:48.319688','2018-09-23 18:40:48.319688',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pn',NULL,NULL,NULL,'Pacific/Pitcairn','Pitcairn',NULL),('Poland','2018-09-23 18:40:48.687642','2018-09-23 18:40:48.687642',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pl',NULL,NULL,NULL,'Europe/Warsaw','Poland',NULL),('Portugal','2018-09-23 18:40:48.608762','2018-09-23 18:40:48.608762',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pt',NULL,NULL,NULL,'Atlantic/Azores\nAtlantic/Madeira\nEurope/Lisbon','Portugal',NULL),('Puerto Rico','2018-09-23 18:40:48.571437','2018-09-23 18:40:48.571437',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pr',NULL,NULL,NULL,'America/Puerto_Rico','Puerto Rico',NULL),('Qatar','2018-09-23 18:40:48.503275','2018-09-23 18:40:48.503275',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','qa',NULL,NULL,NULL,'Asia/Qatar','Qatar',NULL),('Réunion','2018-09-23 18:40:48.658930','2018-09-23 18:40:48.658930',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','re',NULL,NULL,NULL,'','Réunion',NULL),('Romania','2018-09-23 18:40:48.485628','2018-09-23 18:40:48.485628',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ro',NULL,NULL,NULL,'Europe/Bucharest','Romania',NULL),('Russian Federation','2018-09-23 18:40:48.330194','2018-09-23 18:40:48.330194',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ru',NULL,NULL,NULL,'','Russian Federation',NULL),('Rwanda','2018-09-23 18:40:48.309748','2018-09-23 18:40:48.309748',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','rw',NULL,NULL,NULL,'Africa/Kigali','Rwanda',NULL),('Saint Barthélemy','2018-09-23 18:40:48.700403','2018-09-23 18:40:48.700403',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bl',NULL,NULL,NULL,'','Saint Barthélemy',NULL),('Saint Helena, Ascension and Tristan da Cunha','2018-09-23 18:40:48.281076','2018-09-23 18:40:48.281076',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sh',NULL,NULL,NULL,'','Saint Helena, Ascension and Tristan da Cunha',NULL),('Saint Kitts and Nevis','2018-09-23 18:40:48.672681','2018-09-23 18:40:48.672681',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kn',NULL,NULL,NULL,'America/St_Kitts','Saint Kitts and Nevis',NULL),('Saint Lucia','2018-09-23 18:40:48.408045','2018-09-23 18:40:48.408045',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lc',NULL,NULL,NULL,'America/St_Lucia','Saint Lucia',NULL),('Saint Martin (French part)','2018-09-23 18:40:48.293297','2018-09-23 18:40:48.293297',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mf',NULL,NULL,NULL,'','Saint Martin (French part)',NULL),('Saint Pierre and Miquelon','2018-09-23 18:40:48.566896','2018-09-23 18:40:48.566896',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pm',NULL,NULL,NULL,'','Saint Pierre and Miquelon',NULL),('Saint Vincent and the Grenadines','2018-09-23 18:40:48.387266','2018-09-23 18:40:48.387266',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vc',NULL,NULL,NULL,'America/St_Vincent','Saint Vincent and the Grenadines',NULL),('Samoa','2018-09-23 18:40:48.375279','2018-09-23 18:40:48.375279',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ws',NULL,NULL,NULL,'Pacific/Apia','Samoa',NULL),('San Marino','2018-09-23 18:40:48.409518','2018-09-23 18:40:48.409518',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sm',NULL,NULL,NULL,'Europe/Rome','San Marino',NULL),('Sao Tome and Principe','2018-09-23 18:40:48.261724','2018-09-23 18:40:48.261724',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','st',NULL,NULL,NULL,'','Sao Tome and Principe',NULL),('Saudi Arabia','2018-09-23 18:40:48.307289','2018-09-23 18:40:48.307289',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sa',NULL,NULL,NULL,'Asia/Riyadh','Saudi Arabia',NULL),('Senegal','2018-09-23 18:40:48.668296','2018-09-23 18:40:48.668296',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sn',NULL,NULL,NULL,'Africa/Dakar','Senegal',NULL),('Serbia','2018-09-23 18:40:48.734708','2018-09-23 18:40:48.734708',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','rs',NULL,NULL,NULL,'Europe/Belgrade','Serbia',NULL),('Seychelles','2018-09-23 18:40:48.428101','2018-09-23 18:40:48.428101',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sc',NULL,NULL,NULL,'Indian/Mahe','Seychelles',NULL),('Sierra Leone','2018-09-23 18:40:48.581114','2018-09-23 18:40:48.581114',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sl',NULL,NULL,NULL,'Africa/Freetown','Sierra Leone',NULL),('Singapore','2018-09-23 18:40:48.732266','2018-09-23 18:40:48.732266',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sg',NULL,NULL,NULL,'Asia/Singapore','Singapore',NULL),('Sint Maarten (Dutch part)','2018-09-23 18:40:48.744809','2018-09-23 18:40:48.744809',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sx',NULL,NULL,NULL,'','Sint Maarten (Dutch part)',NULL),('Slovakia','2018-09-23 18:40:48.417263','2018-09-23 18:40:48.417263',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sk',NULL,NULL,NULL,'Europe/Bratislava','Slovakia',NULL),('Slovenia','2018-09-23 18:40:48.560676','2018-09-23 18:40:48.560676',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','si',NULL,NULL,NULL,'Europe/Belgrade','Slovenia',NULL),('Solomon Islands','2018-09-23 18:40:48.404881','2018-09-23 18:40:48.404881',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sb',NULL,NULL,NULL,'Pacific/Guadalcanal','Solomon Islands',NULL),('Somalia','2018-09-23 18:40:48.418724','2018-09-23 18:40:48.418724',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','so',NULL,NULL,NULL,'Africa/Mogadishu','Somalia',NULL),('South Africa','2018-09-23 18:40:48.491930','2018-09-23 18:40:48.491930',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','za',NULL,NULL,NULL,'Africa/Johannesburg','South Africa',NULL),('South Georgia and the South Sandwich Islands','2018-09-23 18:40:48.499401','2018-09-23 18:40:48.499401',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gs',NULL,NULL,NULL,'','South Georgia and the South Sandwich Islands',NULL),('South Sudan','2018-09-23 18:40:48.713416','2018-09-23 18:40:48.713416',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ss',NULL,NULL,NULL,'Africa/Juba','South Sudan',NULL),('Spain','2018-09-23 18:40:48.625228','2018-09-23 18:40:48.625228',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','es',NULL,NULL,NULL,'Africa/Ceuta\nAtlantic/Canary\nEurope/Madrid','Spain',NULL),('Sri Lanka','2018-09-23 18:40:48.709323','2018-09-23 18:40:48.709323',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lk',NULL,NULL,NULL,'Asia/Colombo','Sri Lanka',NULL),('Sudan','2018-09-23 18:40:48.644774','2018-09-23 18:40:48.644774',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sd',NULL,NULL,NULL,'Africa/Khartoum','Sudan',NULL),('Suriname','2018-09-23 18:40:48.654998','2018-09-23 18:40:48.654998',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sr',NULL,NULL,NULL,'America/Paramaribo','Suriname',NULL),('Svalbard and Jan Mayen','2018-09-23 18:40:48.616649','2018-09-23 18:40:48.616649',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sj',NULL,NULL,NULL,'','Svalbard and Jan Mayen',NULL),('Swaziland','2018-09-23 18:40:48.423920','2018-09-23 18:40:48.423920',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sz',NULL,NULL,NULL,'Africa/Mbabane','Swaziland',NULL),('Sweden','2018-09-23 18:40:48.480276','2018-09-23 18:40:48.480276',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','se',NULL,NULL,NULL,'Europe/Stockholm','Sweden',NULL),('Switzerland','2018-09-23 18:40:48.284659','2018-09-23 18:40:48.284659',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ch',NULL,NULL,NULL,'Europe/Zurich','Switzerland',NULL),('Syria','2018-09-23 18:40:48.715863','2018-09-23 18:40:48.715863',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sy',NULL,NULL,NULL,'','Syria',NULL),('Taiwan','2018-09-23 18:40:48.632870','2018-09-23 18:40:48.632870',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','tw',NULL,NULL,NULL,'','Taiwan',NULL),('Tajikistan','2018-09-23 18:40:48.474783','2018-09-23 18:40:48.474783',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tj',NULL,NULL,NULL,'Asia/Dushanbe','Tajikistan',NULL),('Tanzania','2018-09-23 18:40:48.350688','2018-09-23 18:40:48.350688',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tz',NULL,NULL,NULL,'','Tanzania',NULL),('Thailand','2018-09-23 18:40:48.600324','2018-09-23 18:40:48.600324',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','th',NULL,NULL,NULL,'Asia/Bangkok','Thailand',NULL),('Timor-Leste','2018-09-23 18:40:48.452217','2018-09-23 18:40:48.452217',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tl',NULL,NULL,NULL,'','Timor-Leste',NULL),('Togo','2018-09-23 18:40:48.312105','2018-09-23 18:40:48.312105',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tg',NULL,NULL,NULL,'Africa/Lome','Togo',NULL),('Tokelau','2018-09-23 18:40:48.495271','2018-09-23 18:40:48.495271',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tk',NULL,NULL,NULL,'Pacific/Fakaofo','Tokelau',NULL),('Tonga','2018-09-23 18:40:48.460703','2018-09-23 18:40:48.460703',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','to',NULL,NULL,NULL,'Pacific/Tongatapu','Tonga',NULL),('Trinidad and Tobago','2018-09-23 18:40:48.674354','2018-09-23 18:40:48.674354',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tt',NULL,NULL,NULL,'America/Port_of_Spain','Trinidad and Tobago',NULL),('Tunisia','2018-09-23 18:40:48.619261','2018-09-23 18:40:48.619261',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tn',NULL,NULL,NULL,'Africa/Tunis','Tunisia',NULL),('Turkey','2018-09-23 18:40:48.522723','2018-09-23 18:40:48.522723',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tr',NULL,NULL,NULL,'Europe/Istanbul','Turkey',NULL),('Turkmenistan','2018-09-23 18:40:48.302349','2018-09-23 18:40:48.302349',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tm',NULL,NULL,NULL,'Asia/Ashgabat','Turkmenistan',NULL),('Turks and Caicos Islands','2018-09-23 18:40:48.406944','2018-09-23 18:40:48.406944',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tc',NULL,NULL,NULL,'','Turks and Caicos Islands',NULL),('Tuvalu','2018-09-23 18:40:48.565578','2018-09-23 18:40:48.565578',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tv',NULL,NULL,NULL,'Pacific/Funafuti','Tuvalu',NULL),('Uganda','2018-09-23 18:40:48.513394','2018-09-23 18:40:48.513394',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ug',NULL,NULL,NULL,'Africa/Kampala','Uganda',NULL),('Ukraine','2018-09-23 18:40:48.455515','2018-09-23 18:40:48.455515',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ua',NULL,NULL,NULL,'Europe/Kiev\nEurope/Simferopol\nEurope/Uzhgorod\nEurope/Zaporozhye','Ukraine',NULL),('United Arab Emirates','2018-09-23 18:40:48.378594','2018-09-23 18:40:48.378594',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ae',NULL,NULL,NULL,'Asia/Dubai','United Arab Emirates',NULL),('United Kingdom','2018-09-23 18:40:48.739169','2018-09-23 18:40:48.739169',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gb',NULL,NULL,NULL,'Europe/London','United Kingdom',NULL),('United States','2018-09-23 18:40:48.483876','2018-09-23 18:40:48.483876',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','us',NULL,NULL,NULL,'America/Adak\nAmerica/Anchorage\nAmerica/Boise\nAmerica/Chicago\nAmerica/Denver\nAmerica/Detroit\nAmerica/Indiana/Indianapolis\nAmerica/Indiana/Knox\nAmerica/Indiana/Marengo\nAmerica/Indiana/Petersburg\nAmerica/Indiana/Tell_City\nAmerica/Indiana/Vevay\nAmerica/Indiana/Vincennes\nAmerica/Indiana/Winamac\nAmerica/Juneau\nAmerica/Kentucky/Louisville\nAmerica/Kentucky/Monticello\nAmerica/Los_Angeles\nAmerica/Menominee\nAmerica/Metlakatla\nAmerica/New_York\nAmerica/Nome\nAmerica/North_Dakota/Beulah\nAmerica/North_Dakota/Center\nAmerica/North_Dakota/New_Salem\nAmerica/Phoenix\nAmerica/Denver\nAmerica/Sitka\nAmerica/Yakutat\nPacific/Honolulu','United States',NULL),('United States Minor Outlying Islands','2018-09-23 18:40:48.317393','2018-09-23 18:40:48.317393',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','um',NULL,NULL,NULL,'','United States Minor Outlying Islands',NULL),('Uruguay','2018-09-23 18:40:48.611782','2018-09-23 18:40:48.611782',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','uy',NULL,NULL,NULL,'America/Montevideo','Uruguay',NULL),('Uzbekistan','2018-09-23 18:40:48.617557','2018-09-23 18:40:48.617557',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','uz',NULL,NULL,NULL,'Asia/Samarkand\nAsia/Tashkent','Uzbekistan',NULL),('Vanuatu','2018-09-23 18:40:48.680778','2018-09-23 18:40:48.680778',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vu',NULL,NULL,NULL,'Pacific/Efate','Vanuatu',NULL),('Venezuela, Bolivarian Republic of','2018-09-23 18:40:48.268636','2018-09-23 18:40:48.268636',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ve',NULL,NULL,NULL,'','Venezuela, Bolivarian Republic of',NULL),('Vietnam','2018-09-23 18:40:48.509228','2018-09-23 18:40:48.509228',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vn',NULL,NULL,NULL,'','Vietnam',NULL),('Virgin Islands, British','2018-09-23 18:40:48.336324','2018-09-23 18:40:48.336324',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vg',NULL,NULL,NULL,'','Virgin Islands, British',NULL),('Virgin Islands, U.S.','2018-09-23 18:40:48.368952','2018-09-23 18:40:48.368952',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vi',NULL,NULL,NULL,'','Virgin Islands, U.S.',NULL),('Wallis and Futuna','2018-09-23 18:40:48.365502','2018-09-23 18:40:48.365502',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','wf',NULL,NULL,NULL,'','Wallis and Futuna',NULL),('Western Sahara','2018-09-23 18:40:48.438368','2018-09-23 18:40:48.438368',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','eh',NULL,NULL,NULL,'Africa/El_Aaiun','Western Sahara',NULL),('Yemen','2018-09-23 18:40:48.372760','2018-09-23 18:40:48.372760',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ye',NULL,NULL,NULL,'Asia/Aden','Yemen',NULL),('Zambia','2018-09-23 18:40:48.666198','2018-09-23 18:40:48.666198',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','zm',NULL,NULL,NULL,'Africa/Lusaka','Zambia',NULL),('Zimbabwe','2018-09-23 18:40:48.676825','2018-09-23 18:40:48.676825',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','zw',NULL,NULL,NULL,'Africa/Harare','Zimbabwe',NULL);
/*!40000 ALTER TABLE `tabCountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCurrency`
--

DROP TABLE IF EXISTS `tabCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCurrency` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `currency_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `smallest_currency_fraction_value` decimal(18,6) NOT NULL DEFAULT 0.000000,
  `fraction_units` int(11) NOT NULL DEFAULT 0,
  `fraction` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCurrency`
--

LOCK TABLES `tabCurrency` WRITE;
/*!40000 ALTER TABLE `tabCurrency` DISABLE KEYS */;
INSERT INTO `tabCurrency` VALUES ('AED','2018-09-23 18:40:48.379664','2018-09-23 18:40:48.755302','Administrator',NULL,0,NULL,NULL,NULL,0,'AED',NULL,NULL,'د.إ',NULL,1,0.000000,100,'Fils',NULL,'#,###.##'),('AFN','2018-09-23 18:40:48.398992','2018-09-23 18:40:48.398992',NULL,NULL,0,NULL,NULL,NULL,0,'AFN',NULL,NULL,'؋',NULL,0,0.000000,100,'Pul',NULL,'#,###.##'),('ALL','2018-09-23 18:40:48.357598','2018-09-23 18:40:48.357598',NULL,NULL,0,NULL,NULL,NULL,0,'ALL',NULL,NULL,'L',NULL,0,0.000000,100,'Qindarkë',NULL,'#,###.##'),('AMD','2018-09-23 18:40:48.451062','2018-09-23 18:40:48.451062',NULL,NULL,0,NULL,NULL,NULL,0,'AMD',NULL,NULL,'֏',NULL,0,0.000000,100,'Luma',NULL,'#,###.##'),('ARS','2018-09-23 18:40:48.296736','2018-09-23 18:40:48.296736',NULL,NULL,0,NULL,NULL,NULL,0,'ARS',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('AUD','2018-09-23 18:40:48.477892','2018-09-23 18:40:48.755702','Administrator',NULL,0,NULL,NULL,NULL,0,'AUD',NULL,NULL,'$',NULL,1,0.000000,100,'Cent',NULL,'# ###.##'),('AWG','2018-09-23 18:40:48.291437','2018-09-23 18:40:48.291437',NULL,NULL,0,NULL,NULL,NULL,0,'AWG',NULL,NULL,'Afl',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BAM','2018-09-23 18:40:48.324906','2018-09-23 18:40:48.324906',NULL,NULL,0,NULL,NULL,NULL,0,'BAM',NULL,NULL,'KM',NULL,0,0.000000,100,'Fening',NULL,'#.###,##'),('BBD','2018-09-23 18:40:48.638496','2018-09-23 18:40:48.638496',NULL,NULL,0,NULL,NULL,NULL,0,'BBD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BDT','2018-09-23 18:40:48.401383','2018-09-23 18:40:48.401383',NULL,NULL,0,NULL,NULL,NULL,0,'BDT',NULL,NULL,'৳',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('BGN','2018-09-23 18:40:48.482937','2018-09-23 18:40:48.482937',NULL,NULL,0,NULL,NULL,NULL,0,'BGN',NULL,NULL,'лв',NULL,0,0.000000,100,'Stotinka',NULL,'#,###.##'),('BHD','2018-09-23 18:40:48.458953','2018-09-23 18:40:48.458953',NULL,NULL,0,NULL,NULL,NULL,0,'BHD',NULL,NULL,'.د.ب',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('BIF','2018-09-23 18:40:48.631514','2018-09-23 18:40:48.631514',NULL,NULL,0,NULL,NULL,NULL,0,'BIF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('BMD','2018-09-23 18:40:48.416109','2018-09-23 18:40:48.416109',NULL,NULL,0,NULL,NULL,NULL,0,'BMD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BND','2018-09-23 18:40:48.502040','2018-09-23 18:40:48.502040',NULL,NULL,0,NULL,NULL,NULL,0,'BND',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BOB','2018-09-23 18:40:48.646799','2018-09-23 18:40:48.646799',NULL,NULL,0,NULL,NULL,NULL,0,'BOB',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BRL','2018-09-23 18:40:48.521411','2018-09-23 18:40:48.521411',NULL,NULL,0,NULL,NULL,NULL,0,'BRL',NULL,NULL,'R$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('BSD','2018-09-23 18:40:48.540506','2018-09-23 18:40:48.540506',NULL,NULL,0,NULL,NULL,NULL,0,'BSD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BTN','2018-09-23 18:40:48.643630','2018-09-23 18:40:48.643630',NULL,NULL,0,NULL,NULL,NULL,0,'BTN',NULL,NULL,'Nu.',NULL,0,0.000000,100,'Chetrum',NULL,'#,###.##'),('BWP','2018-09-23 18:40:48.738014','2018-09-23 18:40:48.738014',NULL,NULL,0,NULL,NULL,NULL,0,'BWP',NULL,NULL,'P',NULL,0,0.000000,100,'Thebe',NULL,'#,###.##'),('BZD','2018-09-23 18:40:48.578154','2018-09-23 18:40:48.578154',NULL,NULL,0,NULL,NULL,NULL,0,'BZD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('CAD','2018-09-23 18:40:48.259449','2018-09-23 18:40:48.259449',NULL,NULL,0,NULL,NULL,NULL,0,'CAD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('CHF','2018-09-23 18:40:48.286284','2018-09-23 18:40:48.756947','Administrator',NULL,0,NULL,NULL,NULL,0,'CHF',NULL,NULL,'Fr',NULL,1,0.050000,100,'Rappen[K]',NULL,'#\'###.##'),('CLP','2018-09-23 18:40:48.570288','2018-09-23 18:40:48.570288',NULL,NULL,0,NULL,NULL,NULL,0,'CLP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###'),('CNY','2018-09-23 18:40:48.448962','2018-09-23 18:40:48.756468','Administrator',NULL,0,NULL,NULL,NULL,0,'CNY',NULL,NULL,NULL,NULL,1,0.000000,0,NULL,NULL,'#,###.##'),('COP','2018-09-23 18:40:48.628694','2018-09-23 18:40:48.628694',NULL,NULL,0,NULL,NULL,NULL,0,'COP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('CRC','2018-09-23 18:40:48.535384','2018-09-23 18:40:48.535384',NULL,NULL,0,NULL,NULL,NULL,0,'CRC',NULL,NULL,'₡',NULL,0,0.000000,100,'Céntimo',NULL,'#.###,##'),('CUP','2018-09-23 18:40:48.440622','2018-09-23 18:40:48.440622',NULL,NULL,0,NULL,NULL,NULL,0,'CUP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('CVE','2018-09-23 18:40:48.538581','2018-09-23 18:40:48.538581',NULL,NULL,0,NULL,NULL,NULL,0,'CVE',NULL,NULL,'Esc or $',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('CYP','2018-09-23 18:40:48.498107','2018-09-23 18:40:48.498107',NULL,NULL,0,NULL,NULL,NULL,0,'CYP',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#.###,##'),('CZK','2018-09-23 18:40:48.552262','2018-09-23 18:40:48.552262',NULL,NULL,0,NULL,NULL,NULL,0,'CZK',NULL,NULL,'Kč',NULL,0,0.000000,100,'Haléř',NULL,'#.###,##'),('DJF','2018-09-23 18:40:48.621641','2018-09-23 18:40:48.621641',NULL,NULL,0,NULL,NULL,NULL,0,'DJF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('DKK','2018-09-23 18:40:48.684293','2018-09-23 18:40:48.684293',NULL,NULL,0,NULL,NULL,NULL,0,'DKK',NULL,NULL,'kr',NULL,0,0.000000,100,'Øre',NULL,'#.###,##'),('DOP','2018-09-23 18:40:48.454262','2018-09-23 18:40:48.454262',NULL,NULL,0,NULL,NULL,NULL,0,'DOP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('DZD','2018-09-23 18:40:48.558851','2018-09-23 18:40:48.558851',NULL,NULL,0,NULL,NULL,NULL,0,'DZD',NULL,NULL,'د.ج',NULL,0,0.000000,100,'Santeem',NULL,'#,###.##'),('EEK','2018-09-23 18:40:48.610827','2018-09-23 18:40:48.610827',NULL,NULL,0,NULL,NULL,NULL,0,'EEK',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('EGP','2018-09-23 18:40:48.726752','2018-09-23 18:40:48.726752',NULL,NULL,0,NULL,NULL,NULL,0,'EGP',NULL,NULL,'£ or ج.م',NULL,0,0.000000,100,'Piastre[F]',NULL,'#,###.##'),('ERN','2018-09-23 18:40:48.694320','2018-09-23 18:40:48.694320',NULL,NULL,0,NULL,NULL,NULL,0,'ERN',NULL,NULL,'Nfk',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('EUR','2018-09-23 18:40:48.364208','2018-09-23 18:40:48.754443','Administrator',NULL,0,NULL,NULL,NULL,0,'EUR',NULL,NULL,'€',NULL,1,0.000000,100,'Cent',NULL,'#,###.##'),('FJD','2018-09-23 18:40:48.636271','2018-09-23 18:40:48.636271',NULL,NULL,0,NULL,NULL,NULL,0,'FJD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('FKP','2018-09-23 18:40:48.444534','2018-09-23 18:40:48.444534',NULL,NULL,0,NULL,NULL,NULL,0,'FKP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('GBP','2018-09-23 18:40:48.740710','2018-09-23 18:40:48.754121','Administrator',NULL,0,NULL,NULL,NULL,0,'GBP',NULL,NULL,'£',NULL,1,0.000000,100,'Penny',NULL,'#,###.##'),('GHS','2018-09-23 18:40:48.305989','2018-09-23 18:40:48.305989',NULL,NULL,0,NULL,NULL,NULL,0,'GHS',NULL,NULL,'₵',NULL,0,0.000000,100,'Pesewa',NULL,'#,###.##'),('GIP','2018-09-23 18:40:48.543213','2018-09-23 18:40:48.543213',NULL,NULL,0,NULL,NULL,NULL,0,'GIP',NULL,NULL,'£',NULL,0,0.000000,100,'Penny',NULL,'#,###.##'),('GMD','2018-09-23 18:40:48.586860','2018-09-23 18:40:48.586860',NULL,NULL,0,NULL,NULL,NULL,0,'GMD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('GNF','2018-09-23 18:40:48.529766','2018-09-23 18:40:48.529766',NULL,NULL,0,NULL,NULL,NULL,0,'GNF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('GTQ','2018-09-23 18:40:48.322075','2018-09-23 18:40:48.322075',NULL,NULL,0,NULL,NULL,NULL,0,'GTQ',NULL,NULL,'Q',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('GYD','2018-09-23 18:40:48.533469','2018-09-23 18:40:48.533469',NULL,NULL,0,NULL,NULL,NULL,0,'GYD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('HKD','2018-09-23 18:40:48.580115','2018-09-23 18:40:48.580115',NULL,NULL,0,NULL,NULL,NULL,0,'HKD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('HNL','2018-09-23 18:40:48.720019','2018-09-23 18:40:48.720019',NULL,NULL,0,NULL,NULL,NULL,0,'HNL',NULL,NULL,'L',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('HRK','2018-09-23 18:40:48.594945','2018-09-23 18:40:48.594945',NULL,NULL,0,NULL,NULL,NULL,0,'HRK',NULL,NULL,'kn',NULL,0,0.000000,100,'Lipa',NULL,'#.###,##'),('HTG','2018-09-23 18:40:48.576115','2018-09-23 18:40:48.576115',NULL,NULL,0,NULL,NULL,NULL,0,'HTG',NULL,NULL,'G',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('HUF','2018-09-23 18:40:48.516499','2018-09-23 18:40:48.516499',NULL,NULL,0,NULL,NULL,NULL,0,'HUF',NULL,NULL,'Ft',NULL,0,0.000000,100,'Fillér',NULL,'#.###'),('IDR','2018-09-23 18:40:48.661960','2018-09-23 18:40:48.661960',NULL,NULL,0,NULL,NULL,NULL,0,'IDR',NULL,NULL,'Rp',NULL,0,0.000000,100,'Sen',NULL,'#.###,##'),('ILS','2018-09-23 18:40:48.706031','2018-09-23 18:40:48.706031',NULL,NULL,0,NULL,NULL,NULL,0,'ILS',NULL,NULL,'₪',NULL,0,0.000000,100,'Agora',NULL,'#,###.##'),('INR','2018-09-23 18:40:48.382959','2018-09-23 18:40:48.753296','Administrator',NULL,0,NULL,NULL,NULL,0,'INR',NULL,NULL,'₹',NULL,1,0.000000,100,'Paisa',NULL,'#,##,###.##'),('IQD','2018-09-23 18:40:48.607666','2018-09-23 18:40:48.607666',NULL,NULL,0,NULL,NULL,NULL,0,'IQD',NULL,NULL,'ع.د',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('IRR','2018-09-23 18:40:48.555331','2018-09-23 18:40:48.555331',NULL,NULL,0,NULL,NULL,NULL,0,'IRR',NULL,NULL,'﷼',NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('ISK','2018-09-23 18:40:48.664998','2018-09-23 18:40:48.664998',NULL,NULL,0,NULL,NULL,NULL,0,'ISK',NULL,NULL,'kr',NULL,0,0.000000,100,'Eyrir',NULL,'#.###'),('JMD','2018-09-23 18:40:48.347310','2018-09-23 18:40:48.347310',NULL,NULL,0,NULL,NULL,NULL,0,'JMD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('JOD','2018-09-23 18:40:48.333914','2018-09-23 18:40:48.333914',NULL,NULL,0,NULL,NULL,NULL,0,'JOD',NULL,NULL,'د.ا',NULL,0,0.000000,100,'Piastre[H]',NULL,'#,###.###'),('JPY','2018-09-23 18:40:48.314770','2018-09-23 18:40:48.756081','Administrator',NULL,0,NULL,NULL,NULL,0,'JPY',NULL,NULL,'¥',NULL,1,0.000000,100,'Sen[G]',NULL,'#,###'),('KES','2018-09-23 18:40:48.389933','2018-09-23 18:40:48.389933',NULL,NULL,0,NULL,NULL,NULL,0,'KES',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('KGS','2018-09-23 18:40:48.697581','2018-09-23 18:40:48.697581',NULL,NULL,0,NULL,NULL,NULL,0,'KGS',NULL,NULL,'лв',NULL,0,0.000000,100,'Tyiyn',NULL,'#,###.##'),('KHR','2018-09-23 18:40:48.278627','2018-09-23 18:40:48.278627',NULL,NULL,0,NULL,NULL,NULL,0,'KHR',NULL,NULL,'៛',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('KMF','2018-09-23 18:40:48.752851','2018-09-23 18:40:48.752851',NULL,NULL,0,NULL,NULL,NULL,0,'KMF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('KPW','2018-09-23 18:40:48.414226','2018-09-23 18:40:48.414226',NULL,NULL,0,NULL,NULL,NULL,0,'KPW',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('KRW','2018-09-23 18:40:48.343949','2018-09-23 18:40:48.343949',NULL,NULL,0,NULL,NULL,NULL,0,'KRW',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###'),('KWD','2018-09-23 18:40:48.328235','2018-09-23 18:40:48.328235',NULL,NULL,0,NULL,NULL,NULL,0,'KWD',NULL,NULL,'د.ك',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('KYD','2018-09-23 18:40:48.468714','2018-09-23 18:40:48.468714',NULL,NULL,0,NULL,NULL,NULL,0,'KYD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('KZ','2018-09-23 18:40:48.488192','2018-09-23 18:40:48.488192',NULL,NULL,0,NULL,NULL,NULL,0,'KZ',NULL,NULL,'AOA',NULL,0,0.000000,100,'Cêntimo',NULL,'#,###.##'),('KZT','2018-09-23 18:40:48.686531','2018-09-23 18:40:48.686531',NULL,NULL,0,NULL,NULL,NULL,0,'KZT',NULL,NULL,'₸',NULL,0,0.000000,100,'Tïın',NULL,'#,###.##'),('LAK','2018-09-23 18:40:48.395850','2018-09-23 18:40:48.395850',NULL,NULL,0,NULL,NULL,NULL,0,'LAK',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('LBP','2018-09-23 18:40:48.615694','2018-09-23 18:40:48.615694',NULL,NULL,0,NULL,NULL,NULL,0,'LBP',NULL,NULL,'ل.ل',NULL,0,0.000000,100,'Piastre',NULL,'#,###.##'),('LKR','2018-09-23 18:40:48.710273','2018-09-23 18:40:48.710273',NULL,NULL,0,NULL,NULL,NULL,0,'LKR',NULL,NULL,'Rs',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('LRD','2018-09-23 18:40:48.341312','2018-09-23 18:40:48.341312',NULL,NULL,0,NULL,NULL,NULL,0,'LRD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('LSL','2018-09-23 18:40:48.386170','2018-09-23 18:40:48.386170',NULL,NULL,0,NULL,NULL,NULL,0,'LSL',NULL,NULL,'L',NULL,0,0.000000,100,'Sente',NULL,'#,###.##'),('LTL','2018-09-23 18:40:48.275336','2018-09-23 18:40:48.275336',NULL,NULL,0,NULL,NULL,NULL,0,'LTL',NULL,NULL,'Lt',NULL,0,0.000000,100,'Centas',NULL,'# ###,##'),('LVL','2018-09-23 18:40:48.712281','2018-09-23 18:40:48.712281',NULL,NULL,0,NULL,NULL,NULL,0,'LVL',NULL,NULL,'Ls',NULL,0,0.000000,100,'Santīms',NULL,'#,###.##'),('LYD','2018-09-23 18:40:48.466748','2018-09-23 18:40:48.466748',NULL,NULL,0,NULL,NULL,NULL,0,'LYD',NULL,NULL,'ل.د',NULL,0,0.000000,1000,'Dirham',NULL,'#,###.###'),('MAD','2018-09-23 18:40:48.591609','2018-09-23 18:40:48.591609',NULL,NULL,0,NULL,NULL,NULL,0,'MAD',NULL,NULL,'د.م.',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('MDL','2018-09-23 18:40:48.691135','2018-09-23 18:40:48.691135',NULL,NULL,0,NULL,NULL,NULL,0,'MDL',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MKD','2018-09-23 18:40:48.708169','2018-09-23 18:40:48.708169',NULL,NULL,0,NULL,NULL,NULL,0,'MKD',NULL,NULL,'ден',NULL,0,0.000000,100,'Deni',NULL,'#,###.##'),('MMK','2018-09-23 18:40:48.722058','2018-09-23 18:40:48.722058',NULL,NULL,0,NULL,NULL,NULL,0,'MMK',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MNT','2018-09-23 18:40:48.597906','2018-09-23 18:40:48.597906',NULL,NULL,0,NULL,NULL,NULL,0,'MNT',NULL,NULL,'₮',NULL,0,0.000000,100,'Möngö',NULL,'#,###.##'),('MOP','2018-09-23 18:40:48.392384','2018-09-23 18:40:48.392384',NULL,NULL,0,NULL,NULL,NULL,0,'MOP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MRO','2018-09-23 18:40:48.403763','2018-09-23 18:40:48.403763',NULL,NULL,0,NULL,NULL,NULL,0,'MRO',NULL,NULL,'UM',NULL,0,0.000000,5,'Khoums',NULL,'#,###.##'),('MTL','2018-09-23 18:40:48.650779','2018-09-23 18:40:48.650779',NULL,NULL,0,NULL,NULL,NULL,0,'MTL',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('MUR','2018-09-23 18:40:48.473525','2018-09-23 18:40:48.473525',NULL,NULL,0,NULL,NULL,NULL,0,'MUR',NULL,NULL,'₨',NULL,0,0.000000,100,'Cent',NULL,'#,###'),('MVR','2018-09-23 18:40:48.652799','2018-09-23 18:40:48.652799',NULL,NULL,0,NULL,NULL,NULL,0,'MVR',NULL,NULL,'.ރ',NULL,0,0.000000,100,'Laari',NULL,'#,###.##'),('MWK','2018-09-23 18:40:48.434521','2018-09-23 18:40:48.434521',NULL,NULL,0,NULL,NULL,NULL,0,'MWK',NULL,NULL,'MK',NULL,0,0.000000,100,'Tambala',NULL,'#,###.##'),('MXN','2018-09-23 18:40:48.584970','2018-09-23 18:40:48.584970',NULL,NULL,0,NULL,NULL,NULL,0,'MXN',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('MYR','2018-09-23 18:40:48.506489','2018-09-23 18:40:48.506489',NULL,NULL,0,NULL,NULL,NULL,0,'MYR',NULL,NULL,'RM',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('NAD','2018-09-23 18:40:48.603427','2018-09-23 18:40:48.603427',NULL,NULL,0,NULL,NULL,NULL,0,'NAD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('NGN','2018-09-23 18:40:48.549371','2018-09-23 18:40:48.549371',NULL,NULL,0,NULL,NULL,NULL,0,'NGN',NULL,NULL,'₦',NULL,0,0.000000,100,'Kobo',NULL,'#,###.##'),('NIO','2018-09-23 18:40:48.730421','2018-09-23 18:40:48.730421',NULL,NULL,0,NULL,NULL,NULL,0,'NIO',NULL,NULL,'C$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('NOK','2018-09-23 18:40:48.432145','2018-09-23 18:40:48.432145',NULL,NULL,0,NULL,NULL,NULL,0,'NOK',NULL,NULL,'kr',NULL,0,0.000000,100,'Øre',NULL,'#.###,##'),('NPR','2018-09-23 18:40:48.648793','2018-09-23 18:40:48.648793',NULL,NULL,0,NULL,NULL,NULL,0,'NPR',NULL,NULL,'₨',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('NZD','2018-09-23 18:40:48.367667','2018-09-23 18:40:48.367667',NULL,NULL,0,NULL,NULL,NULL,0,'NZD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('OMR','2018-09-23 18:40:48.349413','2018-09-23 18:40:48.349413',NULL,NULL,0,NULL,NULL,NULL,0,'OMR',NULL,NULL,'ر.ع.',NULL,0,0.000000,1000,'Baisa',NULL,'#,###.###'),('PEN','2018-09-23 18:40:48.422518','2018-09-23 18:40:48.422518',NULL,NULL,0,NULL,NULL,NULL,0,'PEN',NULL,NULL,'S/.',NULL,0,0.000000,100,'Céntimo',NULL,'#,###.##'),('PGK','2018-09-23 18:40:48.671313','2018-09-23 18:40:48.671313',NULL,NULL,0,NULL,NULL,NULL,0,'PGK',NULL,NULL,'K',NULL,0,0.000000,100,'Toea',NULL,'#,###.##'),('PHP','2018-09-23 18:40:48.588756','2018-09-23 18:40:48.588756',NULL,NULL,0,NULL,NULL,NULL,0,'PHP',NULL,NULL,'₱',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('PKR','2018-09-23 18:40:48.546483','2018-09-23 18:40:48.546483',NULL,NULL,0,NULL,NULL,NULL,0,'PKR',NULL,NULL,'₨',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('PLN','2018-09-23 18:40:48.688706','2018-09-23 18:40:48.688706',NULL,NULL,0,NULL,NULL,NULL,0,'PLN',NULL,NULL,'zł',NULL,0,0.000000,100,'Grosz',NULL,'#.###,##'),('PYG','2018-09-23 18:40:48.748477','2018-09-23 18:40:48.748477',NULL,NULL,0,NULL,NULL,NULL,0,'PYG',NULL,NULL,'₲',NULL,0,0.000000,100,'Céntimo',NULL,'#,###.##'),('QAR','2018-09-23 18:40:48.504309','2018-09-23 18:40:48.504309',NULL,NULL,0,NULL,NULL,NULL,0,'QAR',NULL,NULL,'ر.ق',NULL,0,0.000000,100,'Dirham',NULL,'#,###.##'),('RON','2018-09-23 18:40:48.486418','2018-09-23 18:40:48.486418',NULL,NULL,0,NULL,NULL,NULL,0,'RON',NULL,NULL,'lei',NULL,0,0.000000,100,'Bani',NULL,'#,###.##'),('RSD','2018-09-23 18:40:48.735837','2018-09-23 18:40:48.735837',NULL,NULL,0,NULL,NULL,NULL,0,'RSD',NULL,NULL,'дин.',NULL,0,0.000000,100,'Para',NULL,'#,###.##'),('RUB','2018-09-23 18:40:48.331479','2018-09-23 18:40:48.331479',NULL,NULL,0,NULL,NULL,NULL,0,'RUB',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#.###,##'),('RWF','2018-09-23 18:40:48.310895','2018-09-23 18:40:48.310895',NULL,NULL,0,NULL,NULL,NULL,0,'RWF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('SAR','2018-09-23 18:40:48.308449','2018-09-23 18:40:48.308449',NULL,NULL,0,NULL,NULL,NULL,0,'SAR',NULL,NULL,'ر.س',NULL,0,0.000000,100,'Halala',NULL,'#,###.##'),('SBD','2018-09-23 18:40:48.405828','2018-09-23 18:40:48.405828',NULL,NULL,0,NULL,NULL,NULL,0,'SBD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SCR','2018-09-23 18:40:48.429623','2018-09-23 18:40:48.429623',NULL,NULL,0,NULL,NULL,NULL,0,'SCR',NULL,NULL,'₨',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SEK','2018-09-23 18:40:48.481117','2018-09-23 18:40:48.481117',NULL,NULL,0,NULL,NULL,NULL,0,'SEK',NULL,NULL,'kr',NULL,0,0.000000,100,'Öre',NULL,'#.###,##'),('SGD','2018-09-23 18:40:48.733465','2018-09-23 18:40:48.733465',NULL,NULL,0,NULL,NULL,NULL,0,'SGD',NULL,NULL,'$',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('SHP','2018-09-23 18:40:48.282729','2018-09-23 18:40:48.282729',NULL,NULL,0,NULL,NULL,NULL,0,'SHP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SLL','2018-09-23 18:40:48.581957','2018-09-23 18:40:48.581957',NULL,NULL,0,NULL,NULL,NULL,0,'SLL',NULL,NULL,'Le',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SOS','2018-09-23 18:40:48.419678','2018-09-23 18:40:48.419678',NULL,NULL,0,NULL,NULL,NULL,0,'SOS',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('STD','2018-09-23 18:40:48.263737','2018-09-23 18:40:48.263737',NULL,NULL,0,NULL,NULL,NULL,0,'STD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SVC','2018-09-23 18:40:48.564115','2018-09-23 18:40:48.564115',NULL,NULL,0,NULL,NULL,NULL,0,'SVC',NULL,NULL,'₡',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('SYP','2018-09-23 18:40:48.716791','2018-09-23 18:40:48.716791',NULL,NULL,0,NULL,NULL,NULL,0,'SYP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SZL','2018-09-23 18:40:48.425068','2018-09-23 18:40:48.425068',NULL,NULL,0,NULL,NULL,NULL,0,'SZL',NULL,NULL,'L',NULL,0,0.000000,100,'Cent',NULL,'#, ###.##'),('THB','2018-09-23 18:40:48.601394','2018-09-23 18:40:48.601394',NULL,NULL,0,NULL,NULL,NULL,0,'THB',NULL,NULL,'฿',NULL,0,0.000000,100,'Satang',NULL,'#,###.##'),('TMM','2018-09-23 18:40:48.303617','2018-09-23 18:40:48.303617',NULL,NULL,0,NULL,NULL,NULL,0,'TMM',NULL,NULL,'m',NULL,0,0.000000,100,'Tennesi',NULL,'#,###.##'),('TND','2018-09-23 18:40:48.620002','2018-09-23 18:40:48.620002',NULL,NULL,0,NULL,NULL,NULL,0,'TND',NULL,NULL,'د.ت',NULL,0,0.000000,1000,'Millime',NULL,'#,###.###'),('TOP','2018-09-23 18:40:48.462179','2018-09-23 18:40:48.462179',NULL,NULL,0,NULL,NULL,NULL,0,'TOP',NULL,NULL,'T$',NULL,0,0.000000,100,'Seniti[L]',NULL,'#,###.##'),('TRY','2018-09-23 18:40:48.523800','2018-09-23 18:40:48.523800',NULL,NULL,0,NULL,NULL,NULL,0,'TRY',NULL,NULL,'₺',NULL,0,0.000000,100,'Kuruş',NULL,'#,###.##'),('TTD','2018-09-23 18:40:48.675573','2018-09-23 18:40:48.675573',NULL,NULL,0,NULL,NULL,NULL,0,'TTD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('TWD','2018-09-23 18:40:48.633939','2018-09-23 18:40:48.633939',NULL,NULL,0,NULL,NULL,NULL,0,'TWD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('TZS','2018-09-23 18:40:48.351851','2018-09-23 18:40:48.351851',NULL,NULL,0,NULL,NULL,NULL,0,'TZS',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('UAH','2018-09-23 18:40:48.456607','2018-09-23 18:40:48.456607',NULL,NULL,0,NULL,NULL,NULL,0,'UAH',NULL,NULL,'₴',NULL,0,0.000000,100,'Kopiyka',NULL,'#,###.##'),('UGX','2018-09-23 18:40:48.514359','2018-09-23 18:40:48.514359',NULL,NULL,0,NULL,NULL,NULL,0,'UGX',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('USD','2018-09-23 18:40:48.484690','2018-09-23 18:40:48.753784','Administrator',NULL,0,NULL,NULL,NULL,0,'USD',NULL,NULL,'$',NULL,1,0.010000,100,'Cent',NULL,'#,###.##'),('UYU','2018-09-23 18:40:48.612618','2018-09-23 18:40:48.612618',NULL,NULL,0,NULL,NULL,NULL,0,'UYU',NULL,NULL,'$',NULL,0,0.000000,100,'Centésimo',NULL,'#.###,##'),('UZS','2018-09-23 18:40:48.618338','2018-09-23 18:40:48.618338',NULL,NULL,0,NULL,NULL,NULL,0,'UZS',NULL,NULL,'лв',NULL,0,0.000000,100,'Tiyin',NULL,'#,###.##'),('VEF','2018-09-23 18:40:48.269726','2018-09-23 18:40:48.269726',NULL,NULL,0,NULL,NULL,NULL,0,'VEF',NULL,NULL,'Bs.',NULL,0,0.000000,100,'Centimos',NULL,'#.###,##'),('VND','2018-09-23 18:40:48.510284','2018-09-23 18:40:48.510284',NULL,NULL,0,NULL,NULL,NULL,0,'VND',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#.###'),('VUV','2018-09-23 18:40:48.681893','2018-09-23 18:40:48.681893',NULL,NULL,0,NULL,NULL,NULL,0,'VUV',NULL,NULL,'Vt',NULL,0,0.000000,0,'None',NULL,'#,###'),('WST','2018-09-23 18:40:48.376313','2018-09-23 18:40:48.376313',NULL,NULL,0,NULL,NULL,NULL,0,'WST',NULL,NULL,'T',NULL,0,0.000000,100,'Sene',NULL,'#,###.##'),('XAF','2018-09-23 18:40:48.299296','2018-09-23 18:40:48.299296',NULL,NULL,0,NULL,NULL,NULL,0,'XAF',NULL,NULL,'FCFA',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('XCD','2018-09-23 18:40:48.338585','2018-09-23 18:40:48.338585',NULL,NULL,0,NULL,NULL,NULL,0,'XCD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('XOF','2018-09-23 18:40:48.271907','2018-09-23 18:40:48.271907',NULL,NULL,0,NULL,NULL,NULL,0,'XOF',NULL,NULL,'CFA',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('ZAR','2018-09-23 18:40:48.493818','2018-09-23 18:40:48.493818',NULL,NULL,0,NULL,NULL,NULL,0,'ZAR',NULL,NULL,'R',NULL,0,0.000000,100,'Cent',NULL,'# ###.##'),('ZMW','2018-09-23 18:40:48.667200','2018-09-23 18:40:48.667200',NULL,NULL,0,NULL,NULL,NULL,0,'ZMW',NULL,NULL,'ZK',NULL,0,0.000000,100,'Ngwee',NULL,'#,###.##'),('ZWD','2018-09-23 18:40:48.677979','2018-09-23 18:40:48.677979',NULL,NULL,0,NULL,NULL,NULL,0,'ZWD',NULL,NULL,'P',NULL,0,0.000000,100,'Thebe',NULL,'# ###.##');
/*!40000 ALTER TABLE `tabCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom DocPerm`
--

DROP TABLE IF EXISTS `tabCustom DocPerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom DocPerm` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `share` int(1) NOT NULL DEFAULT 1,
  `export` int(1) NOT NULL DEFAULT 1,
  `cancel` int(1) NOT NULL DEFAULT 0,
  `user_permission_doctypes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create` int(1) NOT NULL DEFAULT 1,
  `submit` int(1) NOT NULL DEFAULT 0,
  `write` int(1) NOT NULL DEFAULT 1,
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print` int(1) NOT NULL DEFAULT 1,
  `import` int(1) NOT NULL DEFAULT 0,
  `email` int(1) NOT NULL DEFAULT 1,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_user_permissions` int(1) NOT NULL DEFAULT 0,
  `read` int(1) NOT NULL DEFAULT 1,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_user_permissions` int(1) NOT NULL DEFAULT 0,
  `report` int(1) NOT NULL DEFAULT 1,
  `amend` int(1) NOT NULL DEFAULT 0,
  `permlevel` int(11) NOT NULL DEFAULT 0,
  `if_owner` int(1) NOT NULL DEFAULT 0,
  `delete` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom DocPerm`
--

LOCK TABLES `tabCustom DocPerm` WRITE;
/*!40000 ALTER TABLE `tabCustom DocPerm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom DocPerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Field`
--

DROP TABLE IF EXISTS `tabCustom Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `collapsible` int(1) NOT NULL DEFAULT 0,
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_copy` int(1) NOT NULL DEFAULT 0,
  `depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_list_view` int(1) NOT NULL DEFAULT 0,
  `reqd` int(1) NOT NULL DEFAULT 0,
  `ignore_xss_filter` int(1) NOT NULL DEFAULT 0,
  `in_global_search` int(1) NOT NULL DEFAULT 0,
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_only` int(1) NOT NULL DEFAULT 0,
  `print_hide` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ignore_user_permissions` int(1) NOT NULL DEFAULT 0,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT 0,
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `permlevel` int(11) NOT NULL DEFAULT 0,
  `columns` int(11) NOT NULL DEFAULT 0,
  `insert_after` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bold` int(1) NOT NULL DEFAULT 0,
  `search_index` int(1) NOT NULL DEFAULT 0,
  `allow_on_submit` int(1) NOT NULL DEFAULT 0,
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_standard_filter` int(1) NOT NULL DEFAULT 0,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_hide` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `dt` (`dt`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Field`
--

LOCK TABLES `tabCustom Field` WRITE;
/*!40000 ALTER TABLE `tabCustom Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Role`
--

DROP TABLE IF EXISTS `tabCustom Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Role` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Role`
--

LOCK TABLES `tabCustom Role` WRITE;
/*!40000 ALTER TABLE `tabCustom Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Script`
--

DROP TABLE IF EXISTS `tabCustom Script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Script` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Client',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Script`
--

LOCK TABLES `tabCustom Script` WRITE;
/*!40000 ALTER TABLE `tabCustom Script` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomize Form Field`
--

DROP TABLE IF EXISTS `tabCustomize Form Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomize Form Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `collapsible` int(1) NOT NULL DEFAULT 0,
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_list_view` int(1) NOT NULL DEFAULT 0,
  `reqd` int(1) NOT NULL DEFAULT 0,
  `in_global_search` int(1) NOT NULL DEFAULT 0,
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_filter` int(1) NOT NULL DEFAULT 0,
  `read_only` int(1) NOT NULL DEFAULT 0,
  `print_hide` int(1) NOT NULL DEFAULT 0,
  `ignore_user_permissions` int(1) NOT NULL DEFAULT 0,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT 0,
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_bulk_edit` int(1) NOT NULL DEFAULT 0,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `permlevel` int(11) NOT NULL DEFAULT 0,
  `columns` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_on_submit` int(1) NOT NULL DEFAULT 0,
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom_field` int(1) NOT NULL DEFAULT 0,
  `bold` int(1) NOT NULL DEFAULT 0,
  `remember_last_selected_value` int(1) NOT NULL DEFAULT 0,
  `unique` int(1) NOT NULL DEFAULT 0,
  `default` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_standard_filter` int(1) NOT NULL DEFAULT 0,
  `length` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_hide` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `label` (`label`),
  KEY `fieldname` (`fieldname`),
  KEY `fieldtype` (`fieldtype`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomize Form Field`
--

LOCK TABLES `tabCustomize Form Field` WRITE;
/*!40000 ALTER TABLE `tabCustomize Form Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomize Form Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Import`
--

DROP TABLE IF EXISTS `tabData Import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Import` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `no_email` int(1) NOT NULL DEFAULT 1,
  `total_rows` int(11) NOT NULL DEFAULT 0,
  `show_only_errors` int(1) NOT NULL DEFAULT 1,
  `overwrite` int(1) NOT NULL DEFAULT 0,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skip_errors` int(1) NOT NULL DEFAULT 0,
  `only_update` int(1) NOT NULL DEFAULT 0,
  `amended_from` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_after_import` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ignore_encoding_errors` int(1) NOT NULL DEFAULT 0,
  `import_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Import`
--

LOCK TABLES `tabData Import` WRITE;
/*!40000 ALTER TABLE `tabData Import` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Connector`
--

DROP TABLE IF EXISTS `tabData Migration Connector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Connector` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `python_module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `database_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Connector`
--

LOCK TABLES `tabData Migration Connector` WRITE;
/*!40000 ALTER TABLE `tabData Migration Connector` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Connector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Mapping`
--

DROP TABLE IF EXISTS `tabData Migration Mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Mapping` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `remote_objectname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migration_id_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapping_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_primary_key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_primary_key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapping_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_length` int(11) NOT NULL DEFAULT 10,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Mapping`
--

LOCK TABLES `tabData Migration Mapping` WRITE;
/*!40000 ALTER TABLE `tabData Migration Mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Mapping Detail`
--

DROP TABLE IF EXISTS `tabData Migration Mapping Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Mapping Detail` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `is_child_table` int(1) NOT NULL DEFAULT 0,
  `remote_fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_table_mapping` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Mapping Detail`
--

LOCK TABLES `tabData Migration Mapping Detail` WRITE;
/*!40000 ALTER TABLE `tabData Migration Mapping Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Mapping Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Plan`
--

DROP TABLE IF EXISTS `tabData Migration Plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Plan` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Plan`
--

LOCK TABLES `tabData Migration Plan` WRITE;
/*!40000 ALTER TABLE `tabData Migration Plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Plan Mapping`
--

DROP TABLE IF EXISTS `tabData Migration Plan Mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Plan Mapping` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `mapping` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Plan Mapping`
--

LOCK TABLES `tabData Migration Plan Mapping` WRITE;
/*!40000 ALTER TABLE `tabData Migration Plan Mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Plan Mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabData Migration Run`
--

DROP TABLE IF EXISTS `tabData Migration Run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabData Migration Run` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `current_mapping_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_migration_connector` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_insert` int(11) NOT NULL DEFAULT 0,
  `pull_update` int(11) NOT NULL DEFAULT 0,
  `current_mapping_delete_start` int(11) NOT NULL DEFAULT 0,
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_migration_plan` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_failed` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pull_insert` int(11) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `push_update` int(11) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_pages` int(11) NOT NULL DEFAULT 0,
  `percent_complete` decimal(18,6) NOT NULL DEFAULT 0.000000,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_delete` int(11) NOT NULL DEFAULT 0,
  `current_mapping_action` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pull_failed` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_mapping_start` int(11) NOT NULL DEFAULT 0,
  `current_mapping` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabData Migration Run`
--

LOCK TABLES `tabData Migration Run` WRITE;
/*!40000 ALTER TABLE `tabData Migration Run` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabData Migration Run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDefaultValue`
--

DROP TABLE IF EXISTS `tabDefaultValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDefaultValue` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `defvalue` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defkey` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `defaultvalue_parent_defkey_index` (`parent`,`defkey`),
  KEY `defaultvalue_parent_parenttype_index` (`parent`,`parenttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDefaultValue`
--

LOCK TABLES `tabDefaultValue` WRITE;
/*!40000 ALTER TABLE `tabDefaultValue` DISABLE KEYS */;
INSERT INTO `tabDefaultValue` VALUES ('09f2125c04','2018-09-23 18:40:46.252904','2018-09-23 18:40:46.252904','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','allow_login_using_user_name'),('0e2f74429c','2018-09-23 18:40:46.301096','2018-09-23 18:40:46.301096','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','enable_two_factor_auth'),('10036f82d9','2018-09-23 18:40:46.224598','2018-09-23 18:40:46.224598','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','deny_multiple_sessions'),('1ea99b9555','2018-09-23 18:40:46.016734','2018-09-23 18:40:46.016734','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','setup_complete'),('22a1cbc19d','2018-09-23 18:40:46.285604','2018-09-23 18:40:46.285604','Administrator','Administrator',0,'__default','system_defaults','__default',0,'60','allow_login_after_fail'),('25a0d42ac7','2018-09-23 18:40:46.004683','2018-09-23 18:40:46.004683','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','is_first_startup'),('5593181212','2018-09-23 18:40:46.177211','2018-09-23 18:40:46.177211','Administrator','Administrator',0,'__default','system_defaults','__default',0,'720:00','session_expiry_mobile'),('57d6bbdfe5','2018-09-23 18:40:46.030744','2018-09-23 18:40:46.030744','Administrator','Administrator',0,'__default','system_defaults','__default',0,'yyyy-mm-dd','date_format'),('62926b1d70','2018-09-23 18:40:46.367044','2018-09-23 18:40:46.367044','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','disable_standard_email_footer'),('67cb8e4060','2018-09-23 18:40:46.239387','2018-09-23 18:40:46.239387','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','allow_login_using_mobile_number'),('687d372f09','2018-09-23 18:40:46.071094','2018-09-23 18:40:46.071094','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','currency_precision'),('809861860d','2018-09-23 18:40:46.266790','2018-09-23 18:40:46.266790','Administrator','Administrator',0,'__default','system_defaults','__default',0,'1','allow_error_traceback'),('82470e61ca','2018-09-23 18:40:46.193793','2018-09-23 18:40:46.193793','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','enable_password_policy'),('92b73e8a0b','2018-09-23 18:40:49.039170','2018-09-23 18:40:49.039170','Administrator','Administrator',0,'__default','system_defaults','__default',0,'setup-wizard','desktop:home_page'),('a43b82637f','2018-09-23 18:40:48.970435','2018-09-23 18:40:48.970435','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','email_user_password'),('a4b6fe718b','2018-09-23 18:40:46.123823','2018-09-23 18:40:46.123823','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','ignore_user_permissions_if_missing'),('a7815f15a0','2018-09-23 18:40:46.044113','2018-09-23 18:40:46.044113','Administrator','Administrator',0,'__default','system_defaults','__default',0,'#,###.##','number_format'),('aca178120f','2018-09-23 18:40:46.057534','2018-09-23 18:40:46.057534','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','float_precision'),('af123b0a55','2018-09-23 18:40:46.209438','2018-09-23 18:40:46.209438','Administrator','Administrator',0,'__default','system_defaults','__default',0,'2','minimum_password_score'),('ba987edd13','2018-09-23 18:40:46.382906','2018-09-23 18:40:46.382906','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','hide_footer_in_auto_email_reports'),('c744ac4101','2018-09-23 18:40:47.767531','2018-09-23 18:40:47.767531','Administrator','Administrator',0,'__global','system_defaults','__default',0,'[\"frappe\"]','installed_apps'),('cfc82e5b7e','2018-09-23 18:40:46.318109','2018-09-23 18:40:46.318109','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','bypass_2fa_for_retricted_ip_users'),('d01a6bada7','2018-09-23 18:40:46.159573','2018-09-23 18:40:46.159573','Administrator','Administrator',0,'__default','system_defaults','__default',0,'06:00','session_expiry'),('e72b20c2ef','2018-09-23 18:40:46.334792','2018-09-23 18:40:46.334792','Administrator','Administrator',0,'__default','system_defaults','__default',0,'OTP App','two_factor_method'),('e7854b4f5b','2018-09-23 18:40:46.351507','2018-09-23 18:40:46.351507','Administrator','Administrator',0,'__default','system_defaults','__default',0,'Frappe Framework','otp_issuer_name'),('f2dbad9f82','2018-09-23 18:40:46.085099','2018-09-23 18:40:46.085099','Administrator','Administrator',0,'__default','system_defaults','__default',0,'3','backup_limit'),('fd5376afe5','2018-09-23 18:40:46.101501','2018-09-23 18:40:46.101501','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','enable_scheduler'),('fe44f3c3cd','2018-09-23 18:40:46.142532','2018-09-23 18:40:46.142532','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','apply_strict_user_permissions');
/*!40000 ALTER TABLE `tabDefaultValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDeleted Document`
--

DROP TABLE IF EXISTS `tabDeleted Document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDeleted Document` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `new_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restored` int(1) NOT NULL DEFAULT 0,
  `deleted_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDeleted Document`
--

LOCK TABLES `tabDeleted Document` WRITE;
/*!40000 ALTER TABLE `tabDeleted Document` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDeleted Document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDesktop Icon`
--

DROP TABLE IF EXISTS `tabDesktop Icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDesktop Icon` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` int(1) NOT NULL DEFAULT 0,
  `_report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` int(1) NOT NULL DEFAULT 0,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_show` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reverse` int(1) NOT NULL DEFAULT 0,
  `module_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique_module_name_owner_standard` (`module_name`,`owner`,`standard`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDesktop Icon`
--

LOCK TABLES `tabDesktop Icon` WRITE;
/*!40000 ALTER TABLE `tabDesktop Icon` DISABLE KEYS */;
INSERT INTO `tabDesktop Icon` VALUES ('36038c2acf','2018-09-23 18:40:45.825334','2018-09-23 18:40:45.825334','Administrator','Administrator',0,NULL,NULL,NULL,2,'#16a085','frappe','Website',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-globe',0,'Website',NULL),('5bba95f7b7','2018-09-23 18:40:45.837143','2018-09-23 18:40:45.837143','Administrator','Administrator',0,NULL,NULL,NULL,6,'#589494','frappe','Developer',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-circuit-board',0,'Core',NULL),('5f066cde88','2018-09-23 18:40:45.828454','2018-09-23 18:40:45.828454','Administrator','Administrator',0,NULL,NULL,NULL,3,'#16a085','frappe','Integrations',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-globe',0,'Integrations',NULL),('926f12bc30','2018-09-23 18:40:45.831073','2018-09-23 18:40:45.831073','Administrator','Administrator',0,NULL,NULL,NULL,4,'#bdc3c7','frappe','Setup',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-settings',1,'Setup',NULL),('a5b06f3ee3','2018-09-23 18:40:45.813912','2018-09-23 18:40:45.813912','Administrator','Administrator',0,NULL,NULL,NULL,0,'#FFF5A7','frappe','Tools',0,NULL,0,NULL,0,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-calendar',1,'Desk',NULL),('c4374cd27e','2018-09-23 18:40:45.834170','2018-09-23 18:40:45.834170','Administrator','Administrator',0,NULL,NULL,NULL,5,'#589494','frappe','Email Inbox',0,NULL,0,NULL,0,'list',NULL,NULL,1,'List/Communication/Inbox',0,NULL,'fa fa-envelope-o',0,'Email Inbox','Communication'),('cc847973a4','2018-09-23 18:40:45.816911','2018-09-23 18:40:45.816911','Administrator','Administrator',0,NULL,NULL,NULL,1,'#AA784D','frappe','File Manager',0,NULL,0,NULL,1,'list',NULL,NULL,1,'List/File',0,NULL,'octicon octicon-file-directory',0,'File Manager','File'),('e817e65484','2018-09-23 18:40:45.839714','2018-09-23 18:40:45.839714','Administrator','Administrator',0,NULL,NULL,NULL,7,'#FFAEDB','frappe','Contacts',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-book',0,'Contacts',NULL);
/*!40000 ALTER TABLE `tabDesktop Icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocField`
--

DROP TABLE IF EXISTS `tabDocField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocField` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oldfieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `oldfieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_index` int(1) NOT NULL DEFAULT 0,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `set_only_once` int(1) NOT NULL DEFAULT 0,
  `print_hide` int(1) NOT NULL DEFAULT 0,
  `report_hide` int(1) NOT NULL DEFAULT 0,
  `reqd` int(1) NOT NULL DEFAULT 0,
  `bold` int(1) NOT NULL DEFAULT 0,
  `in_global_search` int(1) NOT NULL DEFAULT 0,
  `collapsible` int(1) NOT NULL DEFAULT 0,
  `unique` int(1) NOT NULL DEFAULT 0,
  `no_copy` int(1) NOT NULL DEFAULT 0,
  `allow_on_submit` int(1) NOT NULL DEFAULT 0,
  `trigger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depends_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permlevel` int(11) NOT NULL DEFAULT 0,
  `ignore_user_permissions` int(1) NOT NULL DEFAULT 0,
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` int(11) NOT NULL DEFAULT 0,
  `default` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_list_view` int(1) NOT NULL DEFAULT 0,
  `in_standard_filter` int(1) NOT NULL DEFAULT 0,
  `read_only` int(1) NOT NULL DEFAULT 0,
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT 0,
  `ignore_xss_filter` int(1) NOT NULL DEFAULT 0,
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT 0,
  `allow_bulk_edit` int(1) NOT NULL DEFAULT 0,
  `in_filter` int(1) NOT NULL DEFAULT 0,
  `remember_last_selected_value` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `label` (`label`),
  KEY `fieldtype` (`fieldtype`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocField`
--

LOCK TABLES `tabDocField` WRITE;
/*!40000 ALTER TABLE `tabDocField` DISABLE KEYS */;
INSERT INTO `tabDocField` VALUES ('00004dde38','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',9,'read','Read','read','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('0054c516ea','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',4,'backup_frequency','Backup Frequency',NULL,'Select',NULL,'\nDaily\nWeekly',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('008f9bac0c','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',3,'cb4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('009990f9d4','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',48,'column_break_47',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('00af9e973e','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',9,'check_communication','Check Communication',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Send Feedback Request only if there is at least one communication is available for the document.',0,0,0,'',0,0,0,0,0,0),('00b55ca08c','2017-07-17 14:25:27.881871','2018-09-23 18:40:40.113033','Administrator','Administrator',0,'User Permission','fields','DocType',3,'for_value','For Value',NULL,'Dynamic Link',NULL,'allow',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('00c278d730','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',4,'custom','Custom',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('00c7df533f','2016-03-30 10:04:25.828742','2018-09-23 18:40:39.823423','Administrator','Administrator',0,'User Email','fields','DocType',5,'enable_outgoing','Enable Outgoing',NULL,'Check',NULL,'email_account.enable_outgoing',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('00eea3db70','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',7,'section_break_14',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('00f6a4af5f','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',17,'default','Default','default','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0118968bef','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',18,'section_break_17','Sidebar and Comments',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('013880f165','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',40,'uidvalidity','UIDVALIDITY',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0168102580','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('016c91a86e','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',3,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('01d9d68df5','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',33,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('01f0348919','2013-01-10 16:34:03.000000','2018-09-23 18:40:39.006397','Administrator','Administrator',0,'Module Def','fields','DocType',2,'app_name','App Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('01f8af394e','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',9,'gender','Gender',NULL,'Link',NULL,'Gender',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('022e04685f','2017-03-13 09:20:56.387135','2018-09-23 18:40:42.353776','Administrator','Administrator',0,'Email Rule','fields','DocType',1,'email_id','Email ID',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('023e62598b','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',4,'current_mapping','Current Mapping',NULL,'Data',NULL,'',0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0264c39a92','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',4,'company_history_heading','Org History Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'\"Company History\"',1,0,0,NULL,0,0,0,0,0,0),('02b7c4ed62','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',60,'third_party_authentication','Third Party Authentication',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',1,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('031534e522','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',44,'column_break_18',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('03e5f685f7','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',34,'link_name','Link Name',NULL,'Dynamic Link',NULL,'link_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0414849427','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',2,'is_feedback_submitted','Feedback Submitted',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('048c8510b2','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',5,'standard','Standard','standard','Select','Select','No\nYes',1,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'No',NULL,0,0,0,NULL,0,0,0,0,1,0),('04e558d3a9','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',2,'section_break_10','To and CC',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0517354e89','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',16,'top_bar_color','Top Bar Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05174e8c41','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',16,'assigned_by_full_name','Assigned By Full Name',NULL,'Read Only',NULL,'assigned_by.full_name',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0527dc9540','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',16,'css_section',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0552342cde','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',5,'uid','UID',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('059bfe53fd','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',12,'no_email','Do not send Emails',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('05d2da438e','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',3,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Report\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05d90fc8b0','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',13,'frappe_server_url','Frappe Server URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05da27d848','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',5,'user','User Id',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05f39848de','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',7,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('05f4285585','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',43,'uid','UID',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,1,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('066acc0df3','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',13,'javascript','Javascript',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JavaScript Format: frappe.query_reports[\'REPORTNAME\'] = {}',0,0,0,NULL,0,0,0,0,0,0),('0697402bb1','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',5,'reqd','Mandatory','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0698f6276c','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',5,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('06afc399ad','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',19,'font_size','Font Size',NULL,'Float',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'In points. Default is 9.',0,0,0,NULL,0,0,0,0,0,0),('06ca80007a','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',6,'custom_menu','Custom Menu Items',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('071f02ffaf','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',14,'use_ssl','Use SSL',NULL,'Check',NULL,'domain.use_ssl',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('074fc703c5','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',3,'is_active','Is Active',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If checked, all other workflows become inactive.',0,0,0,NULL,0,0,0,0,0,0),('0776d64a6e','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',2,'first_name','First Name','first_name','Data','Data',NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('07b218f85c','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',2,'google_credentials','Google Credentials',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.enable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('07cf2af2e0','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',17,'default_incoming','Default Incoming',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,NULL,'e.g. replies@yourcomany.com. All replies will come to this inbox.',0,0,0,'',0,0,0,0,0,0),('07fbbe3e6d','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',38,'set_footer','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('084d3ebd0a','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',6,'is_home_folder','Is Home Folder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('08652a5a0b','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',21,'success_message','Success Message',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Message to be displayed on successful completion (only for Guest users)',0,0,0,NULL,0,0,0,0,0,0),('087bceffd5','2016-03-30 10:04:25.828742','2018-09-23 18:40:39.823423','Administrator','Administrator',0,'User Email','fields','DocType',4,'awaiting_password','Awaiting Password',NULL,'Check',NULL,'email_account.awaiting_password',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('0891950748','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',22,'enable_comments','Enable Comments',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('08e592c498','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','fields','DocType',2,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0916344e20','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',27,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('09de9c2e92','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',4,'menu','Portal Menu',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0a341a8d7e','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',3,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0a85f1815b','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',12,'float_precision','Float Precision',NULL,'Select',NULL,'\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0abc0be69c','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',9,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0ad2a854ea','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',7,'current_mapping_type','Current Mapping Type',NULL,'Select',NULL,'Push\nPull',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0b093885c7','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',13,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0b107b5338','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',6,'app','App',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0b9a325094','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',7,'cc','CC',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0bb17c7f51','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',13,'reference_owner','Reference Owner',NULL,'Read Only',NULL,'reference_name.owner',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0bd7e24880','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',3,'send_email_for_successful_backup','Send Email for Successful Backup',NULL,'Check',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Note: By default emails for failed backups are sent.',0,0,0,'',0,0,0,0,0,0),('0c0db38287','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',10,'mapping','Mapping',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0c12224153','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',38,'breadcrumbs','Breadcrumbs',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'List as [{\"label\": _(\"Jobs\"), \"route\":\"jobs\"}]',0,0,0,'',0,0,0,0,0,0),('0cb5410585','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',2,'country','Country',NULL,'Link',NULL,'Country',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0cbdc809b4','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',14,'test_send','Test',NULL,'Button',NULL,'test_send',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0cc794d162','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',35,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0d000bdf6f','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',15,'permission_rules','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0d6a311545','2013-03-07 12:26:33.000000','2018-09-23 18:40:41.110889','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',3,'description','Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('0dc4afff4b','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',2,'share_doctype','Document Type',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('0dfb8f63d7','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',3,'remote_primary_key','Remote Primary Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('0e1ad69c7f','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',10,'city','City',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0e36e6ffa0','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',3,'organizational_unit','Organizational Unit',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0e49c18aa3','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',6,'allow_copy','Hide Copy',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0e69751564','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',19,'export','Export',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('0e78b748a5','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',5,'smallest_currency_fraction_value','Smallest Currency Fraction Value',NULL,'Currency',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Smallest circulating fraction unit (coin). For e.g. 1 cent for USD and it should be entered as 0.01',0,0,0,'',0,0,0,0,0,0),('0e8a8b674e','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',4,'timestamp','Timestamp',NULL,'Datetime',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0ec060fb60','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',21,'footer_items','Footer Items',NULL,'Table',NULL,'Top Bar Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0edc688b31','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',2,'status','Status',NULL,'Select',NULL,'Open\nClosed',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Open',NULL,1,1,0,NULL,0,0,0,0,0,0),('0f1511f742','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',1,'enable','Enable',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0f709c76e2','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',3,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0fed41425a','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',10,'write','Write','write','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('100284bac3','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',5,'current_mapping_start','Current Mapping Start',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('102ead5fff','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',2,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'','eval:(!doc.__islocal)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1057494b1d','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',4,'password','Password',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('107ca12d6f','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('108b08a369','2013-02-22 01:28:08.000000','2018-09-23 18:40:40.772168','Administrator','Administrator',0,'Top Bar Item','fields','DocType',2,'parent_label','Parent Label',NULL,'Select',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If you set this, this Item will come in a drop-down under the selected parent.',1,0,0,NULL,0,0,0,0,0,0),('10ae2d34a9','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',9,'dropbox_access_secret','Dropbox Access Secret',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('10ba8e08f5','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',24,'section_break_21',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('10df270ebe','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',2,'data_migration_connector','Data Migration Connector',NULL,'Link',NULL,'Data Migration Connector',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1116440940','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',12,'folder','Folder',NULL,'Link',NULL,'File',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,1,'',0,0,0,0,0,0),('1142eba0df','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',35,'allow_login_after_fail','Allow Login After Fail',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'60','In seconds',0,0,0,'',0,0,0,0,0,0),('1158b5eb6b','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','fields','DocType',1,'template_name','Template Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('116a4a9426','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',10,'max_value','Max Value',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\'Int\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('116e60bc96','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',23,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('11aac92853','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',4,'google','Google',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('121aa0d9ec','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',19,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('123a0f0976','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',4,'is_manual','Is Manual',NULL,'Check',NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Is Feedback request triggered manually ?',0,0,0,'',0,0,0,0,0,0),('126ef54f43','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',12,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('127c41ae00','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',41,'uidnext','UIDNEXT',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('12da93dd88','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',1,'view','Snapshot View',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('12ed8bbded','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',3,'content','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'400',NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('12f2121faa','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',42,'email','EMail',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1317df82fd','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',6,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('132634e8f9','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',18,'roles_html','Roles HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('13400e6163','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',21,'fields','Fields',NULL,'Table',NULL,'Customize Form Field',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,1,0,0),('1344f3cfc7','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',13,'filter_meta','Filter Meta',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('1351919824','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',6,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('13b65da04c','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',7,'message','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('13d1b52e5b','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',12,'image','Image',NULL,'Attach Image',NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('13edecea16','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',36,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1410a47ab4','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',32,'signature_section','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('144199b602','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',7,'allow_dropbox_access','Allow Dropbox Access',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('14528cacab','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',53,'allow_guest_to_view','Allow Guest to View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('1486d58a45','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',11,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('149a350a38','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',26,'permlevel','Perm Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('15138a267b','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',18,'font','Font',NULL,'Select',NULL,'Default\nArial\nHelvetica\nVerdana\nMonospace',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Default',NULL,0,0,0,'',0,0,0,0,0,0),('152d4d4045','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',39,'email_inbox','Email Inbox',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('15659368ce','2013-02-22 01:27:58.000000','2018-09-23 18:40:40.261511','Administrator','Administrator',0,'SMS Parameter','fields','DocType',2,'value','Value',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('156f5e8125','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',20,'thursday','Thursday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1599bf01e4','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',15,'attachment_limit','Attachment Limit (MB)',NULL,'Int',NULL,'domain.attachment_limit',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,'1','Ignore attachments over this size',0,0,0,'',0,0,0,0,0,0),('159c569eb8','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',6,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('15c15d56e9','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',5,'additional_info','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('15cb467cd9','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',14,'repeat_on','Repeat On',NULL,'Select',NULL,'\nEvery Day\nEvery Week\nEvery Month\nEvery Year',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1600bcbb3a','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',4,'roles_permission','Allow Roles',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1650577dc8','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',34,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('16797303cc','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',23,'sunday','Sunday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('16907b5fba','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',1,'set_role_for','Set Role For',NULL,'Select',NULL,'\nPage\nReport',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('16f4dee41e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',65,'github_userid','Github User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('1727dc9f30','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',9,'description','Description','description','Text Editor','Text',NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('17686c5935','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',8,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,'',0,0,0,0,0,0),('1776854a2e','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',13,'line_breaks','Show Line Breaks after Sections',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('17979491cf','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',25,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('17edbf97b5','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',7,'sb_1','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('17f8ff55b0','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',13,'status_section','Status',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('184de127b2','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',11,'thumbnail_url','Thumbnail URL',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('18b6cbca44','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',14,'link','Link',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('18f64e0e6c','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','fields','DocType',5,'preview','Preview',NULL,'Attach Image',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('18fcd803cf','2017-08-31 04:16:38.764465','2018-09-23 18:40:38.562137','Administrator','Administrator',0,'Role Profile','fields','DocType',1,'role_profile','Role Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('19137583a2','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',28,'mute_sounds','Mute Sounds',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('19234f4c2a','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',7,'reference_doctype','Reference Doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('194aad62f9','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',16,'expose_recipients','Expose Recipients',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1974978219','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',9,'method','Trigger Method',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\'Method\'',0,0,NULL,NULL,0,NULL,'Trigger on valid methods like \"before_insert\", \"after_update\", etc (will depend on the DocType selected)',0,0,0,'',0,0,0,0,0,0),('19e43bc42d','2017-02-26 16:20:52.654136','2018-09-23 18:40:42.448862','Administrator','Administrator',0,'Newsletter Email Group','fields','DocType',1,'email_group','Email Group',NULL,'Link',NULL,'Email Group',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('19e6807665','2017-09-08 16:27:39.195379','2018-09-23 18:40:44.246795','Administrator','Administrator',0,'Webhook Header','fields','DocType',2,'value','Value',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('19ebffd316','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',12,'use_imap','Use IMAP',NULL,'Check',NULL,'domain.use_imap',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: !doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1a025451aa','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',17,'pull_insert','Pull Insert',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1a104879a5','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',9,'no_of_rows','No of Rows (Max 500)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'100','',0,0,0,'',0,0,0,0,0,0),('1a4be9d4e5','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',3,'update_field','Update Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('1b055c726f','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',20,'address','Address',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Address and other legal information you may want to put in the footer.',0,0,0,NULL,0,0,0,0,0,0),('1b0bb9d787','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',46,'hide_footer_in_auto_email_reports','Hide footer in auto email reports',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1b1485f016','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1b8eec8165','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.975358','Administrator','Administrator',0,'Workflow Transition','fields','DocType',2,'action','Action',NULL,'Link',NULL,'Workflow Action',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('1b9323e9f5','2016-12-29 07:42:26.246725','2018-09-23 18:40:41.530919','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',3,'group','Group',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('1be3944854','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',7,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1be5e79e0b','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',17,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1ccba7990b','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',37,'sb3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1cd74d69af','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1d07c9ae3f','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','fields','DocType',1,'dt','DocType','dt','Link','Link','DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('1d8ae38e01','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',13,'currency_precision','Currency Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If not set, the currency precision will depend on number format',0,0,0,'',0,0,0,0,0,0),('1ddbb82393','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',7,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1de7b28630','2016-04-12 18:40:16.315024','2018-09-23 18:40:40.971808','Administrator','Administrator',0,'Footer Item','fields','DocType',4,'target','Target',NULL,'Select',NULL,'\ntarget = \"_blank\"',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select target = \"_blank\" to open in a new page.',0,0,0,'',0,0,0,0,0,0),('1ded22f9b8','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',4,'data','Data',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1dffe61d3a','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',7,'everyone','Everyone',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1e6aa00a49','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',4,'title_prefix','Title Prefix',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Show title in browser window as \"Prefix - title\"',1,0,0,NULL,0,0,0,0,0,0),('1e80ec794b','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',6,'city','City/Town',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('1e8f5e4edb','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','fields','DocType',2,'category_description','Category Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('1eb233487f','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','fields','DocType',4,'end_date_field','End Date Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f2bcceffe','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',37,'print_width','Print Width',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1f2ee4e040','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',11,'smtp_server','SMTP Server',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'e.g. smtp.gmail.com',0,0,0,'',0,0,0,0,0,0),('1f2fd4e1c7','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',27,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f341d09b4','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',4,'section_break_3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f3aa56c67','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',3,'docname','Document Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('1fa44c96aa','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',12,'frames','Frames',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1fac9706cb','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',39,'is_submittable','Is Submittable',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1fb09839d1','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',10,'options_help','Options Help',NULL,'HTML','HTML',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1fb33bc1c8','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',14,'is_primary_contact','Is Primary Contact','is_primary_contact','Check','Select',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('1fddb79b5c','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',6,'date','Due Date','date','Date','Date',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('2035421563','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',23,'background_image','Background Image',NULL,'Attach Image',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If image is selected, color will be ignored.',0,0,0,'',0,0,0,0,0,0),('2041bb8fa5','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',9,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('204c4a6103','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',7,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20826a1a5c','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,1,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('208a39edd5','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',8,'file_size','File Size',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,20,0,0,0,0,0),('208db3d344','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',8,'address_line1','Address Line 1',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('20c2338eac','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',14,'column_break_18',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20dff53067','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',14,'push_delete','Push Delete',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20f7673c24','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',38,'is_custom_field','Is Custom Field',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('20fc14ad2c','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',17,'sender','Sender',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('212722a8c0','2017-05-03 15:07:39.752820','2018-09-23 18:40:40.493819','Administrator','makarand@erpnext.com',0,'Domain','fields','DocType',1,'domain','Domain',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('220ac5ca88','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',7,'starts_on','Starts on',NULL,'Datetime',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('226d182575','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',31,'section_break_38','HTML Header & Robots',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('232200d679','2016-05-25 09:49:07.125394','2018-09-23 18:40:40.144972','Administrator','Administrator',0,'Tag Category','fields','DocType',2,'tags','Tags',NULL,'Table',NULL,'Tag',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('23630bd8cf','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',7,'setup_complete','Setup Complete',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('23829b81d9','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',1,'localization','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('23c7de5c6c','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',3,'receiver_parameter','Receiver Parameter',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Enter url parameter for receiver nos',1,0,0,NULL,0,0,0,0,0,0),('23d6a98923','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',6,'google_apps_script','Google Apps Script',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:doc.enable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('23e1cca563','2015-03-18 06:08:32.729800','2018-09-23 18:40:42.553951','Administrator','Administrator',0,'Email Group','fields','DocType',2,'total_subscribers','Total Subscribers',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,1,0,1,'',0,0,0,0,0,0),('23e73c5c8a','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',10,'report_filters','Report Filters',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type !== \'Report Builder\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('245d8079e5','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',5,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('245ef0b97c','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',2,'seen','Seen',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,1,0),('249c6fe6b8','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',2,'notify_email','Send Notifications To',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('24ddd38d65','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',16,'column_break_16',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('24deff2f01','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',40,'lifespan_qrcode_image','Expiry time of QR Code Image Page',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.two_factor_method == \"OTP App\"',0,0,NULL,NULL,0,NULL,'Time in seconds to retain QR code image on server. Min:<strong>240</strong>',0,0,0,'',0,0,0,0,0,0),('24edf0cdbb','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',9,'status','Status',NULL,'Select',NULL,'\nSuccess\nFailed\nLinked\nClosed',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('25172cd579','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',20,'section_break_15','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2546c7c150','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',1,'file_name','File Name','file_name','Data','Data',NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('254fc5597d','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',3,'language','Language',NULL,'Link',NULL,'Language',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('25cbc58d94','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',14,'submit','Submit','submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('25dcb25e28','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','fields','DocType',3,'template_id','Template ID',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('25fad0a808','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',5,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2625c638cf','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',5,'insert_after','Insert After','insert_after','Select','Select',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Select the label after which you want to insert new field.',0,0,0,NULL,0,0,0,0,0,0),('262ce5657c','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',25,'column_break_17',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('26a67ab6c1','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',8,'team_members','Team Members',NULL,'Table',NULL,'About Us Team Member',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('26cbd21bce','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',7,'status','Status',NULL,'Select',NULL,'Passive\nOpen\nReplied',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Passive',NULL,1,1,0,NULL,0,0,0,0,0,0),('26f4876d59','2013-03-11 17:48:16.000000','2018-09-23 18:40:41.312846','Administrator','Administrator',0,'Blog Settings','fields','DocType',3,'writers_introduction','Writers Introduction',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('275a4dad97','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',17,'attached_to_name','Attached To Name',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('276f28ea18','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',22,'unreplied_for_mins','Notify if unreplied for (in mins)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'notify_if_unreplied',0,0,NULL,NULL,0,'30',NULL,0,0,0,'',0,0,0,0,0,0),('278e265896','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',2,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('27a6a56b31','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('27b0ceec49','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',21,'description','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('27c62c67bc','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',2,'login_id_is_different','Use Different Email Login ID',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('27f201210e','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',7,'script_url','Script URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec','If you aren\'t using own publish Google Apps Script webapp you can use the default https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec ',0,0,0,'',0,0,0,0,0,0),('28034a3845','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',18,'link_name','Link Name',NULL,'Dynamic Link',NULL,'link_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('285d7fbac3','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',9,'migration_id_field','Migration ID Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('285de1d8c3','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',10,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2862dcf44a','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',33,'amount_field','Amount Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.accept_payment && doc.amount_based_on_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2870b9a4cc','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',6,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('28bc41f5cb','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',9,'phone_no','Phone No.',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Phone\",\"SMS\"],doc.communication_medium)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('28e9128ab0','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',14,'email_settings','Email Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2911644827','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',34,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('294e612958','2016-05-25 09:49:07.125394','2018-09-23 18:40:40.144972','Administrator','Administrator',0,'Tag Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('296e356d53','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','fields','DocType',2,'script_type','Script Type','script_type','Select','Select','Client',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Client',NULL,1,1,1,NULL,0,0,0,0,0,0),('29a827ed20','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',24,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('29b0bc3d66','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',4,'notify_on_every_login','Notify Users On Every Login',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'notify_on_login',0,0,NULL,NULL,0,'0','If enabled, users will be notified every time they login. If not enabled, users will only be notified once.',0,0,0,'',0,0,0,0,0,0),('29ba17b330','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',27,'breadcrumbs','Breadcrumbs',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'List as [{\"label\": _(\"Jobs\"), \"route\":\"jobs\"}]',0,0,0,'',0,0,0,0,0,0),('2a4adaa76e','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',6,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2a63f23e9c','2016-03-30 10:04:25.828742','2018-09-23 18:40:39.823423','Administrator','Administrator',0,'User Email','fields','DocType',3,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2a6670f3e9','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',4,'read','Read',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('2a8971eefb','2017-01-13 04:55:18.835023','2018-09-23 18:40:38.834000','Administrator','Administrator',0,'Dynamic Link','fields','DocType',2,'link_name','Link Name',NULL,'Dynamic Link',NULL,'link_doctype',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('2a8c5b72d7','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',6,'target','Target',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2b01078468','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',1,'pdf_settings','PDF Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2b0fe013a0','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',1,'label_and_type','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2b1e7af34f','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',20,'additional_info','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2b633310ec','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',15,'push_failed','Push Failed',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2b96c0c2c2','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',8,'update','Update',NULL,'Button',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2bc971d462','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',13,'print_format','Print Format',NULL,'Link',NULL,'Print Format',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'allow_print',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2bcc601b3c','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',9,'pyver','Pyver',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2c0d04d796','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',10,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2c1519aa3b','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',15,'sb1','Naming',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2c54078c6c','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',3,'label_help','Label Help',NULL,'HTML','HTML',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2cb6220b3e','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',8,'property','Property',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('2cc095b407','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',1,'deleted_name','Deleted Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('2cdf0ed30a','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',4,'if_owner','If user is the owner',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Apply this rule if the User is the Owner',0,0,0,'',0,0,0,0,0,0),('2cffc8904f','2015-03-18 06:15:59.321619','2018-09-23 18:40:42.875021','Administrator','Administrator',0,'Email Group Member','fields','DocType',2,'email','Email',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('2d118edb68','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',48,'feedback_request','Feedback Request',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2d332b7706','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',3,'share_name','Document Name',NULL,'Dynamic Link',NULL,'share_doctype',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('2d550e2e8c','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',2,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2d6e2acf96','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',9,'all_day','All Day',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2d80405fe4','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',26,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2d8760228a','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',21,'notify_if_unreplied','Notify if unreplied',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2d982ee653','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',21,'allow_bulk_edit','Allow Bulk Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.fieldtype == \"Table\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2de84f77b8','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',3,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('2deffdfd14','2013-02-22 01:28:08.000000','2018-09-23 18:40:41.336202','Administrator','Administrator',0,'Company History','fields','DocType',2,'highlight','Highlight',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('2e05b2f489','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',5,'blog_category','Blog Category',NULL,'Link',NULL,'Blog Category',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('2e123e9e98','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',2,'send_print_as_pdf','Send Print as PDF',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Send Email Print Attachments as PDF (Recommended)',0,0,0,NULL,0,0,0,0,0,0),('2e2050f302','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',15,'allow_incomplete','Allow Incomplete Forms',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Allow saving if mandatory fields are not filled',0,0,0,'',0,0,0,0,0,0),('2e9334f780','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',18,'attached_to_field','Attached To Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2e9b191892','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',23,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('2eaa254777','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',9,'send_attachements','Send Attachements',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('2ec0dbab43','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.909386','Administrator','Administrator',0,'Workflow State','fields','DocType',2,'icon','Icon',NULL,'Select',NULL,'\nglass\nmusic\nsearch\nenvelope\nheart\nstar\nstar-empty\nuser\nfilm\nth-large\nth\nth-list\nok\nremove\nzoom-in\nzoom-out\noff\nsignal\ncog\ntrash\nhome\nfile\ntime\nroad\ndownload-alt\ndownload\nupload\ninbox\nplay-circle\nrepeat\nrefresh\nlist-alt\nlock\nflag\nheadphones\nvolume-off\nvolume-down\nvolume-up\nqrcode\nbarcode\ntag\ntags\nbook\nbookmark\nprint\ncamera\nfont\nbold\nitalic\ntext-height\ntext-width\nalign-left\nalign-center\nalign-right\nalign-justify\nlist\nindent-left\nindent-right\nfacetime-video\npicture\npencil\nmap-marker\nadjust\ntint\nedit\nshare\ncheck\nmove\nstep-backward\nfast-backward\nbackward\nplay\npause\nstop\nforward\nfast-forward\nstep-forward\neject\nchevron-left\nchevron-right\nplus-sign\nminus-sign\nremove-sign\nok-sign\nquestion-sign\ninfo-sign\nscreenshot\nremove-circle\nok-circle\nban-circle\narrow-left\narrow-right\narrow-up\narrow-down\nshare-alt\nresize-full\nresize-small\nplus\nminus\nasterisk\nexclamation-sign\ngift\nleaf\nfire\neye-open\neye-close\nwarning-sign\nplane\ncalendar\nrandom\ncomment\nmagnet\nchevron-up\nchevron-down\nretweet\nshopping-cart\nfolder-close\nfolder-open\nresize-vertical\nresize-horizontal\nhdd\nbullhorn\nbell\ncertificate\nthumbs-up\nthumbs-down\nhand-right\nhand-left\nhand-up\nhand-down\ncircle-arrow-right\ncircle-arrow-left\ncircle-arrow-up\ncircle-arrow-down\nglobe\nwrench\ntasks\nfilter\nbriefcase\nfullscreen',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Icon will appear on the button',0,0,0,NULL,0,0,0,0,0,0),('2ede2041a8','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',11,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2f10cd3598','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',36,'advanced','Advanced',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2f2e6ac84a','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','fields','DocType',1,'api_username','API Username',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2f6d44607f','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',5,'hostname','Hostname',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'',NULL,1,0,0,'',0,0,0,0,0,0),('2fecd259cc','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',14,'role','Role','role','Link','Link','Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3006a70382','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',7,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('301600bd2a','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',37,'enable_two_factor_auth','Enable Two Factor Auth',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3079222a4e','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',24,'print','Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('3093c236fa','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',17,'skype','Skype',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('30bea72c83','2015-03-18 09:41:20.216319','2018-09-23 18:40:42.589833','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',3,'reference_name','Reference Name',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('30ceea6f19','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',49,'sb3','Security Settings',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('30dc47a8b2','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',8,'script_code','Script Code',NULL,'HTML',NULL,'<pre>// ERPNEXT GSuite integration\n//\n\nfunction doGet(e){\n  return ContentService.createTextOutput(\'ok\');\n}\n\nfunction doPost(e) {\n  var p = JSON.parse(e.postData.contents);\n\n  switch(p.exec){\n    case \'new\':\n      var url = createDoc(p);\n      result = { \'url\': url };\n      break;\n    case \'test\':\n      result = { \'test\':\'ping\' , \'version\':\'1.0\'}\n  }\n  return ContentService.createTextOutput(JSON.stringify(result)).setMimeType(ContentService.MimeType.JSON);\n}\n\nfunction replaceVars(body,p){\n  for (key in p) {\n    if (p.hasOwnProperty(key)) {\n      if (p[key] != null) {\n        body.replaceText(\'{{\'+key+\'}}\', p[key]);\n      }\n    }\n  }    \n}\n\nfunction createDoc(p) {\n  if(p.destination){\n    var folder = DriveApp.getFolderById(p.destination);\n  } else {\n    var folder = DriveApp.getRootFolder();\n  }\n  var template = DriveApp.getFileById( p.template )\n  var newfile = template.makeCopy( p.filename , folder );\n\n  switch(newfile.getMimeType()){\n    case MimeType.GOOGLE_DOCS:\n      var body = DocumentApp.openById(newfile.getId()).getBody();\n      replaceVars(body,p.vars);\n      break;\n    case MimeType.GOOGLE_SHEETS:\n      //TBD\n    case MimeType.GOOGLE_SLIDES:\n      //TBD\n  }\n  return newfile.getUrl()\n}\n\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','Copy and paste this code into and empty Code.gs in your project at script.google.com',0,0,1,'',0,0,0,0,0,0),('30e6202bc8','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',8,'date_and_number_format','Date and Number Format',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3115111e96','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','fields','DocType',4,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('31232f5475','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','fields','DocType',3,'owner','Owner',NULL,'Link',NULL,'User',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user',NULL,0,0,0,NULL,0,0,0,0,0,0),('3128b74d22','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',19,'lft','lft',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('31668f8b5c','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',20,'log','Log',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,'eval:doc.failed_log !== \'[]\'',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('31c8b93780','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',6,'symbol','Symbol',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'A symbol for this currency. For e.g. $',1,0,0,NULL,0,0,0,0,0,0),('31e9fb04b4','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',6,'database_name','Database Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('32c2cf6984','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',9,'quick_entry','Quick Entry',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('32c7dd60db','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',6,'use_post','Use POST',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('32cedf6059','2013-02-22 01:28:08.000000','2018-09-23 18:40:40.772168','Administrator','Administrator',0,'Top Bar Item','fields','DocType',1,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'120px','120px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('32ec3ee6da','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',12,'description','Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('33314c99a4','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',17,'section_break_8','Fonts',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('338c85fe27','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',19,'copyright','Copyright',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('33cdca89cd','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',21,'title_field','Title Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('33faa5555c','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',2,'page_html','Page HTML',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('340a61127a','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',28,'smtp_port','Port',NULL,'Data',NULL,'domain.smtp_port',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,'If non standard port (e.g. 587)',0,0,0,'',0,0,0,0,0,0),('341b66dc1f','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',26,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('34ab1fcb68','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',5,'states_head','States',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Different \"States\" this document can exist in. Like \"Open\", \"Pending Approval\" etc.',0,0,0,NULL,0,0,0,0,0,0),('34c08e7063','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','fields','DocType',3,'source_name','Source Text',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If your data is in HTML, please copy paste the exact HTML code with the tags.',0,0,0,'',0,0,0,0,0,0),('34ef12edfe','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',8,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('35098c5273','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','fields','DocType',4,'help_articles','Help Articles',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('3529a200b0','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',19,'initial_sync_count','Initial Sync Count',NULL,'Select',NULL,'100\n250\n500',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'250','Total number of emails to sync in initial sync process ',0,0,0,'',0,0,0,0,0,0),('352be58016','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',13,'test_email_id','Test Email Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'A Lead with this Email Address should exist',0,0,0,NULL,0,0,0,0,0,0),('353e8334d0','2015-03-18 06:15:59.321619','2018-09-23 18:40:42.875021','Administrator','Administrator',0,'Email Group Member','fields','DocType',1,'email_group','Email Group',NULL,'Link',NULL,'Email Group',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('356222a41b','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',36,'enable_auto_reply','Enable Auto Reply',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('35d35d75bb','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',3,'field_name','Field Name',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('360f61b200','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',32,'display','Display',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('366a2c4f72','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',5,'company_history','Org History',NULL,'Table',NULL,'Company History',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3699cddace','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',14,'default','Default',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('36b56342fc','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',8,'sb1','Content',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('36ba6580e2','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',25,'description','Description','description','Text Editor','Text',NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('37003f55fc','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',35,'print_width','Print Width',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,'Print Width of the field, if the field is a column in a table',0,0,0,NULL,0,0,0,0,0,0),('37152d96d9','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',13,'title_field','Title Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Use this fieldname to generate title',0,0,0,'',0,0,0,0,0,0),('37294d3d2f','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',18,'hidden','Hidden','hidden','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('372e56352d','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',11,'frappe_client_id','Frappe Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3774d334f9','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',5,'expiration_time','Expiration time',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('377f650510','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','fields','DocType',5,'destination_id','Destination ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('37dd6b674c','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',16,'css','CSS',NULL,'Code',NULL,'CSS',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'insert_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('37ff9faee1','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',19,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,'__user',NULL,0,0,1,'',0,0,0,0,0,0),('381021556f','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',21,'communication_date','Date',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Now',NULL,0,0,0,NULL,0,0,0,0,0,0),('388bfd853e','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',13,'email_server','Email Server',NULL,'Data',NULL,'domain.email_server',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,'e.g. pop.gmail.com / imap.gmail.com',0,0,0,'',0,0,0,0,0,0),('3893a04524','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',11,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('389d5a50fc','2017-03-09 17:18:29.458397','2018-09-23 18:40:44.129714','Administrator','Administrator',0,'Stripe Settings','fields','DocType',2,'secret_key','Secret Key',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('38a037988a','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',9,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'More content for the bottom of the page.',0,0,0,NULL,0,0,0,0,0,0),('38c5ef4606','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',9,'country','Country',NULL,'Link',NULL,'Country',1,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('38c62a465a','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',3,'label','Change Label (via Custom Translation)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('38e04a8c43','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',2,'sb0',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('38f0fdaa44','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',6,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('39091f6686','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',10,'allow_multiple','Allow Multiple',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('391b26ad45','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',1,'sms_gateway_url','SMS Gateway URL',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Eg. smsgateway.com/api/send_sms.cgi',1,0,0,NULL,0,0,0,0,0,0),('3952ad71c5','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',23,'recipients','Recipients',NULL,'Table',NULL,'Email Alert Recipient',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('395bdba918','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',5,'icon','icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('39bcfa3eef','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',8,'bcc','BCC',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('39cb3ac696','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','fields','DocType',5,'raw','Raw Email',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3a2b7f6537','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',1,'dt','Document','dt','Link','Link','DocType',1,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,1,0),('3a2ed65818','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',29,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3a337d2dd6','2013-02-22 01:28:08.000000','2018-09-23 18:40:40.772168','Administrator','Administrator',0,'Top Bar Item','fields','DocType',3,'url','URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,'Link to the page you want to open. Leave blank if you want to make it a group parent.',1,0,0,NULL,0,0,0,0,0,0),('3a9e016c20','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',19,'sort_order','Sort Order',NULL,'Select',NULL,'ASC\nDESC',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3acd1357e3','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',14,'default','Default Value','default','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3b2f854a21','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',29,'payment_button_label','Button Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,'Buy Now',NULL,0,0,0,'',0,0,0,0,0,0),('3bb0cd73e7','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',19,'wednesday','Wednesday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3c0e23d59c','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',10,'mailbox_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3c2752f659','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3c2c8ca0eb','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',11,'authorization_code','Authorization Code',NULL,'Password',NULL,NULL,0,1,0,1,1,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3c69a90f3f','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','fields','DocType',4,'two_factor_auth','Two Factor Authentication',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('3c69df52c6','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',3,'istable','Is Child Table','istable','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Child Tables are shown as a Grid in other DocTypes.',0,1,0,NULL,0,0,0,0,0,0),('3cb0bcba31','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',7,'address_title','Address Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3cb0fcfb10','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',14,'sender_email','Sender Email',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('3cd2940d84','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',20,'ignore_user_permissions_if_missing','Ignore User Permissions If Missing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If Apply User Permissions is checked for Report DocType but no User Permissions are defined for Report for a User, then all Reports are shown to that User',0,0,0,'',0,0,0,0,0,0),('3cef5ee2ac','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',2,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Page\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3d1f206615','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',5,'query_options','Query Options',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Contact options, like \"Sales Query, Support Query\" etc each on a new line or separated by commas.',0,0,0,NULL,0,0,0,0,0,0),('3d6a3e402d','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',24,'timeline_field','Timeline Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'Comments and Communications will be associated with this linked document',0,0,0,'',0,0,0,0,0,0),('3d6b0c3d3a','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3d7ed519bd','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',35,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3e2a9b10e9','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',14,'fax','Fax',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3e313dbc8d','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',25,'css','Style using CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('3e4ffdae0c','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',2,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3ee986b786','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',7,'is_attachments_folder','Is Attachments Folder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f1919a45e','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','fields','DocType',1,'print_style_name','Print Style Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f1d9939b4','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',51,'web_view','Web View',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f2a8b8610','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','fields','DocType',5,'redirect_to','Redirect To',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Mention transaction completion page URL',0,0,0,'',0,0,0,0,0,0),('3f30bcb814','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',5,'response','response',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3fa4f05426','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',1,'workflow_name','Workflow Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3fefa2eb40','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',2,'communication','Communication',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4014bd0b37','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','fields','DocType',4,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('406e86ce76','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',23,'image_field','Image Field (Must of type \"Attach Image\")',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('4070e5d171','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',22,'column_break_19',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('411865be93','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',5,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('412c272e0c','2014-07-11 17:19:37.037109','2018-09-23 18:40:42.485320','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',4,'condition','Condition',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Expression, Optional',1,0,0,NULL,0,0,0,0,0,0),('414bc3a928','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',1,'theme','Theme',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('415d7b9f17','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',6,'is_standard','Is Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4182b1e9ed','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',7,'traceback','Traceback',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4186e1404b','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',7,'with_letterhead','Print with letterhead',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,NULL,0,0,0,0,0,0),('41df412eb0','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',13,'contact_details','Reference',NULL,'Section Break',NULL,'fa fa-pushpin',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('41fb273e01','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',5,'error_file','Generated File',NULL,'Attach',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.import_status == \"Partially Successful\"',0,0,NULL,NULL,0,NULL,'This is the template file generated with only the rows having some error. You should use this file for correction and import.',0,0,0,'',0,0,0,0,0,0),('4213fb0d07','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',7,'private','Private',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4313d13e4f','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',13,'phone','Phone',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4314fa2e19','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',10,'webhook_data','Data',NULL,'Table',NULL,'Webhook Data',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('431cc2a410','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('435748746f','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',33,'robots_txt','Robots.txt',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('439d8164c5','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',13,'custom_css','Style',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('43a99d5303','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','fields','DocType',1,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('43b2f43736','2017-09-14 12:08:50.302810','2018-09-23 18:40:44.291624','Administrator','Administrator',0,'Webhook Data','fields','DocType',2,'cb_doc_data',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('43ea87bb26','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',1,'is_sent','Is Sent',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4407fc15d9','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',6,'custom_format','Custom Format',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('44482730d8','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',19,'roles','Roles Assigned',NULL,'Table',NULL,'Has Role',0,1,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('44d3b3d408','2017-08-11 05:09:10.900237','2018-09-23 18:40:45.666460','Administrator','Administrator',0,'Data Migration Mapping Detail','fields','DocType',2,'local_fieldname','Local Fieldname',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('44e6327b42','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',31,'column_break_21',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('44ef371c53','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',7,'website_theme_image','Website Theme Image',NULL,'Image',NULL,'website_theme_image_link',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4519fd75aa','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',2,'fieldtype','Fieldtype',NULL,'Select',NULL,'Attach\nCheck\nData\nDate\nDatetime\nFloat\nHTML\nInt\nLink\nSelect\nSmall Text\nText\nText Editor\nTable\nSection Break\nColumn Break\nPage Break',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('451c950911','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',29,'change_password','Change Password',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:doc.enabled && (!doc.__islocal || !cint(doc.send_welcome_email))',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4546863cf0','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',24,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('45909f7a0b','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',14,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('459a2c60d1','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',12,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('45d4e9ec93','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',15,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('45de92ab47','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',19,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('46166edd6e','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',24,'sender_full_name','From Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('461d3803f1','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',18,'column_break_15',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('462372d7a7','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',16,'is_shipping_address','Preferred Shipping Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','',0,0,0,NULL,0,0,0,0,0,0),('462b94d1ba','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',16,'amend','Amend','amend','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('465333008d','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',16,'depends_on','Depends On','depends_on','Code','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This field will appear only if the fieldname defined here has value OR the rules are true (examples): \nmyfield\neval:doc.myfield==\'My Value\'\neval:doc.age&gt;18',0,0,0,NULL,0,0,0,0,0,0),('46603a1959','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',2,'short_name','Short Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Will be used in url (usually first name).',0,0,0,NULL,0,0,0,0,0,0),('466dfa015d','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',4,'default_print_format','Default Print Format',NULL,'Link',NULL,'Print Format',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('467aea3560','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',10,'date_changed','Reference Date',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Days After\" || doc.event==\"Days Before\"',0,0,NULL,NULL,0,NULL,'Send alert if date matches this field\'s value',0,0,0,NULL,0,0,0,0,0,0),('467caa7877','2017-10-16 17:13:05.684227','2018-09-23 18:40:44.378160','Administrator','Administrator',0,'Google Maps','fields','DocType',3,'home_address','Home Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('472ab709ae','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','fields','DocType',4,'code','Code',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('473cc6edc6','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',2,'home_page','Home Page',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Link that is the website home page. Standard Links (index, login, products, blog, about, contact)',1,0,0,NULL,0,0,0,0,0,0),('478eff6c61','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',31,'allow_error_traceback','Show Full Error and Allow Reporting of Issues to the Developer',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('47a3c40618','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',4,'reqd','Mandatory',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('47b3d64099','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','fields','DocType',2,'related_doctype','Related DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('47c570d0c2','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',12,'_doctype','_doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('47fe55cd25','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',33,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4803a4e1c1','2015-03-18 09:41:20.216319','2018-09-23 18:40:42.589833','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',1,'email','Email',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('4818da502e','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',40,'column_break_22',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4828af038d','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',5,'role','Role',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('487564b4dd','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',7,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48a20d8994','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',8,'transitions','Transitions',NULL,'Table',NULL,'Workflow Transition',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Rules defining transition of state in the workflow.',0,0,0,NULL,0,0,0,0,0,0),('48b5233ec7','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',6,'avatar','Avatar',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('48bbe4346c','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',8,'dropbox_access_key','Dropbox Access Key',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('48bf7775d8','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',11,'number_format','Number Format',NULL,'Select',NULL,'#,###.##\n#.###,##\n# ###.##\n# ###,##\n#\'###.##\n#, ###.##\n#,##,###.##\n#,###.###\n#.###\n#,###',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('490a4a5ae8','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',24,'message_sb','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('496c6cadab','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',2,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Page\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('498bca27f7','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',4,'slideshow','Slideshow',NULL,'Link',NULL,'Website Slideshow',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('49ab546f89','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',4,'static_parameters_section',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4a261bb245','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',11,'column_break0',NULL,NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4a456ca0bc','2017-08-11 05:15:38.390831','2018-09-23 18:40:45.414010','Administrator','Administrator',0,'Data Migration Plan Mapping','fields','DocType',2,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('4a78e883cc','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',11,'route','Route',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4aadc1aace','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4af9b768ba','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',8,'website_theme_image_link','Website Theme Image Link',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4b35fbc2bc','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',30,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4b7d775abf','2017-01-13 04:55:18.835023','2018-09-23 18:40:38.834000','Administrator','Administrator',0,'Dynamic Link','fields','DocType',1,'link_doctype','Link DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('4bb24131cb','2013-02-22 01:27:32.000000','2018-09-23 18:40:38.889191','Administrator','Administrator',0,'DefaultValue','fields','DocType',1,'defkey','Key','defkey','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4bba54df7d','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',20,'rgt','rgt',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4c3851415f','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',16,'column_break_16',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4c3ed6a453','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',1,'receipient','Receipient',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4d3f6b7ccd','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',4,'authorization_code','Authorization Code',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4de7352f90','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',26,'participants','Participants',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4dffa85716','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',15,'text_align','Text Align',NULL,'Select',NULL,'Left\nCenter\nRight',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4e1f50ab63','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('4e69fffac9','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',23,'session_expiry','Session Expiry',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'06:00','Session Expiry in Hours e.g. 06:00',0,0,0,NULL,0,0,0,0,0,0),('4e6f91ba98','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',18,'report','Report',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('4e7a5edeb5','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',7,'owner','Allocated To',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('4e8ae14991','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',10,'write','Write','write','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('4ed2bb016d','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',10,'default_value','Default Value',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4eea7eddfd','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',32,'description','Description','description','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4f35edb9ab','2013-03-11 17:48:16.000000','2018-09-23 18:40:41.312846','Administrator','Administrator',0,'Blog Settings','fields','DocType',1,'blog_title','Blog Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4f5c20c45c','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',6,'email_account_name','Email Account Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'e.g. \"Support\", \"Sales\", \"Jerry Yang\"',0,0,0,'',0,0,0,0,0,0),('4f8275ab88','2016-12-08 12:01:07.993900','2018-09-23 18:40:42.519680','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',1,'recipient','Recipient',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('4f9405b3bf','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',36,'search_index','Index',NULL,'Check',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4fb822a72c','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',14,'print_style_section','Print Style',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5027b7c047','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',3,'preview','Preview',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5062445d76','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',18,'amended_from','Amended From',NULL,'Link',NULL,'Data Import',0,0,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('5081cef266','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',42,'message_id','Message ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',995,1,0,0,0,0),('50b4214775','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',6,'table_html','Table HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('50c87f0299','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',44,'default_print_format','Default Print Format',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('50cb0367fd','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',3,'python_module','Python Module',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.connector_type == \'Custom\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('514a5cb5a7','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',9,'html','HTML','html','Code','Text Editor','HTML',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('515cc12f25','2015-03-18 06:08:32.729800','2018-09-23 18:40:42.553951','Administrator','Administrator',0,'Email Group','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('517d390e26','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',25,'location','Location',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5194620a3c','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',33,'reset_password_key','Reset Password Key',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('519572f1cb','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','fields','DocType',4,'message_id','Message-id',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('521a838a88','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',3,'address_type','Address Type',NULL,'Select',NULL,'Billing\nShipping\nOffice\nPersonal\nPlant\nPostal\nShop\nSubsidiary\nWarehouse\nCurrent\nPermanent\nOther',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('5259b4b6f2','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',14,'sec_backup_limit','Backups',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('52803f7e6b','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',41,'otp_issuer_name','OTP Issuer Name',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_two_factor_auth',0,0,NULL,NULL,0,'Frappe Framework',NULL,0,0,0,'',0,0,0,0,0,0),('528e56ffd1','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',15,'cancel','Cancel','cancel','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('52a78748ad','2017-01-13 04:55:18.835023','2018-09-23 18:40:38.834000','Administrator','Administrator',0,'Dynamic Link','fields','DocType',3,'link_title','Link Title',NULL,'Read Only',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('52ce4da04e','2017-08-11 05:15:38.390831','2018-09-23 18:40:45.414010','Administrator','Administrator',0,'Data Migration Plan Mapping','fields','DocType',1,'mapping','Mapping',NULL,'Link',NULL,'Data Migration Mapping',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('52e2947616','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',15,'section_break_9',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('53289d05aa','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',57,'last_ip','Last IP','last_ip','Read Only','Read Only',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('538d69f0b5','2017-05-03 15:20:22.326623','2018-09-23 18:40:39.257140','Administrator','makarand@erpnext.com',0,'Has Domain','fields','DocType',1,'domain','Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('53a2febf1f','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',10,'section_break_7',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('540d2736b5','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',11,'default_redirect_uri','Default Redirect URI',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('542fce6807','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',55,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55194c239b','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',1,'data_migration_plan','Data Migration Plan',NULL,'Link',NULL,'Data Migration Plan',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('552672d651','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',54,'restrict_ip','Restrict IP',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Restrict user from this IP address only. Multiple IP addresses can be added by separating with commas. Also accepts partial IP addresses like (111.111.111)',0,0,0,NULL,0,0,0,0,0,0),('5552e3846d','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',10,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('556cba2a79','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',11,'add_draft_heading','Always add \"Draft\" Heading for printing draft documents',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('5572af5e72','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',7,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'To add dynamic subject, use jinja tags like\n\n<div><pre><code>{{ doc.name }} Delivered</code></pre></div>',0,0,0,'',0,0,0,0,0,0),('558f546faf','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',15,'email_to','Email To',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55a8915f6e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',64,'column_break_49',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55e35f8c71','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',1,'email_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55f07cab07','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',5,'expire_notification_on','Expire Notification On',NULL,'Date',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.notify_on_login && doc.public',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55f947d3e6','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',12,'column_break_11',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('56128c31c6','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',10,'section_break_6','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('562057cad8','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',15,'communication_type','Communication Type',NULL,'Select',NULL,'Communication\nComment\nChat\nBot\nNotification\nFeedback',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Communication',NULL,0,0,1,'',0,0,0,0,0,0),('56263802e8','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',4,'data','Data',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('566647ac24','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('572e284898','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',3,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('5777d3a669','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',12,'pincode','Pincode',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5786e3a5e9','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',7,'section_break_7',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5789549c2f','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',3,'fraction','Fraction',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Sub-currency. For e.g. \"Cent\"',1,0,0,NULL,0,0,0,0,0,0),('57dd51f4a9','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',9,'options','Options','options','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('5808ad5b44','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('580fdaf483','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',16,'banner','Banner',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('585c618d4e','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','fields','DocType',4,'condition','Condition',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'SQL Conditions. Example: status=\"Open\"',0,0,0,'',0,0,0,0,0,0),('587a235e97','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',26,'message_examples','Message Examples',NULL,'HTML',NULL,'<h5>Message Example</h5>\n\n<pre>&lt;h3&gt;Order Overdue&lt;/h3&gt;\n\n&lt;p&gt;Transaction {{ doc.name }} has exceeded Due Date. Please take necessary action.&lt;/p&gt;\n\n&lt;!-- show last comment --&gt;\n{% if comments %}\nLast comment: {{ comments[-1].comment }} by {{ comments[-1].by }}\n{% endif %}\n\n&lt;h4&gt;Details&lt;/h4&gt;\n\n&lt;ul&gt;\n&lt;li&gt;Customer: {{ doc.customer }}\n&lt;li&gt;Amount: {{ doc.total_amount }}\n&lt;/ul&gt;\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('58e88ea641','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',5,'awaiting_password','Awaiting password',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('591c472700','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',2,'forward_to_email','Forward To Email Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Send enquiries to this email address',0,0,0,NULL,0,0,0,0,0,0),('593dcf5bbd','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',9,'property_type','Property Type',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('595a7e1ec3','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',18,'custom_html_help','Custom HTML Help',NULL,'HTML',NULL,'<h3>Custom CSS Help</h3>\n\n<p>Notes:</p>\n\n<ol>\n<li>All field groups (label + value) are set attributes <code>data-fieldtype</code> and <code>data-fieldname</code></li>\n<li>All values are given class <code>value</code></li>\n<li>All Section Breaks are given class <code>section-break</code></li>\n<li>All Column Breaks are given class <code>column-break</code></li>\n</ol>\n\n<h4>Examples</h4>\n\n<p>1. Left align integers</p>\n\n<pre><code>[data-fieldtype=\"Int\"] .value { text-left: left; }</code></pre>\n\n<p>1. Add border to sections except the last section</p>\n\n<pre><code>.section-break { padding: 30px 0px; border-bottom: 1px solid #eee; }\n.section-break:last-child { padding-bottom: 0px; border-bottom: 0px;  }</code></pre>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('595b9c18f5','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',2,'address_title','Address Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('596b4b9662','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',41,'allow_rename','Allow Rename','allow_rename','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('59873771fd','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',39,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Number of columns for a field in a List View or a Grid (Total Columns should be less than 11)',0,0,0,'',0,0,0,0,0,0),('59a46b5319','2013-01-10 16:34:03.000000','2018-09-23 18:40:39.006397','Administrator','Administrator',0,'Module Def','fields','DocType',3,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('59dad4b810','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',26,'misc_section','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('59e3f68295','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',6,'current_mapping_delete_start','Current Mapping Delete Start',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5a0eaf6b68','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',34,'column_break_34',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5a4d95c28e','2017-07-17 14:25:27.881871','2018-09-23 18:40:40.113033','Administrator','Administrator',0,'User Permission','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('5a8ce87417','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',1,'state','State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('5acb93aa65','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',3,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5b148a2053','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',6,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'','eval:(!doc.__islocal)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5b734762b4','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',8,'section_break_4','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5be2968d40','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',5,'email_fieldname','Email Fieldname',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('5c31d6fb54','2017-04-10 12:11:36.526508','2018-09-23 18:40:45.274076','Administrator','Administrator',0,'Gender','fields','DocType',1,'gender','Gender',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5c4da8e81d','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',7,'sb_webhook_headers','Webhook Headers',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5c59d6d1ba','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',6,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5c92b9547e','2013-03-11 17:48:16.000000','2018-09-23 18:40:41.312846','Administrator','Administrator',0,'Blog Settings','fields','DocType',2,'blog_introduction','Blog Introduction',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5ca022e213','2017-08-11 05:09:10.900237','2018-09-23 18:40:45.666460','Administrator','Administrator',0,'Data Migration Mapping Detail','fields','DocType',1,'remote_fieldname','Remote Fieldname',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('5cc5cb7b47','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',2,'label','Label','label','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,1,0),('5ccd49520b','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',22,'content_hash','Content Hash',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5cd07dba0f','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',2,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Website',NULL,0,0,0,'',0,0,0,0,0,0),('5cd615c5ef','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',21,'set_user_permissions','Set User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This role update User Permissions for a user',0,0,0,'',0,0,0,0,0,0),('5ce51112d2','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',6,'states','Document States',NULL,'Table',NULL,'Workflow Document State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'All possible Workflow States and roles of the workflow. Docstatus Options: 0 is\"Saved\", 1 is \"Submitted\" and 2 is \"Cancelled\"',0,0,0,NULL,0,0,0,0,0,0),('5d205b5c2f','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',4,'custom','Custom?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('5d519c1464','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',20,'properties','',NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5d7422efce','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',9,'total_pages','Total Pages',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5e245d98ec','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',6,'request_url','Request URL',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('5e2ffd45c0','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',12,'show_section_headings','Show Section Headings',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('5e9b09fab4','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',20,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5ea9f45896','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',19,'links','Links',NULL,'Table',NULL,'Dynamic Link',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5f505df331','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',26,'payments','Payments',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'accept_payment',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5f61ecbeb8','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',7,'county','County',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5f79a862bb','2014-06-05 02:22:36.029850','2018-09-23 18:40:45.142002','Administrator','Administrator',0,'Address Template','fields','DocType',3,'template','Template',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','<h4>Default Template</h4>\n<p>Uses <a href=\"http://jinja.pocoo.org/docs/templates/\">Jinja Templating</a> and all the fields of Address (including Custom Fields if any) will be available</p>\n<pre><code>{{ address_line1 }}&lt;br&gt;\n{% if address_line2 %}{{ address_line2 }}&lt;br&gt;{% endif -%}\n{{ city }}&lt;br&gt;\n{% if state %}{{ state }}&lt;br&gt;{% endif -%}\n{% if pincode %} PIN:  {{ pincode }}&lt;br&gt;{% endif -%}\n{{ country }}&lt;br&gt;\n{% if phone %}Phone: {{ phone }}&lt;br&gt;{% endif -%}\n{% if fax %}Fax: {{ fax }}&lt;br&gt;{% endif -%}\n{% if email_id %}Email: {{ email_id }}&lt;br&gt;{% endif -%}\n</code></pre>',0,0,0,NULL,0,0,0,0,0,0),('604fa2b24c','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',8,'current_mapping_action','Current Mapping Action',NULL,'Select',NULL,'Insert\nDelete',0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,'eval:(doc.status !== \'Pending\')',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('605a2fcf9c','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',3,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('605d86f242','2016-10-19 12:26:42.569185','2018-09-23 18:40:43.446835','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',3,'indicator','Indicator',NULL,'Select',NULL,'blue\norange\nred\ngreen\ndarkgrey\npurple\nyellow\nlightblue',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'darkgrey',NULL,1,0,0,'',0,0,0,0,0,0),('607f204509','2013-01-17 11:36:45.000000','2018-09-23 18:40:39.398440','Administrator','Administrator',0,'Patch Log','fields','DocType',1,'patch','Patch',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('60c01ce7ed','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',16,'description','Field Description','description','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('612334da51','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',1,'description_and_status','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6135932190','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',18,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6162b2c833','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',1,'system_page','System Page',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6164ab1abc','2013-02-22 01:27:34.000000','2018-09-23 18:40:37.812144','Administrator','Administrator',0,'Has Role','fields','DocType',1,'role','Role','role','Link','Link','Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('61683cf70c','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',18,'email_sync_option','Email Sync Option',NULL,'Select',NULL,'ALL\nUNSEEN',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.enable_incoming',0,0,NULL,NULL,0,'UNSEEN',NULL,0,0,0,'',0,0,0,0,0,0),('617c8ca65f','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',20,'actions','Actions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('61ee4697b6','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',7,'reference_doctype','Reference DocType',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('61f36264f7','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',10,'beta','Beta',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('620cb2f06f','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',11,'image_view','Image View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.image_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6233880eed','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',3,'login_id','Email Login ID',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_id_is_different',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('62be66051a','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','fields','DocType',3,'update_value','Update Value',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('62c24cb8e3','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',9,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6310910617','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',13,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('63335962d2','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',25,'enable_outgoing','Enable Outgoing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','SMTP Settings for outgoing emails',0,0,0,'',0,0,0,0,0,0),('637223482f','2016-12-29 07:42:26.246725','2018-09-23 18:40:41.530919','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('638aaecbc6','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',29,'attach_print','Attach Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('63a5cf11b2','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',8,'operation','Operation',NULL,'Select',NULL,'\nLogin\nLogout',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('63ef0fb097','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',52,'login_after','Login After',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Allow user to login only after this hour (0-24)',0,0,0,NULL,0,0,0,0,0,0),('6425572350','2017-05-03 16:28:11.295095','2018-09-23 18:40:40.195050','Administrator','Administrator',0,'Domain Settings','fields','DocType',1,'active_domains_sb','Active Domains',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('643e71010e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',32,'logout_all_sessions','Logout from all devices while changing Password',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('645c97e6a5','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',8,'ldap_first_name_field','LDAP First Name Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('64795877a0','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',14,'allow_comments','Allow Comments',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('648fb3fda6','2014-06-05 02:22:36.029850','2018-09-23 18:40:45.142002','Administrator','Administrator',0,'Address Template','fields','DocType',2,'is_default','Is Default',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This format is used if country specific format is not found',1,0,0,NULL,0,0,0,0,0,0),('64a42695d9','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',16,'comment_type','Comment Type',NULL,'Select',NULL,'\nComment\nLike\nInfo\nLabel\nWorkflow\nCreated\nSubmitted\nCancelled\nUpdated\nDeleted\nAssigned\nAssignment Completed\nAttachment\nAttachment Removed\nShared\nUnshared\nBot\nRelinked',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,1,'',0,0,0,0,0,0),('64ad6b7931','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',13,'grant_type','Grant Type',NULL,'Select',NULL,'Authorization Code\nImplicit',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('64e48d7d9d','2017-06-26 10:57:19.976624','2018-09-23 18:40:39.762366','Administrator','Administrator',0,'Test Runner','fields','DocType',2,'app','App',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('64e6387418','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',3,'user','User',NULL,'Link',NULL,'User',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6583808a5f','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',24,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype===\"Link\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('65b0c7f7c7','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',6,'permlevel','Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'40px','40px',0,'0',NULL,1,0,0,'',0,0,0,0,0,0),('65ba1bafb3','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',6,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'is_standard',0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('6604c0f2ff','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',5,'access_key_id','Access Key ID',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('666a973c93','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',36,'timeline_name','Timeline Name',NULL,'Dynamic Link',NULL,'timeline_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('6684d1eae8','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',27,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'User permissions should not apply for this Link',0,0,0,NULL,0,0,0,0,0,0),('668a328bc9','2016-12-29 07:48:06.319665','2018-09-23 18:40:41.150994','Administrator','Administrator',0,'Website Sidebar','fields','DocType',2,'sidebar_items','Sidebar Items',NULL,'Table',NULL,'Website Sidebar Item',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('671594634f','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',1,'sb_doc_events','Doc Events',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('67382bf812','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',15,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('676d403687','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',16,'color','Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('677d71e1a5','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',7,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('678ff4608b','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',9,'blog_intro','Blog Intro',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Description for listing page, in plain text, only a couple of lines. (max 140 characters)',0,0,0,NULL,0,0,0,0,0,0),('67c18a18c6','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',16,'email_id','Email Id',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('68520f8481','2014-07-11 17:19:37.037109','2018-09-23 18:40:42.485320','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',3,'cc','CC',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Optional: Always send to these ids. Each Email Address on a new row',1,0,0,NULL,0,0,0,0,0,0),('6878af2046','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',5,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6885957b13','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',4,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('688e4309a4','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',6,'secret_access_key','Secret Access Key',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('68b8e0acf2','2013-03-07 12:26:33.000000','2018-09-23 18:40:41.110889','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',2,'heading','Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('6938dafb99','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',19,'max_attachment_size','Max Attachment Size (in MB)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('698c43ad57','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',5,'password','Password for Base DN',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('69d8da7d7f','2016-12-29 07:48:06.319665','2018-09-23 18:40:41.150994','Administrator','Administrator',0,'Website Sidebar','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6a139454c3','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',13,'condition','Condition',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6a188aee6f','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',36,'two_factor_authentication','Two Factor Authentication',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6a96e859c3','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',23,'sidebar_settings','Sidebar Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6b30e616f4','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',16,'print_style_preview','Print Style Preview',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6b39825090','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',15,'timeline_doctype','Timeline DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6b624fc92b','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',1,'client_id','App Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'',NULL,0,0,1,NULL,0,0,0,0,0,0),('6ba40cdf61','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',4,'mailbox_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6bcfe8f410','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',19,'idx','Idx',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6bf8e30ea3','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',2,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('6c6d7d67eb','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',16,'roles','Roles',NULL,'Table',NULL,'Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.is_standard == \'Yes\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6c7ed536b1','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',4,'cb_1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6ce296d73e','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',8,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6d2b7395df','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',4,'fieldname','Fieldname','fieldname','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('6d70eee779','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',10,'outgoing_mail_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6d8728a898','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',2,'app_name','App Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6dcc11906c','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',6,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6dea975aa9','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',1,'set_role_for','Set Role For',NULL,'Select',NULL,'\nPage\nReport',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('6dee99e63e','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',34,'show_name_in_global_search','Make \"name\" searchable in Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6e24f98fd2','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',15,'print_style','Print Style',NULL,'Link',NULL,'Print Style',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Modern',NULL,1,0,0,NULL,0,0,0,0,0,0),('6e289db542','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',4,'fraction_units','Fraction Units',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'1 Currency = [?] Fraction\nFor e.g. 1 USD = 100 Cent',1,0,0,NULL,0,0,0,0,0,0),('6e3b355377','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',14,'fields','Fields','fields','Table','Table','DocField',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6e3ba23a7f','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',40,'user_emails','User Emails',NULL,'Table',NULL,'User Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('6e4bc0dca7','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',9,'read','Read','read','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('6e6878ef11','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',3,'repeat_header_footer','Repeat Header and Footer in PDF',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('6e7f5ca227','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',47,'sb2','Defaults',NULL,'Section Break','Column Break',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,'50%','50%',0,NULL,'These values will be automatically updated in transactions and also will be useful to restrict permissions for this user on transactions containing these values.',0,0,1,NULL,0,0,0,0,0,0),('6ead63b740','2014-08-22 16:12:17.249590','2018-09-23 18:40:39.895168','Administrator','Administrator',0,'Language','fields','DocType',2,'language_name','Language Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('6eba416d6f','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',17,'role_profile_name','Role Profile',NULL,'Link',NULL,'Role Profile',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6ec9c815f8','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',45,'list_view_settings','List View Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6ed13fb429','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',8,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f07bd3aa8','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',17,'top_bar_text_color','Top Bar Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f2521a6ac','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',32,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f27f8d7a6','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',30,'in_filter','In Filter','in_filter','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6f5a99a961','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',2,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f8c53b017','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',4,'base_dn','Base Distinguished Name (DN)',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6fa0e0f43e','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',37,'ignore_xss_filter','Ignore XSS Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Don\'t HTML Encode HTML tags like &lt;script&gt; or just characters like &lt; or &gt;, as they could be intentionally used in this field',0,0,0,'',0,0,0,0,0,0),('7002e7e0fa','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',5,'roles_html','Roles Html',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('700dbb3d17','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',31,'hide_heading','Hide Heading','hide_heading','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7018f4f95d','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',10,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('70261f0171','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',14,'json','JSON',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\"Report Builder\"',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('702c91ae19','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',67,'frappe_userid','Frappe User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('708f88e8f4','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',18,'status','Status',NULL,'Select',NULL,'Open\nReplied\nClosed\nLinked',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('70b95cc313','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',5,'google_client_id','Google Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('70ced980c9','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',9,'brand','Brand',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('711a0e2cc9','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',10,'condition','Condition',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Optional: The alert will be sent if this expression is true',0,0,0,'',0,0,0,0,0,0),('71644de88e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',38,'email_signature','Email Signature',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('717e755021','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',5,'repeat_this_event','Repeat this Event',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('721a0ba5e0','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',16,'amend','Amend','amend','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('72367fcbf4','2016-05-25 09:43:44.767581','2018-09-23 18:40:40.217946','Administrator','Administrator',0,'Tag','fields','DocType',1,'tag_name','Tags',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('726be3a900','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',5,'write','Write',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('7351b071d5','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',2,'ldap_server_url','LDAP Server Url',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('738bc66fec','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',7,'posts','Posts',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('739d45fbc1','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',1,'report_name','Report Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('73be1a7919','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',61,'fb_username','Facebook Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('7434569a64','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',5,'refresh_token','Refresh Token',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('74446e6cab','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',13,'link_color','Link Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('744ce45d35','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',38,'cb30','Permissions Settings',NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7491977b79','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',4,'email_account','Email Account',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('74a1ee7a30','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',16,'day_of_week','Day of Week',NULL,'Select',NULL,'Monday\nTuesday\nWednesday\nThursday\nFriday\nSaturday\nSunday',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.frequency==\'Weekly\'',0,0,NULL,NULL,0,'Monday',NULL,0,0,0,'',0,0,0,0,0,0),('74b643e422','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',2,'published_on','Published On',NULL,'Date',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('74d9b28c37','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',58,'engine','Database Engine',NULL,'Select',NULL,'InnoDB\nMyISAM',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.issingle',0,0,NULL,NULL,0,'InnoDB',NULL,0,0,0,'',0,0,0,0,0,0),('74ec4ba14d','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',20,'short_bio','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('74fe9d9485','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',7,'fieldtype','Field Type','fieldtype','Select','Select','Attach\nAttach Image\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nGeolocation\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSmall Text\nTable\nText\nText Editor\nTime\nSignature',0,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,0,0,0,1,0),('75003e3430','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',8,'domain','Domain',NULL,'Link',NULL,'Email Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('75fb7efe4a','2017-06-26 10:57:19.976624','2018-09-23 18:40:39.762366','Administrator','Administrator',0,'Test Runner','fields','DocType',3,'output','Output',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('760eb00534','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',17,'introduction_text','Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('76218488fb','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',5,'reqd','Mandatory','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('76bb4b2278','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',19,'property_section','Set Property After Alert',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('781b0be531','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',6,'expiration_time','Expiration time',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('787913f74c','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',15,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('78994aa3bf','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',40,'allow_import','Allow Import (via Data Import Tool)',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('78b23c09eb','2013-03-07 11:55:11.000000','2018-09-23 18:40:40.933301','Administrator','Administrator',0,'About Us Team Member','fields','DocType',3,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('78b68fdbc5','2014-08-22 16:12:17.249590','2018-09-23 18:40:39.895168','Administrator','Administrator',0,'Language','fields','DocType',4,'based_on','Based On',NULL,'Link',NULL,'Language',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('78ba2dbd6c','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',21,'old_parent','old_parent',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('78cca07253','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',18,'pull_update','Pull Update',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7927875bd8','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',8,'blocked','Blocked',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7964781e3d','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',22,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('79774b430f','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',9,'allow_edit','Allow Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('79dd4048f5','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',43,'no_failed','no failed attempts',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('7a4591eccb','2013-03-07 11:55:11.000000','2018-09-23 18:40:40.933301','Administrator','Administrator',0,'About Us Team Member','fields','DocType',1,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('7a5fd2f474','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','fields','DocType',4,'css','CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7a6c6730a4','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',9,'service','Service',NULL,'Select',NULL,'\nGMail\nSendgrid\nSparkPost\nYahoo Mail\nOutlook.com\nYandex.Mail',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7a96f3e262','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',38,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7a9b0b9ada','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',12,'content','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'400',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7aaefa566e','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',43,'oldfieldtype',NULL,'oldfieldtype','Data','Data',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7b1f32b5d8','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',2,'email_group','Email Group',NULL,'Table',NULL,'Newsletter Email Group',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('7b480f45f0','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',7,'report_type','Report Type',NULL,'Select',NULL,'Report Builder\nQuery Report\nScript Report',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7b4c83df2d','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',3,'cb_doc_events',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7b6d31f84d','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',5,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7b90c22b07','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',1,'mapping_name','Mapping Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('7b9cdc052a','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',14,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7bb585d2f4','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',19,'depends_on','Display Depends On','depends_on','Code','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('7bbb358d48','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',37,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('7bfaeeedca','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',3,'email_id','Example Email Address',NULL,'Data',NULL,'Email',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('7c0a4049f3','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',2,'domain_name','domain name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,1,'',0,0,0,0,0,0),('7c5c444519','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',6,'subject','Subject',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('7c6fb82d8c','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',9,'sb_webhook_data','Webhook Data',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7cade674a7','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',18,'html_7',NULL,NULL,'HTML',NULL,'<p><strong>Condition Examples:</strong></p>\n<pre>doc.status==\"Open\"\ndoc.due_date==nowdate()\ndoc.total &gt; 40000\n</pre>\n<p><strong>Hints:</strong></p>\n<ol>\n<li>To check for an event every day, select \"Date Change\" in Event</li>\n<li>To send an alert if a particular value changes, select \"Value Change\"</li>\n</ol>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7cc0a91888','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',1,'ref_doctype','DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('7cc88bac8e','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',6,'roles','Roles',NULL,'Table',NULL,'Has Role',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('7cea7123d1','2013-03-07 15:53:15.000000','2018-09-23 18:40:41.276784','Administrator','Administrator',0,'Website Slideshow','fields','DocType',3,'slideshow_items','Slideshow Items',NULL,'Table',NULL,'Website Slideshow Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7cf0569de7','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',14,'text_content','Text Content',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7d35dd6f9a','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',4,'introduction','Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Introductory information for the Contact Us Page',0,0,0,NULL,0,0,0,0,0,0),('7d7302b010','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',33,'add_signature','Add Signature',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7d8d1eb990','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',5,'max_attachments','Max Attachments',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7dab9f912e','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',5,'time_zone','Time Zone',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7dd0001d86','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',2,'section_break_2',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7dea22969e','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',3,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'To add dynamic subject, use jinja tags like\n\n<div><pre><code>{{ doc.name }} Delivered</code></pre></div>',1,0,0,NULL,0,1,0,0,0,0),('7e27c11225','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',7,'email_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7e2829540a','2017-08-11 05:09:10.900237','2018-09-23 18:40:45.666460','Administrator','Administrator',0,'Data Migration Mapping Detail','fields','DocType',3,'is_child_table','Is Child Table',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('7e2b96f976','2016-05-25 13:09:20.996154','2018-09-23 18:40:40.347556','Administrator','Administrator',0,'Tag Doc Category','fields','DocType',1,'tagdoc','Doctype to Assign Tags',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('7e54c1cbbb','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',14,'image_field','Image Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Must be of type \"Attach Image\"',0,0,0,'',0,0,0,0,0,0),('7e64958ab0','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',8,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'all openid','A list of resources which the Client App will have access to after the user allows it.<br> e.g. project',0,0,0,NULL,0,0,0,0,0,0),('7e809b1322','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',14,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7e83fccc71','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',27,'reference_name','Reference Name',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7e9d68f0fd','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',32,'column_break_27',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7ea11eeb31','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',12,'filters','Filters',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7ec8eda5fd','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',3,'communication_medium','Type',NULL,'Select',NULL,'\nEmail\nChat\nPhone\nSMS\nVisit\nOther',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,'',NULL,0,0,0,NULL,0,0,0,0,0,0),('7ef0f01f53','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',16,'fields','Fields',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7efe6b84be','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',1,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7f111f0450','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',11,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7f2dc2e3ab','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',2,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'DocType on which this Workflow is applicable.',0,1,0,NULL,0,0,0,0,0,0),('7fbe8b1936','2013-01-16 13:09:40.000000','2018-09-23 18:40:38.722669','Administrator','Administrator',0,'Error Log','fields','DocType',2,'method','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('80190a2143','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','fields','DocType',2,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('804cdf896e','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',12,'html_8',NULL,NULL,'HTML',NULL,'<p><strong>Condition Examples:</strong></p>\n<pre>doc.status==\"Closed\"\ndoc.due_date==nowdate()\ndoc.total &gt; 40000\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('807fb31976','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',9,'standard','Standard','standard','Select','Select','\nYes\nNo',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('80ac564eb7','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('80f3fe2c25','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',41,'description','Description','description','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('80f5dc4167','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',25,'sidebar_items','Sidebar Items',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('80f789ad2e','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',19,'sent_or_received','Sent or Received',NULL,'Select',NULL,'Sent\nReceived',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('80fa59d769','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',17,'attachments','Attachments',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('8115d8c24d','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',6,'permlevel','Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'40px','40px',0,'0',NULL,1,0,0,NULL,0,0,0,0,0,0),('812c37f4ac','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',13,'push_update','Push Update',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('813db8234e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',30,'new_password','Set New Password',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8172229691','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',3,'heading','Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Default: \"Contact Us\"',0,0,0,NULL,0,0,0,0,0,0),('818408f6cd','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',15,'example','Example',NULL,'HTML',NULL,'<h5>Message Example</h5>\n\n<pre>&lt;h3&gt;Issue Resolved&lt;/h3&gt;\n\n&lt;p&gt;Issue {{ doc.name }} Is resolved. Please check and confirm the same.&lt;/p&gt;\n\n&lt;p&gt; Your Feedback is important for us. Please give us your Feedback for {{ doc.name }}&lt;/p&gt;\n\n&lt;h4&gt;Details&lt;/h4&gt;</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('81b03087f0','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',3,'facebook_client_secret','Facebook Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('81ce16f9b9','2017-05-03 16:28:11.295095','2018-09-23 18:40:40.195050','Administrator','Administrator',0,'Domain Settings','fields','DocType',3,'active_domains','Active Domains',NULL,'Table',NULL,'Has Domain',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('81cf9b89bd','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',8,'seen_by','Seen By Table',NULL,'Table',NULL,'Note Seen By',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('81da7eafc4','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',18,'frequency','Frequency',NULL,'Select',NULL,'Daily\nWeekly\nMonthly',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('820844ced1','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',3,'import_file','Attach file for Import',NULL,'Attach',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('824a0fc1e4','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',8,'parent_error_snapshot','Parent Error Snapshot',NULL,'Data',NULL,'',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('827454dd62','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',37,'send_me_a_copy','Send Me A Copy of Outgoing Emails',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('82a73e6be1','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',35,'timeline_doctype','Timeline DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('82a8f90bb4','2013-03-07 15:53:15.000000','2018-09-23 18:40:41.276784','Administrator','Administrator',0,'Website Slideshow','fields','DocType',4,'header','Header',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'This goes above the slideshow.',0,0,0,NULL,0,0,0,0,0,0),('82b5de9042','2017-09-14 12:08:50.302810','2018-09-23 18:40:44.291624','Administrator','Administrator',0,'Webhook Data','fields','DocType',3,'key','Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('82d8692718','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',15,'phone','Phone',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8352fd5d60','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',2,'category','Category',NULL,'Link',NULL,'Help Category',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('83a1611a30','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',12,'reference_name','Reference Name','reference_name','Dynamic Link','Data','reference_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('83a6144328','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',3,'status','Status',NULL,'Select',NULL,'Pending\nStarted\nPartial Success\nSuccess\nFail\nError',0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Pending',NULL,1,0,1,'',0,0,0,0,0,0),('83f3408882','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',12,'username','Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('83f5d8c56e','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',27,'accept_payment','Accept Payment',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('83f978fc7b','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',24,'sb2','Header and Description',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('8416b3a41b','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',15,'font','Font',NULL,'Select',NULL,'Default\nArial\nHelvetica\nVerdana\nMonospace',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.custom_format',0,0,NULL,NULL,0,'Default',NULL,0,0,0,'',0,0,0,0,0,0),('8467e94a8e','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',7,'bucket','Bucket',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8479803597','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',4,'if_owner','If user is the owner',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Apply this rule if the User is the Owner',0,0,0,'',0,0,0,0,0,0),('8479abc932','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',5,'address_line2','Address Line 2',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('849ff5a69a','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',2,'is_private','Is Private',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('85963315fb','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',4,'email_id','Email Address','email_id','Data','Data','Email',1,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('859bf6482c','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',4,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('85ab1afb5f','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',5,'roles_html','Roles Html',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('85ac16acbe','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',13,'add_unsubscribe_link','Add Unsubscribe Link',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('85ad80c9e0','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','fields','DocType',3,'start_date_field','Start Date Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('86084f5b4e','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',8,'event','Send Alert On',NULL,'Select',NULL,'\nNew\nSave\nSubmit\nCancel\nDays After\nDays Before\nValue Change\nMethod\nCustom',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('8630180c29','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',29,'track_seen','Track Seen',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('86d2b0f021','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',6,'skip_authorization','Skip Authorization',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If checked, users will not see the Confirm Access dialog.',0,0,0,'',0,0,0,0,0,0),('870f75eeae','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',9,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Query Report\", \"Script Report\"].indexOf(doc.report_type)!==-1',0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('872638f5d2','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',11,'type','Type',NULL,'Select',NULL,'module\nlist\nlink\npage\nquery-report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('87264e4519','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',4,'webhook_docevent','Doc Event',NULL,'Select',NULL,'after_insert\non_update\non_submit\non_cancel\non_trash\non_update_after_submit\non_change',0,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('87529a4734','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',17,'additional_permissions','Additional Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('878e76a91d','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',52,'has_web_view','Has Web View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('87c5cbc5e2','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',28,'print_width','Print Width',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('87f281148e','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',16,'autoname','Auto Name','autoname','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Naming Options:\n<ol><li><b>field:[fieldname]</b> - By Field</li><li><b>naming_series:</b> - By Naming Series (field called naming_series must be present</li><li><b>Prompt</b> - Prompt user for a name</li><li><b>[series]</b> - Series by prefix (separated by a dot); for example PRE.#####</li></ol>',0,0,0,NULL,0,0,0,0,0,0),('8829ac51ea','2017-03-13 09:20:56.387135','2018-09-23 18:40:42.353776','Administrator','Administrator',0,'Email Rule','fields','DocType',2,'is_spam','Is Spam',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8844abca4e','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',20,'set_property_after_alert','Set Property After Alert',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8844c7aecb','2013-01-16 13:09:40.000000','2018-09-23 18:40:38.722669','Administrator','Administrator',0,'Error Log','fields','DocType',1,'seen','Seen',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('8853dcbcfd','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',10,'frappe','Frappe',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('88693716ce','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',2,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('88925004e7','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',7,'ldap_search_string','LDAP Search String',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('88936158fc','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',13,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('889c410ad0','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',4,'fieldname','Name','fieldname','Data','Data',NULL,1,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('88aa2b4703','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','fields','DocType',4,'document_name','Document Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'New Document for {name} ',NULL,0,0,0,'',0,0,0,0,0,0),('88bf2f9f71','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',12,'condition_detail','Condition Detail',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('88c1297195','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',48,'defaults','User Defaults',NULL,'Table',NULL,'DefaultValue',0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Enter default value fields (keys) and values. If you add multiple values for a field,the first one will be picked. These defaults are also used to set \"match\" permission rules. To see list of fields,go to \"Customize Form\".',0,0,0,NULL,0,0,0,0,0,0),('88c910bce5','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',3,'standard','Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('88d829e1a6','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',50,'simultaneous_sessions','Simultaneous Sessions',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('88ded57c79','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',5,'pdf_page_size','PDF Page Size',NULL,'Select',NULL,'A4\nLetter',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'A4',NULL,0,0,0,NULL,0,0,0,0,0,0),('89211c3026','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',7,'module','Module','module','Link','Select','Module Def',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('8994aa8a1a','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',13,'feedback_rating','Feedback Rating',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('89dac41695','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',6,'doc_type','DocType',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('89e5eb2c73','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',4,'send_reminder','Send an email reminder in the morning',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('8a18806893','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','fields','DocType',1,'language','Language',NULL,'Link',NULL,'Language',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('8a27c0f51a','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',19,'format','Format',NULL,'Select',NULL,'HTML\nXLSX\nCSV',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8a6789ced4','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',8,'login_required','Login Required',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8a6fbaffac','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',32,'brute_force_security','Brute Force Security',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8a86028bfe','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8a8b3aa135','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','fields','DocType',2,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('8abaa79c48','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',14,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8ae879a43f','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',44,'email_status','Email Status',NULL,'Select',NULL,'Open\nSpam\nTrash',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8b9ad564ee','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',19,'export','Export',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('8bd0a82aca','2016-10-19 12:26:42.569185','2018-09-23 18:40:43.446835','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',4,'order','Order',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8c0bbb4536','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',32,'head_html','&lt;head&gt; HTML',NULL,'Code',NULL,'HTML',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Added HTML in the &lt;head&gt; section of the web page, primarily used for website verification and SEO',0,0,0,'',0,0,0,0,0,0),('8c3a66ef2a','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',58,'last_active','Last Active',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('8c3cb033a8','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','fields','DocType',3,'reason','Reason',NULL,'Long Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8c48311d6b','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',4,'email_field','Email Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval: doc.document_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8c4b22a202','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',14,'submit','Submit','submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('8c5062992e','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',1,'client','Client',NULL,'Link',NULL,'OAuth Client',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('8c74dd4871','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',7,'message_id','Message ID',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('8cc7947c5e','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',11,'fields','Field Maps',NULL,'Table',NULL,'Data Migration Mapping Detail',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8d819bbfb9','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',26,'js','JavaScript',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8da28ee089','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',14,'column_break_11',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8e398920a2','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',1,'enabled','Enable Automatic Backup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8e6709bef7','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',3,'evalue','Friendly Title',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('8e8c6a6024','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',10,'delivery_status','Delivery Status',NULL,'Select',NULL,'\nSent\nBounced\nOpened\nMarked As Spam\nRejected\nDelayed\nSoft-Bounced\nClicked\nRecipient Unsubscribed\nError\nExpired\nSending',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Integrations can use this field to set email delivery status',0,0,0,'',0,0,0,0,0,0),('8efcac1d2e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',44,'modules_access','Modules Access',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,'','',0,0,0,'',0,0,0,0,0,0),('8f0017f1b7','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',34,'redirect_url','Redirect URL',NULL,'Small Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8f250b206d','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8f3d40a1ca','2017-08-11 05:15:51.482165','2018-09-23 18:40:45.708852','Administrator','Administrator',0,'Data Migration Plan','fields','DocType',2,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8f747d272e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',21,'gender','Gender','gender','Link','Select','Gender',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8fa2aac32e','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',10,'banner_image','Brand Image',NULL,'Attach Image',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select an image of approx width 150px with a transparent background for best results.',0,0,0,NULL,0,0,0,0,0,0),('8fbf2057d3','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',15,'cancel','Cancel','cancel','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8ff12fc37c','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',15,'repeat_till','Repeat Till',NULL,'Date',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,'Leave blank to repeat always',0,0,0,NULL,0,0,0,0,0,0),('9018fbd641','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',1,'is_completed','Is Completed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('90346e7ac0','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',31,'send_password_update_notification','Send Password Update Notification',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('904df6597e','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',17,'sort_field','Sort Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('904eb9bcea','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',19,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Number of columns for a field in a List View or a Grid (Total Columns should be less than 11)',0,0,0,'',0,0,0,0,0,0),('9058d5cad5','2017-07-17 14:25:27.881871','2018-09-23 18:40:40.113033','Administrator','Administrator',0,'User Permission','fields','DocType',4,'apply_for_all_roles','Apply for all Roles for this User',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','If you un-check this, you will have to apply manually for each Role + Document Type combination',0,0,0,'',0,0,0,0,0,0),('90e17acd27','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',27,'favicon','FavIcon',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'An icon file with .ico extension. Should be 16 x 16 px. Generated using a favicon generator. [favicon-generator.org]',0,0,0,NULL,0,0,0,0,0,0),('90e898169b','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',8,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('910063a650','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',6,'roles','Roles',NULL,'Table',NULL,'Has Role',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('910088adc4','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',11,'insert_code','Insert Code',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Add code as &lt;script&gt;',0,0,0,NULL,0,0,0,0,0,0),('91eb1db6c8','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',19,'show_sidebar','Show Sidebar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('91f3a9e689','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',8,'description_section','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('92546ae5d9','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',13,'country','Country',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('92d6f1dcc3','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',16,'background_workers','Background Workers',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('92e56db667','2017-02-26 16:20:52.654136','2018-09-23 18:40:42.448862','Administrator','Administrator',0,'Newsletter Email Group','fields','DocType',2,'total_subscribers','Total Subscribers',NULL,'Read Only',NULL,'email_group.total_subscribers',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('92e5e57835','2013-02-22 01:28:08.000000','2018-09-23 18:40:40.772168','Administrator','Administrator',0,'Top Bar Item','fields','DocType',5,'right','Right',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','For top bar',0,0,0,NULL,0,0,0,0,0,0),('9300420480','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',15,'response_type','Response Type',NULL,'Select',NULL,'Code\nToken',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Code',NULL,1,1,0,NULL,0,0,0,0,0,0),('931a34c562','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',8,'status','Status',NULL,'Select',NULL,'Active\nRevoked',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('932277d0dd','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',1,'contact_section','',NULL,'Section Break',NULL,'fa fa-user',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('933d618cb1','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',3,'show_as_cc','Show as cc',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('93a98c9a84','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',20,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('93f0378f89','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',1,'connector_name','Connector Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('93f84d3e85','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',6,'use_imap','Use IMAP',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('941ef80493','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',4,'update_value','Update Value',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9447913a54','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',6,'website_theme','Website Theme',NULL,'Link',NULL,'Website Theme',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Standard',NULL,0,0,0,'',0,0,0,0,0,0),('9448173594','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',29,'no_copy','No Copy','no_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('947e3d7b1a','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',18,'scheduler_last_event','Scheduler Last Event',NULL,'Data',NULL,NULL,0,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('949205c8ce','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',11,'section_break_11',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('94d23befa6','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',1,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('94ee9a9022','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',5,'allow_gsuite_access','Allow GSuite access',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.client_secret && doc.client_id)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('95492c59f4','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',11,'send_after','Send After',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9558eb0085','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',25,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('95707cd336','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',29,'column_break_28',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('95796f0f49','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',11,'roles','Roles','roles','Table','Table','Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.standard == \'Yes\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('957e93498c','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',3,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,3,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9583461280','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',3,'priority','Priority','priority','Select','Data','High\nMedium\nLow',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Medium',NULL,1,1,0,NULL,0,0,0,0,0,0),('95f6d33f97','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',10,'text_webfont','Google Font (Text)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,'Add the name of a \"Google Web Font\" e.g. \"Open Sans\"',0,0,0,'',0,0,0,0,0,0),('96497bca47','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',2,'message_parameter','Message Parameter',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Enter url parameter for message',1,0,0,NULL,0,0,0,0,0,0),('964f397c10','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',10,'track_changes','Track Changes',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('965cf398c0','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',35,'email_settings','Email Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9663551a31','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',6,'cb01',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('96665b0566','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',23,'set_only_once','Set Only Once',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Do not allow user to change after set the first time',0,0,0,NULL,0,0,0,0,0,0),('96f8fe7318','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',6,'redirect_uri_bound_to_authorization_code','Redirect URI Bound To Auth Code',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9700800431','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',23,'mobile_no','Mobile No',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('979abd7bae','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',11,'days_in_advance','Days Before or After',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Days After\" || doc.event==\"Days Before\"',0,0,NULL,NULL,0,'0','Send days before or after the reference date',0,0,0,NULL,0,0,0,0,0,0),('98063cf291','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',40,'_user_tags','User Tags',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9816eac2df','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',5,'first_name','First Name','first_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9884aca129','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',23,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9898971d91','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',11,'brand_html','Brand HTML',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Brand is what appears on the top-left of the toolbar. If it is an image, make sure it\nhas a transparent background and use the &lt;img /&gt; tag. Keep size as 200px x 30px',0,0,0,NULL,0,0,0,0,0,0),('98e3bef583','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',2,'properties','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('98ff6c607a','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',33,'allow_consecutive_login_attempts','Allow Consecutive Login Attempts ',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9901d9383e','2017-08-31 04:16:38.764465','2018-09-23 18:40:38.562137','Administrator','Administrator',0,'Role Profile','fields','DocType',2,'roles_html','Roles HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9902c6661a','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',3,'section_break_3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9963a79c7e','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',1,'sb0','Landing Page',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('99c37e56a0','2013-03-07 15:53:15.000000','2018-09-23 18:40:41.276784','Administrator','Administrator',0,'Website Slideshow','fields','DocType',2,'sb0','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'Note: For best results, images must be of the same size and width must be greater than height.',0,0,0,NULL,0,0,0,0,0,0),('99f54a2364','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',2,'connector_type','Connector Type',NULL,'Select',NULL,'\nFrappe\nCustom',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_custom',0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9a2276a086','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',3,'action','Action',NULL,'Select',NULL,'Read\nUnread',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9a30901f65','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',10,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','',0,0,0,'',0,0,0,0,0,0),('9a5cab3020','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',28,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: parent.is_submittable',0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9a75bd5cac','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',8,'section_break_4','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9adb084e0f','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',7,'expires_in','Expires In',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9b11070cb4','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',16,'condition','Condition',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Optional: The alert will be sent if this expression is true',1,0,0,NULL,0,1,0,0,0,0),('9b1a3c685f','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',2,'role','Role','role','Link','Link','Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9b56471b4e','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','fields','DocType',5,'standard_reply_help','Standard Reply Help',NULL,'HTML',NULL,'<h4>Standard Reply Example</h4>\n\n<pre>Order Overdue\n\nTransaction {{ name }} has exceeded Due Date. Please take necessary action.\n\nDetails\n\n- Customer: {{ customer }}\n- Amount: {{ grand_total }}\n</pre>\n\n<h4>How to get fieldnames</h4>\n\n<p>The fieldnames you can use in your standard reply are the fields in the document from which you are sending the email. You can find out the fields of any documents via Setup &gt; Customize Form View and selecting the document type (e.g. Sales Invoice)</p>\n\n<h4>Templating</h4>\n\n<p>Templates are compiled using the Jinja Templating Langauge. To learn more about Jinja, <a class=\"strong\" href=\"http://jinja.pocoo.org/docs/dev/templates/\">read this documentation.</a></p>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9b76fec92f','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','fields','DocType',3,'is_default','Is Default','is_default','Check','Check',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,'Check this to make this the default letter head in all prints',1,0,0,NULL,0,0,0,0,0,0),('9bb30958d6','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',3,'notify_on_login','Notify users with a popup when they log in',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'public',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9be8170bae','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',15,'attached_to_doctype','Attached To DocType',NULL,'Link',NULL,'DocType',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,1,NULL,0,0,0,0,0,0),('9c00da480e','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',8,'options','Options',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9c057bbad5','2014-08-22 16:12:17.249590','2018-09-23 18:40:39.895168','Administrator','Administrator',0,'Language','fields','DocType',3,'flag','Flag',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9c2bf9c196','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',11,'logs_sb','Logs',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,'eval:(doc.status !== \'Pending\')',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9c3f7f5f66','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('9c41bbf802','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','fields','DocType',1,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9c5ce8c9e7','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',8,'reference_docname','Reference Docname',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9c861134d3','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9ca10b39ca','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',4,'email_sent','Email Sent?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('9cb10af13d','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.975358','Administrator','Administrator',0,'Workflow Transition','fields','DocType',4,'allowed','Allowed',NULL,'Link',NULL,'Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9cc3b063ac','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',2,'filters','Filters',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9cf807009f','2017-07-17 14:25:27.881871','2018-09-23 18:40:40.113033','Administrator','Administrator',0,'User Permission','fields','DocType',2,'allow','Allow',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('9d0c9e0914','2015-03-18 09:41:20.216319','2018-09-23 18:40:42.589833','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',4,'global_unsubscribe','Global Unsubscribe',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9d2825919a','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',8,'attachment_limit','Attachment Limit (MB)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'1','Ignore attachments over this size',0,0,0,'',0,0,0,0,0,0),('9d3f0cfd1f','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',14,'reference_communication','Reference Communication',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9d6844f370','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',1,'subject','Subject',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9d73b7c6a6','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',6,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9da1228027','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',19,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9da45f864b','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',5,'author','Author',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user_fullname',NULL,0,0,0,'',0,0,0,0,0,0),('9e0900bc75','2014-07-11 17:19:37.037109','2018-09-23 18:40:42.485320','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',2,'email_by_role','Email By Role',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9e4392fe0a','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',9,'likes','Likes',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9e8c4be33f','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',8,'webhook_headers','Headers',NULL,'Table',NULL,'Webhook Header',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9e9cba5d0f','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',14,'navbar_search','Include Search in Top Bar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9ebbd46be9','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',16,'more_info','More Information',NULL,'Section Break',NULL,'fa fa-file-text',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9f039c7dda','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',2,'facebook_client_id','Facebook Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9f077e9e9f','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',8,'send_unsubscribe_link','Send Unsubscribe Link',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('9f0dd1dcda','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',11,'ignore_encoding_errors','Ignore encoding errors',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('9f2077b999','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',11,'reference_type','Reference Type','reference_type','Link','Data','DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9f3460954f','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',6,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9f5053edc9','2017-05-03 16:28:11.295095','2018-09-23 18:40:40.195050','Administrator','Administrator',0,'Domain Settings','fields','DocType',2,'domains_html','Domains HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9f54861da9','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9f92ecf841','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',12,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9fa54b3be9','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',27,'groups','Groups',NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9fcb20949b','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',15,'unsubscribe_method','Unsubscribe Method',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9fdc97e24d','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',8,'reference_name','Reference Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9fddd23046','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',54,'column_break_53',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9ff970211e','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',14,'insert_style','Insert Style',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a054ae27a5','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a06854b471','2013-03-07 15:53:15.000000','2018-09-23 18:40:41.276784','Administrator','Administrator',0,'Website Slideshow','fields','DocType',1,'slideshow_name','Slideshow Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a06acf1ea4','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',1,'reference_doctype','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'',0,1,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('a0977ea936','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',14,'import_status','Import Status',NULL,'Select',NULL,'\nSuccessful\nFailed\nIn Progress\nPartially Successful',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a0a9d49855','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','fields','DocType',5,'parameters','Static Parameters',NULL,'Table',NULL,'SMS Parameter',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Enter static url parameters here (Eg. sender=ERPNext, username=ERPNext, password=1234 etc.)',0,0,0,NULL,0,0,0,0,0,0),('a11736516a','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',2,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a1182d39e1','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','fields','DocType',2,'uid','UID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a136398e8f','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',5,'custom_sidebar_menu','Custom Sidebar Menu',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a146047a07','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',12,'email_id','Email Address',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a16e245273','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',24,'birth_date','Birth Date','birth_date','Date','Date',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a1a032815e','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',23,'send_notification_to','Send Notification to',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'notify_if_unreplied',0,0,NULL,NULL,0,NULL,'Email Addresses',0,0,0,'',0,0,0,0,0,0),('a1a63f2021','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',9,'reference_name','Reference DocName',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('a218e73833','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',10,'percent_complete','Percent Complete',NULL,'Percent',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a239fa5489','2013-03-07 11:55:11.000000','2018-09-23 18:40:40.933301','Administrator','Administrator',0,'About Us Team Member','fields','DocType',2,'image_link','Image Link',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a2438a8d93','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',3,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a2604354ce','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',3,'doctype_or_field','DocType or Field',NULL,'Select',NULL,'\nDocField\nDocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('a288243cd3','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',11,'image_view','Image View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.image_field',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('a2bf889697','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',5,'color','Color',NULL,'Color',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('a2c08d452e','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',7,'mapping_type','Mapping Type',NULL,'Select',NULL,'Push\nPull\nSync',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a30278a296','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',23,'integrations','Integrations',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a320f195f6','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',1,'label_and_type','Label and Type',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a462477005','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',14,'time_zone','Timezone',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('a46eac3181','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',6,'etype','Exception Type',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a4895e04a7','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',15,'links','Links',NULL,'Table',NULL,'Dynamic Link',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a4b20458b5','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',9,'main_section','Main Section',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,1,0,0,0,0),('a55c11e211','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',13,'is_folder','Is Folder',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a55da0bd90','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',22,'print_format_builder','Print Format Builder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a5820c77ae','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',22,'read_receipt','Sent Read Receipt',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a5a860203c','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',7,'send_if_data','Send only if there is any data',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('a5ae75fa8b','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',29,'ref_name','Ref Name','ref_name','Dynamic Link','Data','ref_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('a5fc4e500c','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',1,'role_and_level','Role and Level',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a62c345cee','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',30,'print_format','Print Format',NULL,'Link',NULL,'Print Format',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'attach_print',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a64918b5ca','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',6,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('a64a160698','2015-12-15 22:26:45.221162','2018-09-23 18:40:39.863099','Administrator','Administrator',0,'Payment Gateway','fields','DocType',1,'gateway','Gateway',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a6994b795b','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',7,'number_format','Number Format',NULL,'Select',NULL,'\n#,###.##\n#.###,##\n# ###.##\n# ###,##\n#\'###.##\n#, ###.##\n#,##,###.##\n#,###.###\n#.###\n#,###',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'How should this currency be formatted? If not set, will use system defaults',1,0,0,NULL,0,0,0,0,0,0),('a6b7e2cfe0','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','fields','DocType',4,'paypal_sandbox','Use Sandbox',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Check this if you are testing your payment using the Sandbox API',0,0,0,'',0,0,0,0,0,0),('a6d9b61506','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',4,'issingle','Is Single','issingle','Check','Check',NULL,0,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'Single Types have only one record no tables associated. Values are stored in tabSingles',0,1,0,NULL,0,0,0,0,0,0),('a70eb3a52a','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','fields','DocType',3,'signature','Signature',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a71d4c6b76','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',15,'assigned_by','Assigned By',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a746c91d09','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',22,'security','Security',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a773314b9b','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',12,'allow_print','Allow Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a7da7b219b','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',10,'ldap_username_field','LDAP Username Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a81e7302db','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',8,'password','Password',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a851921498','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',7,'user_permission_doctypes','User Permission DocTypes',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JSON list of DocTypes used to apply User Permissions. If empty, all linked DocTypes will be used to apply User Permissions.',0,0,1,NULL,0,0,0,0,0,0),('a88898fb26','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',12,'text_color','Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a8cb33fd49','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',4,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a8cb9497e9','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',26,'smtp_server','SMTP Server',NULL,'Data',NULL,'domain.smtp_server',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,'e.g. smtp.gmail.com',0,0,0,'',0,0,0,0,0,0),('a91e376a8e','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',6,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a927c47b27','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',31,'send_unsubscribe_message','Send unsubscribe message in email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('a9445759b4','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',20,'fields_section_break','Fields',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,'Customize Label, Print Hide, Default etc.',0,0,0,NULL,0,0,0,0,0,0),('a95785176f','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',50,'in_create','User Cannot Create','in_create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a9613c2ff4','2016-09-03 11:42:42.575525','2018-09-23 18:40:44.682716','Administrator','Administrator',0,'OAuth Provider Settings','fields','DocType',1,'skip_authorization','Skip Authorization',NULL,'Select',NULL,'Force\nAuto',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a9a4a1f742','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',2,'ref_doctype','Ref DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('a9a88fdfa8','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',23,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('a9c9b76a8d','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',29,'allow_login_using_mobile_number','Allow Login using Mobile Number',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','User can login using Email id or Mobile number',0,0,0,'',0,0,0,0,0,0),('a9fbda1e65','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',2,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('aa278f89a2','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','fields','DocType',4,'content','Content','content','Text Editor','Text Editor',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'Letter Head in HTML',1,0,0,NULL,0,0,0,0,0,0),('aa3e43b90d','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',30,'in_reply_to','In Reply To',NULL,'Link',NULL,'Communication',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('aaba8093a1','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',25,'email','Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('aacc4bf98a','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',6,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Help: To link to another record in the system, use \"#Form/Note/[Note Name]\" as the Link URL. (don\'t use \"http://\")',0,0,0,NULL,0,0,0,0,0,0),('ab0a426db0','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',12,'priority','Priority',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,1,'',0,0,0,0,0,0),('ab22014c7c','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',43,'email_footer_address','Email Footer Address',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Your organization name and address for the email footer.',0,0,0,'',0,0,0,0,0,0),('ab780bd2de','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',20,'print_format_help','Print Format Help',NULL,'HTML',NULL,'<h3>Print Format Help</h3>\n<hr>\n<h4>Introduction</h4>\n<p>Print itemsFormats are rendered on the server side using the Jinja Templating Language. All forms have access to the <code>doc</code> object which contains information about the document that is being formatted. You can also access common utilities via the <code>frappe</code> module.</p>\n<p>For styling, the Boostrap CSS framework is provided and you can enjoy the full range of classes.</p>\n<hr>\n<h4>References</h4>\n<ol>\n	<li><a href=\"http://jinja.pocoo.org/docs/templates/\" target=\"_blank\">Jinja Tempalting Language: Reference</a></li>\n	<li><a href=\"http://getbootstrap.com\" target=\"_blank\">Bootstrap CSS Framework</a></li>\n</ol>\n<hr>\n<h4>Example</h4>\n<pre><code>&lt;h3&gt;{{ doc.select_print_heading or \"Invoice\" }}&lt;/h3&gt;\n&lt;div class=\"row\"&gt;\n	&lt;div class=\"col-md-3 text-right\"&gt;Customer Name&lt;/div&gt;\n	&lt;div class=\"col-md-9\"&gt;{{ doc.customer_name }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=\"row\"&gt;\n	&lt;div class=\"col-md-3 text-right\"&gt;Date&lt;/div&gt;\n	&lt;div class=\"col-md-9\"&gt;{{ doc.get_formatted(\"invoice_date\") }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;table class=\"table table-bordered\"&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;th&gt;Sr&lt;/th&gt;\n			&lt;th&gt;Item Name&lt;/th&gt;\n			&lt;th&gt;Description&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Qty&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Rate&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Amount&lt;/th&gt;\n		&lt;/tr&gt;\n		{%- for row in doc.items -%}\n		&lt;tr&gt;\n			&lt;td style=\"width: 3%;\"&gt;{{ row.idx }}&lt;/td&gt;\n			&lt;td style=\"width: 20%;\"&gt;\n				{{ row.item_name }}\n				{% if row.item_code != row.item_name -%}\n				&lt;br&gt;Item Code: {{ row.item_code}}\n				{%- endif %}\n			&lt;/td&gt;\n			&lt;td style=\"width: 37%;\"&gt;\n				&lt;div style=\"border: 0px;\"&gt;{{ row.description }}&lt;/div&gt;&lt;/td&gt;\n			&lt;td style=\"width: 10%; text-align: right;\"&gt;{{ row.qty }} {{ row.uom or row.stock_uom }}&lt;/td&gt;\n			&lt;td style=\"width: 15%; text-align: right;\"&gt;{{\n				row.get_formatted(\"rate\", doc) }}&lt;/td&gt;\n			&lt;td style=\"width: 15%; text-align: right;\"&gt;{{\n				row.get_formatted(\"amount\", doc) }}&lt;/td&gt;\n		&lt;/tr&gt;\n		{%- endfor -%}\n	&lt;/tbody&gt;\n&lt;/table&gt;</code></pre>\n<hr>\n<h4>Common Functions</h4>\n<table class=\"table table-bordered\">\n	<tbody>\n		<tr>\n			<td style=\"width: 30%;\"><code>doc.get_formatted(\"[fieldname]\", [parent_doc])</code></td>\n			<td>Get document value formatted as Date, Currency etc. Pass parent <code>doc</code> for curreny type fields.</td>\n		</tr>\n		<tr>\n			<td style=\"width: 30%;\"><code>frappe.db.get_value(\"[doctype]\", \"[name]\", \"fieldname\")</code></td>\n			<td>Get value from another document.</td>\n		</tr>\n	</tbody>\n</table>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('abccc3b4f1','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',3,'send_email_for_successful_backup','Send Email for Successful Backup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Note: By default emails for failed backups are sent.',0,0,0,'',0,0,0,0,0,0),('abd4138d8f','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',15,'search_fields','Search Fields',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Fields separated by comma (,) will be included in the \"Search By\" list of Search dialog box',1,0,0,NULL,0,0,0,0,0,0),('abd86d8925','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',28,'ref_type','Ref Type','ref_type','Link','Data','DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('abf82ce9e1','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',4,'roles_permission','Roles Permission',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ac0720e985','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',55,'column_break1',NULL,NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ac09bd45f5','2017-08-11 05:15:51.482165','2018-09-23 18:40:45.708852','Administrator','Administrator',0,'Data Migration Plan','fields','DocType',1,'plan_name','Plan Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('ac1016bf9a','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',18,'tuesday','Tuesday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ac3d18efa6','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',1,'address_details','',NULL,'Section Break',NULL,'fa fa-map-marker',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ac3def2bf9','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',3,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Filter records based on User Permissions defined for a user',0,0,0,NULL,0,0,0,0,0,0),('ac431d3559','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',1,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ac496b835f','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',8,'backup_limit','Backup Limit',NULL,'Int',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad1dcb5bf7','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',6,'google_client_secret','Google Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ad228d2db7','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',6,'bootstrap','Link to Bootstrap CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,'Link to your Bootstrap theme',0,0,0,'',0,0,0,0,0,0),('ad2d48e7ea','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',6,'filter_data','Filter Data',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad3820f4bb','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','fields','DocType',3,'standard','Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad583ed804','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad5d1d1583','2013-01-10 16:34:24.000000','2018-09-23 18:40:44.765792','Administrator','Administrator',0,'Print Heading','fields','DocType',2,'description','Description','description','Small Text','Small Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ad665a1376','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',8,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad7f3d60df','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',25,'column_break_29',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ade513ddc4','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',14,'cb_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae1fb401a4','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',6,'level','Level',NULL,'Select',NULL,'Beginner\nIntermediate\nExpert',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae3e711823','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',20,'website_sidebar','Website Sidebar',NULL,'Link',NULL,'Website Sidebar',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae7cf12beb','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',11,'create','Create','create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('aefe0a6982','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',13,'fields_section_break','Fields',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('aeff22dc34','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',22,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('af140fea74','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',8,'github_client_id','GitHub Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('af38124b0d','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',12,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,'',0,0,0,0,0,0),('af43822dd5','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',2,'module','Module','module','Link','Link','Module Def',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('af8eef8203','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',53,'login_before','Login Before',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Allow user to login only before this hour (0-24)',0,0,0,NULL,0,0,0,0,0,0),('afcd2c8300','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',11,'heading_webfont','Google Font (Heading)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,'Add the name of a \"Google Web Font\" e.g. \"Open Sans\"',0,0,0,'',0,0,0,0,0,0),('afdfe5f1fa','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',4,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('aff044fbe6','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',22,'hide_footer_signup','Hide Footer Signup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b012de746c','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',35,'sb2','Permission Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b01ec4ed54','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',2,'doc_status','Doc Status',NULL,'Select',NULL,'0\n1\n2',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'80px','80px',0,NULL,'0 - Draft; 1 - Submitted; 2 - Cancelled',1,0,0,NULL,0,0,0,0,0,0),('b0329742ea','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',21,'format_data','Format Data',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b0c03ea3a8','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',47,'rating','Rating',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('b160051fdd','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',25,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'Add your message here',NULL,0,0,0,NULL,0,1,0,0,0,0),('b1672a8fe5','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',45,'disable_standard_email_footer','Disable Standard Email Footer',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b19e14c60d','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.944718','Administrator','Administrator',0,'Workflow Action','fields','DocType',1,'workflow_action_name','Workflow Action Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b1bdf3625a','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',4,'preview_html','Preview HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b1bf99eeac','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',34,'no_copy','No Copy','no_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b23951fd2b','2017-10-16 17:13:05.684227','2018-09-23 18:40:44.378160','Administrator','Administrator',0,'Google Maps','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b27219ae7a','2016-09-20 03:44:03.799402','2018-09-23 18:40:44.222605','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',3,'redirect_to','Redirect To',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Mention transaction completion page URL',0,0,0,'',0,0,0,0,0,0),('b2770b384b','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',25,'description','Description',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Description for search engine optimization.',0,0,0,NULL,0,0,0,0,0,0),('b2a457ceb7','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',10,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b2b405f22c','2014-06-05 02:22:36.029850','2018-09-23 18:40:45.142002','Administrator','Administrator',0,'Address Template','fields','DocType',1,'country','Country',NULL,'Link',NULL,'Country',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('b2c66fc9c6','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',43,'max_attachments','Max Attachments','max_attachments','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b2eeb2c120','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',7,'show_title','Show Title',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('b2f8c78551','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',24,'session_expiry_mobile','Session Expiry Mobile',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'720:00','In Hours',0,0,0,'',0,0,0,0,0,0),('b321238465','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.975358','Administrator','Administrator',0,'Workflow Transition','fields','DocType',3,'next_state','Next State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('b3673847a5','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',20,'hidden','Hidden','hidden','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b3c0070ca1','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',56,'is_published_field','Is Published Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('b3c9c320c1','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',10,'section_break0',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b415a0d4f0','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',11,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b41bd60e62','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',6,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b42a9aa7b7','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',10,'refresh_token','refresh_token',NULL,'Password',NULL,NULL,0,1,0,1,1,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b4478164f3','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',19,'pull_failed','Pull Failed',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b491c2fa65','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',18,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b498d44e89','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b4baeb9a77','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',1,'default_role','Default Role at Time of Signup',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b4c6dfe6fb','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',3,'fieldtype','Type','fieldtype','Select','Select','Attach\nAttach Image\nBarcode\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nFold\nGeolocation\nHeading\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSignature\nSmall Text\nTable\nText\nText Editor\nTime',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,0,0,0,0,0),('b4dd968cd0','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',4,'access_token','Access Token',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b503a7b7c2','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',10,'phone','Phone','contact_no','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b505b91b49','2013-02-22 01:28:08.000000','2018-09-23 18:40:40.772168','Administrator','Administrator',0,'Top Bar Item','fields','DocType',4,'target','Target',NULL,'Select',NULL,'\ntarget = \"_blank\"',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select target = \"_blank\" to open in a new page.',0,0,0,NULL,0,0,0,0,0,0),('b531e841c3','2015-03-24 14:28:15.882903','2018-09-23 18:40:40.461884','Administrator','Administrator',0,'Block Module','fields','DocType',1,'module','Module',NULL,'Data',NULL,'',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b57ca978f2','2016-03-30 10:04:25.828742','2018-09-23 18:40:39.823423','Administrator','Administrator',0,'User Email','fields','DocType',2,'email_id','Email ID',NULL,'Data',NULL,'email_account.email_id',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('b58d525678','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',6,'sb1','Team Members',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b5b4f915e2','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',7,'validity','Validity',NULL,'Select',NULL,'Valid\nInvalid',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b5be77a3a1','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',33,'link_doctype','Link DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('b5c6d71366','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','fields','DocType',2,'subject_field','Subject Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b61358052b','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',6,'filters','Filters',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('b621a00a9d','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',4,'reference_doctype','Reference Doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,'',1,0,0,'',0,0,0,0,0,0),('b62cd6731a','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',4,'client_secret','Client Secret',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b650f8cc16','2017-08-11 05:09:10.900237','2018-09-23 18:40:45.666460','Administrator','Administrator',0,'Data Migration Mapping Detail','fields','DocType',4,'child_table_mapping','Child Table Mapping',NULL,'Link',NULL,'Data Migration Mapping',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'is_child_table',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b666afe810','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',41,'email_inbox','Email Inbox',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b666cc6eb9','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.909386','Administrator','Administrator',0,'Workflow State','fields','DocType',1,'workflow_state_name','State',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b680d0541a','2016-04-12 18:40:16.315024','2018-09-23 18:40:40.971808','Administrator','Administrator',0,'Footer Item','fields','DocType',1,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'120px','120px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b6a6b7905b','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',3,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b6cb4daf3c','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',3,'hide_standard_menu','Hide Standard Menu',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b70fa31462','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','fields','DocType',4,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,'published',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b74a6b9836','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',4,'authentication_credentials','Authentication Credentials',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b75f49d68f','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',3,'doc_type','Select DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('b771af9571','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',56,'last_login','Last Login','last_login','Read Only','Read Only',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('b7b183e640','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',8,'only_update','Don\'t create new records',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'overwrite',0,0,NULL,NULL,0,'0','If you don\'t want to create any new records while updating the older records.',0,0,0,'',0,0,0,0,0,0),('b7e656b454','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','fields','DocType',2,'standard_menu_items','Standard Sidebar Menu',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b7eafebdc1','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',18,'footer_color','Footer Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b813d093b4','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',37,'timeline_label','Timeline field Name',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b82d188f6a','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',21,'background_color','Background Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b8377466e4','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',16,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b88ca0665b','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',11,'allow_delete','Allow Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'allow_multiple',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b8d485e7bd','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',10,'submit_after_import','Submit after importing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('b8e7b13b58','2016-09-20 03:44:03.799402','2018-09-23 18:40:44.222605','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',1,'api_key','API Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b91953ba83','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',32,'hide_toolbar','Hide Toolbar','hide_toolbar','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b91ee1806c','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',27,'remember_last_selected_value','Remember Last Selected Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.fieldtype == \'Link\')',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b92f1f2e3d','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',24,'print','Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('b94bfcb2ae','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',5,'cb1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b9590c01bc','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',32,'amount_based_on_field','Amount Based On Field',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b963d8782d','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',11,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b9c543529e','2015-03-18 09:41:20.216319','2018-09-23 18:40:42.589833','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',2,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('ba0ee49a13','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',2,'enabled','Enabled','enabled','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,1,NULL,0,0,0,0,0,0),('ba1ac58a96','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',9,'skip_errors','Skip rows with errors',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If this is checked, rows with valid data will be imported and invalid rows will be dumped into a new file for you to import later.\n',0,0,0,'',0,0,0,0,0,0),('ba21e80d1c','2015-03-18 06:15:59.321619','2018-09-23 18:40:42.875021','Administrator','Administrator',0,'Email Group Member','fields','DocType',3,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('ba5c815eed','2013-01-10 16:34:03.000000','2018-09-23 18:40:39.006397','Administrator','Administrator',0,'Module Def','fields','DocType',1,'module_name','Module Name','module_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ba5d22849d','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',16,'append_to','Append To',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,'','Append as communication against this DocType (must have fields, \"Status\", \"Subject\")',0,1,0,'',0,0,0,0,0,0),('bac0f058b2','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',20,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('baec19fe4b','2013-02-22 01:28:08.000000','2018-09-23 18:40:41.336202','Administrator','Administrator',0,'Company History','fields','DocType',1,'year','Year',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('baf28e0213','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',36,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:cur_frm.doc.istable',0,0,NULL,NULL,0,NULL,'Number of columns for a field in a Grid (Total Columns in a grid should be less than 11)',0,0,0,'',0,0,0,0,0,0),('bb3c3400a5','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',1,'introduction_section','Introduction',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bb5da1dfe7','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',13,'import_detail','Import Log',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'eval: doc.import_status == \"Failed\"','import_status',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bb62d1bc60','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',11,'state','State',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bb85dfbc29','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',7,'overwrite','Update records',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'0','If you are updating/overwriting already created records.',0,0,0,'',0,0,0,0,0,0),('bb990e1eb7','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','fields','DocType',3,'desk_access','Desk Access',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('bbad4ae4fe','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','fields','DocType',12,'push_insert','Push Insert',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bbda41cd97','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',2,'recipients','Recipient',NULL,'Table',NULL,'Email Queue Recipient',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bc2f35eca8','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',3,'status','Status',NULL,'Select',NULL,'\nQueued\nAuthorized\nCompleted\nCancelled\nFailed\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Queued',NULL,1,1,0,'',0,0,0,0,0,0),('bc445a4215','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',17,'settings','Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bc45f027e8','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',21,'column_break_20',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bc594ae46b','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',7,'quick_entry','Quick Entry',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable && !doc.issingle',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('bc9ae77f11','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',29,'default','Default','default','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bccf651d41','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',7,'github','GitHub',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bd1309fddd','2016-12-08 12:01:07.993900','2018-09-23 18:40:42.519680','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',2,'status','Status',NULL,'Select',NULL,'\nNot Sent\nSending\nSent\nError\nExpired',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Not Sent',NULL,1,0,0,'',0,0,0,0,0,0),('bd7c2f7886','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',15,'depends_on','Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('bd95468efd','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',33,'allow_copy','Hide Copy','allow_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bda1efcb5e','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',2,'remote_objectname','Remote Objectname',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('bdc0843c3e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',6,'middle_name','Middle Name (Optional)','middle_name','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bdc4544d2e','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',21,'reqd','Is Mandatory Field','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('bdfe8bffbd','2017-06-26 10:57:19.976624','2018-09-23 18:40:39.762366','Administrator','Administrator',0,'Test Runner','fields','DocType',1,'module_path','Module Path',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('be33363ebf','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',21,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('be5ddddcd8','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',13,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype===\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',255,0,0,0,0,0),('befddd67a1','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',9,'attach_view_link','Send document web view link in email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('bf18f6eb35','2013-01-10 16:34:24.000000','2018-09-23 18:40:44.765792','Administrator','Administrator',0,'Print Heading','fields','DocType',1,'print_heading','Print Heading','print_heading','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,1,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,1,0),('bf301e3740','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',6,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bf32660255','2016-12-29 07:42:26.246725','2018-09-23 18:40:41.530919','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',2,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('bfb71da83f','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',1,'sender','Sender',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c00c0df15d','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',8,'search_index','Index','search_index','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c06354d310','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',16,'options','Options','options','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'For Links, enter the DocType as range.\nFor Select, enter list of Options, each on a new line.',1,0,0,NULL,0,0,0,0,0,0),('c08a6fe1ff','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',16,'import_log','Import Log',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,'import_status',0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('c0c0857a49','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','fields','DocType',1,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c0c2608988','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',49,'read_only','User Cannot Search','read_only','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c0e535442c','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',1,'help','Help',NULL,'HTML',NULL,'<div class=\"alert\">Please don\'t update it as it can mess up your form. Use the Customize Form View and Custom Fields to set properties!</div>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c11ace0c06','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',16,'timeline_name','Timeline Name',NULL,'Dynamic Link',NULL,'timeline_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c188d07cb6','2016-04-12 18:40:16.315024','2018-09-23 18:40:40.971808','Administrator','Administrator',0,'Footer Item','fields','DocType',3,'url','URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,'Link to the page you want to open. Leave blank if you want to make it a group parent.',1,0,0,'',0,0,0,0,0,0),('c1fc33ef53','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',6,'app_secret_key','App Secret Key',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c23126f03a','2013-02-22 01:27:58.000000','2018-09-23 18:40:40.261511','Administrator','Administrator',0,'SMS Parameter','fields','DocType',3,'header','Header',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c23eba944a','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',15,'show_only_errors','Show only errors',NULL,'Check',NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('c26dfe7c66','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',8,'allow_print_for_draft','Allow Print for Draft',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('c2a77834c7','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',16,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c2baaef847','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',28,'reference_owner','Reference Owner',NULL,'Read Only',NULL,'reference_name.owner',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c2c590e798','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',6,'ref_doctype','Reference Doctype',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c2fb058789','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',59,'last_known_versions','Last Known Versions',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Stores the JSON of last known versions of various installed apps. It is used to show release notes.',0,0,1,'',0,0,0,0,0,0),('c3341362d7','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',11,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c3421f185d','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',24,'outgoing_mail_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c34fe10322','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.975358','Administrator','Administrator',0,'Workflow Transition','fields','DocType',1,'state','State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c3507a6484','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c3679069ef','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',23,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c3bebd0c16','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',30,'remember_last_selected_value','Remember Last Selected Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.fieldtype == \'Link\')',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c3e2d0ff32','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',5,'email_server','Email Server',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'e.g. pop.gmail.com / imap.gmail.com',0,0,0,'',0,0,0,0,0,0),('c45398f3c2','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',22,'column_break_19',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c47057943e','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',25,'email','Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('c471ba9a8a','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',1,'module_name','Module Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c4881e9e42','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',36,'thread_notify','Send Notifications for Transactions I Follow',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('c4cb57a017','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',17,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c4fdda5e96','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','fields','DocType',7,'username','Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c52d4f18f8','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',3,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Filter records based on User Permissions defined for a user',0,0,0,'',0,0,0,0,0,0),('c5ba7d1730','2013-02-22 01:27:32.000000','2018-09-23 18:40:38.889191','Administrator','Administrator',0,'DefaultValue','fields','DocType',2,'defvalue','Value','defvalue','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c5c4d2f537','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',12,'set_banner_from_image','Set Banner from Image',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c5cec984d0','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',10,'letter_head','Letter Head',NULL,'Link',NULL,'Letter Head',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.is_standard == \"No\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c5f7050829','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',28,'subdomain','Subdomain',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Sub-domain provided by erpnext.com',0,0,1,NULL,0,0,0,0,0,0),('c611c41ee4','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',2,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c64aadd705','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',8,'page_length','Page Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'10',NULL,0,0,0,'',0,0,0,0,0,0),('c652e85b7d','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',5,'sb_webhook','Webhook Request',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c68229722e','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',26,'document_type','Show in Module Section','document_type','Select','Select','\nDocument\nSetup\nSystem\nOther',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('c69105a465','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',17,'icon','Icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c691d854d1','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',26,'minimum_password_score','Minimum Password Score',NULL,'Select',NULL,'2\n4',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.enable_password_policy==1',0,0,NULL,NULL,0,'2',NULL,0,0,0,'',0,0,0,0,0,0),('c695f61999','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',10,'communication','Communication',NULL,'Link',NULL,'Communication',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c703efadf6','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',14,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c72a4d8205','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',4,'local_doctype','Local DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c7393c83f1','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',5,'allow_edit','Only Allow Edit For',NULL,'Link',NULL,'Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c751fd51ca','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',37,'auto_reply_message','Auto Reply Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_auto_reply',0,0,NULL,NULL,0,NULL,'ProTip: Add <code>Reference: {{ reference_doctype }} {{ reference_name }}</code> to send document reference',0,0,0,'',0,0,0,0,0,0),('c7986426bb','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',1,'doc_type','DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,1,0,NULL,0,0,0,0,1,0),('c7991c0a09','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',6,'cb00',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c82a5435e8','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',6,'reference','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c8372bcc47','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',21,'friday','Friday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c846f567e8','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',5,'is_standard','Is Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c86d66fb06','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',21,'apply_strict_user_permissions','Apply Strict User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','If Apply Strict User Permission is checked and User Permission is defined for a DocType for a User, then all the documents where value of the link is blank, will not be shown to that User',0,0,0,'',0,0,0,0,0,0),('c87a59f64c','2017-09-14 12:08:50.302810','2018-09-23 18:40:44.291624','Administrator','Administrator',0,'Webhook Data','fields','DocType',1,'fieldname','Fieldname',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c8d0b0e81f','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',1,'section_title','Title',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c8ecfbb2d6','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',1,'details','',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c8f0303a10','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',18,'is_your_company_address','Is Your Company Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('c8f58c79c4','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',46,'sort_field','Sort Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'modified','',0,0,0,NULL,0,0,0,0,0,0),('c93487467b','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',9,'append_to','Append To',NULL,'Link',NULL,'DocType',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Append as communication against this DocType (must have fields, \"Status\", \"Subject\")',1,0,0,'',0,0,0,0,0,0),('c948664d61','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',2,'integration_request_service','Integration Request Service',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('c951c44df4','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',19,'footer_text_color','Footer Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c9996aa5fc','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',7,'istable','Is Table',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('c9b311e05b','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',9,'cb_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c9c37e617d','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',2,'public','Public',NULL,'Check',NULL,NULL,0,0,0,1,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('ca0cfa2dcd','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',12,'value_changed','Value Changed',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Value Change\"',0,0,NULL,NULL,0,NULL,'Send alert if this field\'s value changes',0,0,0,NULL,0,0,0,0,0,0),('ca2db75829','2016-03-30 10:04:25.828742','2018-09-23 18:40:39.823423','Administrator','Administrator',0,'User Email','fields','DocType',1,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('ca76e2f42d','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','fields','DocType',5,'target_name','Translated Text',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('cac0e8ce29','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',11,'section_break_1','Feedback Rating',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'eval: doc.rating',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cad56e3dc1','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',63,'google_userid','Google User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('cad5a07715','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',17,'additional_permissions','Additional Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cb047d6c69','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',29,'default_outgoing','Default Outgoing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_outgoing',0,0,NULL,NULL,0,NULL,'Notifications and bulk mails will be sent from this outgoing server.',0,0,0,'',0,0,0,0,0,0),('cb1509d787','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',4,'address_line1','Address Line 1',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cb287ad2d4','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',5,'relapses','Relapses',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,1,'',0,0,0,0,0,0),('cb5fda505e','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',47,'sort_order','Sort Order',NULL,'Select',NULL,'ASC\nDESC',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'DESC',NULL,0,0,0,NULL,0,0,0,0,0,0),('cb7a395ce2','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',31,'ignore_xss_filter','Ignore XSS Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Don\'t HTML Encode HTML tags like &lt;script&gt; or just characters like &lt; or &gt;, as they could be intentionally used in this field',0,0,0,'',0,0,0,0,0,0),('cb7d457ac5','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',18,'web_form_fields','Web Form Fields',NULL,'Table',NULL,'Web Form Field',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cc05b2d603','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',42,'no_remaining','No of emails remaining to be synced',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cc1e222976','2013-02-22 01:27:58.000000','2018-09-23 18:40:40.261511','Administrator','Administrator',0,'SMS Parameter','fields','DocType',1,'parameter','Parameter',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('cc2221d2db','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','fields','DocType',2,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If disabled, this role will be removed from all users.',0,0,0,'',0,0,0,0,0,0),('cc8f13ad34','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','fields','DocType',5,'limit','Limit',NULL,'Int',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'500','Max 500 records at a time',0,0,0,'',0,0,0,0,0,0),('ccafe76359','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',10,'section_break_9','Style Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ccc3e73bff','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',25,'reference_section','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ccf5404ccb','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',41,'background','Desktop Background',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cd0a22aa54','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',10,'reference_section','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cd498ed501','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',22,'success_url','Success URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Go to this URL after completing the form (only for Guest users)',0,0,0,NULL,0,0,0,0,0,0),('cd97d3547c','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',13,'_report','_report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cdb6fb0e9b','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',10,'exception','Exception',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cde7a4aac4','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',5,'report_type','Report Type',NULL,'Read Only',NULL,'report.report_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ce1256a0e4','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',7,'user_permission_doctypes','User Permission DocTypes',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JSON list of DocTypes used to apply User Permissions. If empty, all linked DocTypes will be used to apply User Permissions.',0,0,1,'',0,0,0,0,0,0),('ce749b016d','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','fields','DocType',1,'role_name','Role Name','role_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cef7101a99','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',2,'company_introduction','Company Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Introduce your company to the website visitor.',1,0,0,NULL,0,0,0,0,0,0),('cefaf1e0d9','2016-09-20 03:44:03.799402','2018-09-23 18:40:44.222605','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',2,'api_secret','API Secret',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cf6ec159e6','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',12,'allow_page_break_inside_tables','Allow page break inside tables',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cf701181b3','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',37,'web_page_link_text','Web Page Link Text',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Text to be displayed for Link to Web Page if this form has a web page. Link route will be automatically generated based on `page_name` and `parent_website_route`',0,0,0,'',0,0,0,0,0,0),('cf96554915','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',8,'full_name','Full Name',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cf97359d1c','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cfa3c22ddb','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',38,'unread_notification_sent','Unread Notification Sent',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,1,'',0,0,0,0,0,0),('cff0a1bb20','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',1,'kanban_board_name','Kanban Board Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d03ecd873c','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',7,'col_break_1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d041e7effb','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',39,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d0617c0656','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',12,'test_the_newsletter','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('d0bf7f1039','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',5,'add_total_row','Add Total Row',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d0c67162e1','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',7,'transition_rules','Transition Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Rules for how states are transitions, like next state and which role is allowed to change state etc.',0,0,0,NULL,0,0,0,0,0,0),('d0ed75c2a0','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',15,'user_image','User Image',NULL,'Attach Image',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Get your globally recognized avatar from Gravatar.com',0,0,0,NULL,0,0,0,0,0,0),('d110ec4a63','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',28,'payment_gateway','Payment Gateway',NULL,'Link',NULL,'Payment Gateway',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d15b9bf299','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',28,'deny_multiple_sessions','Allow only one session per user',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Note: Multiple sessions will be allowed in case of mobile device',0,0,0,'',0,0,0,0,0,0),('d16796b083','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',24,'google_analytics_id','Google Analytics ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Add Google Analytics ID: eg. UA-89XXX57-1. Please search help on Google Analytics for more information.',0,0,0,NULL,0,0,0,0,0,0),('d170ea1ba2','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',38,'bypass_2fa_for_retricted_ip_users','Bypass Two Factor Auth for users who login from restricted IP Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_two_factor_auth',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('d17e632998','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','fields','DocType',1,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('d18755ae73','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',5,'status','Status',NULL,'Select',NULL,'\nNot Sent\nSending\nSent\nError\nExpired',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Not Sent',NULL,1,1,0,NULL,0,0,0,0,0,0),('d1fb46509e','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',17,'name_case','Name Case','name_case','Select','Select','\nTitle Case\nUPPER CASE',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d25f94fed4','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',3,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Report\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d2b50d0d93','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',17,'department','Department',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('d33746460e','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',18,'footer','Footer',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d366e74cf0','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',8,'print_format_type','Print Format Type',NULL,'Select',NULL,'Server\nClient\nJs',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,'Server','',0,0,0,NULL,0,0,0,0,0,0),('d37fdc8f55','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','fields','DocType',3,'page_name','Page Name','page_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d3b616a8bb','2013-03-07 12:26:33.000000','2018-09-23 18:40:41.110889','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',1,'image','Image',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d3f9e2f3ef','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',3,'permission_rules','Permission Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d3ff0b2a9c','2013-01-16 13:09:40.000000','2018-09-23 18:40:38.722669','Administrator','Administrator',0,'Error Log','fields','DocType',3,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('d45e320e44','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',46,'feedback_section','Feedback',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval: doc.rating > 0',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d46dfca921','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',4,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d496a4e338','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',5,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d4aca77748','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',2,'deleted_doctype','Deleted DocType',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('d4d6f637ba','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',20,'view_settings','View Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d5615e6e30','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','fields','DocType',4,'frequency','Backup Frequency',NULL,'Select',NULL,'Daily\nWeekly\nMonthly\nNone',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('d5669021a7','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',9,'address_line2','Address Line 2',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d5763ba4c9','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',5,'key','Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d58d559111','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',66,'github_username','Github Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('d5cae408f3','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',26,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d5e7f09030','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',4,'restored','Restored',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('d5fb4fb0d8','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',17,'permlevel','Permission Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('d609354f96','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','fields','DocType',5,'local_primary_key','Local Primary Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d609e4d75e','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',12,'delete','Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('d621de0218','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',1,'email_id','Email Address',NULL,'Data',NULL,'',0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d62d2905e6','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',2,'role','Role','role','Link','Link','Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d659de7b76','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',10,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d65eb9cbc4','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',22,'column_break_5','Recipients',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d6766d2835','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',4,'email','Email','email','Data','Data','Email',0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d68c26c82c','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',9,'force_show','Force Show',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('d727c3b106','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',4,'fieldname','Name','fieldname','Data','Data',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('d74391c8cc','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',23,'idx','Priority',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'0 is highest',0,0,0,NULL,0,0,0,0,0,0),('d77f54b430','2014-07-11 17:19:37.037109','2018-09-23 18:40:42.485320','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',1,'email_by_document_field','Email By Document Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,NULL,0,0,0,0,0,0),('d7c31b8fba','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','fields','DocType',3,'time_zones','Time Zones',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d7e163a7cf','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',7,'last_name','Last Name','last_name','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d81d859bc9','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','fields','DocType',2,'webhook_doctype','DocType',NULL,'Link',NULL,'DocType',0,0,1,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('d81e4a5829','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',31,'column_break_28',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d81f19ad4e','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',31,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d82e39852a','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d82e5636af','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',13,'allow_print_for_cancelled','Allow Print for Cancelled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('d83e161c2f','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',17,'monday','Monday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d881307b0d','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',17,'permlevel','Perm Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,1,0,0,NULL,0,0,0,0,0,0),('d89cdc181d','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',2,'user','Based on Permissions For User',NULL,'Link',NULL,'User',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'User',NULL,0,0,0,'',0,0,0,0,0,0),('d8d710062b','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','fields','DocType',8,'notify_by_email','Notify by email',NULL,'Check',NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('d941de7dfd','2016-04-12 18:40:16.315024','2018-09-23 18:40:40.971808','Administrator','Administrator',0,'Footer Item','fields','DocType',2,'group_label','Group Label',NULL,'Select',NULL,'\nCompany\nContact\nPolicy',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,'',0,0,0,0,0,0),('d98e578ea9','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',4,'sender','From',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('d99249c638','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',42,'cb31','Other Settings',NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('da060511dc','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',17,'banner_html','Banner HTML',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Banner is above the Top Menu Bar.',0,0,0,NULL,0,0,0,0,0,0),('da3293c501','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',10,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,1,0,0,0,0),('da9c7dda72','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',19,'total_rows','Total Rows',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('daae4ffd27','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',11,'filters_display','Filters Display',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dab7c17853','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',35,'auto_reply','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dac1130465','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',30,'read_only_onload','Show Print First','read_only_onload','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dbaf3db0ad','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',27,'use_tls','Use TLS',NULL,'Check',NULL,'domain.use_tls',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dbc23a21ea','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',11,'email_sent','Email Sent',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dbc5cbf581','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',10,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dbcd007e6f','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',34,'signature','Signature',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'add_signature',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dc0d55a2be','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',1,'currency_name','Currency Name','currency_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dc237fee5d','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',15,'is_primary_address','Preferred Billing Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','',0,0,0,NULL,0,0,0,0,0,0),('dcb68fb0f4','2017-08-31 04:16:38.764465','2018-09-23 18:40:38.562137','Administrator','Administrator',0,'Role Profile','fields','DocType',3,'roles','Roles Assigned',NULL,'Table',NULL,'Has Role',0,1,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('dd156136f6','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',18,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dd32be7d2f','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',15,'heading_style','Heading Style',NULL,'Select',NULL,'\nUPPERCASE\nTitle Case\nlowercase',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dd47306c7f','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',13,'length','Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\'Data\', \'Link\', \'Dynamic Link\', \'Password\', \'Select\', \'Read Only\', \'Attach\', \'Attach Image\'], doc.fieldtype)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dd6d08bef0','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',26,'column_break_22',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dd858d4fbe','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',25,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dd8c27ebbc','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',20,'import','Import',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dd9c002a45','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('de6f052e34','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',2,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('de71215681','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',15,'backup_limit','Number of Backups',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'3','Older backups will be automatically deleted',0,0,0,'',0,0,0,0,0,0),('de8b9ceb3b','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','fields','DocType',2,'date_format','Date Format',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('de8ba5807b','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',30,'disable_signup','Disable Signup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Disable Customer Signup link in Login page',0,0,0,NULL,0,0,0,0,0,0),('debe0bae5a','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',15,'top_bar_items','Top Bar Items',NULL,'Table',NULL,'Top Bar Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dee4c42144','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',1,'fieldname','Fieldname',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('deeccb1ace','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',11,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('def7705961','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',6,'is_first_startup','Is First Startup',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('df029399c0','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',6,'recipients','To',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('df2256d8e9','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',5,'new_name','New Name',NULL,'Read Only',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('df34900162','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',11,'create','Create','create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('df4cdaca28','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',8,'salutation','Salutation',NULL,'Link',NULL,'Salutation',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('df7e1e89fa','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',22,'saturday','Saturday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dfa25c6064','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',6,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,NULL,0,0,0,0,0,0),('dff1988c39','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','fields','DocType',8,'data_modified_till','Only Send Records Updated in Last X Hours',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\'Report Builder\'',0,0,NULL,NULL,0,'','Zero means send records updated at anytime',0,0,0,'',0,0,0,0,0,0),('e0c4838c40','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',1,'facebook','Facebook',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e10be9a47b','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',12,'app','App',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e10d94a7e2','2016-12-08 12:01:07.993900','2018-09-23 18:40:42.519680','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',3,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e1239e11c0','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',12,'delete','Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('e1553118de','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',57,'advanced','Advanced',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e23906be42','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',12,'sb_advanced',' Advanced Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'1',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e256c8fcbe','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',10,'custom_javascript','Script',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e27e997a3c','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',3,'client_id','Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e280ea19c6','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',18,'report','Report',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('e2a8419d2b','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',19,'column_break_17',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e2c87fa1b7','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',20,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e30cd341aa','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',17,'css','Custom CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e31037affb','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','fields','DocType',2,'response','Response',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e33bd02588','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','fields','DocType',2,'api_password','API Password',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e3a06081c6','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',7,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e3c79b9f85','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',7,'team_members_heading','Team Members Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'\"Team Members\" or \"Management\"',0,0,0,NULL,0,0,0,0,0,0),('e3dc5c82d1','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','fields','DocType',4,'sample','Sample',NULL,'HTML',NULL,'<h3>Custom Script Help</h3>\n<p>Custom Scripts are executed only on the client-side (i.e. in Forms). Here are some examples to get you started</p>\n<pre><code>\n\n// fetch local_tax_no on selection of customer\n// cur_frm.add_fetch(link_field, source_fieldname, target_fieldname);\ncur_frm.add_fetch(\"customer\", \"local_tax_no\", \"local_tax_no\");\n\n// additional validation on dates\nfrappe.ui.form.on(\"Task\", \"validate\", function(frm) {\n    if (frm.doc.from_date &lt; get_today()) {\n        msgprint(\"You can not select past date in From Date\");\n        validated = false;\n    }\n});\n\n// make a field read-only after saving\nfrappe.ui.form.on(\"Task\", {\n    refresh: function(frm) {\n        // use the __islocal value of doc, to check if the doc is saved or not\n        frm.set_df_property(\"myfield\", \"read_only\", frm.doc.__islocal ? 0 : 1);\n    }\n});\n\n// additional permission check\nfrappe.ui.form.on(\"Task\", {\n    validate: function(frm) {\n        if(user==\"user1@example.com\" &amp;&amp; frm.doc.purpose!=\"Material Receipt\") {\n            msgprint(\"You are only allowed Material Receipt\");\n            validated = false;\n        }\n    }\n});\n\n// calculate sales incentive\nfrappe.ui.form.on(\"Sales Invoice\", {\n    validate: function(frm) {\n        // calculate incentives for each person on the deal\n        total_incentive = 0\n        $.each(frm.doc.sales_team), function(i, d) {\n\n            // calculate incentive\n            var incentive_percent = 2;\n            if(frm.doc.base_grand_total &gt; 400) incentive_percent = 4;\n\n            // actual incentive\n            d.incentives = flt(frm.doc.base_grand_total) * incentive_percent / 100;\n            total_incentive += flt(d.incentives)\n        });\n\n        frm.doc.total_incentive = total_incentive;\n    }\n})\n\n</code>\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e3ebf4ddaa','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',36,'permissions','Permissions','permissions','Table','Table','DocPerm',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e41b576a73','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','fields','DocType',5,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e439cece2d','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','fields','DocType',7,'seen_by_section','Seen By',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e4764055aa','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',45,'modules_html','Modules HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e4b8ffeea7','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',9,'date_format','Date Format',NULL,'Select',NULL,'yyyy-mm-dd\ndd-mm-yyyy\ndd/mm/yyyy\ndd.mm.yyyy\nmm/dd/yyyy\nmm-dd-yyyy',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e4d4ff8a23','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',27,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e54b78dc58','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',9,'workflow_state_field','Workflow State Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'workflow_state','Field that represents the Workflow State of the transaction (if field is not present, a new hidden Custom Field will be created)',0,0,0,NULL,0,0,0,0,0,0),('e5533fbaf0','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',17,'link_doctype','Link DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('e555dff768','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',3,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e574caa6eb','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',26,'header','Header',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'HTML for header section. Optional',0,0,0,NULL,0,0,0,0,0,0),('e58de5e154','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',3,'event_type','Event Type','event_type','Select','Select','Private\nPublic\nCancel',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('e5a949a241','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',30,'allow_login_using_user_name','Allow Login using User Name',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','User can login using Email id or User Name',0,0,0,'',0,0,0,0,0,0),('e5cb6629a4','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',39,'two_factor_method','Two Factor Authentication method',NULL,'Select',NULL,'OTP App\nSMS\nEmail',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'OTP App','Choose authentication method to be used by all users',0,0,0,'',0,0,0,0,0,0),('e5d71d0c21','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',1,'subject','Subject',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('e5f966017d','2017-04-10 12:17:58.071915','2018-09-23 18:40:45.081434','Administrator','Administrator',0,'Salutation','fields','DocType',1,'salutation','Salutation',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e5fc873bdd','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',1,'client','Client',NULL,'Link',NULL,'OAuth Client',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('e649d1bd9e','2017-10-16 17:13:05.684227','2018-09-23 18:40:44.378160','Administrator','Administrator',0,'Google Maps','fields','DocType',2,'client_key','Client Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e651ab922b','2014-08-22 16:12:17.249590','2018-09-23 18:40:39.895168','Administrator','Administrator',0,'Language','fields','DocType',1,'language_code','Language Code',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e6777e5df1','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e6d8e09be5','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',4,'document_type','Document Type',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('e6de0e8d94','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',8,'state','State',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e707bb9735','2016-05-25 09:49:07.125394','2018-09-23 18:40:40.144972','Administrator','Administrator',0,'Tag Category','fields','DocType',3,'tagdocs','Doctypes',NULL,'Table',NULL,'Tag Doc Category',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e7b3417ff3','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',8,'apply_text_styles','Apply Text Styles',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e7c6f6fd4f','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',13,'sender','Sender',NULL,'Link',NULL,'Email Account',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e828703aac','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','fields','DocType',9,'ldap_email_field','LDAP Email Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e8739449b9','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',34,'amount','Amount',NULL,'Currency',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.accept_payment && !doc.amount_based_on_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e8e1e59095','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',2,'send_notifications_to','Send Notifications To',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('e935aa5d88','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',29,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('e96160a73b','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','fields','DocType',5,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e98b70257d','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',9,'font_size','Font Size',NULL,'Select',NULL,'\n12px\n13px\n14px\n15px\n16px\n17px\n18px',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('e9a10bc401','2016-10-19 12:26:42.569185','2018-09-23 18:40:43.446835','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',1,'column_name','Column Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('e9a1748ff2','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','fields','DocType',3,'script','Script','script','Code','Code','Script',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ea23d37e59','2017-08-11 05:15:51.482165','2018-09-23 18:40:45.708852','Administrator','Administrator',0,'Data Migration Plan','fields','DocType',3,'mappings','Mappings',NULL,'Table',NULL,'Data Migration Plan Mapping',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eaa251b388','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','fields','DocType',11,'align_labels_right','Align Labels to the Right',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('eab755575c','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','fields','DocType',5,'columns','Columns',NULL,'Table',NULL,'Kanban Board Column',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eae5197e92','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','fields','DocType',2,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('eaf49dcf60','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',2,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,NULL,0,0,0,0,0,0),('eb468abe40','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',13,'smtp_port','Port',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'If non standard port (e.g. 587)',0,0,0,'',0,0,0,0,0,0),('eb6e66a11e','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',28,'column_break_25','Print Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'attach_print',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eb82dcb9c5','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',10,'redirect_uris','Redirect URIs',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'URIs for receiving authorization code once the user allows access, as well as failure responses. Typically a REST endpoint exposed by the Client App.\n<br>e.g. http://hostname//api/method/frappe.www.login.login_via_facebook',0,0,0,NULL,0,0,0,0,0,0),('eb9138bbb1','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','fields','DocType',2,'disabled','Disabled','disabled','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ebc8f8e2a1','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',46,'block_modules','Block Modules',NULL,'Table',NULL,'Block Module',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ebe0496dcb','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',62,'fb_userid','Facebook User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('ebf5c0bc77','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',10,'dropbox_access_token','Dropbox Access Token',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ec0020b611','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','fields','DocType',10,'file_url','File URL',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('ec5d9d4cb3','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',9,'custom','Custom?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ec726ff190','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','fields','DocType',6,'blogger','Blogger',NULL,'Link',NULL,'Blogger',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('ec9a9b0990','2012-12-27 11:51:24.000000','2018-09-23 18:40:41.511649','Administrator','Administrator',0,'Website Script','fields','DocType',1,'javascript','Javascript',NULL,'Code',NULL,'Javascript',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ece61d938a','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','fields','DocType',12,'javascript','Javascript',NULL,'Code',NULL,'Javascript',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'insert_code',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ed1cf82182','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',1,'doc_type','Enter Form Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ed4ab8b015','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',22,'search_fields','Search Fields','search_fields','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ed4b7a1a97','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','fields','DocType',5,'client_secret','App Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ed806d4a5e','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',7,'field_name','Field Name',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.doctype_or_field==\'DocField\'',0,0,NULL,NULL,0,NULL,'ID (name) of the entity whose property is to be set',0,1,0,NULL,0,0,0,0,0,0),('ed86413a80','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',12,'reference_name','Reference Name',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('edd4804f5e','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','fields','DocType',7,'data','Data',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ee2e5f6640','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',13,'section_break_9','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ee68b4a2d7','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','fields','DocType',6,'communication_date','Date',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Now',NULL,0,0,0,'',0,0,0,0,0,0),('ee89eca0a1','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',9,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'70px','70px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('eebfb832b8','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','fields','DocType',4,'roles','Role',NULL,'Table',NULL,'Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('efc94561c6','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',5,'newsletter_content','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f02d2aac6f','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',3,'send_from','Sender',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,1,0,0,0,0),('f04a96b158','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',1,'role_and_level','Role and Level',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f09a676de6','2017-03-09 17:18:29.458397','2018-09-23 18:40:44.129714','Administrator','Administrator',0,'Stripe Settings','fields','DocType',1,'publishable_key','Publishable Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f0c5553dc6','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',18,'designation','Designation',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('f19f2da336','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','fields','DocType',9,'run_script_test','Run Script Test',NULL,'Button',NULL,NULL,0,0,0,1,1,0,0,0,0,0,1,0,NULL,NULL,'eval:(doc.client_id && doc.client_secret && doc.authorization_code && doc.refresh_token && doc.script_url)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f1e67acc39','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',24,'show_sidebar','Show Sidebar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('f232949566','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','fields','DocType',13,'top_bar','Top Bar',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('f23f4db607','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','fields','DocType',5,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f265a214e6','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',17,'linked_with','Reference',NULL,'Section Break',NULL,'fa fa-pushpin',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f27e470ab4','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','fields','DocType',4,'override_status','Don\'t Override Status',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If Checked workflow status will not override status in list view',0,0,0,'',0,0,0,0,0,0),('f28ff60560','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',2,'label','Label','label','Data','Data',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f2915c12a0','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',25,'enable_password_policy','Enable Password Policy',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','If enabled, the password strength will be enforced based on the Minimum Password Score value. A value of 2 being medium strong and 4 being very strong.',0,0,0,'',0,0,0,0,0,0),('f29ce560ae','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',31,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,'__user',NULL,0,0,1,NULL,0,0,0,0,0,0),('f2bd42ae8c','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',20,'import','Import',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f3286f17c3','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f33106c2d5','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',12,'frappe_client_secret','Frappe Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f3a0ac69ca','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','fields','DocType',1,'country_name','Country Name','country_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f3ad0afa74','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',19,'description','Description','description','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f3bcd4bf8c','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','fields','DocType',11,'owner','Owner',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user',NULL,0,0,0,'',0,0,0,0,0,0),('f3fe8901f5','2016-03-30 01:39:20.586927','2018-09-23 18:40:38.467711','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',2,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f410da3d4f','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',1,'sb0','',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f410e65920','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',3,'sb0','Org History',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f43bf3dfab','2013-02-22 01:27:36.000000','2018-09-23 18:40:41.871581','Administrator','Administrator',0,'Workflow Document State','fields','DocType',6,'message','Message',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f45ecc3c43','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',3,'last_name','Last Name','last_name','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f4733cbc71','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',45,'has_attachment','Has  Attachment',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f4cb93ccd9','2014-09-01 14:14:14.292173','2018-09-23 18:40:38.411883','Administrator','Administrator',0,'Web Form Field','fields','DocType',9,'max_length','Max Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f4f220c7a9','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',4,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f4f3455ab2','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',22,'phone','Phone',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f50a23ec8b','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',1,'sb0_5','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f512e7c75e','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',16,'sb1','Roles',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enabled',1,0,NULL,NULL,0,NULL,'',0,0,1,NULL,0,0,0,0,0,0),('f52d26acad','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','fields','DocType',4,'value','Set Value',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'New value to be set',1,0,0,NULL,0,0,0,0,0,0),('f55085bd10','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','fields','DocType',8,'editable_grid','Editable Grid',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5728a369c','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','fields','DocType',2,'field','Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5a19df91e','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',27,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5df5f7ae9','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','fields','DocType',18,'reverse','Reverse Icon Color',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5e74125b8','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f616c4566c','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',7,'use_ssl','Use SSL',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f6311b73bc','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',8,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f64280a0b5','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',42,'oldfieldname',NULL,'oldfieldname','Data','Data',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f6861c92f3','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',12,'query','Query',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\"Query Report\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f6a63d12b8','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',5,'output','Output',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('f6c1d60a49','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.741721','Administrator','Administrator',0,'DocPerm','fields','DocType',21,'set_user_permissions','Set User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This role update User Permissions for a user',0,0,0,NULL,0,0,0,0,0,0),('f6f44b9dd7','2017-09-08 16:27:39.195379','2018-09-23 18:40:44.246795','Administrator','Administrator',0,'Webhook Header','fields','DocType',1,'key','Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f706ad617b','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',30,'payment_button_help','Button Help',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f7241b64ff','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',14,'options','Options','options','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'For Links, enter the DocType as range.\nFor Select, enter list of Options, each on a new line.',1,0,0,NULL,0,0,0,0,0,0),('f7391f843b','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',28,'icon','Icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f7c06da077','2016-08-29 05:29:16.726172','2018-09-23 18:40:43.638689','Administrator','Administrator',0,'Note Seen By','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f7e3e31d4b','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',3,'fieldtype','Type','fieldtype','Select','Select','Attach\nAttach Image\nBarcode\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nFold\nGeolocation\nHeading\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSmall Text\nTable\nText\nText Editor\nTime\nSignature',1,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,0,0,0,0,0),('f8185640e1','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',21,'property_value','Value To Be Set',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f8265d6d34','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','fields','DocType',27,'view_properties','View Properties (via Customize Form)',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f863d0e3b7','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',10,'feedback_trigger','Feedback Trigger',NULL,'Data',NULL,'Feedback Trigger',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f8870e94cb','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','fields','DocType',11,'locals','Locals',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f896e7268e','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',11,'enable_incoming','Enable Incoming',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','Check this to pull emails from your mailbox',0,0,0,'',0,0,0,0,0,0),('f907b48955','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',8,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('f934c7709c','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',17,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f93733804b','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','fields','DocType',1,'help','Help',NULL,'HTML',NULL,'<div class=\"alert\">Link for About Us Page is \"/about\"</div>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f977971520','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',11,'color','Color',NULL,'Color',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('f9c88b1697','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',6,'address','Address',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f9d7b52ef9','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',33,'in_filter','In Filter','in_filter','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f9ef80fb23','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','fields','DocType',6,'view_link_in_email','Page Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f9f4bb39a0','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','fields','DocType',39,'seen','Seen',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('fa3d28459d','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','fields','DocType',35,'currency','Currency',NULL,'Link',NULL,'Currency',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fa45ece08a','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','fields','DocType',1,'integration_type','Integration Type',NULL,'Select',NULL,'\nHost\nRemote',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fa78a6db50','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',42,'background_image','Background Image',NULL,'Attach',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fa96f30b44','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',7,'length','Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\'Data\', \'Link\', \'Dynamic Link\', \'Password\', \'Select\', \'Read Only\', \'Attach\', \'Attach Image\', \'Int\'], doc.fieldtype)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fa9df09bb7','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',13,'language','Language',NULL,'Link',NULL,'Language',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('fab78c5dda','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','fields','DocType',11,'mobile_no','Mobile No','mobile_no','Data','Data',NULL,0,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('faeabfca0a','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.909386','Administrator','Administrator',0,'Workflow State','fields','DocType',3,'style','Style',NULL,'Select',NULL,'\nPrimary\nInfo\nSuccess\nWarning\nDanger\nInverse',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Style represents the button color: Success - Green, Danger - Red, Inverse - Black, Primary - Dark Blue, Info - Light Blue, Warning - Orange',0,0,0,NULL,0,0,0,0,0,0),('faf8338e15','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',5,'app_access_key','App Access Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fb0de61a13','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',2,'label','Label','label','Data','Data',NULL,1,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,'163','163',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('fb17bc7a0f','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',51,'user_type','User Type','user_type','Select','Select','System User\nWebsite User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,'System User','If the user has any role checked,then the user becomes a \"System User\". \"System User\" has access to the desktop',1,1,1,NULL,0,0,0,0,0,0),('fb2bd8fe36','2016-10-19 12:26:42.569185','2018-09-23 18:40:43.446835','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',2,'status','Status',NULL,'Select',NULL,'Active\nArchived',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Active',NULL,1,0,0,'',0,0,0,0,0,0),('fb4dd4ba35','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',8,'track_changes','Track Changes',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('fb6742ff2f','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',9,'send_welcome_email','Send Welcome Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'eval:doc.__islocal',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('fba36cf520','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','fields','DocType',4,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fbb5781fd2','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','fields','DocType',22,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fc21f958b3','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','fields','DocType',17,'enable_scheduler','Enable Scheduled Jobs',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Run scheduled jobs only if checked',0,0,0,NULL,0,0,0,0,0,0),('fc5522ac98','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','fields','DocType',12,'use_tls','Use TLS',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fc6f1c3b84','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','fields','DocType',9,'github_client_secret','GitHub Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fcc32d85b9','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',20,'section_break_4','Background',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fd781ae3d6','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','fields','DocType',30,'always_use_account_email_id_as_sender','Always use Account\'s Email Address as Sender',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_outgoing',0,0,NULL,NULL,0,NULL,'Uses the Email Address mentioned in this Account as the Sender for all emails sent using this Account. ',0,0,0,'',0,0,0,0,0,0),('fd8d71a8f5','2013-02-22 01:27:32.000000','2018-09-23 18:40:43.052384','Administrator','Administrator',0,'Customize Form Field','fields','DocType',28,'display','Display',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fdf0ced77b','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',22,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fe2e9f1aec','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','fields','DocType',43,'background_style','Background Style',NULL,'Select',NULL,'Fill Screen\nTile',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fe3971199d','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','fields','DocType',3,'is_standard','Is Standard',NULL,'Select',NULL,'No\nYes',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('fe3cc9cfcc','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','fields','DocType',12,'rating','Rating',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('fe697fbaf4','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','fields','DocType',5,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fe6b670b20','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','fields','DocType',10,'pincode','Postal Code',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fe82975c05','2013-02-22 01:27:33.000000','2018-09-23 18:40:37.646974','Administrator','Administrator',0,'DocField','fields','DocType',24,'allow_bulk_edit','Allow Bulk Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.fieldtype == \"Table\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('febd39b7da','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','fields','DocType',1,'letter_head_name','Letter Head Name','letter_head_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('fef0bcfaaa','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','fields','DocType',8,'ends_on','Ends on',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ff1d1429d6','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','fields','DocType',5,'editable_grid','Editable Grid',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'istable',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('ff28b6313e','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','fields','DocType',15,'scheduled_to_send','Scheduled To Send',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ff2b22f6b7','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','fields','DocType',3,'apply_style','Apply Style',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('ff91b54f66','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','fields','DocType',17,'log_details','Log Details',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,1,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ffaa56f2a1','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','fields','DocType',14,'unsubscribe_param','Unsubscribe Param',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ffc00f2f81','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','fields','DocType',5,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tabDocField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocPerm`
--

DROP TABLE IF EXISTS `tabDocPerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocPerm` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `permlevel` int(11) DEFAULT 0,
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` int(1) NOT NULL DEFAULT 1,
  `write` int(1) NOT NULL DEFAULT 1,
  `create` int(1) NOT NULL DEFAULT 1,
  `submit` int(1) NOT NULL DEFAULT 0,
  `cancel` int(1) NOT NULL DEFAULT 0,
  `delete` int(1) NOT NULL DEFAULT 1,
  `amend` int(1) NOT NULL DEFAULT 0,
  `report` int(1) NOT NULL DEFAULT 1,
  `export` int(1) NOT NULL DEFAULT 1,
  `import` int(1) NOT NULL DEFAULT 0,
  `share` int(1) NOT NULL DEFAULT 1,
  `print` int(1) NOT NULL DEFAULT 1,
  `email` int(1) NOT NULL DEFAULT 1,
  `user_permission_doctypes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_user_permissions` int(1) NOT NULL DEFAULT 0,
  `apply_user_permissions` int(1) NOT NULL DEFAULT 0,
  `if_owner` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocPerm`
--

LOCK TABLES `tabDocPerm` WRITE;
/*!40000 ALTER TABLE `tabDocPerm` DISABLE KEYS */;
INSERT INTO `tabDocPerm` VALUES ('02eac94684','2013-01-10 16:34:03.000000','2018-09-23 18:40:39.006397','Administrator','Administrator',0,'Module Def','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('03de4d913c','2017-08-11 05:15:51.482165','2018-09-23 18:40:45.708852','Administrator','Administrator',0,'Data Migration Plan','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('05bfbcc0dc','2013-03-28 10:35:30.000000','2018-09-23 18:40:40.852315','Administrator','Administrator',0,'Web Page','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,1,1,0,0,NULL,0,0,0),('062b1db811','2013-03-11 17:48:16.000000','2018-09-23 18:40:41.312846','Administrator','Administrator',0,'Blog Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('081294ec2b','2017-10-16 17:13:05.684227','2018-09-23 18:40:44.378160','Administrator','Administrator',0,'Google Maps','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('08bd6d2545','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','permissions','DocType',2,0,'Purchase User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('0902077982','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('09573a1181','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.944718','Administrator','Administrator',0,'Workflow Action','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('095b371ae4','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','permissions','DocType',3,0,'All',NULL,1,0,0,0,0,1,0,0,0,0,0,0,1,'[\"Email Account\"]',0,1,1),('0bedd3412e','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','permissions','DocType',3,0,'All',NULL,1,0,0,0,0,1,0,0,0,0,0,0,1,'[\"Email Account\"]',0,1,1),('0c9fe42ec6','2013-01-10 16:34:24.000000','2018-09-23 18:40:44.765792','Administrator','Administrator',0,'Print Heading','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('0d49b138a8','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',7,0,'Accounts Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('0f907154fc','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,1,0,0),('0f9c007ab9','2014-07-17 06:54:20.782907','2018-09-23 18:40:44.928092','Administrator','Administrator',0,'Print Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('0fab748839','2014-07-11 17:18:09.923399','2018-09-23 18:40:42.792852','Administrator','Administrator',0,'Email Alert','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,0,0,NULL,0,0,0),('0fafe77623','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','permissions','DocType',2,0,'Blogger',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('104f9f0813','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('117d934ec2','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',10,0,'Maintenance User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('1471e08dbe','2012-12-27 11:51:24.000000','2018-09-23 18:40:41.511649','Administrator','Administrator',0,'Website Script','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('15c9ec37da','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('18543d7c23','2015-03-18 06:08:32.729800','2018-09-23 18:40:42.553951','Administrator','Administrator',0,'Email Group','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('19fbefa1c8','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('1a1900ea53','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','permissions','DocType',3,0,'Guest',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('1b18b00917','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,0,1,1,0,0,0,NULL,0,0,0),('1c7b90537d','2017-05-03 15:07:39.752820','2018-09-23 18:40:40.493819','Administrator','makarand@erpnext.com',0,'Domain','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('1cb07f945e','2016-08-24 14:10:17.471264','2018-09-23 18:40:44.400468','Administrator','Administrator',0,'OAuth Bearer Token','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('207331436a','2015-11-28 00:57:39.766888','2018-09-23 18:40:39.109079','Administrator','Administrator',0,'Error Snapshot','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('217c327692','2013-01-10 16:34:31.000000','2018-09-23 18:40:42.626779','Administrator','Administrator',0,'Newsletter','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,1,0,0),('21805036b3','2017-04-10 12:11:36.526508','2018-09-23 18:40:45.274076','Administrator','Administrator',0,'Gender','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('22fbbe731a','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.308375','Administrator','Administrator',0,'User Permission for Page and Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('24abf02b42','2013-01-16 13:09:40.000000','2018-09-23 18:40:38.722669','Administrator','Administrator',0,'Error Log','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('25c41c5a62','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',5,0,'Purchase Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('295a708ab3','2014-09-01 14:08:48.624556','2018-09-23 18:40:38.307775','Administrator','Administrator',0,'Web Form','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,0,0,NULL,0,0,0),('297e70ae9e','2017-03-09 17:18:29.458397','2018-09-23 18:40:44.129714','Administrator','Administrator',0,'Stripe Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('2cfe7f7ae2','2016-03-29 10:50:48.848239','2018-09-23 18:40:42.676355','Administrator','Administrator',0,'Email Domain','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,0,0,NULL,1,0,0),('2e31c8ff03','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('3078763fc3','2017-04-10 12:11:36.526508','2018-09-23 18:40:45.274076','Administrator','Administrator',0,'Gender','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('30a545967a','2016-09-22 04:16:48.829658','2018-09-23 18:40:44.699313','Administrator','Administrator',0,'LDAP Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('311a007e25','2013-01-10 16:34:03.000000','2018-09-23 18:40:39.006397','Administrator','Administrator',0,'Module Def','permissions','DocType',2,0,'System Manager',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('31908719a2','2016-07-15 05:51:29.224123','2018-09-23 18:40:43.733229','Administrator','Administrator',0,'Bulk Update','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('3380ec6848','2015-12-15 22:26:45.221162','2018-09-23 18:40:39.863099','Administrator','Administrator',0,'Payment Gateway','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('35dfb070b1','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',4,0,'Sales Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('37346db083','2016-02-22 03:47:45.387068','2018-09-23 18:40:43.582572','Administrator','Administrator',0,'Desktop Icon','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('3a686b3875','2013-01-10 16:34:24.000000','2018-09-23 18:40:44.765792','Administrator','Administrator',0,'Print Heading','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('3b76339cff','2016-12-29 12:59:48.638970','2018-09-23 18:40:39.780395','Administrator','Administrator',0,'Deleted Document','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,0,1,0,0,0,0,NULL,0,0,0),('3d94d402f0','2017-04-24 09:53:41.813982','2018-09-23 18:40:43.866825','Administrator','Administrator',0,'GSuite Templates','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('4100fc8d1c','2017-09-11 12:55:27.597728','2018-09-23 18:40:45.548341','Administrator','faris@erpnext.com',0,'Data Migration Run','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('41b8747e92','2015-02-04 04:33:36.330477','2018-09-23 18:40:39.930953','Administrator','Administrator',0,'DocShare','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,0,0,NULL,0,0,0),('4251fe9947','2013-04-30 12:58:46.000000','2018-09-23 18:40:41.013230','Administrator','Administrator',0,'Website Settings','permissions','DocType',2,1,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('4326558d00','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','permissions','DocType',2,0,'System Manager',NULL,1,1,0,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('45988a4f5f','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('4701e271bc','2017-07-17 14:25:27.881871','2018-09-23 18:40:40.113033','Administrator','Administrator',0,'User Permission','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('47af2f36d7','2016-08-04 04:58:40.457416','2018-09-23 18:40:44.632046','Administrator','Administrator',0,'Integration Request','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('4a994e8b14','2017-01-27 15:43:33.780808','2018-09-23 18:40:40.382665','Administrator','Administrator',0,'Feedback Request','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('4d38c2bf16','2016-02-17 12:21:16.175465','2018-09-23 18:40:40.526709','Administrator','Administrator',0,'Translation','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('4ec957dde1','2013-01-23 19:54:43.000000','2018-09-23 18:40:44.820936','Administrator','Administrator',0,'Print Format','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('4f21f91177','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('50249026d2','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',6,0,'Maintenance Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('528f9aedb2','2013-05-24 13:41:00.000000','2018-09-23 18:40:43.534997','Administrator','Administrator',0,'Note','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('530302167d','2017-08-17 01:25:56.910716','2018-09-23 18:40:44.882188','Administrator','Administrator',0,'Print Style','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('53fa8852dd','2016-05-25 09:49:07.125394','2018-09-23 18:40:40.144972','Administrator','Administrator',0,'Tag Category','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,1,0,0,0,NULL,0,0,0),('560ef630a2','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('56322ba738','2016-12-29 07:48:06.319665','2018-09-23 18:40:41.150994','Administrator','Administrator',0,'Website Sidebar','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('5a5f7a00a9','2012-08-02 15:17:28.000000','2018-09-23 18:40:42.729073','Administrator','Administrator',0,'Email Queue','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,0,0,0,1,1,NULL,0,0,0),('5b2d38c198','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('5d9659bbaa','2012-11-22 17:45:46.000000','2018-09-23 18:40:44.981697','Administrator','Administrator',0,'Letter Head','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('5ea0f8c716','2017-04-21 16:57:30.264478','2018-09-23 18:40:44.151526','Administrator','Administrator',0,'GSuite Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('5f31afe7eb','2017-09-04 20:57:20.129205','2018-09-23 18:40:44.449340','Administrator','Administrator',0,'S3 Backup Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('60a17eca23','2013-06-10 13:17:47.000000','2018-09-23 18:40:43.362279','Administrator','Administrator',0,'Event','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('615d075929','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','permissions','DocType',4,0,'Accounts User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('61f6cb6108','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','permissions','DocType',1,0,'System Manager',NULL,1,0,1,0,0,1,0,1,0,0,1,0,1,NULL,0,0,0),('62c630f6e4','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','permissions','DocType',3,0,'Maintenance User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('62ffbc9ba4','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',8,0,'Sales User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('6378a944d3','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',11,0,'Accounts User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('63eb9022ed','2013-01-10 16:34:24.000000','2018-09-23 18:40:38.755112','Administrator','Administrator',0,'SMS Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('66bc8f28c8','2016-03-30 01:40:20.001775','2018-09-23 18:40:41.609150','Administrator','Administrator',0,'Portal Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('6786fc9a97','2016-09-21 08:03:01.009852','2018-09-23 18:40:44.106819','Administrator','Administrator',0,'PayPal Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('67fea80b2e','2014-04-17 16:53:52.640856','2018-09-23 18:40:38.611467','Administrator','Administrator',0,'System Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('69952f05db','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',12,1,'All','',1,0,0,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0),('6b04c0d91c','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('6fce1d4e79','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,0,1,1,NULL,0,0,0),('7008c7226e','2015-03-18 09:41:20.216319','2018-09-23 18:40:42.589833','Administrator','Administrator',0,'Email Unsubscribe','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('721cda18a2','2017-01-24 15:46:38.366213','2018-09-23 18:40:38.784347','Administrator','Administrator',0,'Feedback Trigger','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('745c4ff191','2016-09-01 01:34:34.985457','2018-09-23 18:40:42.065500','Administrator','Administrator',0,'Auto Email Report','permissions','DocType',2,0,'Report Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('748a70ce02','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.195254','Administrator','Administrator',0,'Address','permissions','DocType',1,0,'Sales User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('7562189c88','2016-09-20 03:44:03.799402','2018-09-23 18:40:44.222605','Administrator','Administrator',0,'Razorpay Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('76216e1b2a','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('7761d76463','2017-01-11 04:21:35.217943','2018-09-23 18:40:38.952531','Administrator','Administrator',0,'Custom DocPerm','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('77a836ac4c','2014-03-04 08:29:52.000000','2018-09-23 18:40:44.733351','Administrator','Administrator',0,'Social Login Keys','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('77b1294444','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('78b7a44e48','2013-01-19 10:23:30.000000','2018-09-23 18:40:43.252004','Administrator','Administrator',0,'Country','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('7a16fb31a7','2016-04-14 09:41:45.892975','2018-09-23 18:40:42.319644','Administrator','Administrator',0,'Unhandled Email','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('7eb3fbb5d2','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','permissions','DocType',1,0,'System Manager',NULL,1,0,1,0,0,1,0,1,0,0,1,0,1,NULL,0,0,0),('8093ed91c4','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('8110d3824e','2017-08-11 05:11:49.975801','2018-09-23 18:40:45.616710','Administrator','Administrator',0,'Data Migration Mapping','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('8180f32764','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','permissions','DocType',4,0,'Purchase User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('84178f0f58','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',2,0,'Sales Master Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('8446af8869','2016-10-19 12:26:04.809812','2018-09-23 18:40:43.761014','Administrator','Administrator',0,'Kanban Board','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('87adc69571','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',3,0,'Purchase Master Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('89e2fdbd26','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','permissions','DocType',1,0,'Knowledge Base Editor',NULL,1,1,1,0,0,1,0,1,1,1,0,1,1,NULL,0,0,0),('89f423a3c4','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','permissions','DocType',3,0,'Report Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('8dbe5ccb24','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('8fca749dd4','2016-08-24 14:07:21.955052','2018-09-23 18:40:44.061589','Administrator','Administrator',0,'OAuth Client','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('91f1fe66bd','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','permissions','DocType',3,0,'Sales User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('923e0720c4','2013-01-28 10:06:02.000000','2018-09-23 18:40:43.306442','Administrator','Administrator',0,'Currency','permissions','DocType',2,0,'Accounts User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('98789b1d99','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','permissions','DocType',2,0,'Administrator',NULL,1,0,0,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('98aa4b4a83','2017-04-10 12:17:58.071915','2018-09-23 18:40:45.081434','Administrator','Administrator',0,'Salutation','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('9c0e81b5d1','2013-03-19 12:02:15.000000','2018-09-23 18:40:41.580959','Administrator','Administrator',0,'About Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('9c37f7a5dc','2012-07-03 13:30:35.000000','2018-09-23 18:40:43.671505','Administrator','Administrator',0,'ToDo','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('9d7c676c12','2017-04-10 12:17:58.071915','2018-09-23 18:40:45.081434','Administrator','Administrator',0,'Salutation','permissions','DocType',3,0,'Administrator',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('9e272eb5af','2014-06-05 02:22:36.029850','2018-09-23 18:40:45.142002','Administrator','Administrator',0,'Address Template','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,0,0,NULL,1,0,0),('a036d8d407','2014-02-20 17:22:37.000000','2018-09-23 18:40:38.509366','Administrator','Administrator',0,'Version','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,0,0,0,NULL,0,0,0),('a0f462a10b','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('a17d818647','2014-10-30 14:23:30.958074','2018-09-23 18:40:41.066340','Administrator','Administrator',0,'Help Category','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('a49a3c9f50','2013-03-28 10:35:30.000000','2018-09-23 18:40:41.206212','Administrator','Administrator',0,'Blog Post','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,1,0,0),('a5b2a88f34','2017-02-13 17:33:25.157332','2018-09-23 18:40:40.438089','Administrator','Administrator',0,'Role Permission for Page and Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('a6108d6ff0','2017-04-10 12:17:58.071915','2018-09-23 18:40:45.081434','Administrator','Administrator',0,'Salutation','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('a7da7ab327','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('a7dfe54129','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','permissions','DocType',2,0,'Blogger',NULL,1,0,0,0,0,0,0,0,0,0,0,1,1,NULL,0,0,0),('aa5d69f1d7','2017-02-13 14:53:36.240122','2018-09-23 18:40:39.066883','Administrator','Administrator',0,'Custom Role','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('ab70b2e752','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('abfe82bea7','2013-01-10 16:34:32.000000','2018-09-23 18:40:45.320804','Administrator','Administrator',0,'Contact','permissions','DocType',9,0,'Purchase User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('afb99834d4','2016-12-09 14:27:32.720061','2018-09-23 18:40:39.713050','Administrator','Administrator',0,'Data Import','permissions','DocType',1,0,'System Manager',NULL,1,1,1,1,0,1,0,0,0,0,1,0,1,NULL,0,0,0),('b141838e3f','2013-01-10 16:34:04.000000','2018-09-23 18:40:38.263707','Administrator','Administrator',0,'Property Setter','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('b1d7d51e2f','2017-08-31 04:16:38.764465','2018-09-23 18:40:38.562137','Administrator','Administrator',0,'Role Profile','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('b726e1aa86','2017-06-26 10:57:19.976624','2018-09-23 18:40:39.762366','Administrator','Administrator',0,'Test Runner','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('b7abd7d0a6','2017-10-05 11:10:38.780133','2018-09-23 18:40:40.034623','Administrator','Administrator',0,'Activity Log','permissions','DocType',2,1,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('b993fab052','2016-04-20 15:29:39.785172','2018-09-23 18:40:42.010360','Administrator','Administrator',0,'Email Flag Queue','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('babe7152e0','2013-01-29 10:47:14.000000','2018-09-23 18:40:39.444241','Administrator','Administrator',0,'Communication','permissions','DocType',2,1,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('bb65f58792','2013-03-25 16:00:51.000000','2018-09-23 18:40:41.473383','Administrator','Administrator',0,'Blogger','permissions','DocType',2,0,'Blogger',NULL,1,1,0,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('bd10829f5f','2014-06-19 05:20:26.331041','2018-09-23 18:40:42.393418','Administrator','Administrator',0,'Standard Reply','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,0,1,NULL,0,0,0),('c3a08e5821','2016-08-24 14:12:13.647159','2018-09-23 18:40:44.180873','Administrator','Administrator',0,'OAuth Authorization Code','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('c44360cb30','2014-08-22 16:12:17.249590','2018-09-23 18:40:39.895168','Administrator','Administrator',0,'Language','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('c93f7c0297','2014-03-11 14:55:00.000000','2018-09-23 18:40:38.017488','Administrator','Administrator',0,'User','permissions','DocType',2,1,'System Manager',NULL,1,1,0,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0),('ca30b90a9f','2017-08-31 04:16:38.764465','2018-09-23 18:40:38.562137','Administrator','Administrator',0,'Role Profile','permissions','DocType',2,1,'System Manager',NULL,1,1,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('caed10a8b5','2013-01-08 15:50:01.000000','2018-09-23 18:40:38.126588','Administrator','Administrator',0,'Role','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('cd0ada6bc8','2012-12-12 11:19:22.000000','2018-09-23 18:40:39.300826','Administrator','Administrator',0,'File','permissions','DocType',2,0,'All',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,1),('d1be111260','2013-01-29 17:55:08.000000','2018-09-23 18:40:43.161131','Administrator','Administrator',0,'Customize Form','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('d381469cfe','2017-08-11 05:03:27.091416','2018-09-23 18:40:45.467625','Administrator','Administrator',0,'Data Migration Connector','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('d410d195fa','2014-10-30 14:25:53.780105','2018-09-23 18:40:41.672421','Administrator','Administrator',0,'Help Article','permissions','DocType',2,0,'Knowledge Base Contributor',NULL,1,1,1,0,0,0,0,0,0,0,0,0,0,NULL,0,1,0),('d4d6ce9bc0','2016-09-03 11:42:42.575525','2018-09-23 18:40:44.682716','Administrator','Administrator',0,'OAuth Provider Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('d57a6e7b53','2012-12-28 10:49:55.000000','2018-09-23 18:40:41.820590','Administrator','Administrator',0,'Workflow','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('d651ea2be1','2017-10-23 13:02:10.295824','2018-09-23 18:40:43.492236','Administrator','faris@erpnext.com',0,'Calendar View','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('d671f35c3b','2013-03-08 09:41:11.000000','2018-09-23 18:40:41.370643','Administrator','Administrator',0,'Blog Category','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,1,0,0),('d71e5eae84','2012-12-28 10:49:56.000000','2018-09-23 18:40:41.909386','Administrator','Administrator',0,'Workflow State','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('d74ab94853','2013-02-18 13:36:19.000000','2018-09-23 18:40:37.889531','Administrator','Administrator',0,'DocType','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('d9f5d87cbd','2013-01-17 11:36:45.000000','2018-09-23 18:40:39.398440','Administrator','Administrator',0,'Patch Log','permissions','DocType',1,0,'Administrator',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('df69782e67','2012-12-20 17:16:49.000000','2018-09-23 18:40:39.992211','Administrator','Administrator',0,'Page','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('e1890b7ce9','2015-02-18 12:46:38.168929','2018-09-23 18:40:41.412347','Administrator','Administrator',0,'Website Theme','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('e292f6dae5','2013-01-10 16:34:01.000000','2018-09-23 18:40:43.209062','Administrator','Administrator',0,'Custom Script','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('e2e2ec7d7f','2017-05-03 16:28:11.295095','2018-09-23 18:40:40.195050','Administrator','Administrator',0,'Domain Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('e569fe7e6b','2015-03-18 06:15:59.321619','2018-09-23 18:40:42.875021','Administrator','Administrator',0,'Email Group Member','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('e7665b9c72','2013-03-07 15:53:15.000000','2018-09-23 18:40:41.276784','Administrator','Administrator',0,'Website Slideshow','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('e9f15e7bd7','2013-01-10 16:34:01.000000','2018-09-23 18:40:38.175475','Administrator','Administrator',0,'Custom Field','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('eeb72caa67','2017-09-08 16:16:13.060641','2018-09-23 18:40:44.330810','Administrator','Administrator',0,'Webhook','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('f1cced3d38','2013-03-09 15:45:57.000000','2018-09-23 18:40:39.154188','Administrator','Administrator',0,'Report','permissions','DocType',4,0,'All',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('faa06e6747','2014-09-11 12:04:34.163728','2018-09-23 18:40:42.930491','Administrator','Administrator',0,'Email Account','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,1,0,0),('fb427e1573','2016-09-21 10:12:57.399174','2018-09-23 18:40:43.920827','Administrator','Administrator',0,'Dropbox Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('fe309c97c8','2017-03-13 09:20:56.387135','2018-09-23 18:40:42.353776','Administrator','Administrator',0,'Email Rule','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('ff976cb9c8','2013-02-21 20:12:42.000000','2018-09-23 18:40:41.635306','Administrator','Administrator',0,'Contact Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0);
/*!40000 ALTER TABLE `tabDocPerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocShare`
--

DROP TABLE IF EXISTS `tabDocShare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocShare` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `everyone` int(1) NOT NULL DEFAULT 0,
  `share_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share` int(1) NOT NULL DEFAULT 0,
  `write` int(1) NOT NULL DEFAULT 0,
  `notify_by_email` int(1) NOT NULL DEFAULT 1,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `share_name` (`share_name`),
  KEY `user` (`user`),
  KEY `share_doctype` (`share_doctype`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `user_share_doctype_index` (`user`,`share_doctype`),
  KEY `share_doctype_share_name_index` (`share_doctype`,`share_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocShare`
--

LOCK TABLES `tabDocShare` WRITE;
/*!40000 ALTER TABLE `tabDocShare` DISABLE KEYS */;
INSERT INTO `tabDocShare` VALUES ('2527738790','2018-09-23 18:40:47.947017','2018-09-23 18:40:48.998694','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'Administrator',1,NULL,NULL,1,1,1,'Administrator','User',NULL,NULL),('f8b28161fb','2018-09-23 18:40:48.055727','2018-09-23 18:40:48.055727','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'Guest',1,NULL,NULL,1,1,1,'Guest','User',NULL,NULL);
/*!40000 ALTER TABLE `tabDocShare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocType`
--

DROP TABLE IF EXISTS `tabDocType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocType` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `search_fields` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issingle` int(1) NOT NULL DEFAULT 0,
  `istable` int(1) NOT NULL DEFAULT 0,
  `editable_grid` int(1) NOT NULL DEFAULT 1,
  `track_changes` int(1) NOT NULL DEFAULT 1,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_case` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'modified',
  `sort_order` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'DESC',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_only` int(1) NOT NULL DEFAULT 0,
  `in_create` int(1) NOT NULL DEFAULT 0,
  `menu_index` int(11) DEFAULT NULL,
  `parent_node` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smallicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_copy` int(1) NOT NULL DEFAULT 0,
  `allow_rename` int(1) NOT NULL DEFAULT 0,
  `allow_import` int(1) NOT NULL DEFAULT 0,
  `hide_toolbar` int(1) NOT NULL DEFAULT 0,
  `hide_heading` int(1) NOT NULL DEFAULT 0,
  `track_seen` int(1) NOT NULL DEFAULT 0,
  `max_attachments` int(11) NOT NULL DEFAULT 0,
  `print_outline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_only_onload` int(1) NOT NULL DEFAULT 0,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_fields` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_last_update` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'InnoDB',
  `default_print_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_submittable` int(1) NOT NULL DEFAULT 0,
  `show_name_in_global_search` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` int(1) NOT NULL DEFAULT 0,
  `beta` int(1) NOT NULL DEFAULT 0,
  `image_view` int(1) NOT NULL DEFAULT 0,
  `has_web_view` int(1) NOT NULL DEFAULT 0,
  `allow_guest_to_view` int(1) NOT NULL DEFAULT 0,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_entry` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocType`
--

LOCK TABLES `tabDocType` WRITE;
/*!40000 ALTER TABLE `tabDocType` DISABLE KEYS */;
INSERT INTO `tabDocType` VALUES ('About Us Settings','2013-03-19 12:02:15.000000','2016-12-29 14:40:41.692119','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Settings for the About Us Page',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other','fa fa-group',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('About Us Team Member','2013-03-07 11:55:11.000000','2016-07-11 03:27:57.756510','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Activity Log','2017-10-05 11:10:38.780133','2017-11-21 12:39:23.659308','Administrator','Administrator',0,NULL,NULL,NULL,0,'subject',0,0,0,1,'Core',NULL,NULL,'','','subject',NULL,NULL,'modified','DESC','Keep track of all update feeds',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,1,0,NULL,0,'Setup','fa fa-comment',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Address','2013-01-10 16:34:32.000000','2017-06-21 11:30:20.719590','Administrator','Administrator',0,NULL,NULL,NULL,5,'country, state',0,0,0,0,'Contacts',NULL,NULL,NULL,'Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-map-marker',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Address Template','2014-06-05 02:22:36.029850','2017-04-10 13:09:53.761009','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Contacts',NULL,NULL,'field:country','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-map-marker',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Auto Email Report','2016-09-01 01:34:34.985457','2017-06-30 12:54:13.350902','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Email',NULL,NULL,'','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Block Module','2015-03-24 14:28:15.882903','2017-10-31 19:36:18.586834','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Blog Category','2013-03-08 09:41:11.000000','2017-03-06 16:29:05.035486','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,NULL,'field:category_name',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-tag',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,1),('Blog Post','2013-03-28 10:35:30.000000','2017-03-06 16:25:33.410910','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,NULL,NULL,NULL,'title',NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,5,NULL,0,'Setup','fa fa-quote-left',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,1,1,'/blog','published',NULL,NULL,NULL,0),('Blog Settings','2013-03-11 17:48:16.000000','2016-12-29 14:40:41.629468','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Blog Settings',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Blogger','2013-03-25 16:00:51.000000','2016-12-29 14:40:40.407657','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,NULL,'field:short_name',NULL,'full_name',NULL,NULL,NULL,NULL,'User ID of a Blogger',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,1,NULL,0,'Setup','fa fa-user',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Bulk Update','2016-07-15 05:51:29.224123','2016-12-29 14:40:31.929701','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Desk',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Calendar View','2017-10-23 13:02:10.295824','2018-07-20 08:23:23.737254','Administrator','faris@erpnext.com',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Desk',NULL,NULL,'Prompt','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Communication','2013-01-29 10:47:14.000000','2017-11-13 12:00:44.238575','Administrator','Administrator',0,NULL,NULL,NULL,1,'subject',0,0,0,1,'Core',NULL,NULL,'',NULL,'subject',NULL,NULL,NULL,'DESC','Keep a track of all communications',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,1,0,NULL,0,'Setup','fa fa-comment',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Company History','2013-02-22 01:28:08.000000','2016-07-11 03:27:58.848351','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Contact','2013-01-10 16:34:32.000000','2017-06-21 17:17:44.694188','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,0,'Contacts',NULL,NULL,NULL,'Title Case',NULL,'image',NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-user',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Contact Us Settings','2013-02-21 20:12:42.000000','2017-09-04 21:41:55.580325','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Settings for Contact Us Page',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Country','2013-01-19 10:23:30.000000','2016-12-29 14:40:34.951894','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Geo',NULL,NULL,'field:country_name',NULL,NULL,NULL,NULL,'country_name','ASC',NULL,NULL,0,0,0,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-globe',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Currency','2013-01-28 10:06:02.000000','2016-12-29 14:40:39.187557','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Geo',NULL,NULL,'field:currency_name',NULL,NULL,NULL,NULL,NULL,'DESC','**Currency** Master',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-bitcoin',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Custom DocPerm','2017-01-11 04:21:35.217943','2017-01-11 04:21:35.217943','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,NULL,'hash','',NULL,NULL,NULL,'modified','ASC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Custom Field','2013-01-10 16:34:01.000000','2017-10-24 11:40:37.986457','Administrator','Administrator',0,NULL,NULL,NULL,1,'dt,label,fieldtype,options',0,0,0,1,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','Adds a custom field to a DocType',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Custom Role','2017-02-13 14:53:36.240122','2017-03-20 12:56:09.164494','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,NULL,'hash','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Custom Script','2013-01-10 16:34:01.000000','2017-08-17 07:43:08.093341','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Custom',NULL,NULL,'CustomScript.####',NULL,NULL,NULL,NULL,NULL,'ASC','Adds a custom script (client or server) to a DocType',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Document','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Customize Form','2013-01-29 17:55:08.000000','2017-04-21 16:59:12.752428','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_type',1,0,1,1,'Custom',NULL,NULL,'DL.####',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,1,0,0,0,NULL,0,'Document','fa fa-glass',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Customize Form Field','2013-02-22 01:27:32.000000','2017-10-24 11:41:31.075929','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Custom',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Data Import','2016-12-09 14:27:32.720061','2017-12-15 14:49:24.622128','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'','','',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,0,0,1,1,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,1,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Data Migration Connector','2017-08-11 05:03:27.091416','2017-12-01 13:38:55.992499','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Data Migration',NULL,NULL,'field:connector_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Data Migration Mapping','2017-08-11 05:11:49.975801','2017-09-27 18:06:43.275207','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Data Migration',NULL,NULL,'field:mapping_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Data Migration Mapping Detail','2017-08-11 05:09:10.900237','2017-09-28 17:13:31.337005','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Data Migration',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Data Migration Plan','2017-08-11 05:15:51.482165','2017-09-13 15:47:26.336541','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Data Migration',NULL,NULL,'field:plan_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Data Migration Plan Mapping','2017-08-11 05:15:38.390831','2017-09-20 21:43:04.908650','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Data Migration',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Data Migration Run','2017-09-11 12:55:27.597728','2017-10-02 05:12:16.094991','Administrator','faris@erpnext.com',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Data Migration',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('DefaultValue','2013-02-22 01:27:32.000000','2016-07-11 03:27:59.126216','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Deleted Document','2016-12-29 12:59:48.638970','2016-12-29 14:39:45.724494','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,NULL,'','deleted_name',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Desktop Icon','2016-02-22 03:47:45.387068','2017-05-08 15:41:31.121652','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Desk',NULL,NULL,NULL,'','module_name',NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('DocField','2013-02-22 01:27:33.000000','2018-05-24 04:43:09.264136','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('DocPerm','2013-02-22 01:27:33.000000','2017-03-03 16:18:18.890031','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('DocShare','2015-02-04 04:33:36.330477','2017-09-15 15:58:34.126438','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,NULL,'hash','',NULL,NULL,NULL,'modified','DESC','Internal record of document shares',NULL,1,1,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('DocType','2013-02-18 13:36:19.000000','2017-05-03 16:15:40.198072','Administrator','Administrator',0,NULL,NULL,NULL,6,'module',0,0,0,1,'Core',NULL,NULL,'Prompt',NULL,NULL,NULL,NULL,'modified','DESC','DocType is a Table / Form in the application.',NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-bolt',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Domain','2017-05-03 15:07:39.752820','2017-09-15 12:26:21.827149','Administrator','makarand@erpnext.com',0,NULL,NULL,NULL,0,'domain',0,0,1,0,'Core',NULL,NULL,'field:domain','','domain',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Domain Settings','2017-05-03 16:28:11.295095','2017-12-05 17:36:46.842134','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Dropbox Settings','2016-09-21 10:12:57.399174','2018-08-07 04:00:40.520943','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Dynamic Link','2017-01-13 04:55:18.835023','2017-01-17 14:25:49.140730','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Account','2014-09-11 12:04:34.163728','2017-03-10 17:00:50.782901','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'field:email_account_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-inbox',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Email Alert','2014-07-11 17:18:09.923399','2018-07-30 14:32:02.179599','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'Prompt','','subject',NULL,NULL,'modified','DESC',NULL,NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'System','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Email Alert Recipient','2014-07-11 17:19:37.037109','2016-12-30 11:09:35.562857','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Domain','2016-03-29 10:50:48.848239','2016-12-23 13:31:58.408528','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,NULL,'field:domain_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','icon-inbox',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Email Flag Queue','2016-04-20 15:29:39.785172','2017-09-20 15:27:12.142079','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Email Group','2015-03-18 06:08:32.729800','2017-02-27 19:01:17.203845','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'field:title','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Group Member','2015-03-18 06:15:59.321619','2017-02-17 17:00:42.551806','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'hash','','email',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Queue','2012-08-02 15:17:28.000000','2017-09-25 15:39:21.781324','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Email',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,'DESC','Email Queue records.',NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Email Queue Recipient','2016-12-08 12:01:07.993900','2016-12-08 14:05:33.578240','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Rule','2017-03-13 09:20:56.387135','2017-03-13 09:26:38.441858','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Email',NULL,NULL,'field:email_id','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Email Unsubscribe','2015-03-18 09:41:20.216319','2016-12-29 14:40:21.633193','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Error Log','2013-01-16 13:09:40.000000','2017-03-14 12:21:44.292471','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'ASC','Log of Scheduler Errors',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-warning-sign',NULL,NULL,NULL,'MyISAM',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Error Snapshot','2015-11-28 00:57:39.766888','2016-12-29 14:40:38.619106','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,NULL,NULL,'','evalue',NULL,NULL,'timestamp','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Event','2013-06-10 13:17:47.000000','2017-08-03 16:34:54.657796','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Desk',NULL,NULL,'EV.#####',NULL,'subject',NULL,NULL,NULL,'DESC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,1,0,NULL,0,'Document','fa fa-calendar',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Feedback Request','2017-01-27 15:43:33.780808','2017-03-03 08:11:09.718589','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'','','reference_name',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Feedback Trigger','2017-01-24 15:46:38.366213','2017-05-29 16:36:04.178592','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'field:document_type','','document_type',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('File','2012-12-12 11:19:22.000000','2018-05-24 05:22:50.819899','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'',NULL,'file_name',NULL,NULL,NULL,'ASC',NULL,NULL,0,0,0,NULL,NULL,0,0,1,0,0,0,0,NULL,0,NULL,'fa fa-file',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Footer Item','2016-04-12 18:40:16.315024','2016-07-11 03:28:00.573336','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Gender','2017-04-10 12:11:36.526508','2017-04-10 12:17:04.848338','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Contacts',NULL,NULL,'field:gender','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Google Maps','2017-10-16 17:13:05.684227','2017-10-16 17:13:05.684227','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('GSuite Settings','2017-04-21 16:57:30.264478','2017-10-20 16:11:47.757030','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('GSuite Templates','2017-04-24 09:53:41.813982','2017-05-12 16:50:08.074882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,'field:template_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Has Domain','2017-05-03 15:20:22.326623','2017-05-04 11:05:54.750351','Administrator','makarand@erpnext.com',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Has Role','2013-02-22 01:27:34.000000','2017-02-13 14:00:08.116312','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,NULL,'hash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Help Article','2014-10-30 14:25:53.780105','2017-03-06 16:27:58.333205','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,NULL,NULL,'','title',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'','icon-file-alt',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,0),('Help Category','2014-10-30 14:23:30.958074','2016-12-29 14:39:56.092427','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,NULL,'','Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'','icon-list',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Integration Request','2016-08-04 04:58:40.457416','2017-03-08 14:40:00.783063','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,NULL,'','integration_request_service',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Kanban Board','2016-10-19 12:26:04.809812','2017-03-14 23:02:13.267243','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Desk',NULL,NULL,'field:kanban_board_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Kanban Board Column','2016-10-19 12:26:42.569185','2017-01-17 15:23:43.520379','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Desk',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Language','2014-08-22 16:12:17.249590','2016-12-29 14:40:33.210645','Administrator','Administrator',0,NULL,NULL,NULL,0,'language_name',0,0,0,1,'Core',NULL,NULL,'field:language_code','','language_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-globe',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('LDAP Settings','2016-09-22 04:16:48.829658','2017-03-08 17:16:01.087365','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Letter Head','2012-11-22 17:45:46.000000','2018-04-21 17:23:55.709575','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Printing',NULL,NULL,'field:letter_head_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,3,NULL,0,'Setup','fa fa-font',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Module Def','2013-01-10 16:34:03.000000','2017-07-13 03:05:28.213656','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'field:module_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,NULL,'fa fa-sitemap',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Newsletter','2013-01-10 16:34:31.000000','2017-09-14 15:38:01.891251','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Email',NULL,NULL,'',NULL,'subject',NULL,NULL,NULL,'ASC','Create and Send Newsletters',NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,3,NULL,0,'Other','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,1,0,'newsletters','published',NULL,NULL,NULL,0),('Newsletter Email Group','2017-02-26 16:20:52.654136','2017-02-26 16:23:57.351167','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Note','2013-05-24 13:41:00.000000','2017-02-17 17:02:57.095556','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Desk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','',NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,1,'Document','fa fa-file-text',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Note Seen By','2016-08-29 05:29:16.726172','2016-08-29 06:02:41.531341','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Desk',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('OAuth Authorization Code','2016-08-24 14:12:13.647159','2017-03-08 14:40:04.113884','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,'field:authorization_code','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('OAuth Bearer Token','2016-08-24 14:10:17.471264','2017-03-08 14:40:04.209039','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,'field:access_token','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('OAuth Client','2016-08-24 14:07:21.955052','2017-10-05 21:07:39.476360','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,'','','app_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('OAuth Provider Settings','2016-09-03 11:42:42.575525','2016-12-29 14:40:30.718685','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Page','2012-12-20 17:16:49.000000','2017-05-03 17:24:10.162110','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'field:page_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'System','fa fa-file',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Patch Log','2013-01-17 11:36:45.000000','2016-12-29 14:40:35.048570','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'PATCHLOG.#####',NULL,NULL,NULL,NULL,NULL,NULL,'List of patches executed',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Payment Gateway','2015-12-15 22:26:45.221162','2017-03-09 12:40:56.176464','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,NULL,'field:gateway','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('PayPal Settings','2016-09-21 08:03:01.009852','2016-12-29 14:40:31.574789','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Portal Menu Item','2016-03-30 01:39:20.586927','2017-02-23 00:56:55.063155','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Portal Settings','2016-03-30 01:40:20.001775','2016-12-29 14:40:31.476181','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Website',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Print Format','2013-01-23 19:54:43.000000','2017-09-05 14:01:05.658719','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Printing',NULL,NULL,'Prompt',NULL,NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,NULL,'fa fa-print',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Print Heading','2013-01-10 16:34:24.000000','2017-05-03 05:59:09.131569','Administrator','Administrator',0,NULL,NULL,NULL,1,'print_heading',0,0,0,0,'Printing',NULL,NULL,'field:print_heading',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-font',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Print Settings','2014-07-17 06:54:20.782907','2017-08-18 01:04:26.692081','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Printing',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Print Style','2017-08-17 01:25:56.910716','2017-08-17 02:18:08.132853','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Printing',NULL,NULL,'field:print_style_name','',NULL,'preview',NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Property Setter','2013-01-10 16:34:04.000000','2016-12-29 14:39:50.172883','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_type,property',0,0,0,1,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DESC','Property Setter overrides a standard DocType or Field property',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Razorpay Settings','2016-09-20 03:44:03.799402','2016-12-29 14:40:31.658270','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Report','2013-03-09 15:45:57.000000','2017-02-22 14:42:06.597755','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'field:report_name',NULL,NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-table',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Role','2013-01-08 15:50:01.000000','2017-07-06 12:42:57.097914','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'field:role_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-bookmark',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Role Permission for Page and Report','2017-02-13 17:33:25.157332','2017-03-11 02:35:32.369043','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,1,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Role Profile','2017-08-31 04:16:38.764465','2017-10-17 11:05:11.183066','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'role_profile','','role_profile',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('S3 Backup Settings','2017-09-04 20:57:20.129205','2018-08-07 04:12:43.691760','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,1,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Salutation','2017-04-10 12:17:58.071915','2017-04-10 12:55:18.855578','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Contacts',NULL,NULL,'field:salutation','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('SMS Parameter','2013-02-22 01:27:58.000000','2017-10-13 16:48:00.518463','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('SMS Settings','2013-01-10 16:34:24.000000','2017-11-01 12:57:20.943845','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,0,'Core',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,NULL,'fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Social Login Keys','2014-03-04 08:29:52.000000','2016-12-29 14:40:30.397643','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Integrations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','icon-signin',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Standard Reply','2014-06-19 05:20:26.331041','2017-11-10 08:25:07.708599','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'Prompt','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Document','fa fa-comment',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Stripe Settings','2017-03-09 17:18:29.458397','2017-03-09 17:19:25.087475','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('System Settings','2014-04-17 16:53:52.640856','2018-07-06 16:33:49.222058','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Tag','2016-05-25 09:43:44.767581','2016-05-31 08:29:01.773065','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Core',NULL,NULL,'','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Tag Category','2016-05-25 09:49:07.125394','2016-12-29 14:40:37.489085','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,NULL,'field:category_name','Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Tag Doc Category','2016-05-25 13:09:20.996154','2016-05-30 15:04:45.454688','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Test Runner','2017-06-26 10:57:19.976624','2017-07-19 03:22:33.221169','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('ToDo','2012-07-03 13:30:35.000000','2017-09-30 13:57:29.398598','Administrator','Administrator',0,NULL,NULL,NULL,2,'description, reference_type, reference_name',0,0,0,1,'Desk',NULL,NULL,'hash',NULL,'description',NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,1,0,NULL,0,'Setup','fa fa-check',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Top Bar Item','2013-02-22 01:28:08.000000','2016-07-11 03:28:09.550365','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Translation','2016-02-17 12:21:16.175465','2016-12-29 14:39:48.571006','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,NULL,'hash','','source_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Unhandled Email','2016-04-14 09:41:45.892975','2017-09-19 16:28:00.042256','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('User','2014-03-11 14:55:00.000000','2017-11-01 09:04:51.151347','Administrator','Administrator',0,NULL,NULL,NULL,413,'full_name',0,0,0,1,'Core',NULL,NULL,NULL,NULL,'full_name','user_image',NULL,NULL,'DESC','Represents a User in the system.',NULL,0,0,0,NULL,NULL,0,1,1,0,0,0,5,NULL,0,'','fa fa-user',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('User Email','2016-03-30 10:04:25.828742','2017-03-29 16:48:51.320616','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('User Permission','2017-07-17 14:25:27.881871','2017-10-26 09:51:47.663104','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,NULL,'','user',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('User Permission for Page and Report','2017-02-13 17:33:25.157332','2017-12-21 04:24:24.963988','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Core',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,1,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Version','2014-02-20 17:22:37.000000','2018-04-10 14:39:45.926836','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,NULL,'hash',NULL,'docname',NULL,NULL,NULL,'ASC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-copy',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Web Form','2014-09-01 14:08:48.624556','2017-09-13 18:55:07.031224','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,NULL,'','','title',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document','icon-edit',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,1,0,NULL,'published',NULL,NULL,NULL,0),('Web Form Field','2014-09-01 14:14:14.292173','2017-02-27 15:55:00.850515','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Web Page','2013-03-28 10:35:30.000000','2017-09-24 20:58:41.588919','Administrator','Administrator',0,NULL,NULL,NULL,1,'title',0,0,0,1,'Website',NULL,NULL,NULL,NULL,'title',NULL,NULL,NULL,'ASC','Page to show on the website\n',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,20,NULL,0,'Document','fa fa-file-alt',NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,0),('Webhook','2017-09-08 16:16:13.060641','2017-09-14 13:16:53.974340','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Webhook Data','2017-09-14 12:08:50.302810','2017-09-14 13:16:58.252176','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Webhook Header','2017-09-08 16:27:39.195379','2017-09-08 16:28:20.025612','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Integrations',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Website Script','2012-12-27 11:51:24.000000','2016-12-29 14:40:38.777912','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','Script to attach to all web pages.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other','fa fa-code',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Website Settings','2013-04-30 12:58:46.000000','2017-03-07 14:45:46.127265','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,'Other','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Website Sidebar','2016-12-29 07:48:06.319665','2016-12-29 07:50:05.633460','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Website',NULL,NULL,'field:title','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Website Sidebar Item','2016-12-29 07:42:26.246725','2016-12-29 07:42:26.246725','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Website',NULL,NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Website Slideshow','2013-03-07 15:53:15.000000','2017-10-05 18:56:20.094625','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,NULL,'field:slideshow_name',NULL,NULL,NULL,NULL,NULL,NULL,'Slideshow like display for the website',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,'Document','fa fa-play',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Website Slideshow Item','2013-03-07 12:26:33.000000','2016-07-11 03:28:09.983213','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Website Theme','2015-02-18 12:46:38.168929','2016-12-29 14:40:33.634557','Administrator','Administrator',0,NULL,NULL,NULL,0,'',0,0,0,1,'Website',NULL,NULL,'field:theme','','',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Workflow','2012-12-28 10:49:55.000000','2017-02-20 13:33:38.497751','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,NULL,'field:workflow_name',NULL,NULL,NULL,NULL,NULL,'ASC','Defines workflow states and rules for a document.',NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-random',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Workflow Action','2012-12-28 10:49:56.000000','2016-12-29 14:40:34.796187','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,NULL,'field:workflow_action_name',NULL,NULL,NULL,NULL,NULL,NULL,'Workflow Action Master',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-flag',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Workflow Document State','2013-02-22 01:27:36.000000','2016-07-11 03:28:10.056638','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Workflow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Represents the states allowed in one document and role assigned to change the state.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),('Workflow State','2012-12-28 10:49:56.000000','2017-02-20 13:33:44.011509','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,NULL,'field:workflow_state_name',NULL,NULL,NULL,NULL,NULL,'ASC','Workflow state represents the current state of a document.',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-flag',NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1),('Workflow Transition','2013-02-22 01:27:36.000000','2016-07-11 03:28:10.146195','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Workflow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Defines actions on states and the next step and allowed roles.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tabDocType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDomain`
--

DROP TABLE IF EXISTS `tabDomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDomain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDomain`
--

LOCK TABLES `tabDomain` WRITE;
/*!40000 ALTER TABLE `tabDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDynamic Link`
--

DROP TABLE IF EXISTS `tabDynamic Link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDynamic Link` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `link_title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `link_doctype_link_name_index` (`link_doctype`,`link_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDynamic Link`
--

LOCK TABLES `tabDynamic Link` WRITE;
/*!40000 ALTER TABLE `tabDynamic Link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDynamic Link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Account`
--

DROP TABLE IF EXISTS `tabEmail Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Account` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `default_outgoing` int(1) NOT NULL DEFAULT 0,
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unreplied_for_mins` int(11) NOT NULL DEFAULT 30,
  `use_imap` int(1) NOT NULL DEFAULT 0,
  `auto_reply_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_ssl` int(1) NOT NULL DEFAULT 0,
  `email_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_notification_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `always_use_account_email_id_as_sender` int(1) NOT NULL DEFAULT 0,
  `email_sync_option` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'UNSEEN',
  `default_incoming` int(1) NOT NULL DEFAULT 0,
  `password` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_failed` int(11) NOT NULL DEFAULT 0,
  `use_tls` int(1) NOT NULL DEFAULT 0,
  `enable_incoming` int(1) NOT NULL DEFAULT 0,
  `attachment_limit` int(11) NOT NULL DEFAULT 1,
  `awaiting_password` int(1) NOT NULL DEFAULT 0,
  `login_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initial_sync_count` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT '250',
  `enable_auto_reply` int(1) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_unsubscribe_message` int(1) NOT NULL DEFAULT 1,
  `enable_outgoing` int(1) NOT NULL DEFAULT 0,
  `add_signature` int(1) NOT NULL DEFAULT 0,
  `uidvalidity` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uidnext` int(11) NOT NULL DEFAULT 0,
  `login_id_is_different` int(1) NOT NULL DEFAULT 0,
  `no_remaining` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `append_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_if_unreplied` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Account`
--

LOCK TABLES `tabEmail Account` WRITE;
/*!40000 ALTER TABLE `tabEmail Account` DISABLE KEYS */;
INSERT INTO `tabEmail Account` VALUES ('Notifications','2018-09-23 18:40:48.167416','2018-09-23 18:40:48.167416','Administrator','Administrator',0,NULL,NULL,NULL,0,1,'example.com','notifications@example.com',30,0,NULL,0,'imap.example.com',NULL,0,'UNSEEN',0,NULL,'',NULL,NULL,'smtp.example.com',0,0,0,1,0,NULL,NULL,'250',0,NULL,1,0,0,NULL,NULL,'Notifications',NULL,0,0,NULL,NULL,NULL,0),('Replies','2018-09-23 18:40:48.177995','2018-09-23 18:40:48.177995','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'example.com','replies@example.com',30,0,NULL,0,'imap.example.com',NULL,0,'UNSEEN',1,NULL,'',NULL,NULL,'smtp.example.com',0,0,0,1,0,NULL,NULL,'250',0,NULL,1,0,0,NULL,NULL,'Replies',NULL,0,0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tabEmail Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Alert`
--

DROP TABLE IF EXISTS `tabEmail Alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Alert` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_in_advance` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach_print` int(1) NOT NULL DEFAULT 0,
  `date_changed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_property_after_alert` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_standard` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `sender_email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_changed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `event` (`event`),
  KEY `document_type` (`document_type`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Alert`
--

LOCK TABLES `tabEmail Alert` WRITE;
/*!40000 ALTER TABLE `tabEmail Alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Alert Recipient`
--

DROP TABLE IF EXISTS `tabEmail Alert Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Alert Recipient` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `cc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_by_role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_by_document_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Alert Recipient`
--

LOCK TABLES `tabEmail Alert Recipient` WRITE;
/*!40000 ALTER TABLE `tabEmail Alert Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Alert Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Domain`
--

DROP TABLE IF EXISTS `tabEmail Domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Domain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_tls` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_imap` int(1) NOT NULL DEFAULT 0,
  `attachment_limit` int(11) NOT NULL DEFAULT 1,
  `use_ssl` int(1) NOT NULL DEFAULT 0,
  `email_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `append_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Domain`
--

LOCK TABLES `tabEmail Domain` WRITE;
/*!40000 ALTER TABLE `tabEmail Domain` DISABLE KEYS */;
INSERT INTO `tabEmail Domain` VALUES ('example.com','2018-09-23 18:40:48.158303','2018-09-23 18:40:48.158303','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'account@example.com',NULL,NULL,'smtp.example.com','example.com',0,NULL,1,1,0,'imap.example.com',NULL,NULL);
/*!40000 ALTER TABLE `tabEmail Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Flag Queue`
--

DROP TABLE IF EXISTS `tabEmail Flag Queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Flag Queue` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_completed` int(1) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Flag Queue`
--

LOCK TABLES `tabEmail Flag Queue` WRITE;
/*!40000 ALTER TABLE `tabEmail Flag Queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Flag Queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Group`
--

DROP TABLE IF EXISTS `tabEmail Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Group` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_subscribers` int(11) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Group`
--

LOCK TABLES `tabEmail Group` WRITE;
/*!40000 ALTER TABLE `tabEmail Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Group Member`
--

DROP TABLE IF EXISTS `tabEmail Group Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Group Member` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique_email_group_email` (`email_group`,`email`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Group Member`
--

LOCK TABLES `tabEmail Group Member` WRITE;
/*!40000 ALTER TABLE `tabEmail Group Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Group Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Queue`
--

DROP TABLE IF EXISTS `tabEmail Queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Queue` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Not Sent',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_unsubscribe_link` int(1) NOT NULL DEFAULT 1,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expose_recipients` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 1,
  `send_after` datetime(6) DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_as_cc` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribe_method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribe_param` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `communication` (`communication`),
  KEY `message_id` (`message_id`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `index_bulk_flush` (`status`,`send_after`,`priority`,`creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Queue`
--

LOCK TABLES `tabEmail Queue` WRITE;
/*!40000 ALTER TABLE `tabEmail Queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Queue Recipient`
--

DROP TABLE IF EXISTS `tabEmail Queue Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Queue Recipient` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Not Sent',
  `recipient` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Queue Recipient`
--

LOCK TABLES `tabEmail Queue Recipient` WRITE;
/*!40000 ALTER TABLE `tabEmail Queue Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Queue Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Rule`
--

DROP TABLE IF EXISTS `tabEmail Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Rule` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_spam` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Rule`
--

LOCK TABLES `tabEmail Rule` WRITE;
/*!40000 ALTER TABLE `tabEmail Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Unsubscribe`
--

DROP TABLE IF EXISTS `tabEmail Unsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Unsubscribe` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global_unsubscribe` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Unsubscribe`
--

LOCK TABLES `tabEmail Unsubscribe` WRITE;
/*!40000 ALTER TABLE `tabEmail Unsubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Unsubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabError Log`
--

DROP TABLE IF EXISTS `tabError Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabError Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabError Log`
--

LOCK TABLES `tabError Log` WRITE;
/*!40000 ALTER TABLE `tabError Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabError Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabError Snapshot`
--

DROP TABLE IF EXISTS `tabError Snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabError Snapshot` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `exception` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `evalue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traceback` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_error_snapshot` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pyver` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frames` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relapses` int(11) NOT NULL DEFAULT 1,
  `locals` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabError Snapshot`
--

LOCK TABLES `tabError Snapshot` WRITE;
/*!40000 ALTER TABLE `tabError Snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabError Snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEvent`
--

DROP TABLE IF EXISTS `tabEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEvent` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `event_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday` int(1) NOT NULL DEFAULT 0,
  `all_day` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeat_till` date DEFAULT NULL,
  `saturday` int(1) NOT NULL DEFAULT 0,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeat_this_event` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday` int(1) NOT NULL DEFAULT 0,
  `sunday` int(1) NOT NULL DEFAULT 0,
  `send_reminder` int(1) NOT NULL DEFAULT 1,
  `ref_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` int(1) NOT NULL DEFAULT 0,
  `friday` int(1) NOT NULL DEFAULT 0,
  `wednesday` int(1) NOT NULL DEFAULT 0,
  `_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_on` datetime(6) DEFAULT NULL,
  `ends_on` datetime(6) DEFAULT NULL,
  `repeat_on` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `event_type` (`event_type`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEvent`
--

LOCK TABLES `tabEvent` WRITE;
/*!40000 ALTER TABLE `tabEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFeedback Request`
--

DROP TABLE IF EXISTS `tabFeedback Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFeedback Request` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_manual` int(1) NOT NULL DEFAULT 0,
  `feedback_trigger` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feedback_submitted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFeedback Request`
--

LOCK TABLES `tabFeedback Request` WRITE;
/*!40000 ALTER TABLE `tabFeedback Request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFeedback Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFeedback Trigger`
--

DROP TABLE IF EXISTS `tabFeedback Trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFeedback Trigger` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `check_communication` int(1) NOT NULL DEFAULT 1,
  `email_fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFeedback Trigger`
--

LOCK TABLES `tabFeedback Trigger` WRITE;
/*!40000 ALTER TABLE `tabFeedback Trigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFeedback Trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFile`
--

DROP TABLE IF EXISTS `tabFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFile` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `file_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_to_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` bigint(20) NOT NULL DEFAULT 0,
  `attached_to_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL DEFAULT 0,
  `is_attachments_folder` int(1) NOT NULL DEFAULT 0,
  `is_folder` int(1) NOT NULL DEFAULT 0,
  `content_hash` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home_folder` int(1) NOT NULL DEFAULT 0,
  `folder` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_to_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` int(1) NOT NULL DEFAULT 0,
  `old_parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `attached_to_name` (`attached_to_name`),
  KEY `attached_to_doctype` (`attached_to_doctype`),
  KEY `attached_to_doctype_attached_to_name_index` (`attached_to_doctype`,`attached_to_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFile`
--

LOCK TABLES `tabFile` WRITE;
/*!40000 ALTER TABLE `tabFile` DISABLE KEYS */;
INSERT INTO `tabFile` VALUES ('Home','2018-09-23 18:40:48.211594','2018-09-23 18:40:48.224163','Administrator','Administrator',0,NULL,NULL,NULL,0,'Home',NULL,NULL,NULL,0,NULL,1,0,1,NULL,4,NULL,1,NULL,NULL,NULL,NULL,NULL,0,'',NULL),('Home/Attachments','2018-09-23 18:40:48.219568','2018-09-23 18:40:48.224163','Administrator','Administrator',0,NULL,NULL,NULL,0,'Attachments',NULL,NULL,NULL,0,NULL,2,1,1,NULL,3,NULL,0,'Home',NULL,NULL,NULL,NULL,0,'Home',NULL);
/*!40000 ALTER TABLE `tabFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFooter Item`
--

DROP TABLE IF EXISTS `tabFooter Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFooter Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFooter Item`
--

LOCK TABLES `tabFooter Item` WRITE;
/*!40000 ALTER TABLE `tabFooter Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFooter Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGSuite Templates`
--

DROP TABLE IF EXISTS `tabGSuite Templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGSuite Templates` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'New Document for {name} ',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGSuite Templates`
--

LOCK TABLES `tabGSuite Templates` WRITE;
/*!40000 ALTER TABLE `tabGSuite Templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabGSuite Templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGender`
--

DROP TABLE IF EXISTS `tabGender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGender` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGender`
--

LOCK TABLES `tabGender` WRITE;
/*!40000 ALTER TABLE `tabGender` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabGender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHas Domain`
--

DROP TABLE IF EXISTS `tabHas Domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHas Domain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHas Domain`
--

LOCK TABLES `tabHas Domain` WRITE;
/*!40000 ALTER TABLE `tabHas Domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHas Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHas Role`
--

DROP TABLE IF EXISTS `tabHas Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHas Role` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHas Role`
--

LOCK TABLES `tabHas Role` WRITE;
/*!40000 ALTER TABLE `tabHas Role` DISABLE KEYS */;
INSERT INTO `tabHas Role` VALUES ('079c2157fb','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',20,'Purchase Master Manager'),('11e069cb06','2013-02-25 14:26:30.000000','2018-09-23 18:40:43.857845','Administrator','Administrator',0,'ToDo','roles','Report',1,'System Manager'),('146276fc56','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',19,'Accounts Manager'),('19659d68ba','2017-01-19 12:57:22.881566','2018-09-23 18:40:45.405359','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',4,'Accounts User'),('1db0f7e2e3','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',6,'Website Manager'),('2449151b1b','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',17,'Sales Master Manager'),('2802f94e75','2013-04-09 11:45:31.000000','2018-09-23 18:40:43.808728','Administrator','Administrator',0,'activity','roles','Page',1,'All'),('29cf228941','2013-01-01 11:00:01.000000','2018-09-23 18:40:40.616316','Administrator','Administrator',0,'permission-manager','roles','Page',1,'System Manager'),('3719930894','2017-01-19 12:57:22.881566','2018-09-23 18:40:45.405359','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',1,'Sales User'),('3c6c011842','2018-09-23 18:40:47.925638','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',2,'System Manager'),('4233449de4','2017-01-19 12:57:22.881566','2018-09-23 18:40:45.405359','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',3,'Maintenance User'),('44beb493e0','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',4,'Guest'),('4d570ce655','2015-01-27 04:35:43.872918','2018-09-23 18:40:45.031111','Administrator','Administrator',0,'print-format-builder','roles','Page',1,'System Manager'),('505f4b9f3e','2014-06-03 05:20:35.218263','2018-09-23 18:40:40.672434','Administrator','Administrator',0,'Permitted Documents For User','roles','Report',1,'System Manager'),('679db580ab','2013-02-14 17:37:37.000000','2018-09-23 18:40:40.598193','Administrator','Administrator',0,'desktop','roles','Page',1,'All'),('6c2e440857','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',1,'Administrator'),('6fa4015792','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',5,'Report Manager'),('867401de2a','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',11,'Sales User'),('89f39d73a8','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',7,'Blogger'),('8b5a2ccb76','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',8,'Knowledge Base Contributor'),('8fc883e059','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',3,'All'),('9536216575','2015-02-05 06:01:35.060098','2018-09-23 18:40:40.664336','Administrator','Administrator',0,'Document Share Report','roles','Report',1,'System Manager'),('9a7916d4e2','2018-09-23 18:40:48.033140','2018-09-23 18:40:48.033140','Administrator','Administrator',0,'Guest','roles','User',1,'Guest'),('a294a2cfb6','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',14,'Maintenance User'),('a732b9e424','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',18,'Sales Manager'),('abfff0f5d2','2016-08-18 16:44:14.322642','2018-09-23 18:40:40.609478','Administrator','Administrator',0,'background_jobs','roles','Page',1,'System Manager'),('ae3f175537','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',15,'Purchase Manager'),('bb68c2011d','2013-10-04 13:49:33.000000','2018-09-23 18:40:43.814326','Administrator','Administrator',0,'setup-wizard','roles','Page',1,'System Manager'),('bc4127ac54','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',16,'Maintenance Manager'),('bd411f4779','2017-01-19 12:57:22.881566','2018-09-23 18:40:45.405359','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',2,'Purchase User'),('c1da951a11','2016-06-02 18:14:53.475842','2018-09-23 18:40:40.624752','Administrator','Administrator',0,'usage-info','roles','Page',1,'System Manager'),('c3cdb7170f','2012-06-14 18:44:56.000000','2018-09-23 18:40:43.842881','Administrator','Administrator',0,'chat','roles','Page',1,'All'),('c3d3ac1d4f','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',9,'Knowledge Base Editor'),('c50f08771f','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',13,'Purchase User'),('c8893854b9','2017-02-05 20:38:21.890174','2018-09-23 18:40:40.680824','Administrator','Administrator',0,'Feedback Ratings','roles','Report',1,'System Manager'),('e610ef0e21','2013-12-23 11:01:52.000000','2018-09-23 18:40:43.825040','Administrator','Administrator',0,'applications','roles','Page',1,'System Manager'),('ec5237ab02','2015-09-24 01:26:06.225378','2018-09-23 18:40:43.849761','Administrator','Administrator',0,'backups','roles','Page',1,'System Manager'),('f5324ae2f8','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',10,'Newsletter Manager'),('ff6262645f','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,'Administrator','roles','User',12,'Accounts User');
/*!40000 ALTER TABLE `tabHas Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHelp Article`
--

DROP TABLE IF EXISTS `tabHelp Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHelp Article` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `category` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'user_fullname',
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `level` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHelp Article`
--

LOCK TABLES `tabHelp Article` WRITE;
/*!40000 ALTER TABLE `tabHelp Article` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHelp Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHelp Category`
--

DROP TABLE IF EXISTS `tabHelp Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHelp Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_articles` int(11) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHelp Category`
--

LOCK TABLES `tabHelp Category` WRITE;
/*!40000 ALTER TABLE `tabHelp Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHelp Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabIntegration Request`
--

DROP TABLE IF EXISTS `tabIntegration Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabIntegration Request` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Queued',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integration_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integration_request_service` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_docname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `output` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabIntegration Request`
--

LOCK TABLES `tabIntegration Request` WRITE;
/*!40000 ALTER TABLE `tabIntegration Request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabIntegration Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabKanban Board`
--

DROP TABLE IF EXISTS `tabKanban Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabKanban Board` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private` int(1) NOT NULL DEFAULT 0,
  `filters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kanban_board_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `kanban_board_name` (`kanban_board_name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabKanban Board`
--

LOCK TABLES `tabKanban Board` WRITE;
/*!40000 ALTER TABLE `tabKanban Board` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabKanban Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabKanban Board Column`
--

DROP TABLE IF EXISTS `tabKanban Board Column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabKanban Board Column` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `indicator` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'darkgrey',
  `order` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabKanban Board Column`
--

LOCK TABLES `tabKanban Board Column` WRITE;
/*!40000 ALTER TABLE `tabKanban Board Column` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabKanban Board Column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLanguage`
--

DROP TABLE IF EXISTS `tabLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLanguage` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `based_on` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLanguage`
--

LOCK TABLES `tabLanguage` WRITE;
/*!40000 ALTER TABLE `tabLanguage` DISABLE KEYS */;
INSERT INTO `tabLanguage` VALUES ('af','2018-09-23 18:40:48.761583','2018-09-23 18:40:48.761583','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'af','Afrikaans',NULL),('am','2018-09-23 18:40:48.764672','2018-09-23 18:40:48.764672','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'am','አማርኛ',NULL),('ar','2018-09-23 18:40:48.767647','2018-09-23 18:40:48.767647','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ar','العربية',NULL),('bg','2018-09-23 18:40:48.770792','2018-09-23 18:40:48.770792','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'bg','Bǎlgarski',NULL),('bn','2018-09-23 18:40:48.773300','2018-09-23 18:40:48.773300','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'bn','বাঙালি',NULL),('bo','2018-09-23 18:40:48.775635','2018-09-23 18:40:48.775635','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'bo','ལྷ་སའི་སྐད་',NULL),('bs','2018-09-23 18:40:48.777840','2018-09-23 18:40:48.777840','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'bs','Bosanski',NULL),('ca','2018-09-23 18:40:48.780256','2018-09-23 18:40:48.780256','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ca','Català',NULL),('cs','2018-09-23 18:40:48.782647','2018-09-23 18:40:48.782647','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'cs','česky',NULL),('da','2018-09-23 18:40:48.784802','2018-09-23 18:40:48.784802','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'da','Dansk',NULL),('da-DK','2018-09-23 18:40:48.786736','2018-09-23 18:40:48.786736','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'da-DK','Dansk (Danmark)',NULL),('de','2018-09-23 18:40:48.788412','2018-09-23 18:40:48.788412','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'de','Deutsch',NULL),('el','2018-09-23 18:40:48.790214','2018-09-23 18:40:48.790214','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'el','ελληνικά',NULL),('en','2018-09-23 18:40:48.792020','2018-09-23 18:40:48.792020','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'en','English',NULL),('en-GB','2018-09-23 18:40:48.793926','2018-09-23 18:40:48.793926','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'en-GB','English (United Kingdom)',NULL),('en-US','2018-09-23 18:40:48.795785','2018-09-23 18:40:48.795785','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'en-US','English (United States)',NULL),('es','2018-09-23 18:40:48.797684','2018-09-23 18:40:48.797684','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es','Español',NULL),('es-AR','2018-09-23 18:40:48.799691','2018-09-23 18:40:48.799691','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-AR','Español (Argentina)',NULL),('es-BO','2018-09-23 18:40:48.801563','2018-09-23 18:40:48.801563','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-BO','Español (Bolivia)',NULL),('es-CL','2018-09-23 18:40:48.803605','2018-09-23 18:40:48.803605','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-CL','Español (Chile)',NULL),('es-CO','2018-09-23 18:40:48.805527','2018-09-23 18:40:48.805527','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-CO','Español (Colombia)',NULL),('es-DO','2018-09-23 18:40:48.807400','2018-09-23 18:40:48.807400','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-DO','Español (República Dominicana)',NULL),('es-EC','2018-09-23 18:40:48.809252','2018-09-23 18:40:48.809252','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-EC','Español (Ecuador)',NULL),('es-GT','2018-09-23 18:40:48.811177','2018-09-23 18:40:48.811177','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-GT','Español (Guatemala)',NULL),('es-MX','2018-09-23 18:40:48.813004','2018-09-23 18:40:48.813004','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-MX','Español (México)',NULL),('es-NI','2018-09-23 18:40:48.814764','2018-09-23 18:40:48.814764','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-NI','Español (Nicaragua)',NULL),('es-PE','2018-09-23 18:40:48.816420','2018-09-23 18:40:48.816420','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'es-PE','Español (Perú)',NULL),('et','2018-09-23 18:40:48.818307','2018-09-23 18:40:48.818307','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'et','Eesti',NULL),('fa','2018-09-23 18:40:48.820093','2018-09-23 18:40:48.820093','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'fa','پارسی',NULL),('fi','2018-09-23 18:40:48.821882','2018-09-23 18:40:48.821882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'fi','Suomi',NULL),('fr','2018-09-23 18:40:48.823934','2018-09-23 18:40:48.823934','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'fr','Français',NULL),('fr-CA','2018-09-23 18:40:48.825672','2018-09-23 18:40:48.825672','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'fr-CA','Français Canadien',NULL),('gu','2018-09-23 18:40:48.827454','2018-09-23 18:40:48.827454','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'gu','ગુજરાતી',NULL),('he','2018-09-23 18:40:48.829264','2018-09-23 18:40:48.829264','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'he','עברית',NULL),('hi','2018-09-23 18:40:48.831297','2018-09-23 18:40:48.831297','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'hi','हिंदी',NULL),('hr','2018-09-23 18:40:48.833065','2018-09-23 18:40:48.833065','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'hr','Hrvatski',NULL),('hu','2018-09-23 18:40:48.835010','2018-09-23 18:40:48.835010','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'hu','Magyar',NULL),('id','2018-09-23 18:40:48.836822','2018-09-23 18:40:48.836822','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'id','Indonesia',NULL),('is','2018-09-23 18:40:48.838450','2018-09-23 18:40:48.838450','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'is','íslenska',NULL),('it','2018-09-23 18:40:48.840210','2018-09-23 18:40:48.840210','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'it','Italiano',NULL),('ja','2018-09-23 18:40:48.842154','2018-09-23 18:40:48.842154','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ja','日本語',NULL),('km','2018-09-23 18:40:48.843921','2018-09-23 18:40:48.843921','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'km','ភាសាខ្មែរ',NULL),('kn','2018-09-23 18:40:48.845690','2018-09-23 18:40:48.845690','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'kn','ಕನ್ನಡ',NULL),('ko','2018-09-23 18:40:48.847306','2018-09-23 18:40:48.847306','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ko','한국의',NULL),('ku','2018-09-23 18:40:48.848869','2018-09-23 18:40:48.848869','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ku','کوردی',NULL),('lo','2018-09-23 18:40:48.850419','2018-09-23 18:40:48.850419','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'lo','ລາວ',NULL),('lt','2018-09-23 18:40:48.851977','2018-09-23 18:40:48.851977','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'lt','Lietuvių kalba',NULL),('lv','2018-09-23 18:40:48.853693','2018-09-23 18:40:48.853693','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'lv','Latviešu valoda',NULL),('mk','2018-09-23 18:40:48.855374','2018-09-23 18:40:48.855374','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'mk','македонски',NULL),('ml','2018-09-23 18:40:48.857109','2018-09-23 18:40:48.857109','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ml','മലയാളം',NULL),('mr','2018-09-23 18:40:48.858829','2018-09-23 18:40:48.858829','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'mr','मराठी',NULL),('ms','2018-09-23 18:40:48.860600','2018-09-23 18:40:48.860600','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ms','Melayu',NULL),('my','2018-09-23 18:40:48.862788','2018-09-23 18:40:48.862788','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'my','မြန်မာ',NULL),('nl','2018-09-23 18:40:48.864491','2018-09-23 18:40:48.864491','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'nl','Nederlands',NULL),('no','2018-09-23 18:40:48.866364','2018-09-23 18:40:48.866364','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'no','Norsk',NULL),('pl','2018-09-23 18:40:48.868412','2018-09-23 18:40:48.868412','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'pl','Polski',NULL),('ps','2018-09-23 18:40:48.870258','2018-09-23 18:40:48.870258','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ps','پښتو',NULL),('pt','2018-09-23 18:40:48.871998','2018-09-23 18:40:48.871998','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'pt','Português',NULL),('pt-BR','2018-09-23 18:40:48.874037','2018-09-23 18:40:48.874037','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'pt-BR','Português Brasileiro',NULL),('ro','2018-09-23 18:40:48.876204','2018-09-23 18:40:48.876204','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ro','Român',NULL),('ru','2018-09-23 18:40:48.878057','2018-09-23 18:40:48.878057','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ru','русский',NULL),('rw','2018-09-23 18:40:48.879901','2018-09-23 18:40:48.879901','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'rw','Kinyarwanda',NULL),('si','2018-09-23 18:40:48.881833','2018-09-23 18:40:48.881833','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'si','සිංහල',NULL),('sk','2018-09-23 18:40:48.883679','2018-09-23 18:40:48.883679','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sk','Slovenčina (Slovak)',NULL),('sl','2018-09-23 18:40:48.885954','2018-09-23 18:40:48.885954','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sl','Slovenščina (Slovene)',NULL),('sq','2018-09-23 18:40:48.887937','2018-09-23 18:40:48.887937','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sq','Shqiptar',NULL),('sr','2018-09-23 18:40:48.890590','2018-09-23 18:40:48.890590','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sr','српски',NULL),('sr-SP','2018-09-23 18:40:48.893346','2018-09-23 18:40:48.893346','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sr-SP','Srpski',NULL),('sv','2018-09-23 18:40:48.895393','2018-09-23 18:40:48.895393','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sv','Svenska',NULL),('sw','2018-09-23 18:40:48.897298','2018-09-23 18:40:48.897298','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'sw','Swahili',NULL),('ta','2018-09-23 18:40:48.899165','2018-09-23 18:40:48.899165','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ta','தமிழ்',NULL),('te','2018-09-23 18:40:48.901034','2018-09-23 18:40:48.901034','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'te','తెలుగు',NULL),('th','2018-09-23 18:40:48.902877','2018-09-23 18:40:48.902877','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'th','ไทย',NULL),('tr','2018-09-23 18:40:48.904698','2018-09-23 18:40:48.904698','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'tr','Türk',NULL),('uk','2018-09-23 18:40:48.906549','2018-09-23 18:40:48.906549','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'uk','українська',NULL),('ur','2018-09-23 18:40:48.908413','2018-09-23 18:40:48.908413','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ur','اردو',NULL),('uz','2018-09-23 18:40:48.910253','2018-09-23 18:40:48.910253','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'uz','Ўзбек',NULL),('vi','2018-09-23 18:40:48.912011','2018-09-23 18:40:48.912011','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'vi','Việt',NULL),('zh','2018-09-23 18:40:48.913794','2018-09-23 18:40:48.913794','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'zh','简体中文',NULL),('zh-TW','2018-09-23 18:40:48.915750','2018-09-23 18:40:48.915750','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'zh-TW','繁體中文',NULL);
/*!40000 ALTER TABLE `tabLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLetter Head`
--

DROP TABLE IF EXISTS `tabLetter Head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLetter Head` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letter_head_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `is_default` (`is_default`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLetter Head`
--

LOCK TABLES `tabLetter Head` WRITE;
/*!40000 ALTER TABLE `tabLetter Head` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLetter Head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabModule Def`
--

DROP TABLE IF EXISTS `tabModule Def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabModule Def` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabModule Def`
--

LOCK TABLES `tabModule Def` WRITE;
/*!40000 ALTER TABLE `tabModule Def` DISABLE KEYS */;
INSERT INTO `tabModule Def` VALUES ('Contacts','2018-09-23 18:40:45.108485','2018-09-23 18:40:45.108485','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Contacts',NULL),('Core','2018-09-23 18:40:39.028748','2018-09-23 18:40:39.028748','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Core',NULL),('Custom','2018-09-23 18:40:43.125312','2018-09-23 18:40:43.125312','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Custom',NULL),('Data Migration','2018-09-23 18:40:45.440143','2018-09-23 18:40:45.440143','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Data Migration',NULL),('Desk','2018-09-23 18:40:43.416381','2018-09-23 18:40:43.416381','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Desk',NULL),('Email','2018-09-23 18:40:42.038209','2018-09-23 18:40:42.038209','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Email',NULL),('Geo','2018-09-23 18:40:43.280868','2018-09-23 18:40:43.280868','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Geo',NULL),('Integrations','2018-09-23 18:40:43.896784','2018-09-23 18:40:43.896784','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Integrations',NULL),('Printing','2018-09-23 18:40:44.792200','2018-09-23 18:40:44.792200','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Printing',NULL),('Website','2018-09-23 18:40:40.813127','2018-09-23 18:40:40.813127','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Website',NULL),('Workflow','2018-09-23 18:40:41.850161','2018-09-23 18:40:41.850161','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Workflow',NULL);
/*!40000 ALTER TABLE `tabModule Def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNewsletter`
--

DROP TABLE IF EXISTS `tabNewsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNewsletter` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `send_unsubscribe_link` int(1) NOT NULL DEFAULT 1,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_attachements` int(1) NOT NULL DEFAULT 0,
  `send_from` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_to_send` int(11) NOT NULL DEFAULT 0,
  `email_sent` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNewsletter`
--

LOCK TABLES `tabNewsletter` WRITE;
/*!40000 ALTER TABLE `tabNewsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNewsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNewsletter Email Group`
--

DROP TABLE IF EXISTS `tabNewsletter Email Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNewsletter Email Group` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `total_subscribers` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNewsletter Email Group`
--

LOCK TABLES `tabNewsletter Email Group` WRITE;
/*!40000 ALTER TABLE `tabNewsletter Email Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNewsletter Email Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote`
--

DROP TABLE IF EXISTS `tabNote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_notification_on` date DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_on_every_login` int(1) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_on_login` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `expire_notification_on` (`expire_notification_on`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote`
--

LOCK TABLES `tabNote` WRITE;
/*!40000 ALTER TABLE `tabNote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote Seen By`
--

DROP TABLE IF EXISTS `tabNote Seen By`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote Seen By` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote Seen By`
--

LOCK TABLES `tabNote Seen By` WRITE;
/*!40000 ALTER TABLE `tabNote Seen By` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote Seen By` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Authorization Code`
--

DROP TABLE IF EXISTS `tabOAuth Authorization Code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Authorization Code` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `redirect_uri_bound_to_authorization_code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_time` datetime(6) DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Authorization Code`
--

LOCK TABLES `tabOAuth Authorization Code` WRITE;
/*!40000 ALTER TABLE `tabOAuth Authorization Code` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Authorization Code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Bearer Token`
--

DROP TABLE IF EXISTS `tabOAuth Bearer Token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Bearer Token` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_in` int(11) NOT NULL DEFAULT 0,
  `client` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_time` datetime(6) DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Bearer Token`
--

LOCK TABLES `tabOAuth Bearer Token` WRITE;
/*!40000 ALTER TABLE `tabOAuth Bearer Token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Bearer Token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Client`
--

DROP TABLE IF EXISTS `tabOAuth Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Client` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_redirect_uri` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_uris` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skip_authorization` int(1) NOT NULL DEFAULT 0,
  `grant_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Code',
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Client`
--

LOCK TABLES `tabOAuth Client` WRITE;
/*!40000 ALTER TABLE `tabOAuth Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPage`
--

DROP TABLE IF EXISTS `tabPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPage` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `system_page` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `standard` (`standard`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPage`
--

LOCK TABLES `tabPage` WRITE;
/*!40000 ALTER TABLE `tabPage` DISABLE KEYS */;
INSERT INTO `tabPage` VALUES ('activity','2013-04-09 11:45:31.000000','2013-07-11 14:40:20.000001','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Activity',NULL,NULL,NULL,'Desk','Yes','activity',NULL,'fa fa-play'),('applications','2013-12-23 11:01:52.000000','2015-11-18 06:20:09.586810','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'App Installer',NULL,NULL,NULL,'Desk','Yes','applications',NULL,'fa fa-magic'),('background_jobs','2016-08-18 16:44:14.322642','2016-08-18 16:48:11.577611','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Background Jobs',NULL,NULL,NULL,'Core','Yes','background_jobs',NULL,NULL),('backups','2015-09-24 01:26:06.225378','2015-09-24 01:26:06.225378','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Download Backups',NULL,NULL,NULL,'Desk','Yes','backups',NULL,NULL),('chat','2012-06-14 18:44:56.000000','2016-03-31 02:02:13.503910','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Chat',NULL,NULL,NULL,'Desk','Yes','chat',NULL,''),('desktop','2013-02-14 17:37:37.000000','2013-07-11 14:41:56.000000','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Desktop',NULL,NULL,NULL,'Core','Yes','desktop',NULL,'fa fa-th'),('modules','2016-03-07 04:46:00.420330','2016-03-07 04:46:00.420330','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Modules',NULL,NULL,NULL,'Desk','Yes','modules',NULL,NULL),('modules_setup','2012-10-04 18:45:29.000000','2017-04-12 18:44:53.283640','Administrator','Administrator',0,NULL,NULL,NULL,1,1,NULL,'Modules Setup',NULL,NULL,NULL,'Core','Yes','modules_setup',NULL,'fa fa-cog'),('permission-manager','2013-01-01 11:00:01.000000','2013-07-11 14:43:43.000000','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Role Permissions Manager',NULL,NULL,NULL,'Core','Yes','permission-manager',NULL,'fa fa-lock'),('print-format-builder','2015-01-27 04:35:43.872918','2017-05-03 05:59:33.702308','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Print Format Builder',NULL,NULL,NULL,'Printing','Yes','print-format-builder',NULL,NULL),('setup-wizard','2013-10-04 13:49:33.000000','2017-04-12 18:45:00.774654','Administrator','Administrator',0,NULL,NULL,NULL,1,1,NULL,'Setup Wizard',NULL,NULL,NULL,'Desk','Yes','setup-wizard',NULL,NULL),('usage-info','2016-06-02 18:14:53.475842','2016-06-02 18:14:53.475842','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Usage Info',NULL,NULL,NULL,'Core','Yes','usage-info',NULL,NULL);
/*!40000 ALTER TABLE `tabPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPatch Log`
--

DROP TABLE IF EXISTS `tabPatch Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPatch Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patch` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPatch Log`
--

LOCK TABLES `tabPatch Log` WRITE;
/*!40000 ALTER TABLE `tabPatch Log` DISABLE KEYS */;
INSERT INTO `tabPatch Log` VALUES ('PATCHLOG00001','2018-09-23 18:40:47.164993','2018-09-23 18:40:47.164993','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabPatch Log` set patch=replace(patch, \'.4_0.\', \'.v4_0.\')\"\"\") #2014-05-12'),('PATCHLOG00002','2018-09-23 18:40:47.169596','2018-09-23 18:40:47.169596','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.convert_to_barracuda_and_utf8mb4'),('PATCHLOG00003','2018-09-23 18:40:47.171693','2018-09-23 18:40:47.171693','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.utils.global_search.setup_global_search_table()'),('PATCHLOG00004','2018-09-23 18:40:47.173788','2018-09-23 18:40:47.173788','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_global_search_table'),('PATCHLOG00005','2018-09-23 18:40:47.175683','2018-09-23 18:40:47.175683','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_auth'),('PATCHLOG00006','2018-09-23 18:40:47.177478','2018-09-23 18:40:47.177478','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_in_dialog #2017-09-22'),('PATCHLOG00007','2018-09-23 18:40:47.179325','2018-09-23 18:40:47.179325','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.remove_in_filter'),('PATCHLOG00008','2018-09-23 18:40:47.181153','2018-09-23 18:40:47.181153','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'doctype\', force=True) #2017-09-22'),('PATCHLOG00009','2018-09-23 18:40:47.183035','2018-09-23 18:40:47.183035','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'docfield\', force=True) #2017-03-03'),('PATCHLOG00010','2018-09-23 18:40:47.184939','2018-09-23 18:40:47.184939','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'docperm\') #2017-03-03'),('PATCHLOG00011','2018-09-23 18:40:47.186752','2018-09-23 18:40:47.186752','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_is_custom_from_docperm'),('PATCHLOG00012','2018-09-23 18:40:47.188739','2018-09-23 18:40:47.188739','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'module_def\') #2017-09-22'),('PATCHLOG00013','2018-09-23 18:40:47.190577','2018-09-23 18:40:47.190577','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'version\') #2017-04-01'),('PATCHLOG00014','2018-09-23 18:40:47.192560','2018-09-23 18:40:47.192560','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'activity_log\')'),('PATCHLOG00015','2018-09-23 18:40:47.194929','2018-09-23 18:40:47.194929','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_scheduler_log_to_error_log'),('PATCHLOG00016','2018-09-23 18:40:47.196802','2018-09-23 18:40:47.196802','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_1.rename_file_data'),('PATCHLOG00017','2018-09-23 18:40:47.198650','2018-09-23 18:40:47.198650','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.re_route #2016-06-27'),('PATCHLOG00018','2018-09-23 18:40:47.200475','2018-09-23 18:40:47.200475','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_records_in_global_search #11-05-2017'),('PATCHLOG00019','2018-09-23 18:40:47.202237','2018-09-23 18:40:47.202237','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_published_in_global_search'),('PATCHLOG00020','2018-09-23 18:40:47.204080','2018-09-23 18:40:47.204080','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'custom_docperm\')'),('PATCHLOG00021','2018-09-23 18:40:47.205884','2018-09-23 18:40:47.205884','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'deleted_document\')'),('PATCHLOG00022','2018-09-23 18:40:47.207726','2018-09-23 18:40:47.207726','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'domain_settings\')'),('PATCHLOG00023','2018-09-23 18:40:47.209608','2018-09-23 18:40:47.209608','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_page_role_to_has_role #2017-03-16'),('PATCHLOG00024','2018-09-23 18:40:47.211422','2018-09-23 18:40:47.211422','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.setup_custom_perms #2017-01-19'),('PATCHLOG00025','2018-09-23 18:40:47.213352','2018-09-23 18:40:47.213352','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_user_permission_for_page_and_report #2017-03-20'),('PATCHLOG00026','2018-09-23 18:40:47.215119','2018-09-23 18:40:47.215119','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'role\') #2017-05-23'),('PATCHLOG00027','2018-09-23 18:40:47.216964','2018-09-23 18:40:47.216964','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'user\') #2017-10-27'),('PATCHLOG00028','2018-09-23 18:40:47.219233','2018-09-23 18:40:47.219233','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'custom\', \'doctype\', \'custom_field\') #2015-10-19'),('PATCHLOG00029','2018-09-23 18:40:47.221307','2018-09-23 18:40:47.221307','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'page\') #2013-13-26'),('PATCHLOG00030','2018-09-23 18:40:47.223239','2018-09-23 18:40:47.223239','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'report\') #2014-06-03'),('PATCHLOG00031','2018-09-23 18:40:47.225064','2018-09-23 18:40:47.225064','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'translation\') #2016-03-03'),('PATCHLOG00032','2018-09-23 18:40:47.226898','2018-09-23 18:40:47.226898','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'email\', \'doctype\', \'email_alert\') #2014-07-15'),('PATCHLOG00033','2018-09-23 18:40:47.228794','2018-09-23 18:40:47.228794','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'desk\', \'doctype\', \'todo\') #2014-12-31-1'),('PATCHLOG00034','2018-09-23 18:40:47.230857','2018-09-23 18:40:47.230857','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'custom\', \'doctype\', \'property_setter\') #2014-12-31-1'),('PATCHLOG00035','2018-09-23 18:40:47.232758','2018-09-23 18:40:47.232758','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'patch_log\') #2016-10-31'),('PATCHLOG00036','2018-09-23 18:40:47.234699','2018-09-23 18:40:47.234699','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doctype(\"File\") # 2015-10-19'),('PATCHLOG00037','2018-09-23 18:40:47.236592','2018-09-23 18:40:47.236592','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'error_snapshot\')'),('PATCHLOG00038','2018-09-23 18:40:47.238498','2018-09-23 18:40:47.238498','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.clear_cache()'),('PATCHLOG00039','2018-09-23 18:40:47.240563','2018-09-23 18:40:47.240563','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_scheduler_log_to_error_log'),('PATCHLOG00040','2018-09-23 18:40:47.242580','2018-09-23 18:40:47.242580','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.sync_language_doctype'),('PATCHLOG00041','2018-09-23 18:40:47.244566','2018-09-23 18:40:47.244566','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.rename_bulk_email_to_email_queue'),('PATCHLOG00042','2018-09-23 18:40:47.246510','2018-09-23 18:40:47.246510','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_chinese_language_codes'),('PATCHLOG00043','2018-09-23 18:40:47.248353','2018-09-23 18:40:47.248353','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"alter table `tabSessions` modify `user` varchar(255), engine=InnoDB\")'),('PATCHLOG00044','2018-09-23 18:40:47.250272','2018-09-23 18:40:47.250272','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabDocField` where parent=\'0\'\")'),('PATCHLOG00045','2018-09-23 18:40:47.252437','2018-09-23 18:40:47.252437','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.change_varchar_length'),('PATCHLOG00046','2018-09-23 18:40:47.254651','2018-09-23 18:40:47.254651','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_4.reduce_varchar_length'),('PATCHLOG00047','2018-09-23 18:40:47.256523','2018-09-23 18:40:47.256523','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_2.change_checks_to_not_null'),('PATCHLOG00048','2018-09-23 18:40:47.258309','2018-09-23 18:40:47.258309','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_9.int_float_not_null #2015-11-25'),('PATCHLOG00049','2018-09-23 18:40:47.260151','2018-09-23 18:40:47.260151','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.v4_to_v5'),('PATCHLOG00050','2018-09-23 18:40:47.262071','2018-09-23 18:40:47.262071','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.remove_shopping_cart_app'),('PATCHLOG00051','2018-09-23 18:40:47.263940','2018-09-23 18:40:47.263940','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.webnotes_to_frappe'),('PATCHLOG00052','2018-09-23 18:40:47.265792','2018-09-23 18:40:47.265792','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Module Def\")'),('PATCHLOG00053','2018-09-23 18:40:47.267583','2018-09-23 18:40:47.267583','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:import frappe.installer;frappe.installer.make_site_dirs() #2014-02-19'),('PATCHLOG00054','2018-09-23 18:40:47.269514','2018-09-23 18:40:47.269514','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.rename_profile_to_user'),('PATCHLOG00055','2018-09-23 18:40:47.271379','2018-09-23 18:40:47.271379','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.deprecate_control_panel'),('PATCHLOG00056','2018-09-23 18:40:47.273496','2018-09-23 18:40:47.273496','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_old_parent'),('PATCHLOG00057','2018-09-23 18:40:47.275554','2018-09-23 18:40:47.275554','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.rename_sitemap_to_route'),('PATCHLOG00058','2018-09-23 18:40:47.278037','2018-09-23 18:40:47.278037','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.website_sitemap_hierarchy'),('PATCHLOG00059','2018-09-23 18:40:47.279959','2018-09-23 18:40:47.279959','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_index_sitemap'),('PATCHLOG00060','2018-09-23 18:40:47.281997','2018-09-23 18:40:47.281997','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_website_route_idx'),('PATCHLOG00061','2018-09-23 18:40:47.284230','2018-09-23 18:40:47.284230','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.add_delete_permission'),('PATCHLOG00062','2018-09-23 18:40:47.286709','2018-09-23 18:40:47.286709','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_todo_checked_as_closed'),('PATCHLOG00063','2018-09-23 18:40:47.289245','2018-09-23 18:40:47.289245','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.private_backups'),('PATCHLOG00064','2018-09-23 18:40:47.291910','2018-09-23 18:40:47.291910','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_module_in_report'),('PATCHLOG00065','2018-09-23 18:40:47.294702','2018-09-23 18:40:47.294702','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.update_datetime'),('PATCHLOG00066','2018-09-23 18:40:47.297295','2018-09-23 18:40:47.297295','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.file_manager_hooks'),('PATCHLOG00067','2018-09-23 18:40:47.299914','2018-09-23 18:40:47.299914','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.get_doc(\"User\", \"Guest\").save()'),('PATCHLOG00068','2018-09-23 18:40:47.302606','2018-09-23 18:40:47.302606','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.update_custom_field_insert_after'),('PATCHLOG00069','2018-09-23 18:40:47.305388','2018-09-23 18:40:47.305388','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.deprecate_link_selects'),('PATCHLOG00070','2018-09-23 18:40:47.308090','2018-09-23 18:40:47.308090','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_user_gravatar'),('PATCHLOG00071','2018-09-23 18:40:47.310830','2018-09-23 18:40:47.310830','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_user_permissions'),('PATCHLOG00072','2018-09-23 18:40:47.313704','2018-09-23 18:40:47.313704','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.create_custom_field_for_owner_match'),('PATCHLOG00073','2018-09-23 18:40:47.325297','2018-09-23 18:40:47.325297','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.enable_scheduler_in_system_settings'),('PATCHLOG00074','2018-09-23 18:40:47.339786','2018-09-23 18:40:47.339786','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabReport set apply_user_permissions=1\") #2014-06-03'),('PATCHLOG00075','2018-09-23 18:40:47.342483','2018-09-23 18:40:47.342483','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.replace_deprecated_timezones'),('PATCHLOG00076','2018-09-23 18:40:47.345046','2018-09-23 18:40:47.345046','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:import frappe.website.render; frappe.website.render.clear_cache(\"login\"); #2014-06-10'),('PATCHLOG00077','2018-09-23 18:40:47.347553','2018-09-23 18:40:47.347553','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.fix_attach_field_file_url'),('PATCHLOG00078','2018-09-23 18:40:47.350002','2018-09-23 18:40:47.350002','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"User\") #2015-03-24'),('PATCHLOG00079','2018-09-23 18:40:47.352579','2018-09-23 18:40:47.352579','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"delete from `tabUserRole` where ifnull(parentfield, \'\')=\'\' or ifnull(`role`, \'\')=\'\'\"\"\") #2014-08-18'),('PATCHLOG00080','2018-09-23 18:40:47.355170','2018-09-23 18:40:47.355170','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_user_owner_custom_field'),('PATCHLOG00081','2018-09-23 18:40:47.357676','2018-09-23 18:40:47.357676','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Website Template\")'),('PATCHLOG00082','2018-09-23 18:40:47.360086','2018-09-23 18:40:47.360086','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabProperty Setter` set property_type=\'Text\' where property in (\'options\', \'default\')\"\"\") #2014-06-20'),('PATCHLOG00083','2018-09-23 18:40:47.362556','2018-09-23 18:40:47.362556','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.enable_outgoing_email_settings'),('PATCHLOG00084','2018-09-23 18:40:47.364754','2018-09-23 18:40:47.364754','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabSingles` set `value`=`doctype` where `field`=\'name\'\"\"\") #2014-07-04'),('PATCHLOG00085','2018-09-23 18:40:47.367099','2018-09-23 18:40:47.367099','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.enable_print_as_pdf #2014-06-17'),('PATCHLOG00086','2018-09-23 18:40:47.369345','2018-09-23 18:40:47.369345','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabDocPerm` set email=1 where parent=\'User\' and permlevel=0 and `role`=\'All\' and `read`=1 and apply_user_permissions=1\"\"\") #2014-07-15'),('PATCHLOG00087','2018-09-23 18:40:47.371541','2018-09-23 18:40:47.371541','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabPrint Format` set print_format_type=\'Client\' where ifnull(print_format_type, \'\')=\'\'\"\"\") #2014-07-28'),('PATCHLOG00088','2018-09-23 18:40:47.374269','2018-09-23 18:40:47.374269','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.file_manager_fix'),('PATCHLOG00089','2018-09-23 18:40:47.376714','2018-09-23 18:40:47.376714','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.print_with_letterhead'),('PATCHLOG00090','2018-09-23 18:40:47.378908','2018-09-23 18:40:47.378908','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Control Panel\", force=1)'),('PATCHLOG00091','2018-09-23 18:40:47.381157','2018-09-23 18:40:47.381157','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'website\', \'doctype\', \'web_form\') #2014-09-04'),('PATCHLOG00092','2018-09-23 18:40:47.383482','2018-09-23 18:40:47.383482','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'website\', \'doctype\', \'web_form_field\') #2014-09-04'),('PATCHLOG00093','2018-09-23 18:40:47.385703','2018-09-23 18:40:47.385703','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.refactor_website_routing'),('PATCHLOG00094','2018-09-23 18:40:47.388334','2018-09-23 18:40:47.388334','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.set_assign_in_doc'),('PATCHLOG00095','2018-09-23 18:40:47.390838','2018-09-23 18:40:47.390838','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_3.remove_allow_on_submit_customization'),('PATCHLOG00096','2018-09-23 18:40:47.393371','2018-09-23 18:40:47.393371','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.rename_table_fieldnames'),('PATCHLOG00097','2018-09-23 18:40:47.395849','2018-09-23 18:40:47.395849','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.communication_parent'),('PATCHLOG00098','2018-09-23 18:40:47.398258','2018-09-23 18:40:47.398258','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.clear_website_group_and_notifications'),('PATCHLOG00099','2018-09-23 18:40:47.400407','2018-09-23 18:40:47.400407','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update tabComment set comment = substr(comment, 6, locate(\":\", comment)-6) where comment_type in (\"Assigned\", \"Assignment Completed\")\"\"\")'),('PATCHLOG00100','2018-09-23 18:40:47.402543','2018-09-23 18:40:47.402543','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update `tabComment` set comment_type=\'Comment\' where comment_doctype=\'Blog Post\' and ifnull(comment_type, \'\')=\'\'\")'),('PATCHLOG00101','2018-09-23 18:40:47.404669','2018-09-23 18:40:47.404669','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.update_shared'),('PATCHLOG00102','2018-09-23 18:40:47.406770','2018-09-23 18:40:47.406770','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\"core\", \"doctype\", \"docshare\") #2015-07-21'),('PATCHLOG00103','2018-09-23 18:40:47.408882','2018-09-23 18:40:47.408882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_19.comment_feed_communication'),('PATCHLOG00104','2018-09-23 18:40:47.410901','2018-09-23 18:40:47.410901','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_16.star_to_like'),('PATCHLOG00105','2018-09-23 18:40:47.413074','2018-09-23 18:40:47.413074','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.bookmarks_to_stars'),('PATCHLOG00106','2018-09-23 18:40:47.415080','2018-09-23 18:40:47.415080','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.style_settings_to_website_theme'),('PATCHLOG00107','2018-09-23 18:40:47.417193','2018-09-23 18:40:47.417193','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.rename_ref_type_fieldnames'),('PATCHLOG00108','2018-09-23 18:40:47.419920','2018-09-23 18:40:47.419920','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_email_alert'),('PATCHLOG00109','2018-09-23 18:40:47.422378','2018-09-23 18:40:47.422378','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_null_date_datetime'),('PATCHLOG00110','2018-09-23 18:40:47.424850','2018-09-23 18:40:47.424850','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.force_sync_website'),('PATCHLOG00111','2018-09-23 18:40:47.427116','2018-09-23 18:40:47.427116','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Tag\")'),('PATCHLOG00112','2018-09-23 18:40:47.429394','2018-09-23 18:40:47.429394','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabProperty Setter` where `property` in (\'idx\', \'_idx\')\")'),('PATCHLOG00113','2018-09-23 18:40:47.432496','2018-09-23 18:40:47.432496','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.move_scheduler_last_event_to_system_settings'),('PATCHLOG00114','2018-09-23 18:40:47.435703','2018-09-23 18:40:47.435703','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabUser set new_password=\'\' where ifnull(new_password, \'\')!=\'\'\")'),('PATCHLOG00115','2018-09-23 18:40:47.439164','2018-09-23 18:40:47.439164','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_text_editor_file_urls'),('PATCHLOG00116','2018-09-23 18:40:47.442968','2018-09-23 18:40:47.442968','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.modify_session'),('PATCHLOG00117','2018-09-23 18:40:47.445920','2018-09-23 18:40:47.445920','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.expire_old_scheduler_logs'),('PATCHLOG00118','2018-09-23 18:40:47.449493','2018-09-23 18:40:47.449493','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"DocType\")'),('PATCHLOG00119','2018-09-23 18:40:47.452678','2018-09-23 18:40:47.452678','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabProperty Setter` where `property` = \'idx\'\")'),('PATCHLOG00120','2018-09-23 18:40:47.455423','2018-09-23 18:40:47.455423','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.communication_status_and_permission'),('PATCHLOG00121','2018-09-23 18:40:47.458060','2018-09-23 18:40:47.458060','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.make_task_log_folder'),('PATCHLOG00122','2018-09-23 18:40:47.460882','2018-09-23 18:40:47.460882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.document_type_rename'),('PATCHLOG00123','2018-09-23 18:40:47.463740','2018-09-23 18:40:47.463740','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.fix_ghana_currency'),('PATCHLOG00124','2018-09-23 18:40:47.466309','2018-09-23 18:40:47.466309','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_2.ignore_user_permissions_if_missing'),('PATCHLOG00125','2018-09-23 18:40:47.468697','2018-09-23 18:40:47.468697','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from tabSessions where user is null\")'),('PATCHLOG00126','2018-09-23 18:40:47.471105','2018-09-23 18:40:47.471105','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_2.rename_backup_manager'),('PATCHLOG00127','2018-09-23 18:40:47.473667','2018-09-23 18:40:47.473667','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Backup Manager\")'),('PATCHLOG00128','2018-09-23 18:40:47.476193','2018-09-23 18:40:47.476193','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabCommunication` set parenttype=null, parent=null, parentfield=null\"\"\") #2015-10-22'),('PATCHLOG00129','2018-09-23 18:40:47.478582','2018-09-23 18:40:47.478582','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Web Page\")'),('PATCHLOG00130','2018-09-23 18:40:47.481016','2018-09-23 18:40:47.481016','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_6.user_last_active'),('PATCHLOG00131','2018-09-23 18:40:47.483422','2018-09-23 18:40:47.483422','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_6.fix_file_url'),('PATCHLOG00132','2018-09-23 18:40:47.485813','2018-09-23 18:40:47.485813','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_11.rename_field_in_email_account'),('PATCHLOG00133','2018-09-23 18:40:47.488248','2018-09-23 18:40:47.488248','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.create_private_file_folder'),('PATCHLOG00134','2018-09-23 18:40:47.490482','2018-09-23 18:40:47.490482','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_15.remove_property_setter_for_previous_field #2015-12-29'),('PATCHLOG00135','2018-09-23 18:40:47.492727','2018-09-23 18:40:47.492727','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_15.set_username'),('PATCHLOG00136','2018-09-23 18:40:47.495024','2018-09-23 18:40:47.495024','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Error Snapshot\")'),('PATCHLOG00137','2018-09-23 18:40:47.497220','2018-09-23 18:40:47.497220','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_16.feed_doc_owner'),('PATCHLOG00138','2018-09-23 18:40:47.499441','2018-09-23 18:40:47.499441','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_21.print_settings_repeat_header_footer'),('PATCHLOG00139','2018-09-23 18:40:47.502001','2018-09-23 18:40:47.502001','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_24.set_language_as_code'),('PATCHLOG00140','2018-09-23 18:40:47.504204','2018-09-23 18:40:47.504204','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.update_insert_after'),('PATCHLOG00141','2018-09-23 18:40:47.506364','2018-09-23 18:40:47.506364','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'finally:frappe.patches.v6_24.sync_desktop_icons'),('PATCHLOG00142','2018-09-23 18:40:47.508649','2018-09-23 18:40:47.508649','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.set_allow_draft_for_print'),('PATCHLOG00143','2018-09-23 18:40:47.510823','2018-09-23 18:40:47.510823','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.remove_roles_from_website_user'),('PATCHLOG00144','2018-09-23 18:40:47.512975','2018-09-23 18:40:47.512975','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.set_user_fullname'),('PATCHLOG00145','2018-09-23 18:40:47.515398','2018-09-23 18:40:47.515398','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.desktop_icons_hidden_by_admin_as_blocked'),('PATCHLOG00146','2018-09-23 18:40:47.517718','2018-09-23 18:40:47.517718','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.add_communication_in_doc'),('PATCHLOG00147','2018-09-23 18:40:47.520316','2018-09-23 18:40:47.520316','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_send_after_in_bulk_email'),('PATCHLOG00148','2018-09-23 18:40:47.522739','2018-09-23 18:40:47.522739','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\'\'\'delete from `tabSingles` where doctype=\"Email Settings\"\'\'\') # 2016-06-13'),('PATCHLOG00149','2018-09-23 18:40:47.524737','2018-09-23 18:40:47.524737','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabWeb Page` where ifnull(template_path, \'\')!=\'\'\")'),('PATCHLOG00150','2018-09-23 18:40:47.526779','2018-09-23 18:40:47.526779','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.rename_newsletter_list_to_email_group'),('PATCHLOG00151','2018-09-23 18:40:47.529225','2018-09-23 18:40:47.529225','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.replace_upgrade_link_limit'),('PATCHLOG00152','2018-09-23 18:40:47.531302','2018-09-23 18:40:47.531302','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.set_email_group'),('PATCHLOG00153','2018-09-23 18:40:47.533204','2018-09-23 18:40:47.533204','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.setup_integration_services #2016-10-27'),('PATCHLOG00154','2018-09-23 18:40:47.535397','2018-09-23 18:40:47.535397','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_chinese_language_codes'),('PATCHLOG00155','2018-09-23 18:40:47.537385','2018-09-23 18:40:47.537385','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.core.doctype.language.language.update_language_names() # 2017-04-12'),('PATCHLOG00156','2018-09-23 18:40:47.539535','2018-09-23 18:40:47.539535','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.set_value(\"Print Settings\", \"Print Settings\", \"add_draft_heading\", 1)'),('PATCHLOG00157','2018-09-23 18:40:47.541739','2018-09-23 18:40:47.541739','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.cleanup_list_settings'),('PATCHLOG00158','2018-09-23 18:40:47.543900','2018-09-23 18:40:47.543900','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.set_default(\'language\', \'\')'),('PATCHLOG00159','2018-09-23 18:40:47.545983','2018-09-23 18:40:47.545983','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.refactor_integration_broker'),('PATCHLOG00160','2018-09-23 18:40:47.547997','2018-09-23 18:40:47.547997','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.set_backup_limit'),('PATCHLOG00161','2018-09-23 18:40:47.550050','2018-09-23 18:40:47.550050','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.set_doctype_engine'),('PATCHLOG00162','2018-09-23 18:40:47.552137','2018-09-23 18:40:47.552137','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.merge_knowledge_base'),('PATCHLOG00163','2018-09-23 18:40:47.554205','2018-09-23 18:40:47.554205','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_report_builder_json'),('PATCHLOG00164','2018-09-23 18:40:47.556233','2018-09-23 18:40:47.556233','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.set_in_standard_filter_property #1'),('PATCHLOG00165','2018-09-23 18:40:47.558362','2018-09-23 18:40:47.558362','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_unwanted_indexes'),('PATCHLOG00166','2018-09-23 18:40:47.560388','2018-09-23 18:40:47.560388','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabCommunication set communication_date = creation where time(communication_date) = 0\")'),('PATCHLOG00167','2018-09-23 18:40:47.562632','2018-09-23 18:40:47.562632','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.fix_email_queue_recipient'),('PATCHLOG00168','2018-09-23 18:40:47.564587','2018-09-23 18:40:47.564587','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.update_feedback_request # 2017-02-27'),('PATCHLOG00169','2018-09-23 18:40:47.566658','2018-09-23 18:40:47.566658','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Hub Settings\", ignore_missing=True)'),('PATCHLOG00170','2018-09-23 18:40:47.568808','2018-09-23 18:40:47.568808','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Macedonia, Republic of\', \'Macedonia\', ignore_if_exists=True)'),('PATCHLOG00171','2018-09-23 18:40:47.570926','2018-09-23 18:40:47.570926','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Iran, Islamic Republic of\', \'Iran\', ignore_if_exists=True)'),('PATCHLOG00172','2018-09-23 18:40:47.573051','2018-09-23 18:40:47.573051','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Tanzania, United Republic of\', \'Tanzania\', ignore_if_exists=True)'),('PATCHLOG00173','2018-09-23 18:40:47.575111','2018-09-23 18:40:47.575111','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Syrian Arab Republic\', \'Syria\', ignore_if_exists=True)'),('PATCHLOG00174','2018-09-23 18:40:47.577111','2018-09-23 18:40:47.577111','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_listsettings_to_usersettings'),('PATCHLOG00175','2018-09-23 18:40:47.579120','2018-09-23 18:40:47.579120','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.update_communications'),('PATCHLOG00176','2018-09-23 18:40:47.581071','2018-09-23 18:40:47.581071','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.deprecate_integration_broker'),('PATCHLOG00177','2018-09-23 18:40:47.583247','2018-09-23 18:40:47.583247','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_gender_and_salutation'),('PATCHLOG00178','2018-09-23 18:40:47.585282','2018-09-23 18:40:47.585282','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.setup_email_inbox #2017-03-29'),('PATCHLOG00179','2018-09-23 18:40:47.587336','2018-09-23 18:40:47.587336','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.newsletter_childtable_migrate'),('PATCHLOG00180','2018-09-23 18:40:47.589588','2018-09-23 18:40:47.589588','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabDesktop Icon` where module_name=\'Communication\'\")'),('PATCHLOG00181','2018-09-23 18:40:47.591758','2018-09-23 18:40:47.591758','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update `tabDesktop Icon` set type=\'list\' where _doctype=\'Communication\'\")'),('PATCHLOG00182','2018-09-23 18:40:47.594433','2018-09-23 18:40:47.594433','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.fix_non_english_desktop_icons # 2017-04-12'),('PATCHLOG00183','2018-09-23 18:40:47.596797','2018-09-23 18:40:47.596797','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_doctype_values_in_custom_role'),('PATCHLOG00184','2018-09-23 18:40:47.599171','2018-09-23 18:40:47.599171','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.install_new_build_system_requirements'),('PATCHLOG00185','2018-09-23 18:40:47.601336','2018-09-23 18:40:47.601336','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_currency_field_precision	# 2017-05-09'),('PATCHLOG00186','2018-09-23 18:40:47.603425','2018-09-23 18:40:47.603425','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_print_to_printing'),('PATCHLOG00187','2018-09-23 18:40:47.605525','2018-09-23 18:40:47.605525','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.disabled_print_settings_for_custom_print_format'),('PATCHLOG00188','2018-09-23 18:40:47.607577','2018-09-23 18:40:47.607577','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_desktop_icons'),('PATCHLOG00189','2018-09-23 18:40:47.609720','2018-09-23 18:40:47.609720','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\'update tabReport set module=\"Desk\" where name=\"ToDo\"\')'),('PATCHLOG00190','2018-09-23 18:40:47.611827','2018-09-23 18:40:47.611827','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.enable_allow_error_traceback_in_system_settings'),('PATCHLOG00191','2018-09-23 18:40:47.614001','2018-09-23 18:40:47.614001','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.update_format_options_in_auto_email_report'),('PATCHLOG00192','2018-09-23 18:40:47.616326','2018-09-23 18:40:47.616326','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.delete_custom_docperm_if_doctype_not_exists'),('PATCHLOG00193','2018-09-23 18:40:47.619099','2018-09-23 18:40:47.619099','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_5.delete_email_group_member_with_invalid_emails'),('PATCHLOG00194','2018-09-23 18:40:47.621845','2018-09-23 18:40:47.621845','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_x.update_user_permission'),('PATCHLOG00195','2018-09-23 18:40:47.624123','2018-09-23 18:40:47.624123','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_5.patch_event_colors'),('PATCHLOG00196','2018-09-23 18:40:47.626457','2018-09-23 18:40:47.626457','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_10.delete_static_web_page_from_global_search'),('PATCHLOG00197','2018-09-23 18:40:47.628647','2018-09-23 18:40:47.628647','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v9_1.add_sms_sender_name_as_parameters'),('PATCHLOG00198','2018-09-23 18:40:47.630726','2018-09-23 18:40:47.630726','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v9_1.resave_domain_settings'),('PATCHLOG00199','2018-09-23 18:40:47.633072','2018-09-23 18:40:47.633072','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v9_1.revert_domain_settings'),('PATCHLOG00200','2018-09-23 18:40:47.635662','2018-09-23 18:40:47.635662','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v9_1.move_feed_to_activity_log'),('PATCHLOG00201','2018-09-23 18:40:47.637732','2018-09-23 18:40:47.637732','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\'Page\', \'data-import-tool\', ignore_missing=True)'),('PATCHLOG00202','2018-09-23 18:40:47.639847','2018-09-23 18:40:47.639847','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v10_0.reload_countries_and_currencies'),('PATCHLOG00203','2018-09-23 18:40:47.642213','2018-09-23 18:40:47.642213','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v10_0.set_no_copy_to_workflow_state'),('PATCHLOG00204','2018-09-23 18:40:47.644460','2018-09-23 18:40:47.644460','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v10_0.increase_single_table_column_length'),('PATCHLOG00205','2018-09-23 18:40:47.646590','2018-09-23 18:40:47.646590','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v10_0.set_default_locking_time'),('PATCHLOG00206','2018-09-23 18:40:47.648613','2018-09-23 18:40:47.648613','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v10_0.modify_smallest_currency_fraction');
/*!40000 ALTER TABLE `tabPatch Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPayment Gateway`
--

DROP TABLE IF EXISTS `tabPayment Gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPayment Gateway` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPayment Gateway`
--

LOCK TABLES `tabPayment Gateway` WRITE;
/*!40000 ALTER TABLE `tabPayment Gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPayment Gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPortal Menu Item`
--

DROP TABLE IF EXISTS `tabPortal Menu Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPortal Menu Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPortal Menu Item`
--

LOCK TABLES `tabPortal Menu Item` WRITE;
/*!40000 ALTER TABLE `tabPortal Menu Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPortal Menu Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Format`
--

DROP TABLE IF EXISTS `tabPrint Format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Format` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `custom_format` int(1) NOT NULL DEFAULT 0,
  `font` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Default',
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_format_builder` int(1) NOT NULL DEFAULT 0,
  `standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `align_labels_right` int(1) NOT NULL DEFAULT 0,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_format_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Server',
  `format_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_breaks` int(1) NOT NULL DEFAULT 0,
  `show_section_headings` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `standard` (`standard`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Format`
--

LOCK TABLES `tabPrint Format` WRITE;
/*!40000 ALTER TABLE `tabPrint Format` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPrint Format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Heading`
--

DROP TABLE IF EXISTS `tabPrint Heading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Heading` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_heading` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Heading`
--

LOCK TABLES `tabPrint Heading` WRITE;
/*!40000 ALTER TABLE `tabPrint Heading` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPrint Heading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Style`
--

DROP TABLE IF EXISTS `tabPrint Style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Style` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_style_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` int(1) NOT NULL DEFAULT 0,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `preview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Style`
--

LOCK TABLES `tabPrint Style` WRITE;
/*!40000 ALTER TABLE `tabPrint Style` DISABLE KEYS */;
INSERT INTO `tabPrint Style` VALUES ('Classic','2017-08-17 02:00:12.502887','2017-08-18 00:43:48.675833','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Classic',NULL,NULL,1,0,'/assets/frappe/images/help/print-style-classic.png',NULL,'/*\n	common style for whole page\n	This should include:\n	+ page size related settings\n	+ font family settings\n	+ line spacing settings\n*/\n.print-format div,\n.print-format span,\n.print-format td,\n.print-format h1,\n.print-format h2,\n.print-format h3,\n.print-format h4 {\n	font-family: Georgia, serif;\n}\n\n/* classic format: for-test */'),('Modern','2017-08-17 02:16:58.060374','2017-08-18 00:44:07.438147','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Modern',NULL,NULL,1,0,'/assets/frappe/images/help/print-style-modern.png',NULL,'.print-heading {\n	text-align: right;\n	text-transform: uppercase;\n	color: #666;\n	padding-bottom: 20px;\n	margin-bottom: 20px;\n	border-bottom: 1px solid #d1d8dd;\n}\n\n.print-heading h2 {\n	font-size: 24px;\n}\n\n.print-format th {\n	background-color: #eee !important;\n	border-bottom: 0px !important;\n}\n\n/* modern format: for-test */'),('Monochrome','2017-08-17 02:16:20.992989','2017-08-18 00:44:25.023898','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Monochrome',NULL,NULL,1,0,'/assets/frappe/images/help/print-style-monochrome.png',NULL,'.print-format * {\n	color: #000 !important;\n}\n\n.print-format .alert {\n	background-color: inherit;\n	border: 1px dashed #333;\n}\n\n.print-format .table-bordered,\n.print-format .table-bordered > thead > tr > th,\n.print-format .table-bordered > tbody > tr > th,\n.print-format .table-bordered > tfoot > tr > th,\n.print-format .table-bordered > thead > tr > td,\n.print-format .table-bordered > tbody > tr > td,\n.print-format .table-bordered > tfoot > tr > td {\n	border: 1px solid #333;\n}\n\n.print-format hr {\n	border-top: 1px solid #333;\n}\n\n.print-heading {\n	border-bottom: 2px solid #333;\n}\n');
/*!40000 ALTER TABLE `tabPrint Style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProperty Setter`
--

DROP TABLE IF EXISTS `tabProperty Setter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProperty Setter` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `default_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctype_or_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `doc_type` (`doc_type`),
  KEY `property` (`property`),
  KEY `field_name` (`field_name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProperty Setter`
--

LOCK TABLES `tabProperty Setter` WRITE;
/*!40000 ALTER TABLE `tabProperty Setter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProperty Setter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabReport`
--

DROP TABLE IF EXISTS `tabReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabReport` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `apply_user_permissions` int(1) NOT NULL DEFAULT 1,
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_total_row` int(1) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `javascript` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `json` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letter_head` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabReport`
--

LOCK TABLES `tabReport` WRITE;
/*!40000 ALTER TABLE `tabReport` DISABLE KEYS */;
INSERT INTO `tabReport` VALUES ('Addresses And Contacts','2017-01-19 12:57:22.881566','2017-04-10 15:04:12.498920','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'Address',NULL,0,NULL,NULL,NULL,'Contacts','Addresses And Contacts',0,NULL,'Yes','Script Report',NULL,NULL,NULL),('Document Share Report','2015-02-05 06:01:35.060098','2017-02-24 20:01:16.232286','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'DocShare',NULL,0,NULL,NULL,NULL,'Core','Document Share Report',0,'{\"add_total_row\": 0, \"sort_by\": \"DocShare.modified\", \"sort_order\": \"desc\", \"sort_by_next\": null, \"filters\": [], \"sort_order_next\": \"desc\", \"columns\": [[\"name\", \"DocShare\"], [\"user\", \"DocShare\"], [\"share_doctype\", \"DocShare\"], [\"share_name\", \"DocShare\"], [\"read\", \"DocShare\"], [\"write\", \"DocShare\"], [\"share\", \"DocShare\"]]}','Yes','Report Builder',NULL,NULL,NULL),('Feedback Ratings','2017-02-05 20:38:21.890174','2017-02-24 19:56:51.141147','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'Feedback Trigger',NULL,0,NULL,NULL,NULL,'Core','Feedback Ratings',0,NULL,'Yes','Script Report',NULL,NULL,NULL),('Permitted Documents For User','2014-06-03 05:20:35.218263','2017-02-24 20:16:34.069990','Administrator','Administrator',0,NULL,NULL,NULL,3,1,'User',NULL,0,NULL,NULL,NULL,'Core','Permitted Documents For User',0,NULL,'Yes','Script Report',NULL,NULL,NULL),('ToDo','2013-02-25 14:26:30.000000','2017-06-21 18:18:50.748793','Administrator','Administrator',0,NULL,NULL,NULL,3,1,'ToDo',NULL,0,NULL,NULL,NULL,'Desk','ToDo',0,NULL,'Yes','Script Report',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabRole`
--

DROP TABLE IF EXISTS `tabRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabRole` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `two_factor_auth` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desk_access` int(1) NOT NULL DEFAULT 1,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT 0,
  `role_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabRole`
--

LOCK TABLES `tabRole` WRITE;
/*!40000 ALTER TABLE `tabRole` DISABLE KEYS */;
INSERT INTO `tabRole` VALUES ('Accounts Manager','2018-09-23 18:40:45.383424','2018-09-23 18:40:45.383424','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Accounts Manager',NULL),('Accounts User','2018-09-23 18:40:43.342860','2018-09-23 18:40:43.342860','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Accounts User',NULL),('Administrator','2018-09-23 18:40:39.054150','2018-09-23 18:40:39.054150','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Administrator',NULL),('All','2018-09-23 18:40:39.049347','2018-09-23 18:40:39.049347','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'All',NULL),('Blogger','2018-09-23 18:40:41.253944','2018-09-23 18:40:41.253944','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Blogger',NULL),('Guest','2018-09-23 18:40:39.055787','2018-09-23 18:40:39.055787','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Guest',NULL),('Knowledge Base Contributor','2018-09-23 18:40:41.715897','2018-09-23 18:40:41.715897','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Knowledge Base Contributor',NULL),('Knowledge Base Editor','2018-09-23 18:40:41.718169','2018-09-23 18:40:41.718169','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Knowledge Base Editor',NULL),('Maintenance Manager','2018-09-23 18:40:45.377473','2018-09-23 18:40:45.377473','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Maintenance Manager',NULL),('Maintenance User','2018-09-23 18:40:45.246267','2018-09-23 18:40:45.246267','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Maintenance User',NULL),('Newsletter Manager','2018-09-23 18:40:42.577157','2018-09-23 18:40:42.577157','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Newsletter Manager',NULL),('Purchase Manager','2018-09-23 18:40:45.374317','2018-09-23 18:40:45.374317','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Purchase Manager',NULL),('Purchase Master Manager','2018-09-23 18:40:45.385293','2018-09-23 18:40:45.385293','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Purchase Master Manager',NULL),('Purchase User','2018-09-23 18:40:43.345232','2018-09-23 18:40:43.345232','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Purchase User',NULL),('Report Manager','2018-09-23 18:40:39.199937','2018-09-23 18:40:39.199937','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Report Manager',NULL),('Sales Manager','2018-09-23 18:40:45.381520','2018-09-23 18:40:45.381520','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Sales Manager',NULL),('Sales Master Manager','2018-09-23 18:40:45.379928','2018-09-23 18:40:45.379928','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Sales Master Manager',NULL),('Sales User','2018-09-23 18:40:43.340906','2018-09-23 18:40:43.340906','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Sales User',NULL),('System Manager','2018-09-23 18:40:39.046863','2018-09-23 18:40:39.046863','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'System Manager',NULL),('Website Manager','2018-09-23 18:40:40.910358','2018-09-23 18:40:40.910358','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,0,'Website Manager',NULL);
/*!40000 ALTER TABLE `tabRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabRole Profile`
--

DROP TABLE IF EXISTS `tabRole Profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabRole Profile` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_profile` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `role_profile` (`role_profile`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabRole Profile`
--

LOCK TABLES `tabRole Profile` WRITE;
/*!40000 ALTER TABLE `tabRole Profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabRole Profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSMS Parameter`
--

DROP TABLE IF EXISTS `tabSMS Parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSMS Parameter` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `header` int(1) NOT NULL DEFAULT 0,
  `parameter` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSMS Parameter`
--

LOCK TABLES `tabSMS Parameter` WRITE;
/*!40000 ALTER TABLE `tabSMS Parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSMS Parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalutation`
--

DROP TABLE IF EXISTS `tabSalutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalutation` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `salutation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalutation`
--

LOCK TABLES `tabSalutation` WRITE;
/*!40000 ALTER TABLE `tabSalutation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalutation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSeries`
--

DROP TABLE IF EXISTS `tabSeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSeries` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSeries`
--

LOCK TABLES `tabSeries` WRITE;
/*!40000 ALTER TABLE `tabSeries` DISABLE KEYS */;
INSERT INTO `tabSeries` VALUES ('PATCHLOG',206);
/*!40000 ALTER TABLE `tabSeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSessions`
--

DROP TABLE IF EXISTS `tabSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSessions` (
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessiondata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipaddress` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastupdate` datetime(6) DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'desktop',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSessions`
--

LOCK TABLES `tabSessions` WRITE;
/*!40000 ALTER TABLE `tabSessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSingles`
--

DROP TABLE IF EXISTS `tabSingles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSingles` (
  `doctype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `singles_doctype_field_index` (`doctype`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSingles`
--

LOCK TABLES `tabSingles` WRITE;
/*!40000 ALTER TABLE `tabSingles` DISABLE KEYS */;
INSERT INTO `tabSingles` VALUES ('S3 Backup Settings','bucket',NULL),('S3 Backup Settings','modified_by','Administrator'),('S3 Backup Settings','name','S3 Backup Settings'),('S3 Backup Settings','parent',NULL),('S3 Backup Settings','secret_access_key',NULL),('S3 Backup Settings','creation','2018-09-23 18:40:45.903835'),('S3 Backup Settings','enabled','0'),('S3 Backup Settings','modified','2018-09-23 18:40:45.903835'),('S3 Backup Settings','notify_email',NULL),('S3 Backup Settings','idx','0'),('S3 Backup Settings','parenttype',NULL),('S3 Backup Settings','frequency','Daily'),('S3 Backup Settings','backup_limit','0'),('S3 Backup Settings','send_email_for_successful_backup','1'),('S3 Backup Settings','access_key_id',NULL),('S3 Backup Settings','owner','Administrator'),('S3 Backup Settings','docstatus','0'),('S3 Backup Settings','parentfield',NULL),('Dropbox Settings','app_secret_key',NULL),('Dropbox Settings','modified_by','Administrator'),('Dropbox Settings','name','Dropbox Settings'),('Dropbox Settings','parent',NULL),('Dropbox Settings','app_access_key',NULL),('Dropbox Settings','send_notifications_to',NULL),('Dropbox Settings','creation','2018-09-23 18:40:45.927947'),('Dropbox Settings','enabled','0'),('Dropbox Settings','modified','2018-09-23 18:40:45.927947'),('Dropbox Settings','idx','0'),('Dropbox Settings','parenttype',NULL),('Dropbox Settings','send_email_for_successful_backup','1'),('Dropbox Settings','backup_frequency',''),('Dropbox Settings','owner','Administrator'),('Dropbox Settings','docstatus','0'),('Dropbox Settings','dropbox_access_secret',NULL),('Dropbox Settings','dropbox_access_token',NULL),('Dropbox Settings','dropbox_access_key',NULL),('Dropbox Settings','parentfield',NULL),('System Settings','disable_standard_email_footer','0'),('System Settings','email_footer_address',NULL),('System Settings','float_precision',''),('System Settings','minimum_password_score','2'),('System Settings','currency_precision',''),('System Settings','creation','2018-09-23 18:40:45.990884'),('System Settings','time_zone',NULL),('System Settings','setup_complete','0'),('System Settings','hide_footer_in_auto_email_reports','0'),('System Settings','owner','Administrator'),('System Settings','allow_login_using_user_name','0'),('System Settings','deny_multiple_sessions','0'),('System Settings','idx','0'),('System Settings','apply_strict_user_permissions','0'),('System Settings','docstatus','0'),('System Settings','bypass_2fa_for_retricted_ip_users','0'),('System Settings','session_expiry','06:00'),('System Settings','ignore_user_permissions_if_missing','0'),('System Settings','allow_consecutive_login_attempts','0'),('System Settings','is_first_startup','0'),('System Settings','parent',NULL),('System Settings','scheduler_last_event',NULL),('System Settings','allow_error_traceback','1'),('System Settings','enable_two_factor_auth','0'),('System Settings','lifespan_qrcode_image','0'),('System Settings','number_format','#,###.##'),('System Settings','date_format','yyyy-mm-dd'),('System Settings','name','System Settings'),('System Settings','language',NULL),('System Settings','allow_login_after_fail','60'),('System Settings','country',NULL),('System Settings','enable_password_policy','0'),('System Settings','allow_login_using_mobile_number','0'),('System Settings','parenttype',NULL),('System Settings','otp_issuer_name','Frappe Framework'),('System Settings','backup_limit','3'),('System Settings','two_factor_method','OTP App'),('System Settings','session_expiry_mobile','720:00'),('System Settings','parentfield',NULL),('User Permission for Page and Report','report',NULL),('User Permission for Page and Report','modified_by','Administrator'),('User Permission for Page and Report','name','User Permission for Page and Report'),('User Permission for Page and Report','parent',NULL),('User Permission for Page and Report','creation','2018-09-23 18:40:46.416152'),('User Permission for Page and Report','modified','2018-09-23 18:40:46.416152'),('User Permission for Page and Report','idx','0'),('User Permission for Page and Report','parenttype',NULL),('User Permission for Page and Report','owner','Administrator'),('User Permission for Page and Report','docstatus','0'),('User Permission for Page and Report','set_role_for',''),('User Permission for Page and Report','page',NULL),('User Permission for Page and Report','parentfield',NULL),('Domain Settings','modified_by','Administrator'),('Domain Settings','name','Domain Settings'),('Domain Settings','parent',NULL),('Domain Settings','creation','2018-09-23 18:40:46.463607'),('Domain Settings','modified','2018-09-23 18:40:46.463607'),('Domain Settings','idx','0'),('Domain Settings','parenttype',NULL),('Domain Settings','owner','Administrator'),('Domain Settings','docstatus','0'),('Domain Settings','parentfield',NULL),('SMS Settings','use_post','0'),('SMS Settings','modified_by','Administrator'),('SMS Settings','name','SMS Settings'),('SMS Settings','parent',NULL),('SMS Settings','receiver_parameter',NULL),('SMS Settings','creation','2018-09-23 18:40:46.510728'),('SMS Settings','message_parameter',NULL),('SMS Settings','modified','2018-09-23 18:40:46.510728'),('SMS Settings','idx','0'),('SMS Settings','parenttype',NULL),('SMS Settings','sms_gateway_url',NULL),('SMS Settings','owner','Administrator'),('SMS Settings','docstatus','0'),('SMS Settings','parentfield',NULL),('GSuite Settings','enable','0'),('GSuite Settings','modified_by','Administrator'),('GSuite Settings','name','GSuite Settings'),('GSuite Settings','parent',NULL),('GSuite Settings','authorization_code',NULL),('GSuite Settings','creation','2018-09-23 18:40:46.536050'),('GSuite Settings','modified','2018-09-23 18:40:46.536050'),('GSuite Settings','idx','0'),('GSuite Settings','parenttype',NULL),('GSuite Settings','script_url','https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec'),('GSuite Settings','client_id',NULL),('GSuite Settings','client_secret',NULL),('GSuite Settings','owner','Administrator'),('GSuite Settings','docstatus','0'),('GSuite Settings','refresh_token',NULL),('GSuite Settings','parentfield',NULL),('Google Maps','modified_by','Administrator'),('Google Maps','name','Google Maps'),('Google Maps','parent',NULL),('Google Maps','creation','2018-09-23 18:40:46.556816'),('Google Maps','enabled','0'),('Google Maps','modified','2018-09-23 18:40:46.556816'),('Google Maps','idx','0'),('Google Maps','parenttype',NULL),('Google Maps','owner','Administrator'),('Google Maps','docstatus','0'),('Google Maps','home_address',NULL),('Google Maps','client_key',NULL),('Google Maps','parentfield',NULL),('Contact Us Settings','email_id',NULL),('Contact Us Settings','creation','2018-09-23 18:40:46.579264'),('Contact Us Settings','pincode',NULL),('Contact Us Settings','skype',NULL),('Contact Us Settings','owner','Administrator'),('Contact Us Settings','address_line2',NULL),('Contact Us Settings','city',NULL),('Contact Us Settings','address_line1',NULL),('Contact Us Settings','modified_by','Administrator'),('Contact Us Settings','address_title',NULL),('Contact Us Settings','introduction',NULL),('Contact Us Settings','state',NULL),('Contact Us Settings','docstatus','0'),('Contact Us Settings','query_options',NULL),('Contact Us Settings','parent',NULL),('Contact Us Settings','forward_to_email',NULL),('Contact Us Settings','phone',NULL),('Contact Us Settings','name','Contact Us Settings'),('Contact Us Settings','idx','0'),('Contact Us Settings','country',NULL),('Contact Us Settings','modified','2018-09-23 18:40:46.579264'),('Contact Us Settings','parenttype',NULL),('Contact Us Settings','heading',NULL),('Contact Us Settings','parentfield',NULL),('Test Runner','modified_by','Administrator'),('Test Runner','name','Test Runner'),('Test Runner','parent',NULL),('Test Runner','app',NULL),('Test Runner','creation','2018-09-23 18:40:46.642184'),('Test Runner','modified','2018-09-23 18:40:46.642184'),('Test Runner','idx','0'),('Test Runner','parenttype',NULL),('Test Runner','module_path',NULL),('Test Runner','owner','Administrator'),('Test Runner','docstatus','0'),('Test Runner','parentfield',NULL),('Role Permission for Page and Report','report',NULL),('Role Permission for Page and Report','modified_by','Administrator'),('Role Permission for Page and Report','name','Role Permission for Page and Report'),('Role Permission for Page and Report','parent',NULL),('Role Permission for Page and Report','creation','2018-09-23 18:40:46.732959'),('Role Permission for Page and Report','modified','2018-09-23 18:40:46.732959'),('Role Permission for Page and Report','idx','0'),('Role Permission for Page and Report','parenttype',NULL),('Role Permission for Page and Report','owner','Administrator'),('Role Permission for Page and Report','docstatus','0'),('Role Permission for Page and Report','set_role_for',''),('Role Permission for Page and Report','page',NULL),('Role Permission for Page and Report','parentfield',NULL),('Stripe Settings','publishable_key',NULL),('Stripe Settings','modified_by','Administrator'),('Stripe Settings','name','Stripe Settings'),('Stripe Settings','parent',NULL),('Stripe Settings','creation','2018-09-23 18:40:46.754018'),('Stripe Settings','modified','2018-09-23 18:40:46.754018'),('Stripe Settings','idx','0'),('Stripe Settings','parenttype',NULL),('Stripe Settings','owner','Administrator'),('Stripe Settings','docstatus','0'),('Stripe Settings','secret_key',NULL),('Stripe Settings','parentfield',NULL),('LDAP Settings','ldap_first_name_field',NULL),('LDAP Settings','modified_by','Administrator'),('LDAP Settings','name','LDAP Settings'),('LDAP Settings','parent',NULL),('LDAP Settings','creation','2018-09-23 18:40:46.776491'),('LDAP Settings','enabled','0'),('LDAP Settings','modified','2018-09-23 18:40:46.776491'),('LDAP Settings','ldap_email_field',NULL),('LDAP Settings','idx','0'),('LDAP Settings','parenttype',NULL),('LDAP Settings','organizational_unit',NULL),('LDAP Settings','base_dn',NULL),('LDAP Settings','owner','Administrator'),('LDAP Settings','docstatus','0'),('LDAP Settings','ldap_server_url',NULL),('LDAP Settings','password',NULL),('LDAP Settings','ldap_search_string',NULL),('LDAP Settings','ldap_username_field',NULL),('LDAP Settings','parentfield',NULL),('Website Settings','robots_txt',NULL),('Website Settings','creation','2018-09-23 18:40:46.800439'),('Website Settings','favicon',NULL),('Website Settings','owner','Administrator'),('Website Settings','banner_html',NULL),('Website Settings','google_analytics_id',NULL),('Website Settings','modified_by','Administrator'),('Website Settings','copyright',NULL),('Website Settings','home_page',NULL),('Website Settings','hide_footer_signup','0'),('Website Settings','brand_html',NULL),('Website Settings','head_html',NULL),('Website Settings','title_prefix',NULL),('Website Settings','subdomain',NULL),('Website Settings','parent',NULL),('Website Settings','disable_signup','0'),('Website Settings','banner_image',NULL),('Website Settings','docstatus','0'),('Website Settings','website_theme_image_link',NULL),('Website Settings','website_theme','Standard'),('Website Settings','name','Website Settings'),('Website Settings','idx','0'),('Website Settings','modified','2018-09-23 18:40:46.800439'),('Website Settings','parenttype',NULL),('Website Settings','navbar_search','0'),('Website Settings','address',NULL),('Website Settings','parentfield',NULL),('About Us Settings','modified_by','Administrator'),('About Us Settings','name','About Us Settings'),('About Us Settings','parent',NULL),('About Us Settings','footer',NULL),('About Us Settings','company_introduction',NULL),('About Us Settings','creation','2018-09-23 18:40:46.885943'),('About Us Settings','modified','2018-09-23 18:40:46.885943'),('About Us Settings','idx','0'),('About Us Settings','parenttype',NULL),('About Us Settings','company_history_heading',NULL),('About Us Settings','owner','Administrator'),('About Us Settings','docstatus','0'),('About Us Settings','team_members_heading',NULL),('About Us Settings','parentfield',NULL),('Blog Settings','modified_by','Administrator'),('Blog Settings','name','Blog Settings'),('Blog Settings','parent',NULL),('Blog Settings','creation','2018-09-23 18:40:46.909126'),('Blog Settings','modified','2018-09-23 18:40:46.909126'),('Blog Settings','idx','0'),('Blog Settings','parenttype',NULL),('Blog Settings','owner','Administrator'),('Blog Settings','docstatus','0'),('Blog Settings','writers_introduction',NULL),('Blog Settings','blog_title',NULL),('Blog Settings','blog_introduction',NULL),('Blog Settings','parentfield',NULL),('Website Script','javascript',NULL),('Website Script','modified_by','Administrator'),('Website Script','name','Website Script'),('Website Script','parent',NULL),('Website Script','creation','2018-09-23 18:40:46.931230'),('Website Script','modified','2018-09-23 18:40:46.931230'),('Website Script','idx','0'),('Website Script','parenttype',NULL),('Website Script','owner','Administrator'),('Website Script','docstatus','0'),('Website Script','parentfield',NULL),('Bulk Update','modified_by','Administrator'),('Bulk Update','name','Bulk Update'),('Bulk Update','parent',NULL),('Bulk Update','field',NULL),('Bulk Update','creation','2018-09-23 18:40:46.958043'),('Bulk Update','modified','2018-09-23 18:40:46.958043'),('Bulk Update','idx','0'),('Bulk Update','parenttype',NULL),('Bulk Update','limit','500'),('Bulk Update','owner','Administrator'),('Bulk Update','docstatus','0'),('Bulk Update','document_type',NULL),('Bulk Update','update_value',NULL),('Bulk Update','condition',NULL),('Bulk Update','parentfield',NULL),('Razorpay Settings','modified_by','Administrator'),('Razorpay Settings','name','Razorpay Settings'),('Razorpay Settings','parent',NULL),('Razorpay Settings','redirect_to',NULL),('Razorpay Settings','api_secret',NULL),('Razorpay Settings','creation','2018-09-23 18:40:46.979307'),('Razorpay Settings','modified','2018-09-23 18:40:46.979307'),('Razorpay Settings','idx','0'),('Razorpay Settings','parenttype',NULL),('Razorpay Settings','owner','Administrator'),('Razorpay Settings','docstatus','0'),('Razorpay Settings','api_key',NULL),('Razorpay Settings','parentfield',NULL),('PayPal Settings','paypal_sandbox','0'),('PayPal Settings','modified_by','Administrator'),('PayPal Settings','name','PayPal Settings'),('PayPal Settings','parent',NULL),('PayPal Settings','redirect_to',NULL),('PayPal Settings','creation','2018-09-23 18:40:46.999850'),('PayPal Settings','api_password',NULL),('PayPal Settings','modified','2018-09-23 18:40:46.999850'),('PayPal Settings','signature',NULL),('PayPal Settings','idx','0'),('PayPal Settings','parenttype',NULL),('PayPal Settings','api_username',NULL),('PayPal Settings','owner','Administrator'),('PayPal Settings','docstatus','0'),('PayPal Settings','parentfield',NULL),('Portal Settings','modified_by','Administrator'),('Portal Settings','name','Portal Settings'),('Portal Settings','parent',NULL),('Portal Settings','default_role',NULL),('Portal Settings','creation','2018-09-23 18:40:47.036186'),('Portal Settings','modified','2018-09-23 18:40:47.036186'),('Portal Settings','idx','0'),('Portal Settings','parenttype',NULL),('Portal Settings','hide_standard_menu','0'),('Portal Settings','owner','Administrator'),('Portal Settings','docstatus','0'),('Portal Settings','parentfield',NULL),('OAuth Provider Settings','modified_by','Administrator'),('OAuth Provider Settings','name','OAuth Provider Settings'),('OAuth Provider Settings','parent',NULL),('OAuth Provider Settings','creation','2018-09-23 18:40:47.086924'),('OAuth Provider Settings','modified','2018-09-23 18:40:47.086924'),('OAuth Provider Settings','idx','0'),('OAuth Provider Settings','parenttype',NULL),('OAuth Provider Settings','skip_authorization','Force'),('OAuth Provider Settings','owner','Administrator'),('OAuth Provider Settings','docstatus','0'),('OAuth Provider Settings','parentfield',NULL),('Social Login Keys','github_client_secret',NULL),('Social Login Keys','facebook_client_secret',NULL),('Social Login Keys','modified_by','Administrator'),('Social Login Keys','name','Social Login Keys'),('Social Login Keys','parent',NULL),('Social Login Keys','frappe_server_url',NULL),('Social Login Keys','creation','2018-09-23 18:40:47.110346'),('Social Login Keys','modified','2018-09-23 18:40:47.110346'),('Social Login Keys','facebook_client_id',NULL),('Social Login Keys','google_client_secret',NULL),('Social Login Keys','idx','0'),('Social Login Keys','parenttype',NULL),('Social Login Keys','frappe_client_id',NULL),('Social Login Keys','frappe_client_secret',NULL),('Social Login Keys','owner','Administrator'),('Social Login Keys','docstatus','0'),('Social Login Keys','google_client_id',NULL),('Social Login Keys','github_client_id',NULL),('Social Login Keys','parentfield',NULL),('Print Settings','creation','2018-09-23 18:40:46.607530'),('Print Settings','print_style','Modern'),('Print Settings','with_letterhead','1'),('Print Settings','owner','Administrator'),('Print Settings','font','Default'),('Print Settings','send_print_as_pdf','1'),('Print Settings','allow_page_break_inside_tables','0'),('Print Settings','modified_by','Administrator'),('Print Settings','repeat_header_footer','1'),('Print Settings','allow_print_for_draft','1'),('Print Settings','add_draft_heading','1'),('Print Settings','docstatus','0'),('Print Settings','parent',NULL),('Print Settings','attach_view_link','1'),('Print Settings','font_size','0'),('Print Settings','name','Print Settings'),('Print Settings','idx','0'),('Print Settings','modified','2018-09-23 18:40:48.917846'),('Print Settings','parenttype',NULL),('Print Settings','pdf_page_size','A4'),('Print Settings','allow_print_for_cancelled','0'),('Print Settings','parentfield',NULL),('System Settings','modified_by','Administrator'),('System Settings','modified','2018-09-23 18:40:49.101373'),('System Settings','enable_scheduler','0');
/*!40000 ALTER TABLE `tabSingles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStandard Reply`
--

DROP TABLE IF EXISTS `tabStandard Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStandard Reply` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStandard Reply`
--

LOCK TABLES `tabStandard Reply` WRITE;
/*!40000 ALTER TABLE `tabStandard Reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStandard Reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag`
--

DROP TABLE IF EXISTS `tabTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `tag_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag`
--

LOCK TABLES `tabTag` WRITE;
/*!40000 ALTER TABLE `tabTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag Category`
--

DROP TABLE IF EXISTS `tabTag Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag Category`
--

LOCK TABLES `tabTag Category` WRITE;
/*!40000 ALTER TABLE `tabTag Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag Doc Category`
--

DROP TABLE IF EXISTS `tabTag Doc Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag Doc Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `tagdoc` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag Doc Category`
--

LOCK TABLES `tabTag Doc Category` WRITE;
/*!40000 ALTER TABLE `tabTag Doc Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag Doc Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabToDo`
--

DROP TABLE IF EXISTS `tabToDo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabToDo` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `assigned_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Medium',
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_by_full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `reference_type_reference_name_index` (`reference_type`,`reference_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabToDo`
--

LOCK TABLES `tabToDo` WRITE;
/*!40000 ALTER TABLE `tabToDo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabToDo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTop Bar Item`
--

DROP TABLE IF EXISTS `tabTop Bar Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTop Bar Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right` int(1) NOT NULL DEFAULT 1,
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTop Bar Item`
--

LOCK TABLES `tabTop Bar Item` WRITE;
/*!40000 ALTER TABLE `tabTop Bar Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTop Bar Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTranslation`
--

DROP TABLE IF EXISTS `tabTranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTranslation` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `language` (`language`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTranslation`
--

LOCK TABLES `tabTranslation` WRITE;
/*!40000 ALTER TABLE `tabTranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUnhandled Email`
--

DROP TABLE IF EXISTS `tabUnhandled Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUnhandled Email` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUnhandled Email`
--

LOCK TABLES `tabUnhandled Email` WRITE;
/*!40000 ALTER TABLE `tabUnhandled Email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUnhandled Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser`
--

DROP TABLE IF EXISTS `tabUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `last_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frappe_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `last_ip` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_password_update_notification` int(1) NOT NULL DEFAULT 0,
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mute_sounds` int(1) NOT NULL DEFAULT 0,
  `mobile_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_known_versions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thread_notify` int(1) NOT NULL DEFAULT 1,
  `first_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_active` datetime(6) DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_password` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_ip` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_welcome_email` int(1) NOT NULL DEFAULT 1,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logout_all_sessions` int(1) NOT NULL DEFAULT 0,
  `send_me_a_copy` int(1) NOT NULL DEFAULT 0,
  `role_profile_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_after` int(11) NOT NULL DEFAULT 0,
  `email_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'System User',
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_before` int(11) NOT NULL DEFAULT 0,
  `simultaneous_sessions` int(11) NOT NULL DEFAULT 1,
  `time_zone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `unsubscribed` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  UNIQUE KEY `mobile_no` (`mobile_no`),
  UNIQUE KEY `username` (`username`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser`
--

LOCK TABLES `tabUser` WRITE;
/*!40000 ALTER TABLE `tabUser` DISABLE KEYS */;
INSERT INTO `tabUser` VALUES ('Administrator','2018-09-23 18:40:47.901224','2018-09-23 18:40:48.952072','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Administrator',NULL,NULL,1,NULL,0,NULL,NULL,0,NULL,NULL,NULL,1,'Administrator',NULL,NULL,'',NULL,NULL,NULL,NULL,'admin@example.com',NULL,'administrator',NULL,NULL,NULL,NULL,'Fill Screen',1,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'System User',NULL,0,1,NULL,NULL,NULL,0),('Guest','2018-09-23 18:40:48.033140','2018-09-23 18:40:48.033140','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Guest',NULL,NULL,1,NULL,0,NULL,NULL,0,NULL,NULL,NULL,1,'Guest',NULL,NULL,'',NULL,NULL,NULL,NULL,'guest@example.com',NULL,'guest',NULL,NULL,NULL,NULL,'Fill Screen',1,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'System User',NULL,0,1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tabUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser Email`
--

DROP TABLE IF EXISTS `tabUser Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser Email` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_outgoing` int(1) NOT NULL DEFAULT 0,
  `awaiting_password` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser Email`
--

LOCK TABLES `tabUser Email` WRITE;
/*!40000 ALTER TABLE `tabUser Email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUser Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser Permission`
--

DROP TABLE IF EXISTS `tabUser Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser Permission` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_for_all_roles` int(1) NOT NULL DEFAULT 1,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser Permission`
--

LOCK TABLES `tabUser Permission` WRITE;
/*!40000 ALTER TABLE `tabUser Permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUser Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabVersion`
--

DROP TABLE IF EXISTS `tabVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabVersion` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`),
  KEY `ref_doctype_docname_index` (`ref_doctype`,`docname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabVersion`
--

LOCK TABLES `tabVersion` WRITE;
/*!40000 ALTER TABLE `tabVersion` DISABLE KEYS */;
INSERT INTO `tabVersion` VALUES ('27f5636ac6','2018-09-23 18:40:49.033251','2018-09-23 18:40:49.033251','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Administrator','{\n \"added\": [\n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 3, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8fc883e059\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"All\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 4, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"44beb493e0\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Guest\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 5, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6fa4015792\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Report Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 6, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"1db0f7e2e3\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Website Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 7, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"89f39d73a8\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Blogger\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 8, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8b5a2ccb76\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Contributor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 9, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"c3d3ac1d4f\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Editor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 10, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"f5324ae2f8\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Newsletter Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 11, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"867401de2a\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 12, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"ff6262645f\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 13, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"c50f08771f\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 14, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"a294a2cfb6\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 15, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"ae3f175537\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 16, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"bc4127ac54\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 17, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"2449151b1b\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Master Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 18, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"a732b9e424\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 19, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"146276fc56\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2018-09-23 18:40:47.901224\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 20, \n    \"modified\": \"2018-09-23 18:40:48.952072\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"079c2157fb\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Master Manager\"\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('cdace43a9a','2018-09-23 18:40:48.065882','2018-09-23 18:40:48.065882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Guest','{\n \"comment\": \"Administrator shared this document with Guest\", \n \"comment_type\": \"Shared\"\n}',NULL),('d4ecad136b','2018-09-23 18:40:47.972293','2018-09-23 18:40:47.972293','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Administrator','{\n \"comment\": \"Administrator shared this document with Administrator\", \n \"comment_type\": \"Shared\"\n}',NULL);
/*!40000 ALTER TABLE `tabVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Form`
--

DROP TABLE IF EXISTS `tabWeb Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Form` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `allow_edit` int(1) NOT NULL DEFAULT 0,
  `amount_based_on_field` int(1) NOT NULL DEFAULT 0,
  `amount_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_payment` int(1) NOT NULL DEFAULT 0,
  `payment_button_help` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumbs` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_required` int(1) NOT NULL DEFAULT 0,
  `allow_delete` int(1) NOT NULL DEFAULT 0,
  `max_attachment_size` int(11) NOT NULL DEFAULT 0,
  `show_sidebar` int(1) NOT NULL DEFAULT 1,
  `payment_button_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Buy Now',
  `success_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_multiple` int(1) NOT NULL DEFAULT 0,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_print` int(1) NOT NULL DEFAULT 0,
  `allow_incomplete` int(1) NOT NULL DEFAULT 0,
  `is_standard` int(1) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_page_link_text` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_comments` int(1) NOT NULL DEFAULT 0,
  `print_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,6) NOT NULL DEFAULT 0.000000,
  `success_url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `payment_gateway` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Form`
--

LOCK TABLES `tabWeb Form` WRITE;
/*!40000 ALTER TABLE `tabWeb Form` DISABLE KEYS */;
INSERT INTO `tabWeb Form` VALUES ('edit-profile','2016-09-19 05:16:59.242754','2017-07-24 12:14:04.039284','Administrator','Administrator',0,NULL,NULL,NULL,0,1,0,NULL,NULL,0,NULL,'Update Profile','[{\"title\": _(\"My Account\"), \"route\": \"me\"}]',1,0,0,1,NULL,'Profile updated successfully.','',NULL,0,NULL,0,0,1,NULL,'Core',NULL,NULL,'User',0,NULL,'update-profile',0.000000,'/me',1,NULL);
/*!40000 ALTER TABLE `tabWeb Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Form Field`
--

DROP TABLE IF EXISTS `tabWeb Form Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Form Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `read_only` int(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_value` int(11) NOT NULL DEFAULT 0,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_length` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqd` int(1) NOT NULL DEFAULT 0,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Form Field`
--

LOCK TABLES `tabWeb Form Field` WRITE;
/*!40000 ALTER TABLE `tabWeb Form Field` DISABLE KEYS */;
INSERT INTO `tabWeb Form Field` VALUES ('0f4c3e36ea','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',4,0,'',NULL,0,'User Image',0,'user_image','Attach',0,0,NULL),('28c3453bce','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',6,0,NULL,NULL,0,'Phone',0,'phone','Data',0,0,NULL),('40edebfd88','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',3,0,NULL,NULL,0,'Last Name',0,'last_name','Data',0,0,NULL),('5abace4aee','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',2,0,NULL,NULL,0,'Middle Name (Optional)',0,'middle_name','Data',0,0,NULL),('7975350ada','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',8,0,'',NULL,0,'Language',0,'language','Link',0,0,'Language'),('9b1f49cafb','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',1,0,NULL,NULL,0,'First Name',0,'first_name','Data',1,0,NULL),('cd1b46006d','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',5,0,NULL,NULL,0,'More Information',0,NULL,'Section Break',0,0,NULL),('f7caaa45aa','2016-09-19 05:16:59.242754','2018-09-23 18:40:40.743342','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',7,0,NULL,NULL,0,'Mobile Number',0,'mobile_no','Data',0,0,NULL);
/*!40000 ALTER TABLE `tabWeb Form Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Page`
--

DROP TABLE IF EXISTS `tabWeb Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Page` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `insert_style` int(1) NOT NULL DEFAULT 0,
  `header` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumbs` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_sidebar` int(1) NOT NULL DEFAULT 0,
  `enable_comments` int(1) NOT NULL DEFAULT 0,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insert_code` int(1) NOT NULL DEFAULT 0,
  `javascript` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slideshow` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_title` int(1) NOT NULL DEFAULT 1,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_section` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `website_sidebar` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Page`
--

LOCK TABLES `tabWeb Page` WRITE;
/*!40000 ALTER TABLE `tabWeb Page` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWeb Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebhook`
--

DROP TABLE IF EXISTS `tabWebhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebhook` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_docevent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebhook`
--

LOCK TABLES `tabWebhook` WRITE;
/*!40000 ALTER TABLE `tabWebhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebhook Data`
--

DROP TABLE IF EXISTS `tabWebhook Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebhook Data` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebhook Data`
--

LOCK TABLES `tabWebhook Data` WRITE;
/*!40000 ALTER TABLE `tabWebhook Data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebhook Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebhook Header`
--

DROP TABLE IF EXISTS `tabWebhook Header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebhook Header` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebhook Header`
--

LOCK TABLES `tabWebhook Header` WRITE;
/*!40000 ALTER TABLE `tabWebhook Header` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebhook Header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sidebar`
--

DROP TABLE IF EXISTS `tabWebsite Sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sidebar` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sidebar`
--

LOCK TABLES `tabWebsite Sidebar` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sidebar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sidebar Item`
--

DROP TABLE IF EXISTS `tabWebsite Sidebar Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sidebar Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sidebar Item`
--

LOCK TABLES `tabWebsite Sidebar Item` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sidebar Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Sidebar Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slideshow_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow`
--

LOCK TABLES `tabWebsite Slideshow` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow Item`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow Item`
--

LOCK TABLES `tabWebsite Slideshow Item` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Theme`
--

DROP TABLE IF EXISTS `tabWebsite Theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Theme` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `heading_style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Website',
  `footer_text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading_webfont` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_style` int(1) NOT NULL DEFAULT 1,
  `background_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_text_styles` int(1) NOT NULL DEFAULT 0,
  `custom` int(1) NOT NULL DEFAULT 1,
  `theme` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_webfont` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `js` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bootstrap` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `theme` (`theme`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Theme`
--

LOCK TABLES `tabWebsite Theme` WRITE;
/*!40000 ALTER TABLE `tabWebsite Theme` DISABLE KEYS */;
INSERT INTO `tabWebsite Theme` VALUES ('Standard','2015-02-19 13:37:33.925909','2016-12-29 05:40:17.289226','Administrator','Administrator',0,NULL,NULL,NULL,26,'','','Website','','',NULL,0,NULL,'',NULL,0,0,'Standard','','.navbar-header {\n  display: none;\n}',NULL,'',NULL,'',NULL,NULL,'14px','',NULL);
/*!40000 ALTER TABLE `tabWebsite Theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow`
--

DROP TABLE IF EXISTS `tabWorkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `override_status` int(1) NOT NULL DEFAULT 0,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_state_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'workflow_state',
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow`
--

LOCK TABLES `tabWorkflow` WRITE;
/*!40000 ALTER TABLE `tabWorkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Action`
--

DROP TABLE IF EXISTS `tabWorkflow Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Action` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_action_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Action`
--

LOCK TABLES `tabWorkflow Action` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Action` DISABLE KEYS */;
INSERT INTO `tabWorkflow Action` VALUES ('Approve','2018-09-23 18:40:48.133509','2018-09-23 18:40:48.133509','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Approve',NULL,NULL,NULL),('Reject','2018-09-23 18:40:48.135735','2018-09-23 18:40:48.135735','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Reject',NULL,NULL,NULL),('Review','2018-09-23 18:40:48.137717','2018-09-23 18:40:48.137717','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Review',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabWorkflow Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Document State`
--

DROP TABLE IF EXISTS `tabWorkflow Document State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Document State` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `allow_edit` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Document State`
--

LOCK TABLES `tabWorkflow Document State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Document State` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Document State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow State`
--

DROP TABLE IF EXISTS `tabWorkflow State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow State` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_state_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow State`
--

LOCK TABLES `tabWorkflow State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow State` DISABLE KEYS */;
INSERT INTO `tabWorkflow State` VALUES ('Approved','2018-09-23 18:40:48.103421','2018-09-23 18:40:48.103421','Administrator','Administrator',0,NULL,NULL,NULL,0,'Success',NULL,NULL,NULL,NULL,'Approved','ok-sign'),('Pending','2018-09-23 18:40:48.100214','2018-09-23 18:40:48.100214','Administrator','Administrator',0,NULL,NULL,NULL,0,'',NULL,NULL,NULL,NULL,'Pending','question-sign'),('Rejected','2018-09-23 18:40:48.113638','2018-09-23 18:40:48.113638','Administrator','Administrator',0,NULL,NULL,NULL,0,'Danger',NULL,NULL,NULL,NULL,'Rejected','remove');
/*!40000 ALTER TABLE `tabWorkflow State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Transition`
--

DROP TABLE IF EXISTS `tabWorkflow Transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Transition` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT 0,
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT 0,
  `action` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Transition`
--

LOCK TABLES `tabWorkflow Transition` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Transition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-23 13:12:36
