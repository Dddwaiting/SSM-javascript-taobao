drop database jQuery;
CREATE DATABASE `jQuery`;



-- jquery.tbl_users definition

CREATE TABLE `tbl_users` (
                             `id` varchar(32) NOT NULL,
                             `username` varchar(32) NOT NULL,
                             `password` varchar(32) NOT NULL,
                             `phone` varchar(11) DEFAULT NULL,
                             `email` varchar(32) DEFAULT NULL,
                             `create_time` varchar(32) NOT NULL,
                             `edit_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `lock_state` varchar(1) NOT NULL,
                             `login_name` varchar(100) NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tbl_container` (
                                 `id` varchar(32) NOT NULL,
                                 `name` varchar(100) NOT NULL,
                                 `date` varchar(100) DEFAULT NULL,
                                 `container` varchar(255) DEFAULT NULL,
                                 `image_Id` varchar(100) DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;