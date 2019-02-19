-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 18/02/2019 às 20:59
-- Versão do servidor: 5.7.20-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `programar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `INSTITUICAO`
--

CREATE TABLE `INSTITUICAO` (
  `IDINST` bigint(20) UNSIGNED NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `SIGLA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PROFESSOR`
--

CREATE TABLE `PROFESSOR` (
  `IDPROF` bigint(20) UNSIGNED NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DTNASC` date NOT NULL,
  `DTCONTRATACAO` date NOT NULL,
  `IDTIT` int(11) NOT NULL,
  `IDINST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TITULACAO`
--

CREATE TABLE `TITULACAO` (
  `IDTIT` bigint(20) UNSIGNED NOT NULL,
  `DESCRICAO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `TITULACAO`
--

INSERT INTO `TITULACAO` (`IDTIT`, `DESCRICAO`) VALUES
(1, 'ESPECIALISTA'),
(2, 'MESTRE'),
(3, 'DOUTOR');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `INSTITUICAO`
--
ALTER TABLE `INSTITUICAO`
  ADD PRIMARY KEY (`IDINST`),
  ADD UNIQUE KEY `IDINST` (`IDINST`);

--
-- Índices de tabela `PROFESSOR`
--
ALTER TABLE `PROFESSOR`
  ADD PRIMARY KEY (`IDPROF`),
  ADD UNIQUE KEY `IDPROF` (`IDPROF`);

--
-- Índices de tabela `TITULACAO`
--
ALTER TABLE `TITULACAO`
  ADD PRIMARY KEY (`IDTIT`),
  ADD UNIQUE KEY `IDTIT` (`IDTIT`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `INSTITUICAO`
--
ALTER TABLE `INSTITUICAO`
  MODIFY `IDINST` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `PROFESSOR`
--
ALTER TABLE `PROFESSOR`
  MODIFY `IDPROF` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `TITULACAO`
--
ALTER TABLE `TITULACAO`
  MODIFY `IDTIT` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
