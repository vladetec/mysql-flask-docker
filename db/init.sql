CREATE TABLE `quote` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `quote` VARCHAR(512) NOT NULL,
    `quote_by` VARCHAR(100),
    `added_by` VARCHAR(100),
    `created` DATETIME DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP()
);

INSERT INTO `quote` (`quote`, `quote_by`, `added_by`)
VALUES ('A maioria dos softwares hoje é muito parecida com uma pirâmide egípcia com milhões de tijolos empilhados uns sobre os outros, sem integridade estrutural, mas feitos apenas por força bruta e milhares de escravos.', 'Allan Kay', 'Vlademir');