/*
 Navicat Premium Data Transfer

 Source Server         : mysql_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : dk_manage

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 21/06/2023 00:50:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loan_applications
-- ----------------------------
DROP TABLE IF EXISTS `loan_applications`;
CREATE TABLE `loan_applications`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `loan_amount` decimal(10, 2) NULL DEFAULT NULL,
  `loan_term` int NULL DEFAULT NULL,
  `loan_interest_rate` decimal(5, 2) NULL DEFAULT NULL,
  `application_date` date NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `loan_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loan_applications
-- ----------------------------

-- ----------------------------
-- Table structure for loan_contracts
-- ----------------------------
DROP TABLE IF EXISTS `loan_contracts`;
CREATE TABLE `loan_contracts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `contract_amount` decimal(10, 2) NULL DEFAULT NULL,
  `contract_term` int NULL DEFAULT NULL,
  `repayment_schedule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `signing_date` date NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loan_contracts
-- ----------------------------

-- ----------------------------
-- Table structure for repayment_records
-- ----------------------------
DROP TABLE IF EXISTS `repayment_records`;
CREATE TABLE `repayment_records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `repayment_amount` decimal(10, 2) NULL DEFAULT NULL,
  `repayment_date` date NULL DEFAULT NULL,
  `repayment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repayment_records
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Sheh Wai 222', 'WNlm2sCfmf', 'shws@icloud.com', NULL, '7 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `users` VALUES (2, 'Jia Xiaoming', 'KfVR5qcnMM', 'jiaxiaoming@icloud.com', '70-9563-0253', '5-2-16 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `users` VALUES (3, 'Rodney Holmes', 'wkB0ChMRrj', 'rodney84@gmail.com', '70-3907-6951', '6-1-15, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `users` VALUES (4, 'Yamada Yota', 'EEZZwyA5lN', 'yamada1212@icloud.com', '80-0936-8668', '3-9-8 Gakuenminami');
INSERT INTO `users` VALUES (5, 'Yoshida Momoe', '9TMhlOFYmj', 'momoeyosh3@gmail.com', '(151) 784 7420', '806 Aigburth Rd, Aigburth');
INSERT INTO `users` VALUES (6, 'Chic Wai Yee', '3k7ppXMhR2', 'chicwaiyee426@outlook.com', '192-4043-9481', '55 Huaxia St, Jinghua Shangquan');
INSERT INTO `users` VALUES (7, 'Yue Chun Yu', 'KnMCe3tX0H', 'cyyue@gmail.com', '5511 036022', '79 Trafalgar Square, Charing Cross');
INSERT INTO `users` VALUES (8, 'Tong Hui Mei', '7d28fvte9Y', 'thm@outlook.com', '184-7704-3327', '935 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `users` VALUES (9, 'Jack Tucker', 'EjuxsDKDA7', 'tuckjack@gmail.com', '70-9441-3695', '5-2-14 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `users` VALUES (10, 'Eric Rose', 'hWxOFwDAII', 'ericrose3@gmail.com', '7128 490746', '673 Volac Park, Grantchester Rd');
INSERT INTO `users` VALUES (11, 'So Fat', 'fyNSmAKKNv', 'fso7@yahoo.com', '52-187-7998', '20 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `users` VALUES (12, 'Diane James', 'X5fQZNXXC8', 'dianjames1@icloud.com', '212-877-1162', '261 West Houston Street');
INSERT INTO `users` VALUES (13, 'Chow Chun Yu', 'pvKhU3cHvM', 'chow610@hotmail.com', '7178 748736', '584 Papworth Rd, Trumpington');
INSERT INTO `users` VALUES (14, 'Dong Ziyi', 'GncC2ROwjQ', 'ziydong@outlook.com', '(161) 724 1205', '689 Portland St');
INSERT INTO `users` VALUES (15, 'Mao Yuning', 'tdOZpz9gJ4', 'myuni1@outlook.com', '(151) 625 8319', '323 Hanover St');
INSERT INTO `users` VALUES (16, 'Judy Evans', 'rVjg11xQzN', 'evajudy@outlook.com', '(161) 733 2315', '376 Portland St');
INSERT INTO `users` VALUES (17, 'Ogawa Airi', 'GldkP7NS6x', 'oair725@gmail.com', '3-8932-4034', '5-2-5 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `users` VALUES (18, 'Takada Aoi', '7CefnRioGb', 'takadaaoi@yahoo.com', '80-5949-4508', '3-19-5 Shimizu, Kita Ward');
INSERT INTO `users` VALUES (19, 'Nakamura Kazuma', 'VDItbT5ikn', 'kaznakamura10@gmail.com', '5881 048819', '141 Little Clarendon St');
INSERT INTO `users` VALUES (20, 'Hirano Kaito', 'Yss45IfH8V', 'kaih516@gmail.com', '330-516-5894', '128 West Market Street');
INSERT INTO `users` VALUES (21, 'Shi Shihan', 'XUdvtAqfjU', 'sshihan6@yahoo.com', '213-002-8146', '480 Sky Way');
INSERT INTO `users` VALUES (22, 'Linda Bailey', 'mtYKONRCPF', 'lindabai514@yahoo.com', '718-283-0497', '449 Columbia St');
INSERT INTO `users` VALUES (23, 'Fan Yu Ling', 'AZUAtKzwIB', 'fayl54@hotmail.com', '760-085-7384', '450 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `users` VALUES (24, 'Okada Hikari', 'PythjOPhCP', 'okada8@gmail.com', '184-1922-1972', '700 Jingtian East 1st St, Futian District');
INSERT INTO `users` VALUES (25, 'Bernard Allen', 'd39yInbvvw', 'allen95@gmail.com', '760-3328-7939', '136 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `users` VALUES (26, 'Aoki Aoshi', 'jF8tLt4dj6', 'aoshi1@icloud.com', '5878 551932', '225 Spring Gardens');
INSERT INTO `users` VALUES (27, 'Ti Hui Mei', 'LcAJyFNpsa', 'hmti@icloud.com', '5019 026839', '390 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `users` VALUES (28, 'Ying Chun Yu', 'WWGQ4AwYMQ', 'ying10@outlook.com', '(116) 176 0202', '753 Wyngate Dr');
INSERT INTO `users` VALUES (29, 'Gong Shihan', 'amXa3yFpt8', 'gongshihan@gmail.com', '(151) 056 6584', '232 Lodge Ln, Toxteth');
INSERT INTO `users` VALUES (30, 'Wei Xiuying', 'hPpDOzLPoc', 'xiuyingwei229@gmail.com', '7977 179260', '773 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `users` VALUES (31, 'Chic On Kay', 'rvAF5AATSN', 'chicok@outlook.com', '21-1046-5897', '753 Jianxiang Rd, Pudong');
INSERT INTO `users` VALUES (32, 'Choi Chiu Wai', '9yAdfKnCec', 'choichiuwai@outlook.com', '196-4308-9123', '208 Huaxia St, Jinghua Shangquan');
INSERT INTO `users` VALUES (33, 'Kong Lu', 'pEfktNiT7I', 'konl1974@gmail.com', '80-0759-7970', '20 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `users` VALUES (34, 'Lam Tsz Ching', 'fjamQsTqlf', 'lamtc@icloud.com', '80-1162-5508', '2-1-1 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `users` VALUES (35, 'Anita Butler', 'UFvaPaG9il', 'butler6@mail.com', '718-918-4661', '979 Nostrand Ave');
INSERT INTO `users` VALUES (36, 'Matsuda Mitsuki', 'USblLP8OnY', 'mamitsuki1227@icloud.com', '3-9535-7173', '1-5-19, Higashi-Shimbashi, Minato-ku');
INSERT INTO `users` VALUES (37, 'Yang Lu', 'dYQmXqR7h1', 'yang09@gmail.com', '(1865) 65 9759', '388 Abingdon Rd, Cumnor');
INSERT INTO `users` VALUES (38, 'Xu Jiehong', 'BjQ55GXYmh', 'jiehong4@outlook.com', '171-4821-4267', '617 West Chang\'an Avenue, Xicheng District');
INSERT INTO `users` VALUES (39, 'Gong Yuning', 'IyZCpuDJ7I', 'ygong53@gmail.com', '11-420-9343', '5-2-9 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `users` VALUES (40, 'Lu Anqi', '6ihCD4fdBZ', 'alu92@gmail.com', '330-774-1618', '237 Riverview Road');
INSERT INTO `users` VALUES (41, 'Marvin Hamilton', 'XPDq5NMTQL', 'hamilton8@gmail.com', '838-972-6032', '744 Central Avenue');
INSERT INTO `users` VALUES (42, 'Duan Lan', 'gEGuKzEHtm', 'lan6@icloud.com', '52-008-9666', '2-5-12 Chitose, Atsuta Ward');
INSERT INTO `users` VALUES (43, 'Chan Wing Sze', 'abzN6Udg7x', 'wingsze7@gmail.com', '3-5351-3944', '3-15-19 Ginza, Chuo-ku');
INSERT INTO `users` VALUES (44, 'Hao Ziyi', 'RYzdYyzAAU', 'haoziyi70@gmail.com', '184-6307-7230', '458 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `users` VALUES (45, 'Lo Tsz Ching', 'Ja6I12mo4s', 'tclo@outlook.com', '52-536-1587', '2-5-5 Chitose, Atsuta Ward');
INSERT INTO `users` VALUES (46, 'Zhou Ziyi', 'kUJYrLVre7', 'zizhou9@mail.com', '28-943-9826', '780 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `users` VALUES (47, 'Fang Zitao', 'X0EWKbn3XD', 'zitaofang@outlook.com', '11-020-8986', '2-1-1 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `users` VALUES (48, 'Yeung Hui Mei', 'txdKZ6pRyT', 'hmye00@outlook.com', '(116) 263 0141', '586 Wyngate Dr');
INSERT INTO `users` VALUES (49, 'Yuen Ka Man', 'HrI5hl6Jej', 'kaman2@icloud.com', '769-414-7139', '413 Kengmei 15th Alley');
INSERT INTO `users` VALUES (50, 'Dong Anqi', 'fblItCOheY', 'adong2@outlook.com', '755-690-9485', '525 W Ring Rd, Buji Town, Longgang');

SET FOREIGN_KEY_CHECKS = 1;
