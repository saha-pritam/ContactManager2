drop database if exists contactmanager;
create database if not exists contactmanager;
use contactmanager;

CREATE TABLE `users` (
`userid` int NOT NULL AUTO_INCREMENT,
`firstname` varchar(255) DEFAULT NULL,
`lastname` varchar(255) DEFAULT NULL,
`email` varchar(255) DEFAULT NULL,
`password` varchar(255) DEFAULT NULL,
`imagename` varchar(255) DEFAULT NULL,
PRIMARY KEY (`userid`)
);

CREATE TABLE `contacts` (
`contactid` int NOT NULL AUTO_INCREMENT,
`prefix` varchar(255) DEFAULT NULL,
`firstname` varchar(255) DEFAULT NULL,
`middlename` varchar(255) DEFAULT NULL,
`surname` varchar(255) DEFAULT NULL,
`suffix` varchar(255) DEFAULT NULL,
`phoneticfirst` varchar(255) DEFAULT NULL,
`phoneticmiddle` varchar(255) DEFAULT NULL,
`phoneticlast` varchar(255) DEFAULT NULL,
`nickname` varchar(255) DEFAULT NULL,
`fileas` varchar(255) DEFAULT NULL,
`company` varchar(255) DEFAULT NULL,
`jobtitle` varchar(255) DEFAULT NULL,
`department` varchar(255) DEFAULT NULL,
`birthday` varchar(255) DEFAULT NULL,
`notes` varchar(255) DEFAULT NULL,
`created` datetime NOT NULL,
`updated` datetime NOT NULL,
`imagename` varchar(255) DEFAULT NULL,
`userid` int DEFAULT NULL,
PRIMARY KEY (`contactid`),
CONSTRAINT `fk_contacts_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `emails` (
`id` int NOT NULL AUTO_INCREMENT,
`email` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_emails_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `phones` (
`id` int NOT NULL AUTO_INCREMENT,
`phone` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_phones_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `addresses` (
`id` int NOT NULL AUTO_INCREMENT,
`address` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_addresses_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `significantdates` (
`id` int NOT NULL AUTO_INCREMENT,
`significantdate` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_significantdates_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `websites` (
`id` int NOT NULL AUTO_INCREMENT,
`website` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_websites_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `relatedpersons` (
`id` int NOT NULL AUTO_INCREMENT,
`relatedperson` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_relatedpersons_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `customfields` (
`id` int NOT NULL AUTO_INCREMENT,
`customfield` varchar(255) DEFAULT NULL,
`label` varchar(255) DEFAULT NULL,
`contactid` int DEFAULT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_customfields_1` FOREIGN KEY (`contactid`) REFERENCES `contacts` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE
);
