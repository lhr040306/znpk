SET FOREIGN_KEY_CHECKS = 0;
SET NAMES utf8mb4;
-- classroom DDL
CREATE TABLE `classroom` (`id` INT NOT NULL AUTO_INCREMENT Comment "主键",
`name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL Comment "教室名称，如 A-101",
`capacity` INT NOT NULL Comment "容纳人数",
`type` TINYINT NULL DEFAULT 1 Comment "教室类型：1普通，2机房",
INDEX `idx_classroom_name`(`name` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci AUTO_INCREMENT = 1 ROW_FORMAT = Dynamic COMMENT = "考试教室";
-- config DDL
CREATE TABLE `config` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`name` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "配置参数名称",
`value` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "配置参数值",
`url` VARCHAR(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "url",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 3 ROW_FORMAT = Dynamic COMMENT = "配置文件";
-- exam_task DDL
CREATE TABLE `exam_task` (`id` INT NOT NULL AUTO_INCREMENT Comment "主键",
`course_name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL Comment "课程/考试名称",
`teacher_id` INT NULL Comment "监考老师ID，冗余便于频繁读取",
`student_count` INT NOT NULL Comment "参考人数",
`class_ids` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL Comment "关联班级ID集合(JSON或逗号分隔)",
`status` TINYINT NULL DEFAULT 0 Comment "0待排 1排程中 2已排 3失败",
INDEX `idx_teacher`(`teacher_id` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci AUTO_INCREMENT = 1 ROW_FORMAT = Dynamic COMMENT = "考试任务";
-- jiankaoxinxi DDL
CREATE TABLE `jiankaoxinxi` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`jiankaobianhao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "监考编号",
`kaochangmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场名称",
`kaoshikemu` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考试科目",
`jiankaoshijian` DATE NULL Comment "监考时间",
`jiaoshigonghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师工号",
`jiaoshixingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师姓名",
UNIQUE INDEX `jiankaobianhao`(`jiankaobianhao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 99 ROW_FORMAT = Dynamic COMMENT = "监考信息";
-- jiaoshi DDL
CREATE TABLE `jiaoshi` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`jiaoshigonghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "教师工号",
`jiaoshixingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "教师姓名",
`mima` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "密码",
`xingbie` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "性别",
`dianhuahaoma` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "电话号码",
UNIQUE INDEX `jiaoshigonghao`(`jiaoshigonghao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 1764589384297 ROW_FORMAT = Dynamic COMMENT = "教师";
-- kaochangxinxi DDL
CREATE TABLE `kaochangxinxi` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`kaochangmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场名称",
`kaochangweizhi` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场位置",
`zuoweishu` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "座位数",
`tupian` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "图片",
`kaochangshuoming` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场说明",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 69 ROW_FORMAT = Dynamic COMMENT = "考场信息";
-- kaoshianpai DDL
CREATE TABLE `kaoshianpai` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`kaoshikemu` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考试科目",
`kaochangmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场名称",
`kaoshiriqi` DATE NULL Comment "考试日期",
`jutishijian` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "具体时间",
`jiaoshigonghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师工号",
`jiaoshixingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "监考教师",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 80 ROW_FORMAT = Dynamic COMMENT = "考试安排";
-- kaowuanpai DDL
CREATE TABLE `kaowuanpai` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`kaoshikemu` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考试科目",
`kaochangmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考场名称",
`kaowurenyuan` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考务人员",
`xunkaorenyuan` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "巡考人员",
`kaowuxiangqing` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "考务详情",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 89 ROW_FORMAT = Dynamic COMMENT = "考务安排";
-- kechengxinxi DDL
CREATE TABLE `kechengxinxi` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`kechengbianhao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "课程编号",
`kechengmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "课程名称",
`tupian` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "图片",
`kechengneirong` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "课程内容",
`jiaoshigonghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师工号",
`jiaoshixingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师姓名",
`storeupnum` INT NULL DEFAULT 0 Comment "收藏数",
UNIQUE INDEX `kechengbianhao`(`kechengbianhao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 49 ROW_FORMAT = Dynamic COMMENT = "课程信息";
-- schedule_result DDL
CREATE TABLE `schedule_result` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`batch_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL Comment "批次号/任务ID",
`exam_task_id` INT NOT NULL Comment "外键：考试任务",
`classroom_id` INT NOT NULL Comment "外键：教室",
`time_slot_id` INT NOT NULL Comment "外键：时间段",
`conflict_score` INT NULL DEFAULT 0 Comment "冲突分(0为完美)",
`create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP Comment "生成时间",
INDEX `idx_batch`(`batch_id` ASC) USING BTREE,
INDEX `idx_exam_task`(`exam_task_id` ASC) USING BTREE,
INDEX `idx_room_time`(`classroom_id` ASC,`time_slot_id` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci AUTO_INCREMENT = 1 ROW_FORMAT = Dynamic COMMENT = "排考结果";
-- storeup DDL
CREATE TABLE `storeup` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`userid` BIGINT NOT NULL Comment "用户id",
`refid` BIGINT NULL Comment "商品id",
`tablename` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "表名",
`name` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "名称",
`picture` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "图片",
`type` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' Comment "类型",
`inteltype` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "推荐类型",
`remark` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "备注",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic COMMENT = "收藏表";
-- time_slot DDL
CREATE TABLE `time_slot` (`id` INT NOT NULL AUTO_INCREMENT Comment "主键",
`day_code` INT NOT NULL Comment "日期索引：第几天",
`period` INT NOT NULL Comment "时段索引：1上午 2下午 3晚上",
`start_time` DATETIME NULL Comment "具体开始时间",
`end_time` DATETIME NULL Comment "具体结束时间",
INDEX `idx_day_period`(`day_code` ASC,`period` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci AUTO_INCREMENT = 1 ROW_FORMAT = Dynamic COMMENT = "考试时间段";
-- token DDL
CREATE TABLE `token` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`userid` BIGINT NOT NULL Comment "用户id",
`username` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "用户名",
`tablename` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "表名",
`role` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "角色",
`token` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "密码",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "新增时间",
`expiratedtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "过期时间",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 6 ROW_FORMAT = Dynamic COMMENT = "token表";
-- users DDL
CREATE TABLE `users` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`username` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "用户名",
`password` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "密码",
`image` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "头像",
`role` VARCHAR(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' Comment "角色",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "新增时间",
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 2 ROW_FORMAT = Dynamic COMMENT = "用户表";
-- xuankexinxi DDL
CREATE TABLE `xuankexinxi` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`xuankebianhao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "选课编号",
`kechengmingcheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "课程名称",
`xuankeshijian` DATE NULL Comment "选课时间",
`xueshengzhanghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "学生账号",
`xueshengxingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "学生姓名",
`jiaoshigonghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师工号",
`jiaoshixingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "教师姓名",
`sfsh` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '待审核' Comment "是否审核",
`shhf` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "审核回复",
UNIQUE INDEX `xuankebianhao`(`xuankebianhao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 59 ROW_FORMAT = Dynamic COMMENT = "选课信息";
-- xuesheng DDL
CREATE TABLE `xuesheng` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`xueshengzhanghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "学生账号",
`xueshengxingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "学生姓名",
`mima` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "密码",
`xingbie` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "性别",
`dianhuahaoma` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "电话号码",
UNIQUE INDEX `xueshengzhanghao`(`xueshengzhanghao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 1765191427940 ROW_FORMAT = Dynamic COMMENT = "学生";
-- xueshengxueji DDL
CREATE TABLE `xueshengxueji` (`id` BIGINT NOT NULL AUTO_INCREMENT Comment "主键",
`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP Comment "创建时间",
`xueshengzhanghao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "学生账号",
`xueshengxingming` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "学生姓名",
`nianling` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "年龄",
`xingbie` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "性别",
`banji` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "班级",
`shenfenzheng` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "身份证",
`shouji` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "手机",
`jiguan` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "籍贯",
`zhengzhimianmao` VARCHAR(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL Comment "政治面貌",
`ruxueriqi` DATE NULL Comment "入学日期",
`danganwenjian` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "档案文件",
`gerenjianjie` LONGTEXT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL Comment "个人简介",
UNIQUE INDEX `xueshengzhanghao`(`xueshengzhanghao` ASC) USING BTREE,
PRIMARY KEY (`id`)) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci AUTO_INCREMENT = 39 ROW_FORMAT = Dynamic COMMENT = "学生学籍";
-- classroom DML
INSERT INTO `classroom` (`id`,`name`,`capacity`,`type`) VALUES (1,'A-101',60,1),(2,'A-102',80,1),(3,'B-201',50,1);
-- config DML
INSERT INTO `config` (`id`,`name`,`value`,`url`) VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
-- exam_task DML
INSERT INTO `exam_task` (`id`,`course_name`,`teacher_id`,`student_count`,`class_ids`,`status`) VALUES (1,'高数A',NULL,70,'101,102',0),(2,'线代A',NULL,55,'101,103',0),(3,'英语A',NULL,60,'102,103',0),(4,'数据结构',NULL,45,'104',0);
-- jiankaoxinxi DML
INSERT INTO `jiankaoxinxi` (`id`,`addtime`,`jiankaobianhao`,`kaochangmingcheng`,`kaoshikemu`,`jiankaoshijian`,`jiaoshigonghao`,`jiaoshixingming`) VALUES (91,'2024-06-19 02:23:24','1111111111','考场名称1','考试科目1','2024-06-19','教师工号1','教师姓名1'),(92,'2024-06-19 02:23:24','2222222222','考场名称2','考试科目2','2024-06-19','教师工号2','教师姓名2'),(93,'2024-06-19 02:23:24','3333333333','考场名称3','考试科目3','2024-06-19','教师工号3','教师姓名3'),(94,'2024-06-19 02:23:24','4444444444','考场名称4','考试科目4','2024-06-19','教师工号4','教师姓名4'),(95,'2024-06-19 02:23:24','5555555555','考场名称5','考试科目5','2024-06-19','教师工号5','教师姓名5'),(96,'2024-06-19 02:23:24','6666666666','考场名称6','考试科目6','2024-06-19','教师工号6','教师姓名6'),(97,'2024-06-19 02:23:24','7777777777','考场名称7','考试科目7','2024-06-19','教师工号7','教师姓名7'),(98,'2024-06-19 02:23:24','8888888888','考场名称8','考试科目8','2024-06-19','教师工号8','教师姓名8');
-- jiaoshi DML
INSERT INTO `jiaoshi` (`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`mima`,`xingbie`,`dianhuahaoma`) VALUES (21,'2024-06-19 02:23:24','教师工号1','教师姓名1','123456','男','13823888881'),(22,'2024-06-19 02:23:24','教师工号2','教师姓名2','123456','男','13823888882'),(23,'2024-06-19 02:23:24','教师工号3','教师姓名3','123456','男','13823888883'),(24,'2024-06-19 02:23:24','教师工号4','教师姓名4','123456','男','13823888884'),(25,'2024-06-19 02:23:24','教师工号5','教师姓名5','123456','男','13823888885'),(26,'2024-06-19 02:23:24','教师工号6','教师姓名6','123456','男','13823888886'),(27,'2024-06-19 02:23:24','教师工号7','教师姓名7','123456','男','13823888887'),(28,'2024-06-19 02:23:24','教师工号8','教师姓名8','123456','男','13823888888'),(1764587657156,'2025-12-01 11:13:33','123','123','123','','');
-- kaochangxinxi DML
INSERT INTO `kaochangxinxi` (`id`,`addtime`,`kaochangmingcheng`,`kaochangweizhi`,`zuoweishu`,`tupian`,`kaochangshuoming`) VALUES (61,'2024-06-19 02:23:24','考场名称1','考场位置1','座位数1','upload/kaochangxinxi_tupian1.jpg,upload/kaochangxinxi_tupian2.jpg,upload/kaochangxinxi_tupian3.jpg','考场说明1'),(62,'2024-06-19 02:23:24','考场名称2','考场位置2','座位数2','upload/kaochangxinxi_tupian2.jpg,upload/kaochangxinxi_tupian3.jpg,upload/kaochangxinxi_tupian4.jpg','考场说明2'),(63,'2024-06-19 02:23:24','考场名称3','考场位置3','座位数3','upload/kaochangxinxi_tupian3.jpg,upload/kaochangxinxi_tupian4.jpg,upload/kaochangxinxi_tupian5.jpg','考场说明3'),(64,'2024-06-19 02:23:24','考场名称4','考场位置4','座位数4','upload/kaochangxinxi_tupian4.jpg,upload/kaochangxinxi_tupian5.jpg,upload/kaochangxinxi_tupian6.jpg','考场说明4'),(65,'2024-06-19 02:23:24','考场名称5','考场位置5','座位数5','upload/kaochangxinxi_tupian5.jpg,upload/kaochangxinxi_tupian6.jpg,upload/kaochangxinxi_tupian7.jpg','考场说明5'),(66,'2024-06-19 02:23:24','考场名称6','考场位置6','座位数6','upload/kaochangxinxi_tupian6.jpg,upload/kaochangxinxi_tupian7.jpg,upload/kaochangxinxi_tupian8.jpg','考场说明6'),(67,'2024-06-19 02:23:24','考场名称7','考场位置7','座位数7','upload/kaochangxinxi_tupian7.jpg,upload/kaochangxinxi_tupian8.jpg,upload/kaochangxinxi_tupian9.jpg','考场说明7'),(68,'2024-06-19 02:23:24','考场名称8','考场位置8','座位数8','upload/kaochangxinxi_tupian8.jpg,upload/kaochangxinxi_tupian9.jpg,upload/kaochangxinxi_tupian10.jpg','考场说明8');
-- kaoshianpai DML
INSERT INTO `kaoshianpai` (`id`,`addtime`,`kaoshikemu`,`kaochangmingcheng`,`kaoshiriqi`,`jutishijian`,`jiaoshigonghao`,`jiaoshixingming`) VALUES (71,'2024-06-19 02:23:24','考试科目1','考场名称2','2024-06-19','具体时间1','教师工号1','监考教师1'),(72,'2024-06-19 02:23:24','考试科目2','考场名称2','2024-06-19','具体时间2','教师工号2','监考教师2'),(73,'2024-06-19 02:23:24','考试科目3','考场名称7','2024-06-19','具体时间3','教师工号3','监考教师3'),(74,'2024-06-19 02:23:24','考试科目4','考场名称4','2024-06-19','具体时间4','教师工号4','监考教师4'),(75,'2024-06-19 02:23:24','考试科目5','考场名称5','2024-06-19','具体时间5','教师工号5','监考教师5'),(76,'2024-06-19 02:23:24','考试科目6','考场名称6','2024-06-19','具体时间6','教师工号6','监考教师6'),(77,'2024-06-19 02:23:24','考试科目7','考场名称7','2024-06-19','具体时间7','教师工号7','监考教师7'),(78,'2024-06-19 02:23:24','考试科目8','考场名称8','2024-06-19','具体时间8','教师工号8','监考教师8');
-- kaowuanpai DML
INSERT INTO `kaowuanpai` (`id`,`addtime`,`kaoshikemu`,`kaochangmingcheng`,`kaowurenyuan`,`xunkaorenyuan`,`kaowuxiangqing`) VALUES (81,'2024-06-19 02:23:24','考试科目1','考场名称1','考务人员1','巡考人员1','考务详情1'),(82,'2024-06-19 02:23:24','考试科目2','考场名称2','考务人员2','巡考人员2','考务详情2'),(83,'2024-06-19 02:23:24','考试科目3','考场名称3','考务人员3','巡考人员3','考务详情3'),(84,'2024-06-19 02:23:24','考试科目4','考场名称4','考务人员4','巡考人员4','考务详情4'),(85,'2024-06-19 02:23:24','考试科目5','考场名称5','考务人员5','巡考人员5','考务详情5'),(86,'2024-06-19 02:23:24','考试科目6','考场名称6','考务人员6','巡考人员6','考务详情6'),(87,'2024-06-19 02:23:24','考试科目7','考场名称7','考务人员7','巡考人员7','考务详情7'),(88,'2024-06-19 02:23:24','考试科目8','考场名称8','考务人员8','巡考人员8','考务详情8');
-- kechengxinxi DML
INSERT INTO `kechengxinxi` (`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`tupian`,`kechengneirong`,`jiaoshigonghao`,`jiaoshixingming`,`storeupnum`) VALUES (41,'2024-06-19 02:23:24','1111111111','课程名称1','upload/kechengxinxi_tupian1.jpg,upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg','课程内容1','教师工号1','教师姓名1',1),(42,'2024-06-19 02:23:24','2222222222','课程名称2','upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg','课程内容2','教师工号2','教师姓名2',2),(43,'2024-06-19 02:23:24','3333333333','课程名称3','upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg','课程内容3','教师工号3','教师姓名3',3),(44,'2024-06-19 02:23:24','4444444444','课程名称4','upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg','课程内容4','教师工号4','教师姓名4',4),(45,'2024-06-19 02:23:24','5555555555','课程名称5','upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg','课程内容5','教师工号5','教师姓名5',5),(46,'2024-06-19 02:23:24','6666666666','课程名称6','upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg','课程内容6','教师工号6','教师姓名6',6),(47,'2024-06-19 02:23:24','7777777777','课程名称7','upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg','课程内容7','教师工号7','教师姓名7',7),(48,'2024-06-19 02:23:24','8888888888','课程名称8','upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg,upload/kechengxinxi_tupian10.jpg','课程内容8','教师工号8','教师姓名8',8);
-- schedule_result DML
INSERT INTO `schedule_result` (`id`,`batch_id`,`exam_task_id`,`classroom_id`,`time_slot_id`,`conflict_score`,`create_time`) VALUES (1,'ce4a7e2064d94a75bb9f22919dc9c8ee',1,2,1,0,'2025-12-11 19:09:35'),(2,'ce4a7e2064d94a75bb9f22919dc9c8ee',2,1,3,0,'2025-12-11 19:09:35'),(3,'ce4a7e2064d94a75bb9f22919dc9c8ee',3,1,2,0,'2025-12-11 19:09:35'),(4,'ce4a7e2064d94a75bb9f22919dc9c8ee',4,3,2,0,'2025-12-11 19:09:35');
-- time_slot DML
INSERT INTO `time_slot` (`id`,`day_code`,`period`,`start_time`,`end_time`) VALUES (1,1,1,'2025-01-08 09:00:00','2025-01-08 11:00:00'),(2,1,2,'2025-01-08 13:00:00','2025-01-08 15:00:00'),(3,1,3,'2025-01-08 16:00:00','2025-01-08 18:00:00');
-- token DML
INSERT INTO `token` (`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) VALUES (1,1,'admin','users','管理员','365y8mqgh8w0h217d6dso0y3mwas9ace','2025-11-28 07:35:05','2025-12-11 19:56:05'),(2,1764587588051,'123','xuesheng','学生','uj9oouf2huvzuf2jnccwxwv8s76f74w0','2025-12-01 11:12:34','2025-12-11 19:55:34'),(3,1764587657156,'123','jiaoshi','管理员','nexdolrvka50hbasr3gj9ufn6mb9o2uq','2025-12-01 11:13:39','2025-12-11 19:55:46'),(4,21,'教师工号1','jiaoshi','管理员','1vf4garrcyacv6jpmkid40mz604oz7mf','2025-12-01 12:18:32','2025-12-01 21:19:16'),(5,1765191427939,'162','xuesheng','学生','30wi4ykbz1sm8vxvs3m0ywfsd119xvgq','2025-12-08 10:56:22','2025-12-08 19:57:14');
-- users DML
INSERT INTO `users` (`id`,`username`,`password`,`image`,`role`,`addtime`) VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-06-19 02:23:24');
-- xuankexinxi DML
INSERT INTO `xuankexinxi` (`id`,`addtime`,`xuankebianhao`,`kechengmingcheng`,`xuankeshijian`,`xueshengzhanghao`,`xueshengxingming`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`) VALUES (51,'2024-06-19 02:23:24','1111111111','课程名称1','2024-06-19','学生账号1','学生姓名1','教师工号1','教师姓名1','是',''),(52,'2024-06-19 02:23:24','2222222222','课程名称2','2024-06-19','学生账号2','学生姓名2','教师工号2','教师姓名2','是',''),(53,'2024-06-19 02:23:24','3333333333','课程名称3','2024-06-19','学生账号3','学生姓名3','教师工号3','教师姓名3','是',''),(54,'2024-06-19 02:23:24','4444444444','课程名称4','2024-06-19','学生账号4','学生姓名4','教师工号4','教师姓名4','是',''),(55,'2024-06-19 02:23:24','5555555555','课程名称5','2024-06-19','学生账号5','学生姓名5','教师工号5','教师姓名5','是',''),(56,'2024-06-19 02:23:24','6666666666','课程名称6','2024-06-19','学生账号6','学生姓名6','教师工号6','教师姓名6','是',''),(57,'2024-06-19 02:23:24','7777777777','课程名称7','2024-06-19','学生账号7','学生姓名7','教师工号7','教师姓名7','是',''),(58,'2024-06-19 02:23:24','8888888888','课程名称8','2024-06-19','学生账号8','学生姓名8','教师工号8','教师姓名8','是','');
-- xuesheng DML
INSERT INTO `xuesheng` (`id`,`addtime`,`xueshengzhanghao`,`xueshengxingming`,`mima`,`xingbie`,`dianhuahaoma`) VALUES (11,'2024-06-19 02:23:24','学生账号1','学生姓名1','123456','男','13823888881'),(12,'2024-06-19 02:23:24','学生账号2','学生姓名2','123456','男','13823888882'),(13,'2024-06-19 02:23:24','学生账号3','学生姓名3','123456','男','13823888883'),(14,'2024-06-19 02:23:24','学生账号4','学生姓名4','123456','男','13823888884'),(15,'2024-06-19 02:23:24','学生账号5','学生姓名5','123456','男','13823888885'),(16,'2024-06-19 02:23:24','学生账号6','学生姓名6','123456','男','13823888886'),(17,'2024-06-19 02:23:24','学生账号7','学生姓名7','123456','男','13823888887'),(18,'2024-06-19 02:23:24','学生账号8','学生姓名8','123456','男','13823888888'),(1764322450078,'2025-11-28 09:33:30','1','1','1','男','1'),(1764587588051,'2025-12-01 11:12:24','123','小米','123','男',''),(1764846392733,'2025-12-04 11:05:45','12112','1','1','男','1'),(1765191427939,'2025-12-08 10:56:15','162','1221','123','男','');
-- xueshengxueji DML
INSERT INTO `xueshengxueji` (`id`,`addtime`,`xueshengzhanghao`,`xueshengxingming`,`nianling`,`xingbie`,`banji`,`shenfenzheng`,`shouji`,`jiguan`,`zhengzhimianmao`,`ruxueriqi`,`danganwenjian`,`gerenjianjie`) VALUES (31,'2024-06-19 02:23:24','学生账号1','学生姓名1','年龄1','男','班级1','440300199101010001','13823888881','籍贯1','政治面貌1','2024-06-19','','个人简介1'),(32,'2024-06-19 02:23:24','学生账号2','学生姓名2','年龄2','男','班级2','440300199202020002','13823888882','籍贯2','政治面貌2','2024-06-19','','个人简介2'),(33,'2024-06-19 02:23:24','学生账号3','学生姓名3','年龄3','男','班级3','440300199303030003','13823888883','籍贯3','政治面貌3','2024-06-19','','个人简介3'),(34,'2024-06-19 02:23:24','学生账号4','学生姓名4','年龄4','男','班级4','440300199404040004','13823888884','籍贯4','政治面貌4','2024-06-19','','个人简介4'),(35,'2024-06-19 02:23:24','学生账号5','学生姓名5','年龄5','男','班级5','440300199505050005','13823888885','籍贯5','政治面貌5','2024-06-19','','个人简介5'),(36,'2024-06-19 02:23:24','学生账号6','学生姓名6','年龄6','男','班级6','440300199606060006','13823888886','籍贯6','政治面貌6','2024-06-19','','个人简介6'),(37,'2024-06-19 02:23:24','学生账号7','学生姓名7','年龄7','男','班级7','440300199707070007','13823888887','籍贯7','政治面貌7','2024-06-19','','个人简介7'),(38,'2024-06-19 02:23:24','学生账号8','学生姓名8','年龄8','男','班级8','440300199808080008','13823888888','籍贯8','政治面貌8','2024-06-19','','个人简介8');
SET FOREIGN_KEY_CHECKS = 1;
