SET FOREIGN_KEY_CHECKS=0;
use `log`;

-- ----------------------------
-- Table structure for t_AgentsTransfer_tj
-- ----------------------------
DROP TABLE IF EXISTS `t_AgentsTransfer_tj`;
CREATE TABLE `t_AgentsTransfer_tj` (		
  `agents_guid` int(11) NOT NULL COMMENT '用户ID,与account.t_account',
  `player_guid` int(11) NOT NULL COMMENT '用户ID,与account.t_account',
  `transfer_id` int(11) NOT NULL COMMENT '交易id',
  `transfer_type` int(11) NOT NULL COMMENT '1进货 2出售 3回收',
  `transfer_money` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易金额',
  `agents_old_bank` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作前的银行存款',
  `agents_new_bank` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作后的银行存款',
  `player_old_bank` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作前的银行存款',
  `player_new_bank` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作后的银行存款',
  `transfer_status` int(4) NOT NULL COMMENT '处理结果',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  KEY `agents_guid` (`agents_guid`),
  KEY `player_guid` (`player_guid`),
  KEY `type_s` (`transfer_type`,`transfer_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci COMMENT='代理商转账表'
/*!50100 PARTITION BY RANGE (UNIX_TIMESTAMP(created_time))
(PARTITION t_AgentsTransfer_tj_p201701l VALUES LESS THAN (1485878400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201702 VALUES LESS THAN (1488297600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201703 VALUES LESS THAN (1490976000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201704 VALUES LESS THAN (1493568000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201705 VALUES LESS THAN (1496246400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201706 VALUES LESS THAN (1498838400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201707 VALUES LESS THAN (1501516800) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201708 VALUES LESS THAN (1504195200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201709 VALUES LESS THAN (1506787200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201710 VALUES LESS THAN (1509465600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201711 VALUES LESS THAN (1512057600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201712 VALUES LESS THAN (1514736000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201801 VALUES LESS THAN (1517414400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201802 VALUES LESS THAN (1519833600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201803 VALUES LESS THAN (1522512000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201804 VALUES LESS THAN (1525104000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201805 VALUES LESS THAN (1527782400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201806 VALUES LESS THAN (1530374400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201807 VALUES LESS THAN (1533052800) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201808 VALUES LESS THAN (1535731200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201809 VALUES LESS THAN (1538323200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201810 VALUES LESS THAN (1541001600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201811 VALUES LESS THAN (1543593600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201812 VALUES LESS THAN (1546272000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201901 VALUES LESS THAN (1548950400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201902 VALUES LESS THAN (1551369600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201903 VALUES LESS THAN (1554048000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201904 VALUES LESS THAN (1556640000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201905 VALUES LESS THAN (1559318400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201906 VALUES LESS THAN (1561910400) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201907 VALUES LESS THAN (1564588800) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201908 VALUES LESS THAN (1567267200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201909 VALUES LESS THAN (1569859200) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201910 VALUES LESS THAN (1572537600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201911 VALUES LESS THAN (1575129600) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201912 VALUES LESS THAN (1577808000) ENGINE = MyISAM,
 PARTITION t_AgentsTransfer_tj_p201912g VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;
-- ----------------------------
-- Records of t_AgentsTransfer_tj
-- ----------------------------

ALTER TABLE `t_erro_sql` ENGINE=MyISAM;
ALTER TABLE `t_erro_sql` PARTITION BY RANGE(UNIX_TIMESTAMP(created_time)) PARTITIONS 37 (PARTITION `t_erro_sql_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_erro_sql_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_erro_sql_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_erro_sql_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_erro_sql_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_erro_sql_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_erro_sql_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_erro_sql_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

CREATE INDEX `index_id` ON `t_log_bank`(`id`) USING BTREE ;
ALTER TABLE `t_log_bank` ENGINE=MyISAM;
ALTER TABLE `t_log_bank` DROP PRIMARY KEY;
ALTER TABLE `t_log_bank` PARTITION BY RANGE(UNIX_TIMESTAMP(time)) PARTITIONS 37 (PARTITION `t_log_bank_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_bank_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_bank_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_bank_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_bank_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_bank_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_bank_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_bank_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_bank_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_bank_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_bank_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_bank_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_bank_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_bank_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_bank_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_bank_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_bank_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_bank_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_bank_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_bank_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_bank_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_bank_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_bank_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_bank_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_bank_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_bank_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_bank_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_bank_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_bank_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_bank_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_bank_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_bank_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_bank_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_bank_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_bank_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_bank_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_bank_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

ALTER TABLE `t_log_channel_invite_tax` MODIFY COLUMN `time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间' AFTER `val`;
CREATE INDEX `index_id` ON `t_log_channel_invite_tax`(`id`) USING BTREE ;
ALTER TABLE `t_log_channel_invite_tax` ENGINE=MyISAM,ROW_FORMAT=Fixed;
ALTER TABLE `t_log_channel_invite_tax` DROP PRIMARY KEY;
ALTER TABLE `t_log_channel_invite_tax` PARTITION BY RANGE(UNIX_TIMESTAMP(time)) PARTITIONS 37 (PARTITION `t_log_channel_invite_tax_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_channel_invite_tax_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

ALTER TABLE `t_log_game_tj` ENGINE=MyISAM;
CREATE INDEX `index_id` ON `t_log_game_tj`(`id`) USING BTREE ;
ALTER TABLE `t_log_game_tj` DROP PRIMARY KEY;
ALTER TABLE `t_log_game_tj` PARTITION BY RANGE(UNIX_TIMESTAMP(created_time)) PARTITIONS 37 (PARTITION `t_log_game_tj_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_game_tj_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

ALTER TABLE `t_log_money` ENGINE=MyISAM,ROW_FORMAT=Fixed;
ALTER TABLE `t_log_money` ADD COLUMN `created_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间' AFTER `opt_type`;
CREATE INDEX `index_id` ON `t_log_money`(`id`) USING BTREE ;
ALTER TABLE `t_log_money` DROP PRIMARY KEY;
ALTER TABLE `t_log_money` PARTITION BY RANGE(UNIX_TIMESTAMP(created_time)) PARTITIONS 37 (PARTITION `t_log_money_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_money_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_money_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_money_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_money_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_money_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_money_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_money_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_money_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_money_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_money_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_money_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_money_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_money_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_money_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_money_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_money_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_money_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_money_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_money_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_money_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_money_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_money_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_money_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_money_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_money_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_money_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_money_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_money_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_money_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_money_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_money_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_money_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_money_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_money_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_money_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_money_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

ALTER TABLE `t_log_money_tj` ENGINE=MyISAM;
ALTER TABLE `t_log_money_tj` PARTITION BY RANGE(UNIX_TIMESTAMP(created_time)) PARTITIONS 37 (PARTITION `t_log_money_tj_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_money_tj_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;

ALTER TABLE `t_log_recharge` ENGINE=MyISAM;
CREATE INDEX `index_id` ON `t_log_recharge`(`id`) USING BTREE ;
ALTER TABLE `t_log_recharge` DROP PRIMARY KEY;
ALTER TABLE `t_log_recharge` PARTITION BY RANGE(UNIX_TIMESTAMP(created_at)) PARTITIONS 37 (PARTITION `t_log_recharge_p201701l` VALUES LESS THAN (1485878400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201702` VALUES LESS THAN (1488297600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201703` VALUES LESS THAN (1490976000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201704` VALUES LESS THAN (1493568000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201705` VALUES LESS THAN (1496246400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201706` VALUES LESS THAN (1498838400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201707` VALUES LESS THAN (1501516800) ENGINE=MyISAM , PARTITION `t_log_recharge_p201708` VALUES LESS THAN (1504195200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201709` VALUES LESS THAN (1506787200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201710` VALUES LESS THAN (1509465600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201711` VALUES LESS THAN (1512057600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201712` VALUES LESS THAN (1514736000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201801` VALUES LESS THAN (1517414400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201802` VALUES LESS THAN (1519833600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201803` VALUES LESS THAN (1522512000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201804` VALUES LESS THAN (1525104000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201805` VALUES LESS THAN (1527782400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201806` VALUES LESS THAN (1530374400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201807` VALUES LESS THAN (1533052800) ENGINE=MyISAM , PARTITION `t_log_recharge_p201808` VALUES LESS THAN (1535731200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201809` VALUES LESS THAN (1538323200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201810` VALUES LESS THAN (1541001600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201811` VALUES LESS THAN (1543593600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201812` VALUES LESS THAN (1546272000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201901` VALUES LESS THAN (1548950400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201902` VALUES LESS THAN (1551369600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201903` VALUES LESS THAN (1554048000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201904` VALUES LESS THAN (1556640000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201905` VALUES LESS THAN (1559318400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201906` VALUES LESS THAN (1561910400) ENGINE=MyISAM , PARTITION `t_log_recharge_p201907` VALUES LESS THAN (1564588800) ENGINE=MyISAM , PARTITION `t_log_recharge_p201908` VALUES LESS THAN (1567267200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201909` VALUES LESS THAN (1569859200) ENGINE=MyISAM , PARTITION `t_log_recharge_p201910` VALUES LESS THAN (1572537600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201911` VALUES LESS THAN (1575129600) ENGINE=MyISAM , PARTITION `t_log_recharge_p201912` VALUES LESS THAN (1577808000) ENGINE=MyISAM , PARTITION `t_log_recharge_p201912g` VALUES LESS THAN (MAXVALUE) ENGINE=MyISAM ) ;


-- ----------------------------
-- Table structure for t_log_robot_money_tj
-- ----------------------------
DROP TABLE IF EXISTS `t_log_robot_money_tj`;
CREATE TABLE `t_log_robot_money_tj` (
  `guid` int(20) NOT NULL COMMENT '用户ID',
  `is_banker` int(11) NOT NULL COMMENT '是否庄家1是,0不是',
  `winorlose` int(11) NOT NULL COMMENT '1 loss 2 win',
  `gameid` int(11) NOT NULL,
  `game_name` varchar(64) COLLATE utf8_general_ci DEFAULT NULL COMMENT '游戏名字',
  `old_money` bigint(20) NOT NULL COMMENT '游戏前的钱',
  `new_money` bigint(20) NOT NULL COMMENT '游戏后的钱',
  `tax` bigint(20) DEFAULT '0' COMMENT '游戏扣税',
  `money_change` bigint(20) NOT NULL DEFAULT '0' COMMENT '变动金币',
  `id` varchar(64) COLLATE utf8_general_ci NOT NULL COMMENT '牌局id',
   `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  KEY `index_name` (`gameid`,`created_time`) USING BTREE,
  KEY `index_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci COMMENT='机器人金币变动日志表'
/*!50100 PARTITION BY RANGE (UNIX_TIMESTAMP(created_time))
(PARTITION t_log_robot_money_tj_p201701l VALUES LESS THAN (1485878400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201702 VALUES LESS THAN (1488297600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201703 VALUES LESS THAN (1490976000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201704 VALUES LESS THAN (1493568000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201705 VALUES LESS THAN (1496246400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201706 VALUES LESS THAN (1498838400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201707 VALUES LESS THAN (1501516800) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201708 VALUES LESS THAN (1504195200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201709 VALUES LESS THAN (1506787200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201710 VALUES LESS THAN (1509465600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201711 VALUES LESS THAN (1512057600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201712 VALUES LESS THAN (1514736000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201801 VALUES LESS THAN (1517414400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201802 VALUES LESS THAN (1519833600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201803 VALUES LESS THAN (1522512000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201804 VALUES LESS THAN (1525104000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201805 VALUES LESS THAN (1527782400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201806 VALUES LESS THAN (1530374400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201807 VALUES LESS THAN (1533052800) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201808 VALUES LESS THAN (1535731200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201809 VALUES LESS THAN (1538323200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201810 VALUES LESS THAN (1541001600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201811 VALUES LESS THAN (1543593600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201812 VALUES LESS THAN (1546272000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201901 VALUES LESS THAN (1548950400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201902 VALUES LESS THAN (1551369600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201903 VALUES LESS THAN (1554048000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201904 VALUES LESS THAN (1556640000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201905 VALUES LESS THAN (1559318400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201906 VALUES LESS THAN (1561910400) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201907 VALUES LESS THAN (1564588800) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201908 VALUES LESS THAN (1567267200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201909 VALUES LESS THAN (1569859200) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201910 VALUES LESS THAN (1572537600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201911 VALUES LESS THAN (1575129600) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201912 VALUES LESS THAN (1577808000) ENGINE = MyISAM,
 PARTITION t_log_robot_money_tj_p201912g VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

SET FOREIGN_KEY_CHECKS=1;

