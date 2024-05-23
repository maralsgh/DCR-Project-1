
Drop table if exists files;

CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint DEFAULT NULL,
  `readable` boolean,
  `file_content_text` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_path` (`full_path`),
  INDEX `idx_file_name` (`file_name`),
  FULLTEXT INDEX `idx_file_content_text` (`file_content_text`)
);