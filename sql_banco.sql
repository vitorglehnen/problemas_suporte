-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Fev-2023 às 02:58
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `suporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `problemas`
--

CREATE TABLE `problemas` (
  `id` int(11) NOT NULL,
  `pr_modulo` varchar(35) NOT NULL,
  `pr_titulo` varchar(75) NOT NULL,
  `pr_problema` text NOT NULL,
  `pr_solucao` text NOT NULL,
  `pr_data` datetime NOT NULL DEFAULT current_timestamp(),
  `pr_primg` blob DEFAULT NULL,
  `pr_solucaoimg` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `problemas`
--

INSERT INTO `problemas` (`id`, `pr_modulo`, `pr_titulo`, `pr_problema`, `pr_solucao`, `pr_data`, `pr_primg`, `pr_solucaoimg`) VALUES
(5, 'Restaurante', 'Comanda livre não encontrada', 'Coloca o prato porém não consegue encontrar uma comanda livre', 'Pedir para realizarem o fechamento das comandas que estão em aberto, mas de imediato, aumentar a quantidade de comandas nas Configurações do sistema > Restaurante.', '2023-02-14 12:34:17', NULL, NULL),
(12, 'Dicas gerais', 'Mensagens após gerar nota', 'Tirar aquelas mensagens do tipo \"Confirma impressão da nota\" e \"Visualizar nota antes da impressão\"', 'Só ir em Utilitários > Configurador de documentos > Escolha o documento das notas e desmarca as duas caixas do lado inferior direito: \"Visualizar nota antes da impressão\" e \"Solicitar confirmação antes da impressão\"', '2023-02-14 15:58:57', NULL, NULL),
(13, 'Notas de serviço', 'asdasd', 'dsadasdasjhgjghjghjghjjk', 'asdasdasdasdasd', '2023-02-14 21:59:24', 0x89504e470d0a1a0a0000000d494844520000001e0000001e08060000003b30aea2000000097048597300000b1300000b1301009a9c18000002124944415478daed96bb4b5c411487cf2a6ae3da696521d148c81ad008825de283a4096a202212ab143e082a8228f903c42822221282d82588687c0411c107a63304414df0018a0882a095268d4ffc1dceb9a0b2de3bf7babb29f4c057ec3033dfec9cb933c747ff297cf7e220110b8a95a72059db77c0021803a3e03894e2d7a01d3c70e8b7091ac1c86dc551a05527e358067d601a6c6b5b0a2800efc0136dfb083e8073afe236951e813ad06b33192fb21274823895377b11f3f67e53e90bf0c370f79e8149959790e4dd58cc07699524a755e0b3a1d48a1ad00336c06370622a2e05032439cd22835c5d8b68b00832c01b30642aee0765a01674bb945a514f92efafe0ada9781da4830058f128e6b17f74ae47a6e2bf201ef8c13f8f621e7ba8e3fd9114278003b7e2506c351facdf2427fba1a9980f4439c901e9f2286e001de00ba830155b9f13af3893bc7d4e4bba633cd7a0a9982f10dee25492cbe0934bf17b92cf708b2465a7a6620ebeee8649aecc9760ce50fa9ce4cae4c5bf02e3769d6f7a24f8656a5239e78cafce339bedad26c92b4bf7480ed8be1731bf382d2ae7e00b819fc529bafa2c16923c8b016d636992f6cfd7dfaec45670d5c185409a433fce295fb33fc1acfe635bb949e913038a7411d924a50f8fdb05f3e03b49e5611d24fec7334ef270157b892ae7ca640de4e942c32e769487bbbcbdbcedbf404ea4c4967c82a41ac98da43868dc3df105000b721f869562e00000000049454e44ae426082, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `problemas`
--
ALTER TABLE `problemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pr_modulo` (`pr_modulo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `problemas`
--
ALTER TABLE `problemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `problemas`
--
ALTER TABLE `problemas`
  ADD CONSTRAINT `problemas_ibfk_1` FOREIGN KEY (`pr_modulo`) REFERENCES `modulos_problemas` (`mo_nome`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
