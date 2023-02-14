-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2023 às 02:39
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
-- Estrutura da tabela `modulos_problemas`
--

CREATE TABLE `modulos_problemas` (
  `id` int(11) NOT NULL,
  `mo_nome` varchar(25) NOT NULL,
  `mo_data_cr` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `modulos_problemas`
--

INSERT INTO `modulos_problemas` (`id`, `mo_nome`, `mo_data_cr`) VALUES
(5, 'Omie', '2023-02-13'),
(6, 'Notas fiscais', '2023-02-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `problema`
--

CREATE TABLE `problema` (
  `id` int(11) NOT NULL,
  `pr_modulo` varchar(35) NOT NULL,
  `pr_titulo` varchar(75) NOT NULL,
  `pr_problema` text NOT NULL,
  `pr_solucao` text NOT NULL,
  `pr_data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `problema`
--

INSERT INTO `problema` (`id`, `pr_modulo`, `pr_titulo`, `pr_problema`, `pr_solucao`, `pr_data`) VALUES
(1, 'Notas fiscais', 'asdasd', 'aaaaaa', 'aaaaaaa', '2023-02-13 22:18:02'),
(3, 'Omie', 'dsadasdasdasdasd', 'asdawewqeqe', 'qweqweqe', '2023-02-13 22:23:21'),
(4, 'Omie', 'adsadadaddsad', 'dasdasdsa', 'sadasdasdads', '2023-02-13 22:27:57');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `modulos_problemas`
--
ALTER TABLE `modulos_problemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_nome` (`mo_nome`);

--
-- Índices para tabela `problema`
--
ALTER TABLE `problema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pr_modulo` (`pr_modulo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `modulos_problemas`
--
ALTER TABLE `modulos_problemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `problema`
--
ALTER TABLE `problema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `problema`
--
ALTER TABLE `problema`
  ADD CONSTRAINT `problema_ibfk_1` FOREIGN KEY (`pr_modulo`) REFERENCES `modulos_problemas` (`mo_nome`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
