-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: robb0252.publiccloud.com.br:3306
-- Generation Time: 09-Set-2018 às 17:54
-- Versão do servidor: 5.6.37-82.2-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leobakargymorais_info_rest`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `politico` varchar(200) DEFAULT NULL,
  `text` text,
  `data` datetime DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `dica` varchar(500) DEFAULT NULL,
  `uteis` varchar(200) NOT NULL,
  `emailFeedback` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `politico`, `text`, `data`, `area`, `dica`, `uteis`, `emailFeedback`, `status`) VALUES
(186, 'Ver. Carlão PSB', 'Autoriza a implantação de programa de tratamento contra a depressão na infância e na adolescência nas Unidades Básicas de Saúde - UBS. ', '2018-05-16 00:00:00', 'Saúde', 'Verifique se a implantação foi de fato feita, e entre em contato através dos campos abaixo para mais informações', 'SESAU - Secretaria Municipal de Saúde: (67)3314-3000\n\nCVV - Centro de Valorização a Vida: 188\n\nVereador Carlão: (67)3316-1555/(67)3316-1556', 'ouvidoria@sesau.capital.ms.gov.br', '1'),
(189, 'Ver. William Maksoud PMN', 'Dispõe a criação do programa \"Adote um Campo de Futebol\"', '2018-01-28 00:00:00', 'Cultura', 'Agora você pode fazer parcerias com o governo da cidade para fazer a manutenção, ampliação e melhoria de campos de Futebol localizados em terrenos do Município. ', 'SECTUR - Secretaria Municipal de Cultura e Turismo:\n(67)3314-3540\n\nVereador William Maksoud: (67)3316-1641 / (67)3316-1642', 'sectur.imprensa@gmail.com', '1'),
(194, 'Ver. Papy SOLIEDARIEDADE', 'Conseguiu a liberação de R$2000,00 para a Escola Municipal Professor Danda Nunes.', '2018-08-29 00:00:00', 'Educação', 'Agora você pode conferir se foram feitas as manutenções que necessitavam.', 'SEMED - Secretaria Municipal de Educação: (67)3314-3800\n\nVereador Papy:   (67)3316-1540 / (67)3316-1541', ' comunicacao@semed.capital.ms.gov.br', '1'),
(195, 'Ver. Valdir Gomes PP', 'Solicitou o contrato de mais professores na Escola Municipal Geraldo Castelo.', '2018-09-03 00:00:00', 'Educação', 'Agora você pode conferir se ainda há a falta de professores nessa escola. ', 'SEMED - Secretaria Municipal de Educação: (67)3314-3800\n\nVereador Valdir Gomes:    (67)3316-1537 / (67)3316-1538', ' comunicacao@semed.capital.ms.gov.br', '1'),
(196, 'Ver. Otávio Trad PTB', 'Liberou R$8.000,00 para renovar o estoque de medicamentos no Hospital Santa Marina.', '2018-08-22 00:00:00', 'Saúde', 'Agora você pode conferir se ainda faltam medicamentos nesse hospital.', 'SESAU - Secretaria Municipal de Saúde: (67)3314-3000\n\nVereador Otávio Trad:    (67) 3316-1635 / (67)3316-1636', ' ouvidoria@sesau.capital.ms.gov.br', '1'),
(197, 'Ver. Gilmar da Cruz PRB', 'Comprou uma nova ambulância no valor de R$152.000,00 para a Santa Casa.', '2018-08-10 00:00:00', 'Saúde', 'Agora você pode conferir se essa aquisição era realmente necessária.', 'SESAU - Secretaria Municipal de Saúde: (67)3314-3000\n\nVereador Gilmar da Cruz:    (67) 3316-1638 / (67)3316-1639', ' ouvidoria@sesau.capital.ms.gov.br', '1'),
(200, 'Ver. Eduardo Romero REDE', 'Comprou novas câmeras filmadoras no valor de R$5.000,00 para implantar um sistema de vigilância eletrônica no bairro Lagoa Dourada.', '2018-09-06 00:00:00', 'Segurança', 'Agora você pode conferir se as câmeras foram implantadas nesse bairro.', 'SESDES - Secretaria Especial de Segurança e Defesa Social: (67)3314-4580\n\nVereador Eduardo Romero:    (67) 3316-1500', 'guardamunicipal@sesde.capital.ms.gov.br', '1'),
(201, 'Ver. Fritz PSD', 'Liberou R$15.000,00 para reforçar a segurança da Casa do Albergado Campo Grande.', '2018-08-08 00:00:00', 'Segurança', 'Agora você pode conferir se houve o reforço na segurança desse presídio.', 'SESDES - Secretaria Especial de Segurança e Defesa Social: (67)3314-4580\n\nVereador Fritz: (67) 3316-1552 / (67)3316-1553', 'guardamunicipal@sesde.capital.ms.gov.br', '1'),
(202, 'Ver. Dharleng Campos PP', 'Liberou R$3.000,00 para a reinstalação do Relógio da Calógeras e implantar uma placa QR Code.', '2018-08-27 00:00:00', 'Obras Públicas', 'Você pode ir na cerimônia para reinaugurar um dos mais simbólicos pontos da capital que ocorrerá no dia 12/09/2018 às 19 horas, no cruzamento da Avenida Afonso Pena com Calógeras.', 'SISEP - Secretaria Especial de Infraestrutura e Serviços Públicos: (67)3314-3600\n\nVereadora Dharleng Campos: (67) 3316-1522 / (67)3316-1523', 'gabinete@sisep.campogrande.ms.gov.br', '1'),
(203, 'Ver. Betinho PRB', 'Entregou R$35,3 milhões em infraestrutura para os bairros Bosque da Esperança, Danúbio Azul, Eco Parque, Jardim Veraneio e Vila Nascente.', '2018-08-15 00:00:00', 'Obras Públicas', 'Você pode conferir se ainda há problemas relacionados à infraestrutura na região do Parque dos Poderes.', 'SISEP - Secretaria Especial de Infraestrutura e Serviços Públicos: (67)3314-3600\n\nVereador Betinho: (67) 3316-1650 / (67)3316-1651', 'gabinete@sisep.campogrande.ms.gov.br', '1'),
(205, 'Ver. Ademir Santana PDT ', 'Obras no Anhandui interditam trecho de pista da Ernesto Geisel, sentido centro-bairro até o dia 22/08/2018.', '2018-08-20 00:00:00', 'Transporte', 'Você deve mudar a sua rota caso ela passe por essa pista.', 'AGETRAN - Agência Municipal de Transporte e Trânsito: (67)3314-3390\n\nVereador Ademir Santana: (67)3316-1542 / (67)3316-1547', 'reclamacoes118@agetran.campogrande.ms.gov.br', '1'),
(206, 'Ver. Ademir Santana PDT ', 'Iniciou a primeira etapa do recapeamento da Avenida Cônsul Assaf Trad com um investimento de R$2,9 milhões.', '2018-08-20 00:00:00', 'Transporte', 'Você pode reclamar caso as pistas continuem ruins ou demorem muito tempo para ficarem prontas.', 'AGETRAN - Agência Municipal de Transporte e Trânsito: (67)3314-3390\n\nVereador Ademir Santana: (67)3316-1542 / (67)3316-1547', 'reclamacoes118@agetran.campogrande.ms.gov.br', '1'),
(207, 'Ver. Ademir Santana PDT ', 'Iniciou a primeira etapa do recapeamento da Avenida Cônsul Assaf Trad com um investimento de R$2,9 milhões.', '2018-09-02 00:00:00', 'Transporte', 'Você pode reclamar caso as pistas continuem ruins ou demorem muito tempo para ficarem prontas.', 'AGETRAN - Agência Municipal de Transporte e Trânsito: (67)3314-3390\n\nVereador Ademir Santana: (67)3316-1542 / (67)3316-1547', 'reclamacoes118@agetran.campogrande.ms.gov.br', '1'),
(208, 'Ver. Chiquinho Telles PSD', 'Institui a Semana dos Frutos do Cerrado no Calendário Oficial do município, a ser realizada anualmente na segunda semana do mês de Setembro.', '2018-05-21 00:00:00', 'Cultura', 'Você pode ser um expositor da Semana dos Frutos do Cerrado.', 'Vereador Chiquinho Telles: (67)3316-1561 / (67)3316-1562\nSECTUR - Secretaria Municipal de Cultura e Turismo: (67)4042-1313', 'gabinetechiquinhotelles@hotmail.com', '1'),
(209, 'Ver. Carlão PSB', 'Institui o Dia Municipal de Conscientização de Doação de Cordão Umbilical, a ser comemorado anualmente no dia 8 de outubro, com o objetivo de estimular a doação. \n', '2018-04-11 00:00:00', 'Saúde', '', 'SESAU - Secretaria Municipal de Saúde: (67)3314-3000\nVereador Carlão: (67) 3316-1555 / (67)3316-1556', 'vereadorcarlaocg@gmail.com', '1'),
(210, 'Ver. Odilon de Oliveira PDT', 'Dispõe sobre a obrigatoriedade de a Administração Pública Municipal divulgar em seu site institucional a localização de todos os radares de fiscalização, e os respectivos limites de velocidade.', '2017-10-31 00:00:00', 'Transporte', 'Ligue para a AGETRAN e cobre o cumprimento da lei.', 'Vereador Odilon:  (67)3316-1653 / (67)3316-1654\nAGETRAN - Agência Municipal de Transporte e Trânsito: (67)3314-3390', 'vereadorodilon@camara.ms.gov.br', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
