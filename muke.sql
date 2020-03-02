/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50509
Source Host           : localhost:3306
Source Database       : muke

Target Server Type    : MYSQL
Target Server Version : 50509
File Encoding         : 65001

Date: 2018-04-03 10:59:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `authority` int(10) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123456', '123456', null);
INSERT INTO `admin` VALUES ('2', 'qqqqqq', '123456', null);

-- ----------------------------
-- Table structure for `count`
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `msgid` int(11) NOT NULL,
  `accessCount` int(11) NOT NULL,
  `replyCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO `count` VALUES ('1', '10', '1');
INSERT INTO `count` VALUES ('2', '3', '0');
INSERT INTO `count` VALUES ('3', '7', '5');
INSERT INTO `count` VALUES ('4', '2', '1');
INSERT INTO `count` VALUES ('5', '6', '5');
INSERT INTO `count` VALUES ('6', '0', '0');
INSERT INTO `count` VALUES ('7', '0', '0');
INSERT INTO `count` VALUES ('8', '1', '0');
INSERT INTO `count` VALUES ('9', '6', '0');
INSERT INTO `count` VALUES ('10', '5', '1');
INSERT INTO `count` VALUES ('11', '1', '0');
INSERT INTO `count` VALUES ('12', '3', '1');
INSERT INTO `count` VALUES ('13', '4', '2');
INSERT INTO `count` VALUES ('14', '4', '2');
INSERT INTO `count` VALUES ('15', '2', '1');
INSERT INTO `count` VALUES ('16', '5', '2');
INSERT INTO `count` VALUES ('17', '3', '1');
INSERT INTO `count` VALUES ('18', '5', '1');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `msgid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `msgtopic` varchar(200) NOT NULL,
  `msgcontents` varchar(5000) NOT NULL,
  `msgtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msgip` varchar(30) NOT NULL,
  `theid` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '0:正常 1:置顶 2:加精',
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', 'Java 命令行打印圣诞树', '使用循环打印以下圣诞树：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;空格（高度-1），*&nbsp;1（2*行数-1），<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;空格（高度-2），*3<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*****&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;空格（高度-3），*5<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*******<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*********<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;***********&nbsp;&nbsp;<br/>n要求输入树的高度，打印圣诞树。', '2017-08-28 15:37:21', '172.17.111.30', '1', '0');
INSERT INTO `message` VALUES ('2', '1', '异步是啥东西', '异步：一种通讯方式，对设备需求简单。我们的PC机提供的标准通信接口都是异步的。', '2017-08-28 15:40:00', '172.17.111.30', '2', '0');
INSERT INTO `message` VALUES ('3', '1', 'JDK配置环境变量', '如题:', '2017-08-28 16:38:03', '0:0:0:0:0:0:0:1', '1', '0');
INSERT INTO `message` VALUES ('4', '1', '盒子模型是怎么回事?', '盒子模型的四要素分别是：<br/>content(内容)、<br/>border(边框)、<br/>padding(内边距)、<br/>margin(外边距)，', '2017-08-28 16:41:21', '0:0:0:0:0:0:0:1', '4', '0');
INSERT INTO `message` VALUES ('5', '1', '如何完全卸载MySQL数据库', '1.&nbsp;控制面板——》所有控制面板项——》程序和功能，卸载mysql&nbsp;server!', '2017-08-28 16:43:18', '0:0:0:0:0:0:0:1', '3', '0');
INSERT INTO `message` VALUES ('6', '1', '网站Bug请在此留下', '网站Bug请在此留下', '2017-08-28 16:46:56', '0:0:0:0:0:0:0:1', '6', '0');
INSERT INTO `message` VALUES ('7', '2', 'scersf eaf', 'sfraeferfre', '2017-09-26 19:29:20', '0:0:0:0:0:0:0:1', '2', '0');
INSERT INTO `message` VALUES ('8', '2', 'agzergeazgrrazsg', 'gsdrgazeghbytht', '2017-09-26 19:30:27', '0:0:0:0:0:0:0:1', '3', '0');
INSERT INTO `message` VALUES ('9', '2', 'qqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2017-09-26 20:01:57', '0:0:0:0:0:0:0:1', '3', '0');
INSERT INTO `message` VALUES ('10', '9', 'rgrdddddddddddd', 'dddddddddddddddddddddddddddddddd', '2017-09-26 20:03:21', '0:0:0:0:0:0:0:1', '3', '0');
INSERT INTO `message` VALUES ('11', '11', 'gtfffffff', 'fddddddddddddddddddd', '2017-09-26 20:08:36', '0:0:0:0:0:0:0:1', '1', '0');
INSERT INTO `message` VALUES ('12', '2', 'dddddddddddddddddddddddd', 'dddddddddddddddddddddddddddddd', '2017-09-27 08:24:53', '0:0:0:0:0:0:0:1', '2', '0');
INSERT INTO `message` VALUES ('13', '2', 'rdgrsdrg', 'svfrdggggggg', '2017-09-27 08:48:24', '0:0:0:0:0:0:0:1', '1', '0');
INSERT INTO `message` VALUES ('14', '9', 'wfszvxzzzzzz', 'zzzzzzzzzzzzzzzz', '2017-09-27 09:48:17', '0:0:0:0:0:0:0:1', '2', '0');
INSERT INTO `message` VALUES ('15', '12', 'sssssssssss', 'aaaaaaaaaaaaaaaaaa', '2017-09-27 10:52:43', '0:0:0:0:0:0:0:1', '5', '0');
INSERT INTO `message` VALUES ('16', '9', 'helloworld', '要怎么编写呢', '2017-09-27 19:29:22', '0:0:0:0:0:0:0:1', '2', '0');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `msgid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `replycontents` varchar(5000) NOT NULL,
  `replytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replyip` varchar(30) NOT NULL,
  PRIMARY KEY (`replyid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', '1', 'import&nbsp;java.util.Scanner;<br/><br/>public&nbsp;class&nbsp;test&nbsp;{<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;static&nbsp;void&nbsp;main(String[]&nbsp;args)&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scanner&nbsp;scanner&nbsp;=&nbsp;new&nbsp;Scanner(System.in);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;count&nbsp;=&nbsp;scanner.nextInt();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;i=0;&nbsp;i&gt;count;&nbsp;i++){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;j=0;&nbsp;j&gt;count*2;&nbsp;j++){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(&nbsp;i+j&gt;count&nbsp;||&nbsp;j-count&lt;i&nbsp;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(&quot;&nbsp;&quot;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(&quot;*&quot;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>', '2017-08-28 16:34:20', '172.17.111.30');
INSERT INTO `reply` VALUES ('2', '3', '1', 'a.&nbsp;新建系统变量：JAVA_HOME<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;填写安装目录：<br/>&nbsp;&nbsp;&nbsp;&nbsp;b.&nbsp;设置系统变量：PATH<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;追加变量值：.;%JAVA_HOME%\\bin;%JAVA_HOME%\\jre\\lib;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重启电脑<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;测试：javac<br/>&nbsp;&nbsp;&nbsp;&nbsp;c.&nbsp;新建系统变量：CLASSPATH<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设置值：.;%JAVA_HOME%\\lib\\dt.jar;%JAVA_HOME%\\lib\\tools.jar;', '2017-08-28 16:38:17', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('3', '3', '1', '这个环境变量都是干啥用的呢?', '2017-08-28 16:38:40', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('4', '3', '1', '&nbsp;&nbsp;JAVA_HOME&nbsp;指向的是JDK的安装路径，如C:\\jdk1.5.0_06，在这路径下你应该能够找到bin、lib等目录。值得一提的是，JDK的安装路径可以选择任意磁盘目录，不过建议你放的目录层次浅一点，如果你放的目录很深，比如x:\\XXXXXX\\xxxxx\\XXXX\\xxxx\\XXXX\\xxxx\\XXXX\\xxx……<br/>那么，下面的步骤和以后的应用你都要受累了，呵呵。设置方法：<br/>&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JAVA_HOME=C:\\jdk1.5.0_06', '2017-08-28 16:39:12', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('5', '3', '1', '&nbsp;PATH&nbsp;环境变量原来Windows里面就有，你只需修改一下，使他指向JDK的bin目录，这样你在控制台下面编译、执行程序时就不需要再键入一大串路径了。设置方法是保留原来的PATH的内容，并在其中加上%JAVA_HOME%\\bin&nbsp;(注，如果你对DOS批处理不了解，你可能不明白%%引起来的内容是什么意思；其实这里是引用上一步设定好的环境变量JAVA_HOME，你写成x:\\JDK_1.4.2也是可以的；你可以打开一个控制台窗口，输入echo&nbsp;%JAVA_HOME%来看一下你的设置结果)&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PATH=%JAVA_HOME%\\bin;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同样，%PATH%是引用以前你设置的PATH环境变量，你照抄以前的值就行了。', '2017-08-28 16:39:26', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('6', '3', '1', '&nbsp;CLASSPATH&nbsp;环境变量我放在最后面，是因为以后你出现的莫名其妙的怪问题80%以上都可能是由于CLASSPATH设置不对引起的，所以要加倍小心才行。<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLASSPATH=.;%JAVA_HOME%\\lib;%JAVA_HOME%\\lib\\tools.jar', '2017-08-28 16:39:50', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('7', '4', '1', '盒子模型中主要包括外边距、边框、内边距及元素内容的宽高，前三个属性一般称为盒子属性', '2017-08-28 16:41:38', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('8', '5', '1', '2.&nbsp;然后删除mysql文件夹下的my.ini文件及所有文件', '2017-08-28 16:43:36', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('9', '5', '1', '3.&nbsp;运行“regedit”', '2017-08-28 16:43:50', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('10', '5', '1', '删除HKEY_LOCAL_MACHINE\\SYSTEM\\ControlSet001\\Services\\Eventlog\\Application\\MySQL文件夹', '2017-08-28 16:44:01', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('11', '5', '1', '删除HKEY_LOCAL_MACHINE\\SYSTEM\\ControlSet002\\Services\\Eventlog\\Application\\MySQL文件夹。<br/>HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Eventlog\\Application\\MySQL的文件夹。<br/>如果没有可以不用删除了。', '2017-08-28 16:44:27', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('12', '5', '1', '5.&nbsp;删除C盘下的“C:\\ProgramData\\MySQL&nbsp;”所以文件，如果删除不了则用360粉碎掉即可，该programData文件是隐藏的默认，设置显示后即可见，或者直接复制上边的地址到地址栏回车即可进入！删除后重启电脑，重装MYsql数据库应该就成功了。', '2017-08-28 16:45:00', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('13', '12', '2', 'zasssssssssssssssssssss', '2017-09-27 08:48:36', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('14', '14', '9', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2017-09-27 09:48:27', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('15', '13', '2', 'ddddddddddasdsafregrgvr', '2017-09-27 09:58:18', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('16', '15', '12', 'aaaa', '2017-09-27 10:52:50', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('17', '13', '2', 'cxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2017-09-27 18:49:08', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('18', '16', '9', '这个嘛，问度娘', '2017-09-27 19:29:46', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('19', '16', '9', '你猜', '2017-09-28 08:47:23', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('20', '10', '9', '反对感叹道同德化工德辉广东海关订单鬼地方', '2017-09-28 10:09:42', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('21', '18', '9', '的翻跟头富士通还挺热乎特色的他', '2017-09-28 10:12:31', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('22', '17', '9', '的怪不得分别规范司vfdfgfdg我说过', '2017-09-28 11:04:35', '0:0:0:0:0:0:0:1');
INSERT INTO `reply` VALUES ('23', '14', '9', 'jiuzhre&nbsp;cds&nbsp;cfdcccccedws', '2017-09-28 11:36:47', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `theme`
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theid` int(11) NOT NULL AUTO_INCREMENT,
  `thename` varchar(30) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`theid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES ('1', 'Java', '0');
INSERT INTO `theme` VALUES ('2', 'JavaWeb', '0');
INSERT INTO `theme` VALUES ('3', 'MySQL', '0');
INSERT INTO `theme` VALUES ('4', 'Web前端', '0');
INSERT INTO `theme` VALUES ('5', 'SSH', '0');
INSERT INTO `theme` VALUES ('6', 'BUG反馈', '0');
INSERT INTO `theme` VALUES ('8', 'sql server', '0');
INSERT INTO `theme` VALUES ('17', 'PHP', '0');
INSERT INTO `theme` VALUES ('18', 'Python', '0');
INSERT INTO `theme` VALUES ('20', 'C++', '0');
INSERT INTO `theme` VALUES ('22', 'Html', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `realname` varchar(30) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `hobbys` varchar(50) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0: 正常 -1:禁用',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zuidaima', '111111', '冰城小象', '男', '睡觉;打豆豆', '1990-06-12', '济宁', 'aaa@163.com', '123456', '2017-08-28 15:36:00', '0');
INSERT INTO `user` VALUES ('2', 'qqqqqq', '123456', 'sa', '女', '吃饭', '2017-09-12', 'aaa', 'a@qq.com', '124', '2017-09-25 08:32:37', '0');
INSERT INTO `user` VALUES ('7', 'qwerty', '123456', 'sa', '女', '睡觉', '2000-01-01', 'ju', '1@qq.com', '6542', '2017-09-25 09:37:05', '0');
INSERT INTO `user` VALUES ('8', 'nkdhfd', '123123', 'gt', '女', '吃饭', '2000-01-01', 'fsd', '1@qq.com', '534', '2017-09-25 09:49:25', '0');
INSERT INTO `user` VALUES ('9', '123456', '123456', 'Elina', '女', '吃饭', '2017-09-05', '济宁', '11@163.com', '123456789', '2017-09-25 09:55:02', '0');
INSERT INTO `user` VALUES ('10', 'dsertgf', '876543', 'ew', '女', '睡觉', '2000-01-01', 'ht', '2@163.com', '432', '2017-09-25 09:56:14', '0');
INSERT INTO `user` VALUES ('11', 'ssssss', 'ssssss', 'sa', '女', '吃饭', '2000-01-01', 'ssss', 'ssfsfdf@152.com', '1234567', '2017-09-26 20:05:33', '0');
INSERT INTO `user` VALUES ('12', '987654', '654321', 'ew', '女', '睡觉', '2000-01-01', 'ew', '123@qq.com', '1234568654', '2017-09-27 10:52:26', '0');
INSERT INTO `user` VALUES ('13', '123456', '123456', 'w', '男', '睡觉', '2000-01-01', 'www', '123@qq.com', 'www', '2017-09-27 10:53:42', '0');
INSERT INTO `user` VALUES ('14', '123456', '123456', 'w', '女', '睡觉', '2000-01-01', 'www', '123@qq.com', '1234567', '2017-09-27 10:59:24', '0');
INSERT INTO `user` VALUES ('15', '123456', '123456', '1', '女', '睡觉', '2000-01-01', 'ew', '123@qq.com', 'q21', '2017-09-27 11:00:50', '0');
DROP TRIGGER IF EXISTS `ic`;
DELIMITER ;;
CREATE TRIGGER `ic` AFTER INSERT ON `message` FOR EACH ROW BEGIN
	INSERT INTO count VALUES(new.msgid, 0, 0);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ttt`;
DELIMITER ;;
CREATE TRIGGER `ttt` AFTER INSERT ON `reply` FOR EACH ROW BEGIN
              update count set replyCount=replyCount+1 where msgid=new.msgid;
END
;;
DELIMITER ;
