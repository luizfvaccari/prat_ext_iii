-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 15/07/2024 às 01:54
-- Versão do servidor: 10.11.6-MariaDB-0+deb12u1
-- Versão do PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cemiterio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `faf`
--

CREATE TABLE `faf` (
  `id` int(11) NOT NULL,
  `falecido` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `rg_falecido` varchar(20) NOT NULL,
  `cpf_falecido` varchar(20) NOT NULL,
  `end_falecido` varchar(100) NOT NULL,
  `end_num_falecido` varchar(10) NOT NULL,
  `end_comp_falecido` varchar(50) NOT NULL,
  `cep_falecido` varchar(20) NOT NULL,
  `bairro_falecido` varchar(50) NOT NULL,
  `cidade_falecido` varchar(50) NOT NULL,
  `uf_falecido` varchar(2) NOT NULL,
  `pai_falecido` varchar(100) NOT NULL,
  `mae_falecido` varchar(100) NOT NULL,
  `data_nasc_falecido` varchar(20) NOT NULL,
  `data_falecimento` varchar(20) NOT NULL,
  `idade_falecido` int(11) NOT NULL,
  `est_civil_falecido` varchar(20) NOT NULL,
  `loc_falecimento` varchar(100) NOT NULL,
  `causa_mortis` varchar(100) NOT NULL,
  `num_dec_obito` varchar(20) NOT NULL,
  `autopiciado` varchar(5) NOT NULL,
  `medico` varchar(100) NOT NULL,
  `crm` varchar(20) NOT NULL,
  `obs_obito` varchar(1000) NOT NULL,
  `cemiterio` varchar(100) NOT NULL,
  `possui_terreno` varchar(5) NOT NULL,
  `alvara` varchar(11) NOT NULL,
  `obs_sepultamento` varchar(1000) NOT NULL,
  `declarante` varchar(100) NOT NULL,
  `sexo_declarante` varchar(10) NOT NULL,
  `rg_declarante` varchar(20) NOT NULL,
  `cpf_declarante` varchar(20) NOT NULL,
  `end_declarante` varchar(100) NOT NULL,
  `end_num_declarante` varchar(20) NOT NULL,
  `end_comp_declarante` varchar(50) NOT NULL,
  `cep_declarante` varchar(20) NOT NULL,
  `bairro_declarante` varchar(50) NOT NULL,
  `cidade_declarante` varchar(50) NOT NULL,
  `uf_declarante` varchar(2) NOT NULL,
  `parentesco_declarante` varchar(50) NOT NULL,
  `fone_declarante` varchar(20) NOT NULL,
  `celular_declarante` varchar(20) NOT NULL,
  `email_declarante` varchar(50) NOT NULL,
  `funeraria` varchar(50) NOT NULL,
  `escolha` varchar(20) NOT NULL,
  `taxa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `faf`
--

INSERT INTO `faf` (`id`, `falecido`, `sexo`, `rg_falecido`, `cpf_falecido`, `end_falecido`, `end_num_falecido`, `end_comp_falecido`, `cep_falecido`, `bairro_falecido`, `cidade_falecido`, `uf_falecido`, `pai_falecido`, `mae_falecido`, `data_nasc_falecido`, `data_falecimento`, `idade_falecido`, `est_civil_falecido`, `loc_falecimento`, `causa_mortis`, `num_dec_obito`, `autopiciado`, `medico`, `crm`, `obs_obito`, `cemiterio`, `possui_terreno`, `alvara`, `obs_sepultamento`, `declarante`, `sexo_declarante`, `rg_declarante`, `cpf_declarante`, `end_declarante`, `end_num_declarante`, `end_comp_declarante`, `cep_declarante`, `bairro_declarante`, `cidade_declarante`, `uf_declarante`, `parentesco_declarante`, `fone_declarante`, `celular_declarante`, `email_declarante`, `funeraria`, `escolha`, `taxa`) VALUES
(1, 'Falecido', 'masculino', '1.234.567', '123.456.789-00', 'Joaçaba', '0', 'Casa', '89.600-000', 'Centro', 'Joaçaba', 'SC', 'Pai Falecido', 'Mãe Falecido', '01/01/2000', '01/01/2024', 24, 'Solteiro(a)', 'Joaçcaba', 'Morreu de morte morrida', '12345678-2', 'sim', 'Medico de Plantão', '987654', '', 'Cemitério em Joaçaba', 'não s', '', '', 'Declarante do óbito', 'feminino', '3.456.789', '987.654.321-00', 'Rua Principal', '0', 'Centro', '89.600-000', 'Interior', 'Joaçaba ', 'SC', 'Parente do Falecido', '4935278888', '', '', 'Funerária de Joaçaba', 'particular', 'não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funerarias`
--

CREATE TABLE `funerarias` (
  `id` int(11) NOT NULL,
  `cnpj_funeraria` varchar(20) NOT NULL,
  `razao_funeraria` varchar(50) NOT NULL,
  `fone_funeraria` varchar(20) NOT NULL,
  `email_funeraria` varchar(50) NOT NULL,
  `end_funeraria` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `funerarias`
--

INSERT INTO `funerarias` (`id`, `cnpj_funeraria`, `razao_funeraria`, `fone_funeraria`, `email_funeraria`, `end_funeraria`) VALUES
(1, '82.939.380/0001-00', 'Prefeitura Joaçaba', '(49) 35278888', 'prefeitura@joacaba.com.br', 'Av. XV de Novembro, 378 - Centro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'teste@teste.com', '123456');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `faf`
--
ALTER TABLE `faf`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funerarias`
--
ALTER TABLE `funerarias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `faf`
--
ALTER TABLE `faf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT de tabela `funerarias`
--
ALTER TABLE `funerarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
