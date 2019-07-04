-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 04 2019 г., 14:47
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `n910827m_leader`
--

-- --------------------------------------------------------

--
-- Структура таблицы `platform_price`
--
-- Создание: Май 28 2019 г., 05:35
--

DROP TABLE IF EXISTS `platform_price`;
CREATE TABLE `platform_price` (
  `id` int(11) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `platform_price`
--

INSERT INTO `platform_price` (`id`, `platform`, `price`) VALUES
(1, 'server', 24),
(2, 'windows', 3),
(3, 'iphone', 56),
(4, 'macos', 66),
(5, 'android', 77);

-- --------------------------------------------------------

--
-- Структура таблицы `reg_people`
--
-- Создание: Май 28 2019 г., 05:35
--

DROP TABLE IF EXISTS `reg_people`;
CREATE TABLE `reg_people` (
  `id_reg` int(11) NOT NULL,
  `date_reg` date NOT NULL,
  `email_reg` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_people`
--

INSERT INTO `reg_people` (`id_reg`, `date_reg`, `email_reg`) VALUES
(2, '2018-03-20', 'benstiller68@gmail.com'),
(5, '2003-01-20', 'oleg@gmail.com'),
(7, '2023-07-20', 'oleg@gmail.com'),
(8, '2028-10-20', 'oleg@gmail.com'),
(9, '2001-05-20', 'oleg@gmail.com'),
(10, '2018-04-10', 'oleg@gmail.com'),
(11, '2007-09-20', '121331@gmail.com'),
(12, '2006-11-20', 'ole121@yandex.ru'),
(13, '2014-02-20', 'exa@yandex.ru'),
(14, '2016-03-20', 'olga@uber.com'),
(15, '2017-06-20', 'abcde@gmail.com'),
(16, '2006-12-20', 'opl@gmail.com'),
(17, '2012-05-20', 'upponnakub-0434@yopmail.com'),
(18, '2018-12-20', 'narrodduddu-8456@yopmail.com'),
(19, '2001-02-20', 'iguwadij-5607@yopmail.com'),
(20, '2006-02-20', 'vatticylu-5495@yopmail.com'),
(21, '2019-02-20', 'pyssirruvy-9146@yopmail.com'),
(22, '2016-09-20', 'ivappucydde-6953@yopmail.com'),
(23, '2027-07-20', 'nugusequequtedo-8756@yopmail.com'),
(24, '2003-06-20', 'exyddanurr-9047@yopmail.com'),
(25, '2015-05-20', 'nugusequequtedo-8756@yopmail.com '),
(26, '2016-06-20', 'exyddanurr-9047@yopmail.com'),
(27, '2009-10-20', 'nugusequd-7046@yopmail.com'),
(28, '2014-09-20', 'exyddanurr-9047@yopmail.com'),
(29, '2004-04-20', 'yfezelluzo-5462@yopmail.com'),
(30, '2026-01-20', 'koffeffogab-4611@yopmail.com'),
(31, '2017-12-20', 'orevufef-3481@yopmail.com'),
(32, '2019-08-20', 'noviwufe-5201@yopmail.com'),
(33, '2005-10-20', 'immivewug-6860@yopmail.com'),
(34, '2014-05-20', 'acusille-8668@yopmail.com'),
(35, '2016-08-20', 'tonnetiny-9415@yopmail.com'),
(36, '2016-06-20', ''),
(37, '2005-07-20', 'ruppyqebupp-5642@yopmail.com'),
(38, '2016-03-20', 'jettawicib-8097@yopmail.com'),
(39, '2028-03-20', 'jettawicib@yopmail.com'),
(40, '2006-12-20', 'oxeveddy-6743@yopmail.com'),
(41, '2028-03-20', 'oxeveddy-6743@yopmail.com'),
(42, '2016-12-20', 'ezussekac-4985@yopmail.com'),
(43, '2015-06-20', 'igokommilli-6626@yopmail.com'),
(44, '2016-03-20', 'puzulibe-3460@yopmail.com'),
(45, '2009-06-20', 'tumommomo-8991@yopmail.com'),
(46, '2016-03-20', 'olluttageq-8187@yopmail.com'),
(47, '2011-06-20', 'mihegyha-4938@yopmail.com'),
(48, '2017-09-20', 'rofopaqa-8056@yopmail.com'),
(49, '2025-04-20', 'azeddeqi-9869@yopmail.com'),
(50, '2004-12-20', 'ejassappup-1057@yopmail.com'),
(51, '2016-08-20', 'ehetuffyf-9651@yopmail.com'),
(52, '2010-09-20', 'agemommic-1360@yopmail.com'),
(53, '2016-07-20', 'hattitinnurro-3049@yopmail.com'),
(54, '2004-07-20', 'lenucomma-0033@yopmail.com'),
(55, '2010-11-20', 'subagaffe-0813@yopmail.com'),
(56, '2002-12-20', 'muddettennag-5008@yopmail.com'),
(57, '2011-10-20', 'exapesir-4259@yopmail.com'),
(58, '2016-07-20', 'issysipopp-9302@yopmail.com'),
(59, '2015-06-20', 'zutogaffo-9526@yopmail.com'),
(60, '2012-04-20', 'zotellideq-4760@yopmail.com'),
(61, '2013-03-20', 'otakypyzo-2141@yopmail.com'),
(62, '2013-12-20', 'areguwe-2188@yopmail.com'),
(63, '2012-09-20', 'iwanehudd-0444@yopmail.com'),
(64, '2002-02-20', 'aqeppulaj-2568@yopmail.com'),
(65, '2013-05-20', 'sokipely-6838@yopmail.com'),
(66, '2010-05-20', 'avurepase-7338@yopmail.com'),
(67, '2009-03-20', 'facumofus-8596@yopmail.com'),
(68, '2007-01-20', 'abezabe-1773@yopmail.com'),
(69, '2002-02-20', 'cazenyppenne-8393@yopmail.com'),
(70, '2002-04-20', 'xirreffoxa-0025@yopmail.com'),
(71, '2001-09-20', 'upolohah-1587@yopmail.com'),
(72, '2007-06-20', 'bejevube-0096@yopmail.com'),
(73, '2017-06-20', 'xodduhumi-7652@yopmail.com'),
(74, '2018-03-20', 'annatygog-9019@yopmail.com'),
(75, '2009-01-20', 'fapuhabe-0600@yopmail.com'),
(76, '2003-04-20', 'dubewattummy-7216@yopmail.com'),
(77, '2002-06-20', 'tedatutuf-6657@yopmail.com'),
(78, '2014-02-20', 'umonnatti-1545@yopmail.com'),
(79, '2011-12-20', 'qelocyruv-2549@yopmail.com'),
(80, '2016-09-20', 'gennozoppa-6054@yopmail.com'),
(81, '2016-12-20', 'agisuqa-2084@yopmail.com'),
(82, '2023-02-20', 'seffirrammo-9909@yopmail.com'),
(83, '2004-09-20', 'alugossin-5619@yopmail.com'),
(84, '2005-09-20', 'zupusamma-6401@yopmail.com'),
(85, '2026-10-20', 'elladdevuke-5750@yopmail.com'),
(86, '2015-10-20', 'uxewojyv-5965@yopmail.com'),
(87, '2011-06-20', 'puffepobeja-5616@yopmail.com'),
(88, '2013-11-20', 'osipify-4919@yopmail.com'),
(89, '2010-08-20', 'suvuffeffa-5286@yopmail.com'),
(90, '2013-04-20', 'tobunegurri-3477@yopmail.com'),
(91, '2010-12-20', 'owuxinno-7564@yopmail.com'),
(92, '2020-02-20', 'wopovulla-0883@yopmail.com'),
(93, '2029-06-20', 'econnazal-6715@yopmail.com'),
(94, '2011-08-20', 'orretteddar-5036@yopmail.com'),
(95, '2016-09-20', 'laguzifi-5367@yopmail.com'),
(96, '2005-09-20', 'otimussaw-8904@yopmail.com'),
(97, '2030-06-20', 'bussottujaw-8940@yopmail.com'),
(98, '2029-10-20', 'zyhaqukatt-4883@yopmail.com'),
(99, '2013-10-20', 'eddeqadditt-0112@yopmail.com'),
(100, '2022-11-20', 'odagidax-6986@yopmail.com'),
(101, '2017-07-20', 'orivucuq-2447@yopmail.com'),
(102, '2013-07-20', 'ukattorryk-9457@yopmail.com'),
(103, '2008-01-20', 'yppammivimi-7618@yopmail.com'),
(104, '2021-09-20', 'ynuwino-0837@yopmail.com'),
(105, '2011-06-20', 'nimalytoj-3730@yopmail.com'),
(106, '2005-01-20', 'pupekiri-7940@yopmail.com'),
(107, '2010-03-20', 'jyluxypeve-3328@yopmail.com'),
(108, '2022-05-20', 'bodassitan-5100@yopmail.com'),
(109, '2019-01-20', 'iberunnaq-0703@yopmail.com'),
(110, '2012-10-20', 'efogemydd-9727@yopmail.com'),
(111, '2028-09-20', 'irremmasse-0762@yopmail.com'),
(112, '2014-11-20', 'osazuze-8746@yopmail.com'),
(113, '2017-04-20', 'emetella-4437@yopmail.com'),
(114, '2023-03-20', 'dijihuddu-4103@yopmail.com'),
(115, '2011-06-20', 'ippappemmew-5643@yopmail.com'),
(116, '2005-04-20', 'izattiny-4608@yopmail.com'),
(117, '2011-09-20', 'weravyfik-4221@yopmail.com'),
(118, '2008-11-20', 'vazodemmiss-2294@yopmail.com'),
(119, '2012-02-20', 'zetennipe-0828@yopmail.com'),
(120, '2022-05-20', 'eruwille-1331@yopmail.com'),
(121, '2009-02-20', 'elekyqan-8436@yopmail.com'),
(122, '2025-10-20', 'efullollur-7180@yopmail.com'),
(123, '2010-05-20', 'gaballerra-1712@yopmail.com'),
(124, '2004-02-20', 'gezekewanni-5812@yopmail.com'),
(125, '2008-11-20', 'hallepallo-7475@yopmail.com'),
(126, '2004-02-20', 'buxalizi-7335@yopmail.com'),
(127, '2018-11-20', 'marrewappapo-8611@yopmail.com'),
(128, '2003-07-20', 'luppetalik-1211@yopmail.com'),
(129, '2030-05-20', 'mucemminnag-8406@yopmail.com'),
(130, '2030-08-20', 'ittomeppi-4517@yopmail.com'),
(131, '2017-05-20', 'uddeseddajo-0716@yopmail.com'),
(132, '2009-04-20', 'mussakassuka-6371@yopmail.com'),
(133, '2025-10-20', 'aqonaxot-5399@yopmail.com'),
(134, '2005-09-20', 'fobuttyppewu-9157@yopmail.com'),
(135, '2023-11-20', 'ippygefa-3057@yopmail.com'),
(136, '2008-02-20', 'pakossebi-6641@yopmail.com'),
(137, '2006-02-20', 'mekarridduku-4717@yopmail.com'),
(138, '2021-04-20', 'isossitu-1586@yopmail.com'),
(139, '2019-04-20', 'eppasucem-2039@yopmail.com'),
(140, '2010-11-20', 'oleloky-7671@yopmail.com'),
(141, '2021-10-20', 'holynnurytta-3676@yopmail.com'),
(142, '2018-12-20', 'obawonap-5808@yopmail.com'),
(143, '2007-07-20', 'wylarofe-9760@yopmail.com'),
(144, '2023-10-20', 'cewagysiz-4710@yopmail.com'),
(145, '2030-07-20', 'eddunezeb-2137@yopmail.com'),
(146, '2002-10-20', 'onnesawu-6283@yopmail.com'),
(147, '2012-02-20', 'mimojipig-5912@yopmail.com'),
(148, '2002-12-20', 'zessejyjev-4741@yopmail.com'),
(149, '2026-02-20', 'viwuvipa-5031@yopmail.com'),
(150, '2003-07-20', 'uzesserepp-1377@yopmail.com'),
(151, '2014-10-20', 'innovommac-6622@yopmail.com'),
(152, '2017-12-20', 'cyqippitumm-2886@yopmail.com'),
(153, '2022-11-20', 'zuwyttaffess-0653@yopmail.com'),
(154, '2011-02-20', 'vihyrepam-5919@yopmail.com'),
(155, '2015-07-20', 'adippossor-2818@yopmail.com'),
(156, '2022-05-20', 'yzafavo-0330@yopmail.com'),
(157, '2028-09-20', 'xyzexoppat-3469@yopmail.com'),
(158, '2027-09-20', 'kapijacumm-3595@yopmail.com'),
(159, '2020-09-20', 'ozoddusek-5387@yopmail.com'),
(160, '2023-10-20', 'ettuffona-6694@yopmail.com'),
(161, '2029-11-20', 'eddalliqa-6190@yopmail.com'),
(162, '2017-11-20', 'xaffityddi-7160@yopmail.com'),
(163, '2013-12-20', 'omiddummi-4311@yopmail.com'),
(164, '2016-01-20', 'uqyhasu-1323@yopmail.com'),
(165, '2009-06-20', 'ubanafyfa-8530@yopmail.com'),
(166, '2027-09-20', 'ryvukugu-5513@yopmail.com'),
(167, '2003-03-20', 'ejutupe-1681@yopmail.com'),
(168, '2011-11-20', 'uqilazub-2230@yopmail.com'),
(169, '2005-10-20', 'faqinnujig-5002@yopmail.com'),
(170, '2029-08-20', 'offoddexud-7674@yopmail.com'),
(171, '2017-10-20', 'kiddummipale-3616@yopmail.com'),
(172, '2008-03-20', 'qevuvynnuk-2101@yopmail.com'),
(173, '2018-09-20', 'azocirripu-4995@yopmail.com'),
(174, '2018-03-20', 'orappimmunnu-7590@yopmail.com'),
(175, '2027-07-20', 'duperravu-6476@yopmail.com'),
(176, '2013-09-20', 'unisufuq-0160@yopmail.com'),
(177, '2003-12-20', 'verreppanni-0599@yopmail.com'),
(178, '2007-04-20', 'ohepeppoj-5676@yopmail.com'),
(179, '2025-05-20', 'tawuniry-2439@yopmail.com'),
(180, '2017-12-20', 'lejewubor-2857@yopmail.com'),
(181, '2030-09-20', 'tajacaxi-3520@yopmail.com'),
(182, '2011-01-20', 'rubettilas-8432@yopmail.com'),
(183, '2001-10-20', 'ummassaddeno-7748@yopmail.com'),
(184, '2028-09-20', 'ficyffawes-5365@yopmail.com'),
(185, '2015-08-20', 'effammoffes-6663@yopmail.com'),
(186, '2024-09-20', 'eppazadej-1491@yopmail.com'),
(187, '2014-01-20', 'axassuhen-1945@yopmail.com'),
(188, '2012-12-20', 'russabire-6694@yopmail.com'),
(189, '2017-05-20', 'assapperu-0672@yopmail.com'),
(190, '2014-03-20', 'kivyttoddol-6704@yopmail.com'),
(191, '2001-03-20', 'fucovirot-4089@yopmail.com'),
(192, '2009-09-20', 'adaduxyd-3021@yopmail.com'),
(193, '2009-11-20', 'sonnifyder-7523@yopmail.com'),
(194, '2014-03-20', 'vuffoneti-8918@yopmail.com'),
(195, '2025-01-20', 'ammumocaga-4505@yopmail.com'),
(196, '2014-02-20', 'assiraboz-4423@yopmail.com'),
(197, '2002-11-20', 'docotijif-3220@yopmail.com'),
(198, '2004-04-20', 'kuffetalloki-3461@yopmail.com'),
(199, '2024-01-20', 'immyliter-8480@yopmail.com'),
(200, '2013-08-20', 'osebutte-8456@yopmail.com'),
(201, '2008-11-20', 'offuhoddi-1392@yopmail.com'),
(202, '2015-04-20', 'tiddassowos-0988@yopmail.com'),
(203, '2012-11-20', 'anannenna-6202@yopmail.com'),
(204, '2021-08-20', 'virinnuppef-2132@yopmail.com'),
(205, '2005-01-20', 'eddehejappo-8423@yopmail.com'),
(206, '2029-08-20', 'kesafymmujy-8172@yopmail.com'),
(207, '2025-02-20', 'jezoddere-4031@yopmail.com'),
(208, '2018-12-20', 'syffellovi-9414@yopmail.com'),
(209, '2005-06-20', 'toddattevoll-4209@yopmail.com'),
(210, '2019-09-20', 'obasseppada-5551@yopmail.com'),
(211, '2018-02-20', 'focixypi-7026@yopmail.com'),
(212, '2029-01-20', 'gaxattekaha-5057@yopmail.com'),
(213, '2026-10-20', 'agatanafo-7907@yopmail.com'),
(214, '2012-10-20', 'jafuqullib-3237@yopmail.com'),
(215, '2003-11-20', 'hajorrequ-4881@yopmail.com'),
(216, '2025-05-20', 'ytatilloff-4573@yopmail.com'),
(217, '2017-09-20', 'ycufika-7864@yopmail.com'),
(218, '2014-12-20', 'appakibe-6936@yopmail.com'),
(219, '2006-06-20', 'vomassatuv-3492@yopmail.com'),
(220, '2009-08-20', 'offettezyle-8630@yopmail.com'),
(221, '2014-07-20', 'iborosu-0156@yopmail.com'),
(222, '2008-07-20', 'ylacyhu-8926@yopmail.com'),
(223, '2026-05-20', 'yssyxabuqa-6798@yopmail.com'),
(224, '2020-07-20', 'fegajynok-1957@yopmail.com'),
(225, '2011-09-20', 'gesajuri-2398@yopmail.com'),
(226, '2013-04-20', 'aqopillu-5811@yopmail.com'),
(227, '2010-08-20', 'ottakipamm-6793@yopmail.com'),
(228, '2004-03-20', 'edukido-0023@yopmail.com'),
(229, '2018-03-20', 'wazumiwu-6331@yopmail.com'),
(230, '2028-02-20', 'gesepaxev-2411@yopmail.com'),
(231, '2025-06-20', 'talommome-8106@yopmail.com'),
(232, '2022-04-20', 'recojaradd-8348@yopmail.com'),
(233, '2005-09-20', 'wigacipuze-3761@yopmail.com'),
(234, '2020-02-20', 'kexejuddewu-4781@yopmail.com'),
(235, '2027-10-20', 'rosasseqyb-5296@yopmail.com'),
(236, '2021-09-20', 'uvuhygodd-3252@yopmail.com'),
(237, '2003-07-20', 'nobadilox-4409@yopmail.com'),
(238, '2003-09-20', 'wadunnidu-1637@yopmail.com'),
(239, '2008-12-20', 'zimmecadde-9396@yopmail.com'),
(240, '2002-03-20', 'ijykafa-8639@yopmail.com'),
(241, '2016-03-20', 'acommawo-1669@yopmail.com'),
(242, '2017-02-20', 'macorerruho-3749@yopmail.com'),
(243, '2005-07-20', 'koppaxajarr-6306@yopmail.com'),
(244, '2024-12-20', 'kujazemmupa-6317@yopmail.com'),
(245, '2015-11-20', 'acycuvaw-4697@yopmail.com'),
(246, '2001-02-20', 'gekollafon-6618@yopmail.com'),
(247, '2025-10-20', 'ittoddyppor-8140@yopmail.com'),
(248, '2007-01-20', 'assuhodik-0988@yopmail.com'),
(249, '2003-06-20', 'ucemiqus-9507@yopmail.com'),
(250, '2017-10-20', 'eddunniju-5483@yopmail.com'),
(251, '2023-08-20', 'zumiqutti-7873@yopmail.com'),
(252, '2015-06-20', 'pivogepimi-7433@yopmail.com'),
(253, '2028-04-20', 'axiwinne-5802@yopmail.com'),
(254, '2010-05-20', 'wafinittib-1429@yopmail.com'),
(255, '2017-07-20', 'dedaddello-6082@yopmail.com'),
(256, '2021-03-20', 'jawyhafel-4026@yopmail.com'),
(257, '2012-01-20', 'azyppedda-9593@yopmail.com'),
(258, '2014-09-20', 'agelikass-3847@yopmail.com'),
(259, '2016-08-20', 'kadadellake-8502@yopmail.com'),
(260, '2024-08-20', 'wegoqommonn-1340@yopmail.com'),
(261, '2015-10-20', 'afykurruss-4717@yopmail.com'),
(262, '2009-05-20', 'bepoxalaz-5958@yopmail.com'),
(263, '2001-10-20', 'icoguwyv-0302@yopmail.com'),
(264, '2009-05-20', 'effebonniha-1051@yopmail.com'),
(265, '2010-02-20', 'padynnennen-0058@yopmail.com'),
(266, '2026-09-20', 'carrettiza-2083@yopmail.com'),
(267, '2010-05-20', 'ylloppimy-3453@yopmail.com'),
(268, '2003-07-20', 'cahellipuz-3228@yopmail.com'),
(269, '2018-08-20', 'owippymmax-9502@yopmail.com'),
(270, '2014-03-20', 'ydorehopp-2045@yopmail.com'),
(271, '2010-07-20', 'attassezi-5140@yopmail.com'),
(272, '2001-01-20', 'qamiffyrifa-8774@yopmail.com'),
(273, '2027-04-20', 'biceraniff-3070@yopmail.com'),
(274, '2006-04-20', 'worriqevunn-5368@yopmail.com'),
(275, '2020-01-20', 'gikupesso-1047@yopmail.com'),
(276, '2025-09-20', 'ijizepevo-8033@yopmail.com'),
(277, '2024-03-20', 'tiqaxapa-4769@yopmail.com'),
(278, '2030-01-20', 'edadderyri-4126@yopmail.com'),
(279, '2026-09-20', 'tevaginu-1294@yopmail.com'),
(280, '2014-08-20', 'ozukessu-2542@yopmail.com'),
(281, '2009-06-20', 'rippappira-5323@yopmail.com'),
(282, '2014-05-20', 'guqejisom-0156@yopmail.com'),
(283, '2006-04-20', 'ifuvewo-8430@yopmail.com'),
(284, '2014-12-20', 'iddezozop-3340@yopmail.com'),
(285, '2014-09-20', 'ojocippih-3842@yopmail.com'),
(286, '2010-07-20', 'sasepahu-3959@yopmail.com'),
(287, '2009-11-20', 'muzumessoq-8712@yopmail.com'),
(288, '2009-09-20', 'azudogaxa-6645@yopmail.com'),
(289, '2007-02-20', 'ippepaho-2832@yopmail.com'),
(290, '2013-10-20', 'kogeholadd-3372@yopmail.com'),
(291, '2009-10-20', 'ekotavek-5518@yopmail.com'),
(292, '2001-04-20', 'wolapalagy-8598@yopmail.com'),
(293, '2008-02-20', 'huwonippof-3428@yopmail.com'),
(294, '2014-03-20', 'oxeppurriff-8914@yopmail.com'),
(295, '2016-02-20', 'kerreziddett-9601@yopmail.com'),
(296, '2012-07-20', 'onnumako-5603@yopmail.com'),
(297, '2002-03-20', 'upputtufaffy-9908@yopmail.com'),
(298, '2030-05-20', 'ceqattecono-3524@yopmail.com'),
(299, '2011-09-20', 'ewocezobo-2145@yopmail.com'),
(300, '2002-02-20', 'eboqawar-2456@yopmail.com'),
(301, '2015-08-20', 'ylivyle-3296@yopmail.com'),
(302, '2012-04-20', 'kigeqyguv-0701@yopmail.com'),
(303, '2026-04-20', 'gurrassaruv-9550@yopmail.com'),
(304, '2001-01-20', 'avussorre-1253@yopmail.com'),
(305, '2017-05-20', 'ewehosimm-4245@yopmail.com'),
(306, '2017-06-20', 'gifemefiro-6589@yopmail.com'),
(307, '2014-03-20', 'issicisuc-2330@yopmail.com'),
(308, '2008-02-20', 'yffiwize-4422@yopmail.com'),
(309, '2016-05-20', 'godexemmy-3559@yopmail.com'),
(310, '2027-08-20', 'ewikobapy-1051@yopmail.com'),
(311, '2008-04-20', 'mofifavorr-0396@yopmail.com'),
(312, '2018-01-20', 'ettacukann-5092@yopmail.com'),
(313, '2014-05-20', 'ummuppidoca-8663@yopmail.com'),
(314, '2021-07-20', 'owennenomm-9506@yopmail.com'),
(315, '2005-10-20', 'opetatto-4570@yopmail.com'),
(316, '2030-01-20', 'test@test.com'),
(317, '2019-05-13', 'test2@gmail.com'),
(318, '2018-01-01', 'test3@gmail.com'),
(319, '2017-02-01', 'testdate@test.com'),
(320, '2019-05-13', 'testdate1@gmail.com'),
(321, '2016-03-01', 'more21day@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `req_people`
--
-- Создание: Май 28 2019 г., 05:35
--

DROP TABLE IF EXISTS `req_people`;
CREATE TABLE `req_people` (
  `id_req` int(11) NOT NULL,
  `email_req` varchar(256) NOT NULL,
  `date_req` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `req_people`
--

INSERT INTO `req_people` (`id_req`, `email_req`, `date_req`) VALUES
(5, 'benstiller68@gmail.com', '2012-06-20'),
(6, 'tevaginu-1294@yopmail.com', '2015-09-20'),
(7, 'ozukessu-2542@yopmail.com', '2016-03-20'),
(8, 'tiqaxapa-4769@yopmail.com', '2012-03-20'),
(9, 'edadderyri-4126@yopmail.com', '2010-03-20'),
(10, 'gikupesso-1047@yopmail.com', '2014-09-20'),
(11, 'ijizepevo-8033@yopmail.com', '2005-07-20'),
(12, 'biceraniff-3070@yopmail.com', '2016-09-20'),
(13, 'worriqevunn-5368@yopmail.com', '2001-04-20'),
(14, 'attassezi-5140@yopmail.com', '2009-01-20'),
(15, 'qamiffyrifa-8774@yopmail.com', '2016-04-20'),
(16, 'owippymmax-9502@yopmail.com', '2001-04-20'),
(17, 'ydorehopp-2045@yopmail.com', '2015-08-20'),
(18, 'ylloppimy-3453@yopmail.com', '2014-09-20'),
(19, 'cahellipuz-3228@yopmail.com', '2015-07-20'),
(20, 'padynnennen-0058@yopmail.com', '2016-09-20'),
(21, 'carrettiza-2083@yopmail.com', '2005-02-20'),
(22, 'icoguwyv-0302@yopmail.com', '2018-11-20'),
(23, 'effebonniha-1051@yopmail.com', '2012-10-20'),
(24, 'afykurruss-4717@yopmail.com', '2014-07-20'),
(25, 'bepoxalaz-5958@yopmail.com', '2008-08-20'),
(26, 'kadadellake-8502@yopmail.com', '2015-10-20'),
(27, 'wegoqommonn-1340@yopmail.com', '2012-12-20'),
(28, 'azyppedda-9593@yopmail.com', '2003-01-20'),
(29, 'agelikass-3847@yopmail.com', '2010-08-20'),
(30, 'dedaddello-6082@yopmail.com', '2016-07-20'),
(31, 'jawyhafel-4026@yopmail.com', '2019-03-20'),
(32, 'axiwinne-5802@yopmail.com', '2016-03-20'),
(33, 'wafinittib-1429@yopmail.com', '2012-09-20'),
(34, 'holynnurytta-3676@yopmail.com', '2018-04-20'),
(35, 'obawonap-5808@yopmail.com', '2005-10-20'),
(36, 'eppasucem-2039@yopmail.com', '2024-09-20'),
(37, 'oleloky-7671@yopmail.com', '2009-02-20'),
(38, 'mekarridduku-4717@yopmail.com', '2014-08-20'),
(39, 'isossitu-1586@yopmail.com', '2029-09-20'),
(40, 'ippygefa-3057@yopmail.com', '2009-10-20'),
(41, 'pakossebi-6641@yopmail.com', '2011-12-20'),
(42, 'aqonaxot-5399@yopmail.com', '2012-03-20'),
(43, 'fobuttyppewu-9157@yopmail.com', '2019-10-20'),
(44, 'uddeseddajo-0716@yopmail.com', '2003-12-20'),
(45, 'mussakassuka-6371@yopmail.com', '2012-02-20'),
(46, 'mucemminnag-8406@yopmail.com', '2002-06-20'),
(47, 'ittomeppi-4517@yopmail.com', '2018-07-20'),
(48, 'marrewappapo-8611@yopmail.com', '2012-12-20'),
(49, 'luppetalik-1211@yopmail.com', '2019-02-20'),
(50, 'hallepallo-7475@yopmail.com', '2005-03-20'),
(51, 'buxalizi-7335@yopmail.com', '2002-12-20'),
(52, 'gaballerra-1712@yopmail.com', '2018-08-20'),
(53, 'gezekewanni-5812@yopmail.com', '2012-01-20'),
(54, 'elekyqan-8436@yopmail.com', '2030-05-20'),
(55, 'efullollur-7180@yopmail.com', '2002-08-20'),
(56, 'zetennipe-0828@yopmail.com', '2017-06-20'),
(57, 'eruwille-1331@yopmail.com', '2004-09-20'),
(58, 'weravyfik-4221@yopmail.com', '2015-01-20'),
(59, 'vazodemmiss-2294@yopmail.com', '2009-02-20'),
(60, 'ippappemmew-5643@yopmail.com', '2031-08-20'),
(61, 'izattiny-4608@yopmail.com', '2008-12-20'),
(62, 'emetella-4437@yopmail.com', '2003-01-20'),
(63, 'dijihuddu-4103@yopmail.com', '2019-06-20'),
(64, 'irremmasse-0762@yopmail.com', '2017-07-20'),
(65, 'osazuze-8746@yopmail.com', '2018-09-20'),
(66, 'iberunnaq-0703@yopmail.com', '2002-05-20'),
(67, 'efogemydd-9727@yopmail.com', '2007-07-20'),
(68, 'jyluxypeve-3328@yopmail.com', '2012-07-20'),
(69, 'bodassitan-5100@yopmail.com', '2018-12-20'),
(70, 'nimalytoj-3730@yopmail.com', '2012-12-20'),
(71, 'pupekiri-7940@yopmail.com', '2017-12-20'),
(72, 'yppammivimi-7618@yopmail.com', '2018-02-20'),
(73, 'ynuwino-0837@yopmail.com', '2008-06-20'),
(74, 'orivucuq-2447@yopmail.com', '2007-10-20'),
(75, 'ukattorryk-9457@yopmail.com', '2015-02-20'),
(76, 'eddeqadditt-0112@yopmail.com', '2009-11-20'),
(77, 'odagidax-6986@yopmail.com', '2008-11-20'),
(78, 'bussottujaw-8940@yopmail.com', '2029-06-20'),
(79, 'zyhaqukatt-4883@yopmail.com', '2027-02-20'),
(80, 'test@test.com', '2001-02-20'),
(81, 'test2@gmail.com', '2019-05-15'),
(82, 'test3@gmail.com', '2018-01-09'),
(83, 'testdate@test.com', '2017-02-16'),
(84, 'testdate1@gmail.com', '2019-05-13'),
(85, 'more21day@gmail.com', '2016-03-29');

-- --------------------------------------------------------

--
-- Структура таблицы `table_sale`
--
-- Создание: Май 28 2019 г., 05:35
--

DROP TABLE IF EXISTS `table_sale`;
CREATE TABLE `table_sale` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `windows` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `macos` int(11) NOT NULL,
  `android` int(11) NOT NULL,
  `iphone` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_sale`
--

INSERT INTO `table_sale` (`id`, `date`, `windows`, `server`, `macos`, `android`, `iphone`, `total`) VALUES
(3, 1, 10, 1, 0, 25, 0, 36),
(6, 2, 2, 2, 3, 1, 3, 11),
(7, 3, 49, 42, 45, 44, 30, 210),
(8, 4, 25, 2, 5, 19, 12, 63),
(9, 5, 16, 12, 15, 14, 20, 77),
(10, 6, 36, 3, 7, 18, 13, 74),
(11, 7, 26, 5, 4, 23, 12, 70),
(12, 8, 21, 3, 3, 25, 12, 64),
(13, 9, 26, 6, 5, 25, 11, 73),
(14, 10, 21, 4, 9, 23, 21, 78),
(15, 11, 38, 2, 10, 14, 13, 77),
(16, 12, 34, 2, 9, 32, 12, 89);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--
-- Создание: Май 28 2019 г., 05:35
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `rule` int(11) NOT NULL,
  `rus_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `login`, `pass`, `rule`, `rus_name`) VALUES
(1, 'admin', 'admin', 2, 'Администратор'),
(2, 'analytic', 'analytic', 1, 'Аналитик');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `platform_price`
--
ALTER TABLE `platform_price`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reg_people`
--
ALTER TABLE `reg_people`
  ADD PRIMARY KEY (`id_reg`);

--
-- Индексы таблицы `req_people`
--
ALTER TABLE `req_people`
  ADD PRIMARY KEY (`id_req`);

--
-- Индексы таблицы `table_sale`
--
ALTER TABLE `table_sale`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `platform_price`
--
ALTER TABLE `platform_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `reg_people`
--
ALTER TABLE `reg_people`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT для таблицы `req_people`
--
ALTER TABLE `req_people`
  MODIFY `id_req` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT для таблицы `table_sale`
--
ALTER TABLE `table_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
