ALTER TABLE `vtiger_eventhandlers` AUTO_INCREMENT = 58;

RENAME TABLE `u_yf_mail_address_boock` TO `u_yf_mail_address_book`;

ALTER TABLE `s_yf_mail_queue` CHANGE `from` `from` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `s_yf_mail_queue` CHANGE `to` `to` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `s_yf_mail_smtp` CHANGE `replay_to` `reply_to` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

ALTER TABLE `u_yf_announcement` ADD `is_mandatory` SMALLINT(6) NULL DEFAULT NULL ;

ALTER TABLE `vtiger_currency_info` CHANGE `defaultid` `defaultid` TINYINT(6) NOT NULL DEFAULT '0';

ALTER TABLE `vtiger_loginhistory` CHANGE `user_ip` `user_ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

ALTER TABLE `vtiger_loginhistory` CHANGE `login_time` `login_time` TIMESTAMP NULL DEFAULT '0000-00-00 00:00:00';

ALTER TABLE `vtiger_ossmailscanner_folders_uid` CHANGE `user_id` `user_id` INT(10) UNSIGNED NULL DEFAULT NULL;

ALTER TABLE `vtiger_ossmailscanner_folders_uid` CHANGE `uid` `uid` INT(19) NULL DEFAULT '0';
ALTER TABLE `vtiger_ossmailscanner_folders_uid` ADD KEY(`user_id`);
ALTER TABLE `vtiger_ossmailscanner_folders_uid` ADD KEY(`folder`);

ALTER TABLE `vtiger_ossmailview` ADD KEY(`verify`);
ALTER TABLE `vtiger_ossmailview` ADD KEY(`uid`,`rc_user`);
ALTER TABLE `vtiger_ossmailview` ADD KEY(`uid`,`mbox`);

ALTER TABLE `vtiger_project` ADD `parent_id` INT(19) NULL DEFAULT NULL ;
ALTER TABLE `vtiger_project` ADD KEY(`project_no`);

ALTER TABLE `vtiger_troubletickets` ADD KEY(`ticket_no`);

ALTER TABLE `vtiger_users` ADD `phone` VARCHAR(50) NULL DEFAULT NULL ;
ALTER TABLE `vtiger_users` ADD `mobile` VARCHAR(50) NULL DEFAULT NULL ;





