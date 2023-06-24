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

 Date: 24/06/2023 18:11:19
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
INSERT INTO `loan_applications` VALUES (1, 1, 322.18, 930, 5.59, '2005-05-15', '1');
INSERT INTO `loan_applications` VALUES (2, 2, 576.49, 642, 200.45, '2004-04-03', '1');
INSERT INTO `loan_applications` VALUES (3, 3, 891.21, 418, 622.16, '2016-04-10', '1');
INSERT INTO `loan_applications` VALUES (4, 4, 49.67, 895, 589.48, '2008-03-17', '1');
INSERT INTO `loan_applications` VALUES (5, 5, 939.18, 569, 761.28, '2020-02-10', '1');
INSERT INTO `loan_applications` VALUES (6, 6, 862.20, 731, 306.96, '2019-11-18', '1');
INSERT INTO `loan_applications` VALUES (7, 7, 392.49, 766, 739.19, '2017-08-06', '1');
INSERT INTO `loan_applications` VALUES (8, 8, 291.73, 111, 428.34, '2012-03-14', '1');
INSERT INTO `loan_applications` VALUES (9, 9, 60.64, 980, 108.93, '2000-04-04', '1');
INSERT INTO `loan_applications` VALUES (10, 10, 461.09, 598, 790.47, '2020-09-24', '1');
INSERT INTO `loan_applications` VALUES (11, 11, 98.70, 454, 436.32, '2019-09-17', '1');
INSERT INTO `loan_applications` VALUES (12, 12, 829.88, 203, 576.82, '2003-01-08', '1');
INSERT INTO `loan_applications` VALUES (13, 13, 86.49, 302, 916.95, '2014-12-27', '1');
INSERT INTO `loan_applications` VALUES (14, 14, 992.93, 69, 452.00, '2007-09-03', '1');
INSERT INTO `loan_applications` VALUES (15, 15, 6.51, 541, 836.29, '2021-01-09', '1');
INSERT INTO `loan_applications` VALUES (16, 16, 885.08, 156, 312.71, '2002-08-14', '1');
INSERT INTO `loan_applications` VALUES (17, 17, 387.04, 37, 235.40, '2002-02-28', '1');
INSERT INTO `loan_applications` VALUES (18, 18, 427.41, 681, 38.22, '2012-11-29', '1');
INSERT INTO `loan_applications` VALUES (19, 19, 329.56, 916, 283.15, '2019-03-28', '1');
INSERT INTO `loan_applications` VALUES (20, 20, 624.57, 751, 850.03, '2000-01-14', '1');
INSERT INTO `loan_applications` VALUES (21, 21, 199.68, 445, 667.52, '2013-10-01', '1');
INSERT INTO `loan_applications` VALUES (22, 22, 983.21, 416, 785.57, '2019-10-02', '1');
INSERT INTO `loan_applications` VALUES (23, 23, 426.71, 584, 391.49, '2012-11-03', '1');
INSERT INTO `loan_applications` VALUES (24, 24, 586.67, 79, 24.14, '2022-01-26', '1');
INSERT INTO `loan_applications` VALUES (25, 25, 157.17, 743, 597.63, '2008-12-21', '1');
INSERT INTO `loan_applications` VALUES (26, 26, 857.48, 322, 873.82, '2005-11-09', '1');
INSERT INTO `loan_applications` VALUES (27, 27, 71.34, 262, 645.93, '2021-04-24', '1');
INSERT INTO `loan_applications` VALUES (28, 28, 909.24, 353, 140.77, '2003-07-14', '1');
INSERT INTO `loan_applications` VALUES (29, 29, 320.57, 617, 443.48, '2013-02-09', '1');
INSERT INTO `loan_applications` VALUES (30, 30, 750.07, 219, 134.10, '2013-02-23', '1');
INSERT INTO `loan_applications` VALUES (31, 31, 281.95, 649, 409.24, '2009-04-30', '1');
INSERT INTO `loan_applications` VALUES (32, 32, 138.21, 573, 520.30, '2022-07-15', '1');
INSERT INTO `loan_applications` VALUES (33, 33, 486.72, 899, 268.74, '2009-04-18', '1');
INSERT INTO `loan_applications` VALUES (34, 34, 228.66, 54, 813.61, '2022-07-02', '1');
INSERT INTO `loan_applications` VALUES (35, 35, 842.27, 896, 296.10, '2001-12-09', '1');
INSERT INTO `loan_applications` VALUES (36, 36, 723.35, 70, 820.65, '2020-08-03', '1');
INSERT INTO `loan_applications` VALUES (37, 37, 574.69, 633, 472.38, '2019-08-09', '1');
INSERT INTO `loan_applications` VALUES (38, 38, 871.82, 88, 618.92, '2011-06-25', '1');
INSERT INTO `loan_applications` VALUES (39, 39, 215.73, 412, 272.58, '2022-10-02', '1');
INSERT INTO `loan_applications` VALUES (40, 40, 259.45, 604, 274.70, '2015-06-29', '1');
INSERT INTO `loan_applications` VALUES (41, 41, 359.06, 531, 300.93, '2019-12-06', '1');
INSERT INTO `loan_applications` VALUES (42, 42, 85.02, 449, 158.38, '2005-07-13', '1');
INSERT INTO `loan_applications` VALUES (43, 43, 781.72, 419, 900.54, '2011-11-04', '1');
INSERT INTO `loan_applications` VALUES (44, 44, 167.72, 224, 972.99, '2022-08-30', '1');
INSERT INTO `loan_applications` VALUES (45, 45, 567.46, 371, 718.66, '2003-04-21', '1');
INSERT INTO `loan_applications` VALUES (46, 46, 553.26, 113, 131.28, '2007-05-07', '1');
INSERT INTO `loan_applications` VALUES (47, 47, 539.74, 234, 321.98, '2009-12-03', '1');
INSERT INTO `loan_applications` VALUES (48, 48, 624.61, 266, 798.46, '2011-09-21', '1');
INSERT INTO `loan_applications` VALUES (49, 49, 338.92, 223, 67.57, '2010-12-25', '1');
INSERT INTO `loan_applications` VALUES (50, 50, 169.37, 589, 964.66, '2012-12-07', '1');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loan_contracts
-- ----------------------------
INSERT INTO `loan_contracts` VALUES (1, 1, 1, 558.35, 675, 'LkebZbXmaf', '2002-05-18', 'UUckPVQKU7');
INSERT INTO `loan_contracts` VALUES (2, 2, 2, 504.55, 255, 'nj9VNiict4', '2000-03-24', 'nq3rfGVi4E');
INSERT INTO `loan_contracts` VALUES (3, 3, 3, 400.77, 372, 'PcMqzla4gD', '2016-10-08', 'AEhPTGN3LT');
INSERT INTO `loan_contracts` VALUES (4, 4, 4, 501.13, 212, 'TALIbcV1BH', '2018-10-23', 'NICvvarwHV');
INSERT INTO `loan_contracts` VALUES (5, 5, 5, 829.14, 898, '6qGcJmpubj', '2010-08-12', '7gPg8auOzN');
INSERT INTO `loan_contracts` VALUES (6, 6, 6, 725.27, 169, 'KSzYqwEFOn', '2001-09-22', 'sXVLWtX1EU');
INSERT INTO `loan_contracts` VALUES (7, 7, 7, 113.92, 46, '7TPixpl5B6', '2005-08-16', 'Q5AlLpGQ1F');
INSERT INTO `loan_contracts` VALUES (8, 8, 8, 485.19, 768, '7JXCAnuarC', '2012-08-16', 'GtaUXDUaJV');
INSERT INTO `loan_contracts` VALUES (9, 9, 9, 606.26, 29, 'TyQmZqbU7A', '2006-06-26', '7zgPYExtwc');
INSERT INTO `loan_contracts` VALUES (10, 10, 10, 573.58, 363, 'SXa8OebjP4', '2022-10-23', 'TKSu39bZiQ');
INSERT INTO `loan_contracts` VALUES (11, 11, 11, 468.02, 648, 'wFubeAlWdY', '2006-06-22', '3poMf7s33X');
INSERT INTO `loan_contracts` VALUES (12, 12, 12, 832.90, 577, 'T0UksP0P8b', '2017-01-29', 'ldHBvXpxPq');
INSERT INTO `loan_contracts` VALUES (13, 13, 13, 609.49, 280, '7NHZOdYVjQ', '2004-07-28', 'UcEyb7kD3M');
INSERT INTO `loan_contracts` VALUES (14, 14, 14, 223.72, 38, 'y7Xwtiahwo', '2011-03-07', '63Vz7v35ac');
INSERT INTO `loan_contracts` VALUES (15, 15, 15, 551.75, 727, 'i14zJAvrPj', '2008-07-28', 'xW8u55cXtR');
INSERT INTO `loan_contracts` VALUES (16, 16, 16, 418.29, 411, 'sCHFOmXqHe', '2006-09-29', 'MKAke8Maae');
INSERT INTO `loan_contracts` VALUES (17, 17, 17, 311.25, 104, 'R0qJBj0Qtt', '2018-06-13', 'LjMqKD4VJe');
INSERT INTO `loan_contracts` VALUES (18, 18, 18, 202.88, 904, 'NbywimRm73', '2022-06-04', 'Dub1rKuS10');
INSERT INTO `loan_contracts` VALUES (19, 19, 19, 728.60, 278, '329afKAWmk', '2014-10-22', 'nrgaK2tyDZ');
INSERT INTO `loan_contracts` VALUES (20, 20, 20, 80.02, 417, 'YrkARINxj4', '2016-12-08', 'sJ9wtm74nn');
INSERT INTO `loan_contracts` VALUES (21, 21, 21, 77.19, 165, 'sxsLvee1A9', '2018-04-25', 'qH9tDkVjhq');
INSERT INTO `loan_contracts` VALUES (22, 22, 22, 743.07, 894, '0Y42YyKL1i', '2014-11-15', 'un9IoKfiyu');
INSERT INTO `loan_contracts` VALUES (23, 23, 23, 207.17, 400, 'aKsi1iqu0G', '2019-12-16', 'QZPat5u3OA');
INSERT INTO `loan_contracts` VALUES (24, 24, 24, 636.65, 733, 'VbXzWaATLU', '2012-07-06', 'yZERJ3LOM9');
INSERT INTO `loan_contracts` VALUES (25, 25, 25, 454.72, 378, 'CCSbEddH3t', '2008-12-21', 'AmBH1fWKdI');
INSERT INTO `loan_contracts` VALUES (26, 26, 26, 243.45, 497, 'wHXONIM5j5', '2019-03-12', '93430fl65B');
INSERT INTO `loan_contracts` VALUES (27, 27, 27, 157.24, 335, 'bkSCxCdSnZ', '2002-03-22', 'iAvEUcS0uy');
INSERT INTO `loan_contracts` VALUES (28, 28, 28, 404.64, 231, 'E0PNTotIBY', '2022-03-03', 'w31a75WIRp');
INSERT INTO `loan_contracts` VALUES (29, 29, 29, 293.60, 497, 'vsizFptoD4', '2004-04-22', 'XL3th3JQZf');
INSERT INTO `loan_contracts` VALUES (30, 30, 30, 539.84, 824, 'Bovz84tZZ4', '2002-03-13', 'OSPhoSKqwC');
INSERT INTO `loan_contracts` VALUES (31, 31, 31, 899.83, 687, 'EOlu16OPra', '2000-08-19', 'k2nlFwW5nl');
INSERT INTO `loan_contracts` VALUES (32, 32, 32, 849.05, 530, '8Oa8mBLHE2', '2005-01-27', 'fNV0KaWwcW');
INSERT INTO `loan_contracts` VALUES (33, 33, 33, 524.68, 7, 'JJE51VG56p', '2008-08-29', 'GkoS1qyKo8');
INSERT INTO `loan_contracts` VALUES (34, 34, 34, 633.25, 772, '5zOffXeZsm', '2015-08-18', 'AZwhr45mcA');
INSERT INTO `loan_contracts` VALUES (35, 35, 35, 352.21, 359, 'cFzkSgPe9c', '2014-08-08', 'Gu4MZmcXAZ');
INSERT INTO `loan_contracts` VALUES (36, 36, 36, 39.83, 753, 'zCkrGKuaN9', '2014-09-20', '56SdSoOrX9');
INSERT INTO `loan_contracts` VALUES (37, 37, 37, 624.84, 151, 'hIisbHdQkc', '2005-09-12', 'MRJUs5EMGI');
INSERT INTO `loan_contracts` VALUES (38, 38, 38, 217.19, 643, 'VdFHHvDgrx', '2019-02-09', 'psliY3TNN4');
INSERT INTO `loan_contracts` VALUES (39, 39, 39, 458.36, 710, 'jAbkv1z3Oy', '2013-01-31', 'lCpSlxuszu');
INSERT INTO `loan_contracts` VALUES (40, 40, 40, 966.29, 135, 'mGrFvZunLA', '2022-08-01', 'HWQIQkNYiV');
INSERT INTO `loan_contracts` VALUES (41, 41, 41, 732.00, 514, '0yEZ0LAyyy', '2012-12-24', 'RYSe4hco3s');
INSERT INTO `loan_contracts` VALUES (42, 42, 42, 476.18, 326, 'chOCXd73Ru', '2022-12-16', 'O3fKdNmhYV');
INSERT INTO `loan_contracts` VALUES (43, 43, 43, 80.94, 663, 'jAvkVWd1Jg', '2016-02-04', 'ct07QALKKj');
INSERT INTO `loan_contracts` VALUES (44, 44, 44, 3.05, 48, 'R0WjNtJGzd', '2011-03-03', 'AEelqtnlBK');
INSERT INTO `loan_contracts` VALUES (45, 45, 45, 55.52, 5, '9sDoC7vlBk', '2000-08-20', 'sq6MfSGDOi');
INSERT INTO `loan_contracts` VALUES (46, 46, 46, 454.89, 910, 'FhpSYJXFEF', '2011-01-15', 'PoyPuJpxth');
INSERT INTO `loan_contracts` VALUES (47, 47, 47, 596.71, 0, 'iGLUQx7dCl', '2005-12-02', 'KJQdzKWtis');
INSERT INTO `loan_contracts` VALUES (48, 48, 48, 844.99, 877, 'kjPGGy66Yh', '2011-02-24', 'n2cyv9oBkE');
INSERT INTO `loan_contracts` VALUES (49, 49, 49, 796.80, 479, 'rv34EBni83', '2016-01-17', 'Yw31OZoGB7');
INSERT INTO `loan_contracts` VALUES (50, 50, 50, 708.52, 231, '1Cl8khknYR', '2015-02-06', 'BTL6gFXSfQ');

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
INSERT INTO `repayment_records` VALUES (1, 423, 1, 400.00, '2004-12-25', 'Credit Card');
INSERT INTO `repayment_records` VALUES (2, 665, 2, 109.22, '2006-01-20', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (3, 127, 3, 56.93, '2016-08-04', 'PayPal');
INSERT INTO `repayment_records` VALUES (4, 180, 4, 449.33, '2013-10-29', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (5, 512, 5, 296.04, '2013-06-28', 'PayPal');
INSERT INTO `repayment_records` VALUES (6, 935, 6, 211.68, '2006-08-26', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (7, 433, 7, 220.62, '2001-07-26', 'PayPal');
INSERT INTO `repayment_records` VALUES (8, 736, 8, 877.96, '2018-10-12', 'Credit Card');
INSERT INTO `repayment_records` VALUES (9, 981, 9, 140.49, '2020-05-12', 'Credit Card');
INSERT INTO `repayment_records` VALUES (10, 907, 10, 374.85, '2002-07-03', 'PayPal');
INSERT INTO `repayment_records` VALUES (11, 619, 11, 652.82, '2015-10-11', 'Credit Card');
INSERT INTO `repayment_records` VALUES (12, 114, 12, 961.80, '2022-01-22', 'Credit Card');
INSERT INTO `repayment_records` VALUES (13, 685, 13, 314.41, '2017-11-25', 'Credit Card');
INSERT INTO `repayment_records` VALUES (14, 800, 14, 363.23, '2022-04-24', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (15, 71, 15, 755.50, '2006-04-16', 'Credit Card');
INSERT INTO `repayment_records` VALUES (16, 811, 16, 615.51, '2002-08-30', 'PayPal');
INSERT INTO `repayment_records` VALUES (17, 58, 17, 927.29, '2013-07-16', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (18, 59, 18, 547.16, '2013-04-28', 'Credit Card');
INSERT INTO `repayment_records` VALUES (19, 346, 19, 911.02, '2001-10-12', 'Credit Card');
INSERT INTO `repayment_records` VALUES (20, 541, 20, 410.60, '2001-12-30', 'Credit Card');
INSERT INTO `repayment_records` VALUES (21, 430, 21, 3.22, '2014-09-10', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (22, 357, 22, 652.19, '2020-04-23', 'PayPal');
INSERT INTO `repayment_records` VALUES (23, 483, 23, 272.80, '2002-12-24', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (24, 50, 24, 485.24, '2019-01-01', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (25, 969, 25, 267.24, '2007-05-21', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (26, 697, 26, 364.25, '2000-07-19', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (27, 563, 27, 122.38, '2008-06-09', 'PayPal');
INSERT INTO `repayment_records` VALUES (28, 734, 28, 273.02, '2018-10-25', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (29, 722, 29, 982.40, '2006-05-28', 'PayPal');
INSERT INTO `repayment_records` VALUES (30, 624, 30, 88.05, '2021-05-06', 'Credit Card');
INSERT INTO `repayment_records` VALUES (31, 850, 31, 490.84, '2006-08-21', 'PayPal');
INSERT INTO `repayment_records` VALUES (32, 499, 32, 584.83, '2019-10-28', 'Credit Card');
INSERT INTO `repayment_records` VALUES (33, 44, 33, 826.92, '2016-11-09', 'PayPal');
INSERT INTO `repayment_records` VALUES (34, 503, 34, 333.98, '2020-02-15', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (35, 463, 35, 858.77, '2013-09-23', 'PayPal');
INSERT INTO `repayment_records` VALUES (36, 345, 36, 33.57, '2006-02-05', 'Credit Card');
INSERT INTO `repayment_records` VALUES (37, 825, 37, 454.76, '2017-07-02', 'Credit Card');
INSERT INTO `repayment_records` VALUES (38, 980, 38, 673.97, '2022-08-21', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (39, 772, 39, 630.65, '2010-11-06', 'PayPal');
INSERT INTO `repayment_records` VALUES (40, 648, 40, 499.93, '2005-11-20', 'Credit Card');
INSERT INTO `repayment_records` VALUES (41, 258, 41, 403.54, '2019-10-18', 'Credit Card');
INSERT INTO `repayment_records` VALUES (42, 220, 42, 377.86, '2017-03-09', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (43, 60, 43, 413.10, '2004-11-16', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (44, 52, 44, 424.49, '2018-05-16', 'PayPal');
INSERT INTO `repayment_records` VALUES (45, 484, 45, 750.26, '2007-10-03', 'PayPal');
INSERT INTO `repayment_records` VALUES (46, 973, 46, 470.51, '2006-12-24', 'PayPal');
INSERT INTO `repayment_records` VALUES (47, 657, 47, 647.78, '2000-05-03', 'PayPal');
INSERT INTO `repayment_records` VALUES (48, 291, 48, 862.67, '2001-03-17', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (49, 213, 49, 891.21, '2020-10-19', 'Apple Pay');
INSERT INTO `repayment_records` VALUES (50, 990, 50, 761.54, '2001-01-24', 'Credit Card');

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
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1234', '1234', 'shws@icloud.com', NULL, '7 1-1 Honjocho, Yamatokoriyama');
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
