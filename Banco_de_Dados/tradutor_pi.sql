-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2021 às 00:56
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tradutor_pi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavras`
--

CREATE TABLE `palavras` (
  `id` int(11) NOT NULL,
  `palavra` varchar(100) NOT NULL,
  `traducao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `palavras`
--

INSERT INTO `palavras` (`id`, `palavra`, `traducao`) VALUES
(3, 'De mal a pior', 'from bad to worse'),
(4, 'Pelo amor de Deus', 'for heaven\'s sake!'),
(5, 'Pisar na bola', 'To drop the ball'),
(6, 'Antes tarde do que nunca', 'Better late than never'),
(7, 'Tudo o que é bom dura pouco', 'All good things must come to an end'),
(8, 'Em boca fechada não entra mosca ', 'A close mouth catches no flies'),
(9, 'Uma imagem vale mais que mil palavras ', 'A picture is worth a thousand words'),
(10, 'Melhor prevenir do que remediar ', 'Better safe than sorry'),
(11, 'Acordar com o pé esquerdo', 'To wake up on the wrong side of the bed'),
(12, 'Melhor um pássaro na mão do que dois voando', 'A bird in the hand is worth two in the bush'),
(13, 'Amigos, amigos; negócios à parte', 'Business is business'),
(14, 'Mentira tem pernas curtas', 'Lies have short legs'),
(15, 'Não se pode agradar a gregos e a troianos', 'You can’t please everyone'),
(16, 'Se não pode vencê-los, junte-se a eles', 'If you can’t beat them, join them'),
(17, 'O barato sai caro', 'You get what you pay for'),
(18, 'Há males que vêm para o bem', 'A blessing in disguise'),
(19, 'Em casa de ferreiro, espeto de pau', 'Cobblers’ children never wear shoes'),
(20, 'Achado não é roubado', 'Finders keepers, losers weepers'),
(21, 'Deus ajuda quem cedo madruga', 'The early bird catches the worm'),
(23, 'Mau negocio', 'Bab business'),
(24, 'Ficar p da vida', 'Ballistic'),
(25, 'Corrupto', 'Bent'),
(26, 'Estragar tudo', 'Screw up'),
(27, 'Escola da vida', 'School of Hard knocks'),
(28, 'Matar aula', 'Play hooky');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `palavras`
--
ALTER TABLE `palavras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `palavras`
--
ALTER TABLE `palavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
