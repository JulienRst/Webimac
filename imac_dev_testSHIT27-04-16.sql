-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: mysql1.alwaysdata.com
-- Generation Time: Apr 27, 2016 at 11:18 PM
-- Server version: 5.1.66-0+squeeze1
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imac_dev_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_testimonials`
--

CREATE TABLE IF NOT EXISTS `enterprise_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `enterprise_testimonials`
--

INSERT INTO `enterprise_testimonials` (`id`, `name`, `description`, `overview`, `url_image`) VALUES
(2, 'Playapp', NULL, 'Les élèves que nous avons eu la chance de recevoir de l''IMAC ont tous démontré leurs compétences en développement web. Certains étaient plus orientés front et intégration et d''autres plus back, mais tous avaient une certaine polyvalence très appréciable !\r\nLeurs principaux atouts sont leur volonté de tester de nouvelles choses et de savoir collaborer avec une équipe.\r\nLes étudiants que nous avons accueillis étaient d''une part efficaces dans leur travail au quotidien mais aussi totalement intégrés dans la vie de l''agence ce qui prouve le bon état d''esprit de la formation.', 'logoplayapp1.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_student_exchange_testimonials`
--

CREATE TABLE IF NOT EXISTS `gallery_student_exchange_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_testimonial` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `gallery_student_exchange_testimonials`
--

INSERT INTO `gallery_student_exchange_testimonials` (`id`, `id_testimonial`, `url`, `place`) VALUES
(1, 1, '13014944_803635676435292_212062435_n.jpg', 0),
(2, 2, 'Stu1.jpg', 0),
(3, 2, 'Stu2.jpg', 0),
(4, 2, 'Stu3.jpg', 0),
(5, 3, 'IMG_9404.JPG', 0),
(6, 3, 'tumblr_nxl32jfgwl1uklg2vo1_1280.jpg', 0),
(7, 3, 'tumblr_o0p3g2TecZ1uklg2vo1_1280.jpg', 0),
(8, 4, '13020504_10209900711261292_1749870105_n.jpg', 0),
(9, 4, '13023588_10209900723021586_793132670_n.jpg', 0),
(10, 4, '13023591_10209900723061587_1079097893_n.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_15_174913_create_projects_table', 1),
('2016_01_18_155725_create_student_testimonial_table', 1),
('2016_01_19_161357_create_staff_table', 1),
('2016_01_26_175510_create_promos_table', 1),
('2016_01_26_234910_create_partnerships_table', 1),
('2016_02_28_172416_create_students_table', 1),
('2016_03_13_211900_create_student_exchange_testimonials_table', 1),
('2016_03_13_212756_gallery_student_exchange_testimonial', 1),
('2016_03_16_200150_create_tags_table', 1),
('2016_03_16_204026_create_project_tags_table', 1),
('2016_04_11_224831_create_project_students_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_15_174913_create_projects_table', 1),
('2016_01_18_155725_create_student_testimonial_table', 1),
('2016_01_19_161357_create_staff_table', 1),
('2016_01_26_175510_create_promos_table', 1),
('2016_01_26_234910_create_partnerships_table', 1),
('2016_04_26_195645_AddOrderToPartnerships', 2),
('2016_04_27_041914_create_enterprise_testimonials_table', 2),
('2016_04_27_144251_updateDescriptionInStaff', 3);

-- --------------------------------------------------------

--
-- Table structure for table `partnerships`
--

CREATE TABLE IF NOT EXISTS `partnerships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `partnerships`
--

INSERT INTO `partnerships` (`id`, `name`, `type`, `description`, `url_web`, `url_image`, `order`) VALUES
(1, 'Ubisoft', 'Partenariat Industriel', 'Un des leaders mondial de la création, édition et distribution de jeux vidéo et de services interactifs, avec un riche portefeuille de marques de renommée internationale.\r\n', 'https://www.ubisoft.com/fr-FR/studio/paris.aspx', 'logoUbisoft.png', 0),
(2, 'Maison des Arts de Créteil', 'Partenariat culturel', 'Centre culturel de production et de diffusion pluridisciplinaire et généraliste (théâtre, danse, art contemporain, festival,...).', 'http://www.maccreteil.com/fr', 'logo-mac.png', 3),
(3, 'Mikros Image', 'Partenariat industriel', 'Société de post-production spécialisée dans la création d’effets visuels numériques et l’animation. ', 'http://www.mikrosimage.eu/', 'logo_mikrosimages.jpg', 2),
(4, 'Numa', 'Partenariat pédagogique et institutionnel', 'Espace de coworking, accélération de start-up, structuration de communautés, programmes de transformation numérique et d’Open Innovation.', 'https://paris.numa.co/', 'NUMA-Paris.png', 4),
(5, 'Smile', 'Partenariat industriel', 'Société d''experts des architectures web et des solutions open source.', 'http://www.smile.fr/', 'logoSmile.png', 1),
(6, 'La Ferme du Buisson', 'Partenariat culturel', 'Un carrefour culturel unique: espace de plein air, salles de spectacles, cinémas, Centre d’art contemporain, festival… Un point de convergence entre le public et la création.', 'http://lafermedubuisson.com/', 'logoFermeDuBuisson.png', 6),
(7, 'Pülz', 'Partenariat industriel', 'Collectif de travailleurs indépendants, spécialisés dans le large domaine du multimédia : développement, graphisme, motion design, audiovisuel, conseil et formation. ', 'http://www.pulz.fr/', 'pulz-logo.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_gallery` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contributors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_of_tutors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `awards` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vimeo_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_url_page_unique` (`url_page`),
  UNIQUE KEY `projects_id_gallery_unique` (`id_gallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=73 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `id_gallery`, `name`, `description`, `excerpt`, `date`, `contributors`, `name_of_tutors`, `awards`, `url_page`, `url_image`, `platform`, `url_video`, `github_link`, `web_link`, `vimeo_link`) VALUES
(1, NULL, 'ShuttleOFX', 'ShuttleOFX est une plateforme web permettant le partage de plugins entre développeurs et graphistes. Les plugins sont au format OpenFX, un standard libre de plugins de traitement d’image. L’application a été conçue pour permettre à tout utilisateur de mettre en ligne des plugins OpenFX et de lire leur documentation, ainsi que de les tester sur la plateforme.', 'ShuttleOFX est une plateforme web permettant le partage de plugins entre développeurs et graphistes.', '2015-01-26 23:00:00', 'Juliette Belin <br/> ​Armand Biteau <br/> Hugo Garrido y Saez​ <br/>', 'Fabien Castan <br/> Marc-Antoine Arnaud​', 'Prix de la catégorie TECH et prix du public lors du Paris Open Source Submit 2015', 'shuttleofx', 'ShuttleOFX.png', 'vimeo', '127664921', 'https://github.com/shuttleofx/ShuttleOFX', 'http://shuttleofx.org', ''),
(2, NULL, 'Maere : When Lights Die', 'Maere : When Lights Die est un jeu vidéo de survival horreur pensé et développé pour la réalité virtuelle. Disponible sur PC, MAC et Linux, il sera jouable avec le casque de réalité virtuelle Oculus Rift dès que l''IMAC en recevra son kit de développement ! Prepare to dream. Prepare to be afraid. Prepare to run.', 'Jeu vidéo de survival horreur pensé et développé pour la réalité virtuelle', '2013-01-26 23:00:00', 'Aurélie Beauprez <br/>Thomas Demenat<br/>Tom Duchêne<br/>Thibaut Dumont', 'Patrice Bouvier', '', 'maere-when-lights-die', 'Maere.png', 'vimeo', '65384143', '', '', ''),
(3, NULL, 'Biotope', 'Biotope est un projet initié par le compositeur et artiste multimédia Pierre Estève et qui porte sur l''étude des mathématiques soujacentes à la nature. Ce sujet étant extrêmement vaste, le projet s''est concentré dans un premier temps sur la génération en temps réel un paysage numérique à l''aide du son.\r\nTout d''abord est venue une phase de recherche, à la fois en analyse du son et en algorithmie afin de modéliser le vivant. Ensuite, un programme a été créé en utilisant Max MSP Jitter afin d''analyser le son entrant, standardiser les informations ainsi capturées et les transmettre à plusieurs modèles mathématiques qui affichent à l''écran un terrain, des arbres qui poussent, etc.\r\nPierre Estève a l''intention de poursuivre ce projet avec de futures équipes IMAC afin d''en étendre les capacités et de créer un logiciel qui pourra être utilisé par n''importe quel artiste dans des spectacles audiovisuels interactifs, voire immersifs à l''aide de micros et de tout autre type de capteurs.', 'Biotope est un projet initié par le compositeur et artiste multimédia Pierre Estève et qui porte sur l''étude des mathématiques soujacentes à la nature.', '2015-01-25 23:00:00', 'Florian LEQUERTIER <br/> Mehdi-Antoine MAHFOUDI<br/>Thibaud CARPENTIER<br/>Clément SCHEPENS', 'Pierre ESTEVE', '', 'biotope', 'biotope.png', 'vimeo', '127696813', '', '', ''),
(4, NULL, 'La Machine à Dessiner les Sons', 'La Machine à Dessiner les Sons est un projet de l’artiste Philippe Dupuy. Le but est de réaliser une installation qui permet de dessiner pour faire du son. Sa volonté était de garder les caractéristiques du dessin traditionnel, c’est-à-dire avec une feuille et un crayon (ou autres instruments) et d’ensuite traduire ce dessin sous forme sonore grâce à des instruments mécaniques.\r\nLa première version de la machine était seulement mécanique. Nous avons réalisé une nouvelle planche à dessin, connectée à un ordinateur qui capte plusieurs effets sur la feuille (tel que la pression, les formes, la couleur,...) puis transmet les informations captées aux moteurs qui déclenchent les instruments mécaniques.\r\nNous avons pu la présenter lors du Festival PULP à la Ferme du Buisson.\r\nAinsi conçu, le projet imaginé par Philippe Dupuy prend la forme d’une installation immersive permettant au visiteur de tout âge de créer sa partition dessinée. L’association de couleurs de traits ou d’outils joue une partition musicale inédite, création artistique étonnante, déroutante et ludique où chacun devient dessinateur et musicien.', 'Installation qui permet de dessiner pour faire du son.', '2015-11-28 23:00:00', 'Marin Gauthier<br/>Marion Audebert<br/>Manon Grisi<br/>Pascale Ho', 'Philippe Dupuy', '', 'la-machine-a-dessiner-les-sons', 'lmadds.png', 'vimeo', '127547015', '', 'http://lamachineadessinerlessons.fr', ''),
(5, NULL, 'Zoey''s Sight', 'Zoey''s Sight est un film d''animation 3D entièrement procédural. Il a donc été réalisé uniquement en lignes de code, sans l''aide de logiciel de modélisation classique comme 3DS Max ou Maya. Il met en scène l''histoire de Zoey, une araignée, qui est entrainée à travers deux mondes plus ou moins réels par une luciole prénommée Ticky. Ce projet a donc consisté à mettre un œuvre un véritable pipeline de rendu, permettant de visualiser les scènes en temps réel dans OpenGL, puis de les fournir à un moteur de rendu basé sur Pixar''s Renderman, pour obtenir les images les plus détaillées possibles. Enfin, la modélisation procédurale permet de faire reposer le film entier sur un nombre. Si ce nombre est changé, il est possible d''obtenir un film dont l''aspect général sera différent, d''où l''intérêt d''un tel concept.', 'Zoey''s Sight est un film d''animation 3D entièrement procédural.', '2011-01-26 23:00:00', 'Gautier Ciaudo<br/>Robin De Lillo<br/>Yann Lanthony<br/>Adrien Kielb', 'Nadine Dommanget', '', 'zoey-s-sight', 'zoeys.png', 'dailymotion', 'xinu3m', '', '', ''),
(6, NULL, 'Rallye Provins', 'Qui ne s’est jamais ennuyé dans un musée ?\r\nLe Rallye Provins est une application web, pour smartphones et tablettes, qui permet de découvrir la ville médiévale de Provins de manière ludique et amusante. Orientée vers les jeunes générations et les touristes venus en famille, elle propose quatre parcours, disponibles en français et en anglais, pour se cultiver à son rythme. Utilisable hors-ligne, elle vous suivra tout au long de votre exploration.', 'Qui ne s’est jamais ennuyé dans un musée ?', '2015-01-24 23:00:00', 'Matthieu Bresson<br/>Lisa  Françoise<br/>Alice Neichols<br/>Marie Benoist', 'M.Nozick <br/>M.Ettayeb', '', 'rallye-provins', 'Rallye_Provins.png', 'youtube', 'TDDamupVBRc', '', 'http://provins.ingenieur-imac.fr/', ''),
(7, NULL, 'Carnet ', 'L‘application Carnet est le fruit de la première collaboration entre La Poste et l‘IMAC. Elle s‘inscrit dans le cadre du projet Factéo qui vise à fournir un smartphone aux plus de 100.000 facteurs en France d‘ici 2015. On retrouve l‘idée du carnet de route du facteur, où il prend en note les informations et les problèmes concernant sa tournée, par exemple si une boîte à lettres est cassée. L‘application Carnet remplace cet outil sur mobile, mais en y ajoutant beaucoup de nouvelles fonctionnalités comme la prise de photos et la synchronisation des notes sur le cloud.', 'L‘application Carnet est le fruit de la première collaboration entre La Poste et l‘IMAC.', '2013-07-17 22:00:00', 'Pierre Criulanscy<br/>Hugo Gresse<br/>Pierre Guilloux<br/>Julie Pronzac', 'Benjamin Liger<br/>Ségolène Naline', '', 'carnet', 'carnet_Laposte.png', 'vimeo', '65968243', '', '', ''),
(8, NULL, 'Paris Insolite', 'Paris Insolite est une application mobile de tourisme alternatif répertoriant des lieux insolites situés à Paris. Elle propose des fonctionnalités telles que la création de parcours, la gestion des favoris ou encore des calculs d''itinéraires.', 'Application mobile de tourisme alternatif répertoriant des lieux insolites situés à Paris.', '2013-01-26 23:00:00', 'Juliette Girin<br/>Thaïs Guigon<br/>Eric Luong<br/>Corentin Marc', 'Valentin Bourgoin', '', 'paris-insolite', 'paris_insolite.png', 'vimeo', '65749444', '', '', ''),
(9, NULL, 'Arrows Project', 'Arrows Project est un projet consistant à créer une démonstration interactive qui se doit le plus réaliste possible, basée sur le scénario suivant : le personnage, en vue à la première personne, est dans un environnement ouvert, menacé par une armée d’archers. Dès que le personnage bouge une volée de flèches lui donnera la mort.', 'Arrows Project est un projet consistant à créer une démonstration interactive qui se doit le plus réaliste possible', '2011-01-25 23:00:00', 'Eléonore Delau<br/>Rémi Génin<br/>Benjamin Liger', 'Adrien Hérubel<br/>Nadine Dommanget', '', 'arrows-project', 'arrows.png', 'dailymotion', 'xin9g4', '', '', ''),
(10, NULL, 'Graffiti Light', 'Graffiti Light est un projet qui à pour but de recréer un effet light painting en vidéo. Il a permit la création de l''application Dynalux, pensée pour une utilisation dans un spectacle d’art vivant, au sein de la compagnie du clou.\r\n\r\nGuillaume Albespy et Tom Gay', 'Graffiti Light est un projet qui à pour but de recréer un effet light painting en vidéo', '2016-04-26 22:00:00', 'Guillaume Albespy<br/>Tom Gay', 'Laurent Renaud', '', 'graffiti-light', 'dynalux.jpg', 'vimeo', 'https://vimeo.com/42091300', '', '', ''),
(12, NULL, 'Cloud Fighter', 'Cloud Fighter est un jeu en 2D sur Android. A l’aide de nuages qui émettent divers projectiles, vous devez viser des ennemis qui passent de droite à gauche de l’écran. Le but est de survivre et de détruire l’usine ennemie qui se situe à la fin de chaque niveau.\r\nVous pouvez acheter différentes améliorations comme d’autres types de nuages avec des caractéristiques propres, des périphériques qui tournent autour du nuage et vous aident dans votre mission, et enfin des accessoires pour décorer vos nuages et leur donner du style.', 'Cloud Fighter est un jeu en 2D sur Android. ', '2011-01-26 23:00:00', 'Céline COGNY<br/>Stéphanie LUU<br/>Gabriel PEYROT', 'Anthony GIROUD', '', 'cloud-fighter', 'cloud_Fighter.png', 'dailymotion', 'ximp71', '', '', ''),
(13, NULL, 'Show Must Be Fun', 'Show Must Be Fun est un projet en partenariat avec Switch, un duo composé de VJ Stello (Stan Walbert) et PiPer (Adrien Winter), et qui depuis 2003 organise des concerts et des shows audio-visuels. Le but de ce projet était de concevoir une application permettant d’ajouter un côté ludique et une couche d’interactivité pendant un concert. Il répond à une problématique et un concept novateur apporté par le duo Switch. Chaque membre du public est équipé à chaque bras d’un brassard fluorescent vert ou rouge. Des caméras sont fixées sur la scène et dans la salle et capturent un flux vidéo du public effectuant des chorégraphies en rythme. Ce flux vidéo est traité en temps réel par notre application qui, grâce à des outils de vision par ordinateur, détecte les brassards et parvient à déduire le mouvement global du public.', 'Show Must Be Fun est un projet en partenariat avec Switch, un duo composé de VJ Stello (Stan Walbert) et PiPer (Adrien Winter), et qui depuis 2003 organise des concerts et des shows audio-visuels.', '2011-01-25 23:00:00', 'Julien Ducret <br/>Pierre Gouthéraud<br/>Jérémy Busset', 'Stan Walbert <br/>Adrien Winter <br/>Vincent Nozick', '', 'show-must-be-fun', 'Show_must.png', 'dailymotion', 'xiocyw', '', '', ''),
(14, NULL, 'Magazine INCLUDE - Première Édition', 'INCLUDE est un magazine de culture visuelle conçu et éditorialisé par la 3eme année de la formation Imac.', 'INCLUDE est un magazine de culture visuelle conçu et éditorialisé par la 3eme année de la formation Imac.', '2016-03-22 23:00:00', 'Promotion Imac3 2016<br/> Jordi Bastide<br/> Armand Biteau<br/> Pauline Boisgallais<br/> Baptiste Bourron<br/> Thibaud Carpentier<br/> Mélissa Masquelier<br/> Alice Neichols', 'Gaëtan Robillard', '', 'magazine-include-premiere-edition', 'miniCouv_1eEdition.png', 'vimeo', '', '', 'http://include.ingenieur-imac.fr/', ''),
(15, NULL, 'Oplon', 'Oplon est une solution de gestion et de location de matériel. Cette application a deux facettes prend à cœur un objectif : une démarche en moins d''une minute. Besoin d''un matériel ? L''application vous fournit un support facile à comprendre qui vous permet de sélectionner votre matériel en toute simplicité. Vous êtes gestionnaire ? D''un clic, vous pouvez accéder à l''inventaire, voir les réservations de vos clients et les valider aussi facilement.', 'Oplon est une solution de gestion et de location de matériel.', '2015-04-04 22:00:00', 'Andréas Pinbouen <br/> Pauline Bocognano', 'Robillard Gaëtan', '', 'oplon', 'oplon-min.jpg', 'vimeo', '127669551', '', '', ''),
(16, NULL, 'Penser/Improviser', 'C’est à l’initiative du Festival des Rencontres Inattendues de Tournai (Belgique) et dans le cadre de Mons 2015- Capitale de la Culture que l’IRI a lancé son projet : Penser / Improviser.\r\nBernard Stiegler, philosophe spécialisé dans les avancées technologiques et Bernard Lubat, musicien habité par l’improvisation, se sont réunis pour organiser des ateliers de pratique et de réﬂexion autour de la musique improvisée. Les enjeux se trouvent dans l’archivage des ateliers ﬁlmés sur le site www.penserimproviser.org, ainsi que dans la présence des musiciens formés au cours des ateliers au Festival des Inattendues à Tournai cet été\r\n\r\nNotre rôle dans ce projet a été d’en améliorer la communication.', 'Réﬂexion autour de la musique improvisée', '2015-04-04 22:00:00', 'Dorothée Biechy <br/> Laurianne Granmagnat', 'Gaëtan Robillard', '', 'penser-improviser', 'penser_imporoviser.png', 'youtube', '2Si2b4ldQVY', '', '', ''),
(17, NULL, 'Cellule Comm''', 'Tous les ans, la Cellule Comm'' est chargée d''assurer la communication de l''IMAC, de l''ESIPE au sein du campus et sur internet.\r\nPlusieurs missions lui sont attribué:\r\n- Maintenir et mettre à jour le site internet (offres de stages, portfolios, photos de promotions, mettre en avant les projets des étudiants,...)\r\n- Organiser les journées événementielles (portes ouvertes, journée des projets,...)\r\n- Réaliser des showreels pour les différentes filières de l''ESIPE\r\n- Promouvoir certains événements et actions du campus (Cordées de la réussite, Dévelo''ponts,...)\r\n- Mettre à jour et renouveler les différentes plaquettes\r\n- Fournir un support technique pour l''association des anciens élèves (Esipe-Alumni)\r\n- Établir une charte graphique pour les documents internes et externes (logos des filières, documents et lettres types,...)', 'Tous les ans, la Cellule Comm'' est chargée d''assurer la communication de l''IMAC, de l''ESIPE au sein du campus et sur internet.', '2015-04-04 22:00:00', 'Melissa Masquelier<br/>Flore Giraudier<br/>Matthieu Denis<br/>Damien Fiorella<br/>Jordan De Almeida<br/>Baptiste Bourron', 'Matthieu Constant', '', 'cellule-comm', 'comm-imac-2015.png', 'youtube', 'R-xKB_Sh2mI', '', '', ''),
(18, NULL, 'Neuro Education', ' Depuis quelques années, des découvertes sans précédent ont été faites dans le domaine des neurosciences grâce aux nouvelles techniques d’imagerie cérébrale, révolutionnant ce que nous pensions savoir sur le cerveau et l’apprentissage.\r\nDans ce contexte récent, le projet NeuroÉducation a eu pour but de communiquer autour des avancées actuelles des neurosciences, en particulier sur leur application dans le domaine de l’éducation et sur la théorie des intelligences multiples, développée par Howard Gardner depuis 1983.\r\n\r\nIl s’appuie sur les travaux menés par le GRENE (Groupe de REcherche en NeuroÉducation) et ses partenaires et se divise en trois parties :\r\n- Un documentaire d''une heure, faisant un tour d’horizon des initiatives mises en oeuvre par les partenaires du laboratoire.\r\n- Une vidéo d''animation à destination des collégiens, visant à expliquer les bases des neurosciences et la théorie des intelligences multiples.\r\n- Un site web à destination des professionnels (chercheurs et enseignants) reprenant la théorie des intelligences multiples de façon plus approfondie et permettant le partage de documents au sein de cette communauté.', ' Depuis quelques années, des découvertes sans précédent ont été faites dans le domaine des neurosciences grâce aux nouvelles techniques d’imagerie cérébrale, révolutionnant ce que nous pensions savoir sur le cerveau et l’apprentissage.', '2016-04-06 16:03:49', 'Emeline Cardinet<br/>Thomas Dufraine<br/>Timothé Griere', 'Pascale Toscani', '', 'neuro-education', 'neuroEducation-min.png', 'youtube', 'olcjGT2sQbA', '', 'http://intelligences-multiples.fr/', ''),
(19, NULL, 'Estetimage ', 'Estetimage est un projet de recherche et développement sur l''esthétique de l''image. Il consiste en un programme de prise de vue assisté par ordinateur utilisant un appareil photo Reflex. Le programme va dans un premier temps analyser de manière approfondie une photographie. Puis, il va la comparer avec une base de données dans le but de trouver des photos qui lui correspondent afin de récupérer plusieurs sets de réglages différents et "optimaux" pour notre photographie. À ces sets de réglages s''ajoutent d''autres paramètres provenant de nos études statistiques en ligne.\r\nLe programme va ensuite prendre plusieurs photographies avec ces réglages et ainsi proposer à l''utilisateur une série de photographies de la même scène, à la fois différentes et esthétiquement "belle".', 'Estetimage est un projet de recherche et développement sur l''esthétique de l''image. ', '2015-04-04 22:00:00', 'Quentin Bommart <br/>Maximilien Glineur ', 'Chaohui Wang <br/> Vincent Nozick ', '', 'estetimage', 'estetImage-min.png', 'vimeo', '127691322', '', '', ''),
(20, NULL, 'Un jour d''écume', 'L''Écume des Jours raconte l’amour fatal de Colin et Chloé dans un monde dérangeant de fantaisie, à l’étrangeté grinçante mais familière. Écrit par Boris Vian alors qu''il était ingénieur, ce roman deviendra un des plus iconiques du XXe siècle.\r\nNotre film veut en raconter une histoire. Une histoire du roman, une histoire de son auteur, une histoire de ses personnages.\r\nUn Jour d''Écume a pour but de vous plonger dans l''univers de L''Écume des Jours et de vous immerger dans le quotidien de Boris Vian durant quelques séances d''écriture et d''imagination de son roman, en mêlant prise de vue réelle et animations pour donner vie entre ses mains à ses personnages et son univers unique.', 'L''Écume des Jours raconte l’amour fatal de Colin et Chloé dans un monde dérangeant de fantaisie, à l’étrangeté grinçante mais familière', '2015-04-21 22:00:00', 'Pauline C. Boisgallais<br/>Robin Lasne', 'Stéphane Trois Carrés', '', 'un-jour-d-ecume', 'unjourdecume_logo.jpg', 'youtube', 'SKrU2Qf1Dqc', '', '', ''),
(21, NULL, 'Morphologie Kinect', 'Le projet vise à estimer le poids d’un individu à l’aide d’une Kinect. Grâce au capteur de profondeur de la Kinect nous pouvons mesurer et estimer un certain nombre de caractéristiques de l’individu : sa taille, la longueur de ses membres, son tour de taille… A partir de ces données nous essayons d’estimer son poids.\r\nPour ce faire nous avons fait passer un grand nombre de personnes pour constituer une base de données. Nous utilisons ensuite ces données pour “apprendre” à notre programme les liens qu’il peut exister entre ces paramètres morphologiques et le poids de l’individu. Le programme est basé sur un réseau de neurones artificiels, un algorithme qui vise à reproduire le fonctionnement du cerveau humain. ', 'Le projet vise à estimer le poids d’un individu à l’aide d’une Kinect.', '2015-04-21 22:00:00', 'Gwen Berthe<br/>Paul Gérard<br/>Denis Tribouillois', 'Chaohui Wang <br/> Vincent Nozick', '', 'morphologie-kinect', 'Morphologie_Kinect.jpg', 'youtube', 'b1fJU28d6Bo', '', '', ''),
(22, NULL, 'Com'' IMAC 2014', 'La cellule de communication IMAC s''est occupée, comme chaque année, de promouvoir la formation IMAC et l''ESIPE via différents supports de communication : internet, print, salons, journées portes ouvertes. Cette année la cellule de communication a réalisé plusieurs flyers, affiches pour l''ESIPE, a réalisé une vidéo pour les Cordées de la réussite, a animé la journée portes ouvertes de l''Université de Marne la Vallée ainsi que la journée des projets IMAC du 16 mai, a réaliser des photos promotionnelles et enfin a revu le site et fourni un backoffice au site web pour en simplifier la gestion.', 'La cellule de communication IMAC s''est occupée, comme chaque année, de promouvoir la formation IMAC et l''ESIPE.', '2014-04-21 22:00:00', 'Clara BAUDRY<br/>Florent FRANCOIS<br/>Sonia LAURENT<br/>Romain SANFILIPPO<br/>Xavier VANSTEENE', 'Mathieu CONSTANT', '', 'com-imac', 'com-IMAC.jpg', 'vimeo', '95453144', '', '', ''),
(23, NULL, 'Buttle OFX', 'Buttle OFX est un outil de manipulation d’images orienté traitements par lots pour les professionnels et les amateurs. Il permet d’effectuer un traitement à partir d’une séquence d’images et ﬁnalement d’exporter cette dernière en movie très simplement et intuitivement.\r\n\r\nC’est un logiciel libre et collaboratif évoluant depuis 3 ans, il est ainsi continuellement mis à jour que ce soit dans son code source ou ses dépendances. Il est basé sur la bibliothèque d’effets Tuttle OFX proposant une large gamme de plugins de qualité puisque respectant les standards openFX ', 'Buttle OFX est un outil de manipulation d’images orienté traitements par lots pour les professionnels et les amateurs.', '2015-04-21 22:00:00', 'Jordi Bastide<br/>Maxime Engel<br/>Maxime Gilbert<br/>Mathias Goyheneche<br/>Alexis Oblet', 'Fabien Castan<br/>Clément Champetier', '', 'buttle-ofx', 'buttle_logo.jpg', 'youtube', 'e1HIiyxV3fU', '', '', ''),
(24, NULL, 'Visualisation Medicale', 'VUX est une application en WebGL permettant de lire des scans IRM. Cette application innovante réalisée dans le cadre du projet tuteuré à l''IMAC permet aux patients et aux médecins d''observer des radios en 2D et en 3D. ', 'VUX est une application en WebGL permettant de lire des scans IRM.', '2014-04-26 22:00:00', '', 'Christopher Tarento', '', 'visualisation-medicale', 'vux.jpg', 'vimeo', '94464738', '', '', ''),
(25, NULL, 'Virtuose', 'Virtuose est une application d’édition musicale interactive qui propose de modifier une piste MIDI à l''aide du mouvements des mains, détectées par la Kinect, tout en plongeant l''utilisateur dans une scène en 3D avec l''Oculus Rift . L''originalité du projet lui permet de plaire aussi bien aux musiciens quelque peu lassés du clavier et de la souris qu''aux non-initiés qui trouveront une application ludique proposant une expérience de réalité virtuelle différente de celles qu''il a pu connaître. ', 'Virtuose est une application d’édition musicale interactive qui propose de modifier une piste MIDI à l''aide de la Kinect.', '2014-04-26 22:00:00', '', 'Laurent Julia', '', 'virtuose', 'virtuose.jpg', 'vimeo', '94140599', '', '', ''),
(26, NULL, 'Solar Decathlon', 'Le Solar Decathlon Europe 2014 est une compétition internationale d''architecture durable et d''énergie solaire, le but est de concevoir un habitat fonctionnel, utilisant le soleil comme seule source d''énergie. Au sein de l''équipe Team Paris, nous nous occupons de la communication durant développement du projet.', 'Le Solar Decathlon Europe 2014 est une compétition internationale d''architecture durable et d''énergie solaire.', '2014-04-26 22:00:00', '', 'Vicent Nozick', '', 'solar-decathlon', 'liv-lib.jpg', 'vimeo', '94070992', '', '', ''),
(27, NULL, 'Late', 'LATE (Live A Time Experience) est un projet innovant de court-métrage interactif avec l''Oculus Rift.\r\nPour ceux qui ne connaissent pas encore l''Oculus Rift, il s''agit d''un casque de réalité virtuel, principalement\r\nutilisé dans le domaine du jeu vidéo et qui permet une immersion totale de l''utilisateur.\r\nL''interactivité du projet se traduit par le fait que l''utilisateur aura la possibilité de choisir à plusieurs\r\nmoments de l''expérience la suite de son expérience.', 'LATE est un projet innovant de court-métrage interactif avec l''Oculus Rift.', '2014-04-26 22:00:00', '', 'Frank Charpentier <br/> Vincent Nozick', '', 'late', 'late.jpg', 'vimeo', '93472896', '', '', ''),
(28, NULL, 'LightMAP', 'LightMAP est un logiciel de Vidéo Mapping opensource basé sur OpenFrameworks. Il permet de projeter images et videos dans l''espace.', 'LightMAP est un logiciel de Vidéo Mapping opensource basé sur OpenFrameworks. ', '2014-04-26 22:00:00', '', 'Thomas Pachoud', '', 'lightmap', 'lightMap.jpg', 'vimeo', '94503999', '', '', ''),
(29, NULL, 'La Fille', 'Le défit était clairement fixé, faire de la BD musicale éponyme à succès LA FILLE co réaliser par Barbara Carlotti, et Christophe Blain, un opéra-rock,dont ladite fille serait le personnage central. La Fille réapparaît donc en guest-star d''un show multi médias qui se transforme en road-movie scénique. Il a fallu compter sur une chanteuse-narratrice qui n''est autre que barbara, une équipe d''animation, montage, et tournage dont nous faisions partie, des musiciens-acteurs, de l’image dessinée par christophe blain (animée par nos soins ou non), pour explorer les dimensions multiples de ce rêve américain assez surprenant.', 'Le défit était clairement fixé, faire de la BD musicale LA FILLE un opéra-rock.', '2014-04-26 22:00:00', '', 'Magali Desbazeille', '', 'la-fille', 'La_fille.jpg', 'vimeo', '94523432', '', '', ''),
(30, NULL, 'Komuso', 'Komuso est un éditeur de partitions en ligne de shakuhachi (flûte traditionnelle japonaise) sur pc et tablettes. Cette application web réalisée en HTML5 permet aux amateurs de cet instrument de composer leurs morceaux dans les règles avec un grand choix de symboles et de notes ainsi que toutes les fonctionnalités de base d''un éditeur de partition classique.', 'Komuso est un éditeur de partitions en ligne de shakuhachi (flûte traditionnelle japonaise).', '2014-04-26 22:00:00', '', '', '', 'komuso', 'komuso.jpg', 'vimeo', '94406814', '', '', ''),
(31, NULL, 'Battlesheep', 'BattleSheep est un jeu en 2D réalisé dans le cadre du cours de synthèse d’image. Les mououtons se déplace en empruntant le chemin le plus court pour atteindre l''arrivée. Le joueur peut les aider en détruisant des murs ou en ajoutant des éléments sur leur passage. Ce jeu est inspiré du gameplay des Lemmings.\r\n\r\nTechnologie : C OpenGL\r\nIMAC1', 'BattleSheep est un jeu en 2D réalisé dans le cadre du cours de synthèse d’image. ', '2016-04-26 22:00:00', '', '', '', 'battlesheep', 'battlesheep1.jpg', 'vimeo', '', '', '', ''),
(32, NULL, 'Frigal', 'Frigal est un jeu en 3D réalisé dans le cadre du cours de synthèse d’image. Le joueur incarne un yaourt qui doit parcourir le « frigal » en évitant tous les obstacles pour parvenir à sauver sa dulcinée. Pour cela, il peut créer des portails lui permettant de passer d’un endroit à un autre. Ce jeu est inspiré du gameplay de déplacement du jeu Portal.\r\n\r\nTechnologie : C++ et OpenGL 3\r\nIMAC 2', 'Frigal est un jeu en 3D réalisé dans le cadre du cours de synthèse d’image. ', '2016-04-26 22:00:00', '', '', '', 'frigal', 'frigal.jpg', 'vimeo', '', '', '', ''),
(33, NULL, 'Azheugaga - Hypnotic Cubes', 'Azheugaga est un projet de cinématique non-interactive inspiré du mythe biblique de Moïse ouvrant la mer rouge. Initialement prévu pour être seulement esthétique, la technique a été poussée afin d’afficher une scène constituée de nombreuses informations en temps-réel et rendant un effet fluide.\r\n\r\nTechnologie : C++ OpenGL3.3 GLSL 1.50L\r\nIMAC 3', 'Azheugaga est un projet de cinématique non-interactive inspiré du mythe biblique de Moïse ouvrant la mer rouge. ', '2016-04-26 22:00:00', '', '', '', 'azheugaga-hypnotic-cubes', 'hypnotic.jpg', 'vimeo', 'https://vimeo.com/33841745', '', '', ''),
(34, NULL, 'Edouard et Vincent', 'Edouard et Vincent est un court métrage de 10 minutes réalisé dans le cadre du cours d’Audiovisuel. Vincent, ventriloque, a pour fidèle compagnon Edouard une petite peluche. Un soir, après un spectacle, Vincent perd connaissance et est emmené à l’hôpital. A ce moment là, Edouard prend vie et part à la recherche de son propriétaire..\r\n\r\nTechnologie : Premier Pro\r\nIMAC 2 - Promo 2014', 'Edouard et Vincent est un court métrage de 10 minutes réalisé dans le cadre du cours d’Audiovisuel', '2016-04-26 22:00:00', '', '', '', 'edouard-et-vincent', 'EdouardEtVincent.jpg', 'dailymotion', 'http://www.dailymotion.com/video/xmzh5c_edouard-et-vincent_creation', '', '', ''),
(35, NULL, 'HOLO X1', 'Holo X1 est une courte publicité réalisée dans le cadre du cours d’After Effect, pour l’Holo X1, premier ordinateur holographique. Cette video nous donne une vision futuriste de l’informatique à l’aide d’effets spéciaux et de séquences videos.\r\n\r\nProjet d''After Effects et Premier Pro\r\nIMAC3 Promo 2011\r\n\r\nRéalisé par Florian LAMY et Sébastien POYER', 'Holo X1 est une courte publicité réalisée dans le cadre du cours d’After Effect, pour l’Holo X1, premier ordinateur holographique. ', '2016-04-26 22:00:00', '', '', '', 'holo-x1', 'holox1.jpg', 'vimeo', 'https://vimeo.com/33842182', '', '', ''),
(36, NULL, 'Judgement day is not for today', 'Judgement day is not for today est un court métrage d’animation 3D réalisé dans le cadre du cours de 3DSMAX. Cette animation, basée sur le thème de Terminator, met en scène un robot qui a une mission à accomplir.\r\n\r\n3DSmax\r\nIMAC 2 ', 'Court métrage d''animation 3D réalisé dans le cadre du cours de 3DSmax', '2016-04-26 22:00:00', '', '', '', 'judgement-day-is-not-for-today', 'JudgementDay.jpg', 'youtube', 'https://www.youtube.com/watch?v=5pVSaQazjRI', '', '', ''),
(37, NULL, 'The 7th Boulevard', 'The 7th Boulevard est un court-métrage de 10 minutes réalisé dans le cadre du cours d’Audiovisuel. Il présente l’aventure d’un jeune acteur bouleversé par le déclin du cinéma. Cependant, une nouvelle révolution commence...\r\n\r\nAdobe Premiere Pro\r\nAdobe After Effects\r\n\r\nIMAC 2 - Promo 2012\r\n\r\nRomain BERTOZZI, Romain BRAUN, Jean-Marc DANANCHE, Thomas DURRENBERGER et Charly KRAFT', 'Court-métrage de 10 minutes réalisé dans le cadre du cours d’Audiovisuel.', '2016-04-26 22:00:00', '', '', '', 'the-7th-boulevard', 'The7thBoulevard.jpg', 'vimeo', 'https://vimeo.com/33441609', '', '', ''),
(38, NULL, 'Ad Vitam Aeternam', 'Il est seul et a tout perdu. Un but inatteignable va le transcender jusqu’à accomplir ce que jamais aucun autre ne fera avant ou après lui. L’amour est-il le moteur de la vie jusqu’à la mort ? Mélangeant des techniques d’animation 3D, 2D et des images réelles, Ad Vitam Aeternam est un projet de troisième année s’inspirant du mouvement de science-fiction Cyberpunk.\r\n\r\nAdobe Premier\r\nAdobe After Effets\r\n\r\nIMAC 3\r\n\r\nJulien MICHOT, Jérémy BUSSET, Marlène VIELLESCAZES, Mélanie BLONDEL et Florian LAMY\r\n\r\nSound Designer : Muadhib\r\nMixage Voix : Sylvain Thévenin', 'Court-métrage de motion design réalisé dans le cadre du cours d''audiovisuel de Stéphane Troiscarrés, en dernière école d''ingénieurs IMAC', '2016-04-26 22:00:00', '', '', '', 'ad-vitam-aeternam', 'AdVitamAeternam.jpg', 'dailymotion', 'http://www.dailymotion.com/video/xpsozh_ad-vitam-aeternam_creation', '', '', ''),
(39, NULL, 'Tenebris Tugurium', 'Tenbris Tugurium est une animation 3D réalisé dans le cadre du cours de 3DSMAX mettant en scène un bûcheron face à la mort.\r\n\r\n3Dsmax, Adobe Premiere Pro\r\n\r\nIMAC 2\r\nTimothée Cottier & Léo Yvin.', 'Tenbris Tugurium est une animation 3D réalisé dans le cadre du cours de 3DSMAX mettant en scène un bûcheron face à la mort.', '2016-04-26 22:00:00', '', '', '', 'tenebris-tugurium', 'tenebris.jpg', 'vimeo', 'https://vimeo.com/35151324', '', '', ''),
(40, NULL, 'Racerstein', 'Racerstein est un jeu de course aérienne en 3D. Le but est de parvenir le premier à la ligne d’arrivée sans être détruit. Durant toute la course, le joueur doit éviter les obstacles et les autres joueurs. Il a aussi la possibilité d’obtenir des bonus pour accélérer, par exemple.\r\n\r\nC++ OpenGL 3\r\nIMAC 2\r\n\r\nPar Rémi Génin, Anne-Elise Poirot, Julien Ducret, Chloé Agostini et Nicolas Gouard.', 'Projet réalisé en deuxième année de l''école d''ingénieurs IMAC', '2016-04-26 22:00:00', '', '', '', 'racerstein', 'racerstein.jpg', 'dailymotion', 'http://www.dailymotion.com/video/xgy60x_racerstein-demo-in-game_videogames', '', '', ''),
(41, NULL, 'Drive by night', 'Le but de ce projet était d’utiliser les nouvelles technologies informatiques afin d’afficher au minimum 100 lumières dans une très grande scène. Ce projet repousse les limites techniques tout en produisant une oeuvre artistique. Il a été réalisé dans le cadre du double diplôme IMAC/Master SIS.\r\n\r\nC++ OpenGL3.3 GLSL\r\nIMAC 2\r\nRémi Génin et Robin De Lillo', 'Le but de ce projet était d’utiliser les nouvelles technologies informatiques afin d’afficher au minimum 100 lumières dans une très grande scène.', '2016-04-26 22:00:00', '', '', '', 'drive-by-night', 'drive.jpg', 'vimeo', 'https://vimeo.com/39475515', '', '', ''),
(42, NULL, 'Umbra viventis', 'Jouez avec votre ombre ! Umbra Viventis est un dispositif intéractif réalisé dans le cadre du festival « le corps au travail » à la Ferme du Buisson. L’installation est constituée d’un couloir plongé dans l’obscurité muni d’un système de captation d’ombres. Au passage d’un visiteur dans cet espace, son ombre est projetée au mur puis modifiée suivant ses déplacements.\r\n\r\nKinect openframeworks utilitaires C++\r\nIMAC 3', ' Trailer du projet de dispositif interactif "Umbra Viventis", présenté en 2012 à la Ferme du Buisson dans le cadre du festival ''le corps au travail''', '2016-04-26 22:00:00', '', '', '', 'umbra-viventis', 'umbraviventis.jpg', 'dailymotion', 'http://www.dailymotion.com/video/xpjnak_umbra-viventis-ferme-du-buisson-24-25-mars-2012_creation', '', 'https://umbraviventisproject.wordpress.com/', ''),
(43, NULL, 'Damn', 'Delicious Acrostics Maker for Nerdz est un site web qui permet de générer facilement des acrostiches. Il suffit de rentrer un mot, puis un genre pour qu’un poème, dont les initiales de chaque vers créés un mot qui peut être lu à la verticale, se génère automatiquement.\r\n\r\nHTML CSS\r\nIMAC 1', 'Site web qui permet de générer facilement des acrostiches. ', '2016-04-26 22:00:00', '', '', '', 'damn', 'damn.jpg', 'vimeo', '', '', '', ''),
(44, NULL, '404 Answers', '404answers est un site internet communautaire ayant pour objectif de permettre aux internautes de partager leurs idées à propos de sites web, applications mobiles, logiciels et de donner leurs avis. En bref, soit la communauté donne une réponse à votre recherche, soit vous donnez une bonne idée qui pourrait intéresser des développeurs.\r\n\r\nDjangoPremiere Pro\r\nIMAC 3 - Promo 2012\r\n\r\nPierre Gouthéraud', 'Site web communautaire ayant pour objectif de permettre aux internautes de partager leurs idées à propos de sites web, applications mobiles, logiciels et de donner leurs avis.', '2016-04-26 22:00:00', '', '', '', '404-answers', '404answers.jpg', 'vimeo', 'https://vimeo.com/33806754', '', '', ''),
(45, NULL, 'Super Angry Mario', 'Super Angry Mario est un jeu en 2D basé sur le gameplay du célèbre jeu Angry Birds. Le joueur, armé de son lance-pierre, doit lancer des carapaces et atteindre le plus d’ennemis possible en détruisant des structures. Super Angry Mario propose plusieurs niveaux et styles de jeu.\r\n\r\nJava / jbox2D\r\nIMAC 2 - Promo 2013\r\nGuillaume Bouhier', 'Super Angry Mario est un jeu en 2D basé sur le gameplay du célèbre jeu Angry Birds. ', '2016-04-26 22:00:00', '', '', '', 'super-angry-mario', 'superangrymario.jpg', 'vimeo', 'https://vimeo.com/34473302', '', '', ''),
(46, NULL, 'Angry Food', 'Angry Food est un jeu en 2D basé sur le gameplay du jeu Angry Birds. Le joueur, incarne, à travers le monde, des groupes d’aliments en rébellion. Armé de son lance-pierre, il doit lancer des baguettes explosives kamikazes sur des français à bérets ou des yakitoris sur des sumis japonais pour les éliminer.\r\n\r\nDéveloppement en JAVA d''un jeu de type Angry Foods avec le moteur physique JBox2D\r\nIMAC 2', 'Angry Food est un jeu en 2D basé sur le gameplay du jeu Angry Birds. ', '2016-04-26 22:00:00', '', '', '', 'angry-food', 'angryfood.jpg', 'vimeo', 'https://vimeo.com/34529031', '', '', ''),
(47, NULL, 'AP3DV', 'A Pure 3D Video est un projet expérimental dont le but final est de créer une courte vidéo d’animation utilisant un modèle d’illumination global: le Progressive Photon Mapping. Ce projet est donc axé sur la synthèse d''images et la programmation mais aussi sur la modélisation 3D et l''animation.\r\n\r\nJean-Marc Dananché, Vincent Lesueur et Léo Yvin\r\nIMAC 2 - Promo 2013', 'A Pure 3D Video est un projet expérimental dont le but final est de créer une courte vidéo d’animation utilisant un modèle d’illumination global', '2016-04-26 22:00:00', '', 'Venceslas Biri', '', 'ap3dv', 'ap3dv.jpg', 'vimeo', 'https://vimeo.com/41708278', '', '', ''),
(48, NULL, 'Com IMAC 2013', 'La cellule communication de l''IMAC a pour but d''assurer la visibilité de l''école d''ingénieur IMAC. Pour cela, elle utilise différents moyens : print, web, audiovisuel, communication et évènementiel. Cette année, la tâche principale a été la refonte du site de l''école. La com''IMAC a aussi réalisé une brochure administrative et entreprise, ainsi qu''un visuel évènementiel. En vidéo, elle a créé une nouvelle animation du logo, un showreel et a assuré deux couvertures évènementielles. En communication générale, la com''IMAC a imaginé des sweats à l''image de l''école, et un nouveau logo. Enfin, elle s''est rendue dans différents établissements pour promouvoir l''école (IUT, lycées, prépas et salons).\r\n\r\nPromo 2014\r\nJeremy BARDEAU, Timothée COTTIER, Adèle LENNON, Cyrill DURIGON, Alexandre VOINEY et Benjamin PERNEY', 'Vidéo showreel de l''école d''ingénieur IMAC reprenant les différents travaux des étudiants.', '2016-04-26 22:00:00', '', 'Venceslas Biri', '', 'com-imac-2013', NULL, 'vimeo', 'https://vimeo.com/54669756', '', '', ''),
(49, NULL, 'Com ESIPE', 'Dans le cadre de nos cours de 2e année, nous devions réaliser un projet tuteuré entre le mois de novembre et le mois de mai. Le but de notre projet était de réaliser une vidéo promotionnelle de l’ESIPE MLV, une école voisine. Cette vidéo doit s’intégrer sur le site de l’ESIPE MLV et inciter les potentiels futurs étudiants à s’y inscrire. Cette vidéo est destinée à être publiée sur le site internet de l’ESIPE MLV mais aussi présentée lors des salons ou des journées portes ouvertes.\r\n\r\nIMAC 2 - Promo 2016\r\nManuel Jordan, Tom Yanowitz et Timothée Chevalier', ' Réaliser la vidéo promotionnelle de l’ESIPE MLV, une école voisine', '2016-04-26 22:00:00', '', 'Francoise Utheza', '', 'com-esipe', 'comesipe.jpg', 'vimeo', 'https://vimeo.com/41667886', '', '', ''),
(52, NULL, 'Its a small schizophrenic world', 'It''s a small schizophrenic world est un réseau social qui donne à tous les passionnés de cinéma, amateurs et professionnels, la possibilité de contribuer à un même projet cinématographique : un film collaboratif. Nous cherchons à regrouper et élargir tous les talents créatifs et techniques de divers horizons et ainsi apporter une nouvelle dimension au cinéma, là où le partage est privilégié!\r\n\r\nArnaud Desfontaines, Emeline Esteves, Charly Kraft, Alexandre Mahë et Holy Razafinjoelina', 'Réseau social qui donne à tous les passionnés de cinéma, amateurs et professionnels, la possibilité de contribuer à un même projet cinématographique', '2016-04-26 22:00:00', '', 'Frank Charpentier', '', 'its-a-small-schizophrenic-world', 'schizo.jpg', 'vimeo', 'https://vimeo.com/41649359', '', '', ''),
(53, NULL, 'Leds Go', 'Le projet tuteuré Led’s Go c’est d’abord une rencontre, une collaboration entre un groupe de six étudiants de l’école d’ingénieur IMAC et le Collectif 18.3, un collectif de danseurs et comédiens dans le but de réaliser une installation pour la scénographie d’un spectacle vivant. Ceci prend la forme d''une grille de 7x5m illuminé grâce au vidéo-mapping, la projection de vidéo sur cette grille.\r\n\r\nRomain Braun, Guillaume Bréda, Thomas Durrenberger, Michel Doudin, Guénolé Guémas et Hye-Seung Lee', 'Réalisation d''une installation pour la scénographie d’un spectacle vivant avec le collectif 18.3', '2016-04-26 22:00:00', '', 'Malte Mager', '', 'leds-go', 'led.jpg', 'vimeo', 'https://vimeo.com/41737488', '', '', ''),
(54, NULL, 'Logiciel Stopmotion Tweedy', 'Le logiciel de Stop Motion Tweedy permet à tout amateur de cette discipline de réaliser ce type de vidéo de A à Z. Tweedy permet de piloter un appareil photo depuis son interface et propose plusieurs outils d''aide à la réalisation. En effet, la vision en temps réel permet de voir sur l''écran les modifications de la scène et d''avoir ainsi rapidement l''aperçu du résultat, du cadrage, etc. sans avoir à prendre plusieurs photos pour au final n''en garder qu''une ; l''onion skin permet de voir la différence entre deux ou plusieurs images consécutives grâce à des niveaux de transparence ; le réglage de l''appareil photo peut se faire depuis l''application, ce qui permet de ne plus y toucher et risquer de le déplacer une fois l''installation faite ; le montage se fait grâce à une manipulation classique, à la manière de toute plateforme de montage ; l''export se fait dans un format qui permet de transférer le projet dans le logiciel de montage de son choix. Tweedy réunit donc un maximum de fonctionnalités qui facilitent la réalisation d''une vidéo de Stop Motion. Ce logiciel est Open Source. Ainsi, tout utilisateur a la possibilité de développer de nouvelles fonctionnalités qui apporteront une amélioration à celui-ci. Il est également multiplateforme et fonctionne aujourd''hui sous Linux et MacOs.\r\n\r\nStéphanie Brière, Solvejg Bougeois, Guillaume Bonvoust et Julien Hennet', 'Tweedy permet de piloter un appareil photo depuis son interface et propose plusieurs outils d''aide à la réalisation.', '2016-04-26 22:00:00', '', 'Fabien Castan', '', 'logiciel-stopmotion-tweedy', 'tweedy.jpg', 'vimeo', 'https://vimeo.com/41666990', '', '', ''),
(55, NULL, 'Picri 2', 'Le projet PICRI (Partenariat Institutions Citoyens pour la Recherche et l''Innovvation) est « La mémoire enfouie des Correspondants de l’Humanité », dont le sujet de recherche est : "A la rencontre d’une mémoire de la région Ile de France : L’espace francilien dans le regard des correspondants photographiques de l’Humanité." Le projet a été réalisé en collaboration avec trois étudiants du master Culture et Métiers du Web : Carole Andriantsitohaina, Sophie Boiche et Jean-François Hamet. Notre rôle a été de poursuivre le développement du site commencé l''année dernière. Nous avons ainsi effectué une refonte graphique et ergonomique afin de mettre davantage en valeur les photographies à travers des modules innovants et interactive tels qu''une photothèque, une carte Google Map, une frise chronologique, des parcours franciliens ou encore un espace pédagogique.\r\n\r\nAnne Delort et Léonore Savoye', '', '2016-04-26 22:00:00', '', 'Thierry Bonzon', '', 'picri-2', 'regard.jpg', 'vimeo', '', '', '', ''),
(56, NULL, 'Tableau virtuel Kinect Quickslider', 'QuickSlider est un logiciel permettant de passer les slides d’un diaporama (Powerpoint, PDF...) sans avoir besoin de souris ni de clavier mais uniquement grâce à une kinect chargée de détecter des mouvements humains définis.\r\n\r\nMaëlle PARIEZ, Karine AVAKOVA, Aryane HOFBAUER et Jacqueline JAYACHANDRAN', 'Vidéo de promotion d''un logiciel permettant passer les slides d''un diaporama à l''aide de la technologie kinect', '2016-04-26 22:00:00', '', 'Fériel GOULAMHOUSSEN', '', 'tableau-virtuel-kinect-quickslider', 'quick.jpg', 'vimeo', 'https://vimeo.com/41686799', '', '', ''),
(57, NULL, 'WebGL IMAC', 'Le projet WebGL IMAC consiste en la création d''un site internet utilisant la technologie WebGL et ayant pour but de présenter les projets tuteurés des étudiants de l''école d''ingénieur IMAC. Mais le WebGL c''est quoi ? Le WebGL est une spécification d''affichage 3D pour les navigateurs Web permettant d''intégrer du contenu OpenGL directement dans le code Javascript d''une page internet. Et le contenu de ce site web ? Ce site web est divisé en 3 univers, présentant chacun un aspect de la formation IMAC, à savoir : La communication, le multimédia et l''audiovisuel. Venez découvrir les projets des étudiants en naviguant de façon innovante d''un univers à l''autre.\r\n\r\nRomain BERTOZZI et Simon CARRE', 'Le projet WebGL IMAC consiste en la création d''un site internet utilisant la technologie WebGL et ayant pour but de présenter les projets tuteurés des étudiants de l''école d''ingénieur IMAC', '2016-04-26 22:00:00', '', 'Venceslas Biri', '', 'webgl-imac', 'webgl.jpg', 'vimeo', 'https://vimeo.com/41674978', '', '', ''),
(58, NULL, '2018', '2038 est un projet de court-métrage d''anticipation, réalisé dans le cadre des études de l''école d''ingénieurs IMAC en collaboration avec l''association audiovisuelle 803Z. Résumé : dans une société futuriste, un étudiant conçoit une machine pouvant révolutionner la condition humaine.\r\n\r\nNadia Mazouz, Keven Akyurek et Alexandre Horiot', 'Court-métrage d''anticipation en collaboration avec l''association audiovisuelle 803Z', '2016-04-26 22:00:00', '', 'Frank Charpentier', '', '2018', '2038.jpg', 'vimeo', 'https://vimeo.com/66175926', '', '', ''),
(60, NULL, 'Canal Nivernais', 'Le projet du canal du Nivernais consiste en la réalisation d''une application Androïd basée sur la réalité augmentée. Cette application permettra aux utilisateurs du canal de découvrir la région d''une nouvelle façon.\r\n\r\nTifaine Caumont, Pierre-Baptiste Lallican et Flavien Leygues', 'Application Androïd basée sur la réalité augmentée.', '2016-04-26 22:00:00', '', 'Frédéric Rolland et Gilles Chamillard', '', 'canal-nivernais', 'canal.jpg', 'vimeo', 'https://vimeo.com/66062380', '', '', ''),
(61, NULL, 'Com IMAC 2014', 'La cellule communication de l''IMAC avait pour but d''assurer la communication externe et interne de l''école : salons étudiants, rencontres des métiers du web, cordées de la réussite.\r\nL''équipe a également réalisé cette année le showreel de l''Esipe ainsi que les logos des filières de l''Esipe.\r\n\r\nLauriane Anthony, Fany Durand, Océane Rennesson, Timothée Riom et Jérémy Ta', 'Assurer la communication externe et interne de l''école', '2016-04-26 22:00:00', '', 'Vincent Nozick', '', 'com-imac-2014', 'comimac_0.jpg', 'vimeo', 'https://vimeo.com/67005300', '', '', ''),
(62, NULL, 'Electronic Wallpaper 2.0', 'EWP 2.0 est le premier logiciel de montage vidéo procédural. En se basant non plus sur le découpage temporel des vidéos mais sur le tracé laissé par l’utilisateur sur les rushes, EWP 2.0 s’inscrit dans le cadre des nouvelles pensées du numérique en révolutionnant le montage vidéo. Ergonomique et intuitif, EWP 2.0 est destiné à tous les professionnels, amateurs mais aussi aux curieux. EWP 2.0, expérimentez le montage instinctif !\r\n\r\nDamaris Ankou, Charlotte Hochart et Cécilia Lejeune', 'EWP 2.0 est le premier logiciel de montage vidéo procédural.', '2016-04-26 22:00:00', '', 'Stéphane Trois Carrés', '', 'electronic-wallpaper-2-0', 'ew.jpg', 'vimeo', '', '', '', ''),
(63, NULL, 'Hydro-gene', 'Hydro-gene Engine est un moteur de rendu 3D capable d''afficher en temps réel des terrains composés de millions de polygones et enrichis de données hydrologiques. Hydro-gene permet de naviguer dans ces terrains, et de visualiser ces informations dans le cadre de l''étude du comportement de l''eau à l''échelle géologique.\r\n\r\nFlora Jullien, Jérémie Defaye et Cédric Bidaud', 'Moteur de rendu 3D capable d''afficher en temps réel des terrains composés de millions de polygones et enrichis de données hydrologiques. ', '2016-04-26 22:00:00', '', 'Adrien Hérubel', '', 'hydro-gene', 'hydrogene.jpg', 'vimeo', 'https://vimeo.com/66016707', '', '', ''),
(64, NULL, 'Lightbeats', 'Le projet Lightbeats consiste en la création d''un logiciel de V-jing en temps réel: le logiciel doit permettre le déclenchement, la lecture et la modification de calques vidéo ou effet, parfaitement synchronisés avec le jeu de musiciens utilisant des instruments tels que des séquenceurs, utilisant le protocole MIDI.\r\n\r\nArnaud Gicquello, Jonathan Carly, Julien Creus et Tom Gay', 'Création d''un logiciel de V-jing en temps réel', '2016-04-26 22:00:00', '', '', '', 'lightbeats', 'lightbeat.jpg', 'vimeo', 'https://vimeo.com/66173479', '', '', '');
INSERT INTO `projects` (`id`, `id_gallery`, `name`, `description`, `excerpt`, `date`, `contributors`, `name_of_tutors`, `awards`, `url_page`, `url_image`, `platform`, `url_video`, `github_link`, `web_link`, `vimeo_link`) VALUES
(67, NULL, 'Euclid was wrong', 'Euclid Was Wrong est un puzzle-game à la troisième personne dans un univer non-euclidien.\r\n\r\nL''histoire se déroule dans le monde de Pseudaria, où les géométriciens ont réussi à synthétiser l''ultime paradoxe, rémettant en cause le 5e postulat d''Euclide. Ce paradoxe fut confiné au sein du claveau, le coeur de l''Usine, alimentant tout le royaume en énergie.\r\nMais malheureusement, un jour, le coeur surchauffe, et tous les paradoxes qu''il contenait s''échappent !\r\n\r\n    Monia Arrada\r\n    Nicolas Bertrand\r\n    Laury Landrau\r\n    Andre Sochard\r\n', 'Euclid Was Wrong est un puzzle-game à la troisième personne dans un univer non-euclidien.', '2014-04-26 22:00:00', '', 'Adrien Herubel', '', 'euclid-was-wrong', 'logoEWW.png', 'vimeo', '94471002', '', '', ''),
(68, NULL, 'Data Gare', 'DataGare est un projet de visualisation des données de la SNCF, s''inscrivant dans le cadre du programme Data Shaker mis en place par le NUMA (anciennement La Cantine).\r\nIl s''agit d''une application interactive et ludique de comparaison et de visualisation animée des données sur les gares Transilien.\r\nLe dispositif est projeté en grand format sur un mur de plusieurs mètres (10x3m).\r\nL''un des principaux enjeux a été de créer une expérience utilisateur unique, d''une part en tactilisant le mur, et d''autre part, en donnant vie à des jeux de données statiques.\r\nLe projet s''appuie sur un logiciel graphique 2D/3D en temps réel, AAASeed, basé sur du LUA et du C, conçu par l''artiste programmeur Mâa Berriet.\r\n\r\n    Marine Dos\r\n    Audrey Guénée\r\n    Maxime Kharlamoff\r\n    Lionel Mullot\r\n', 'DataGare est un projet de visualisation des données de la SNCF, s''inscrivant dans le cadre du programme Data Shaker mis en place par le NUMA', '2016-04-26 22:00:00', '', 'Venceslas Biri', '', 'data-gare', 'Data_Gare.jpg', 'vimeo', '94057697', '', '', ''),
(71, NULL, 'Buttle OFX 2014', 'ButtleOFX est un logiciel de compositing OpenSource. Il permet d’appliquer des effets à des images ou des vidéos, et a été pensé pour être simple d’utilisation tout en restant performant.\r\nLe projet a été commencé en 2012 - 2013 par une autre équipe de l’IMAC et a été reprise par la nôtre en Octobre 2013, avec pour objectif de sortir une version installable : ButtleOFX Alpha. \r\n\r\n    Lucie Delaire\r\n    Jonathan Douet\r\n    Anthony Guiot\r\n    Virginie Lalande\r\n    Baptiste Moizard\r\n', 'ButtleOFX est un logiciel de compositing OpenSource. Il permet d’appliquer des effets à des images ou des vidéos, et a été pensé pour être simple d’utilisation tout en restant performant.', '2014-04-26 22:00:00', '', 'Fabien Castan', '', 'buttle-ofx-2014', 'buttleOFX2014.jpg', 'vimeo', '94228348', '', '', ''),
(72, NULL, 'Xtract yourself!', 'Xtract yourself! est un programme permettant de réaliser une extraction de fond. Ceci consiste à détecter tout ce qui passe devant le fond, au premier plan. On peut alors détecter tout changement dans l''image : personne qui passe devant, ajout ou déplacement d''un objet, ... Nous nous sommes principalement penchées sur une méthode qui s''adapte aux changements de fond lent (ainsi, un objet qui reste immobile un certain temps entre dans le fond.) et sur une détection robuste aux changements de luminosité qui détecte aussi les ombres. Le but était de réaliser une extraction efficace que pourrait utiliser le centre de création numérique Le Cube dans le cadre de son projet Living Art, mais notre extraction peut aussi avoir d''autres applications telles que le jeu vidéo.\r\n\r\n    Sanaa Belkouch\r\n    Marjory Gaillot\r\n    Chloé Laugier\r\n', 'Xtract yourself! est un programme permettant de réaliser une extraction de fond. ', '2011-04-26 22:00:00', '', 'Didier Bouchon <br/> Vincent Nozick', '', 'xtract-yourself', 'xtract.jpg', 'vimeo', '23636592', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_students`
--

CREATE TABLE IF NOT EXISTS `project_students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `project_students`
--

INSERT INTO `project_students` (`id`, `project_id`, `student_id`) VALUES
(2, 1, 62),
(3, 1, 48),
(4, 1, 44),
(9, 3, 74),
(10, 3, 79),
(11, 4, 63),
(12, 3, 73),
(13, 3, 54),
(14, 4, 71),
(15, 4, 70),
(16, 4, 42),
(17, 6, 52),
(18, 6, 61),
(19, 6, 76),
(20, 6, 45),
(21, 14, 43),
(22, 14, 48),
(23, 14, 55),
(24, 14, 54),
(25, 14, 76),
(26, 14, 75),
(27, 14, 51),
(28, 15, 49),
(29, 15, 78),
(30, 16, 47),
(31, 16, 68),
(32, 17, 51),
(33, 17, 75),
(34, 17, 66),
(35, 17, 57),
(36, 17, 60),
(37, 17, 56),
(38, 19, 67),
(39, 19, 50),
(40, 20, 55),
(41, 20, 72),
(42, 21, 46),
(43, 21, 64),
(44, 21, 80),
(46, 23, 59),
(47, 23, 65),
(48, 23, 43),
(49, 23, 77),
(50, 23, 104);

-- --------------------------------------------------------

--
-- Table structure for table `project_tags`
--

CREATE TABLE IF NOT EXISTS `project_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `project_tags`
--

INSERT INTO `project_tags` (`id`, `project_id`, `tag_id`) VALUES
(2, 23, 2),
(3, 23, 0),
(4, 1, 1),
(5, 1, 2),
(6, 3, 1),
(7, 1, 5),
(8, 2, 1),
(9, 2, 7),
(10, 3, 5),
(11, 4, 6),
(12, 4, 4),
(13, 5, 1),
(14, 5, 5),
(15, 5, 4),
(16, 6, 4),
(17, 6, 2),
(18, 7, 2),
(19, 7, 1),
(20, 7, 4),
(21, 6, 1),
(22, 8, 4),
(23, 8, 1),
(24, 8, 2),
(25, 9, 4),
(26, 9, 1),
(27, 9, 7),
(29, 10, 1),
(31, 10, 4),
(32, 12, 4),
(33, 12, 1),
(34, 13, 4),
(35, 13, 1),
(37, 15, 4),
(38, 15, 2),
(39, 16, 4),
(40, 17, 4),
(41, 18, 6),
(42, 17, 8),
(43, 14, 6),
(44, 19, 4),
(45, 19, 5),
(46, 5, 3),
(47, 10, 6),
(48, 20, 4),
(49, 20, 3),
(50, 21, 4),
(51, 21, 6),
(52, 22, 4),
(53, 22, 8),
(54, 23, 5),
(55, 23, 4),
(56, 24, 4),
(57, 24, 6),
(58, 25, 6),
(59, 25, 4),
(60, 26, 4),
(61, 26, 8),
(62, 27, 3),
(63, 27, 4),
(64, 27, 6),
(65, 28, 4),
(66, 28, 6),
(67, 29, 3),
(68, 29, 4),
(69, 30, 6),
(70, 30, 4),
(71, 67, 4),
(72, 67, 6),
(73, 68, 4),
(74, 68, 6),
(75, 72, 4),
(76, 72, 6);

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE IF NOT EXISTS `promos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(10) unsigned NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` (`id`, `year`, `url_image`) VALUES
(1, 2017, 'imac2017.jpg'),
(2, 2016, 'imac2016.JPG'),
(3, 2015, 'imac2015.jpg'),
(4, 2014, 'imac2014.jpg'),
(5, 2013, 'imac2013.jpg'),
(6, 2012, 'imac2012.jpg'),
(7, 2011, 'imac2011.jpg'),
(8, 2010, 'imac2010.jpg'),
(9, 2009, 'imac2009.jpg'),
(10, 2008, 'imac2008.png'),
(11, 2007, 'imac2007.jpg'),
(12, 2018, '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `main`, `surname`, `name`, `role`, `description`, `mail`, `web_link`, `url_image`) VALUES
(1, 1, 'Vincent', 'Nozick', 'Responsable de la deuxième année', 'Maitre de conférences à l’université Paris-Est Marne-la-Vallée. Il s’est spécialisé en vision par ordinateur, en traitement d’images ainsi qu’en réalité virtuelle.', 'https://fr.linkedin.com/in/vincent-nozick-8030132/fr', 'http://www-igm.univ-mlv.fr/~vnozick/', 'Nozick.jpg'),
(2, 1, 'Venceslas', 'Biri', 'Directeur', 'Professeur d''informatique à l''université Paris-Est Marne-la-Vallée, Vice Président Enseignement et Innovation Pédagogique, et responsable du Master Science de l’image. Il est spécialisé en informatique graphique, en synthèse d''images 3D et en réalité virt', 'http://fr.linkedin.com/in/VenceslasBiri', 'http://igm.univ-mlv.fr/~biri/', 'Biri.jpg'),
(3, 1, 'Gaetan', 'Robillard', '', 'Professeur en communication visuelle et en arts à la Fonderie de l’Image et à École européenne supérieure d''art de Bretagne. Il est spécialisé en arts visuels et en réalisation 3D. Il est aussi artiste et a créé son propre studio d’animation, Tabouret stu', '', '', 'Robillard.jpg'),
(4, 0, 'Stéphane','Trois Carrés', '', 'Artiste et enseignant à l''école Supérieure d''art et de Design Le Havre Rouen', '', 'www.troiscarres.com', 'TroisCarres.jpg'),
(5, 0, 'Sylvain', 'Cherrier', '', 'Internet des objets', 'https://fr.linkedin.com/in/sylvain-cherrier-59a03075', '', 'Cherrier.jpg'),
(6, 0, 'Emilie', 'Verger', '', 'Historienne d’art spécialisée en art du XXe siècle et en médiation culturelle', 'https://fr.linkedin.com/in/emilie-verger-47347267', '', 'emilie_verger.jpg'),
(7, 0, 'Matthieu', 'Moreau', '', 'Directeur de projet / ergonome web. ', 'https://fr.linkedin.com/in/matthieu-moreau-34064538', 'www.netemedia.fr', 'Matthieu_Moreau.jpg'),
(8, 0, 'Özlem', 'Sulak', '', 'Cinema, Visual Arts, Editing', '', '', 'Ozlem.jpg'),
(10, 0, 'Sylvie', 'Donard', '', '', '', '', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo` int(10) unsigned NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=127 ;

--
-- Dumping data for table `students`
--


INSERT INTO `students` (`id`, `surname`, `name`, `promo`, `url_image`, `url_web`, `url_linkedin`) VALUES
(1, 'valentin','bacon', 12, '', '', ''),
(2, 'vanessa','bar', 12, 'vanessa.jpg', 'http://vportfolio.craym.eu/', 'https://fr.linkedin.com/in/vanessa-bar-85010092'),
(3, 'ariane','baudouin', 12, 'ariane.jpg', '', 'https://www.linkedin.com/in/ariane-baudouin-927072b1'),
(4, 'julien','bazire', 12, 'julien bazire.jpg', 'julienbazire.com', ''),
(5, 'matthieu','bessol', 12, 'matthieur bessol.jpg', 'http://www.matthieubessol.com/', 'https://www.linkedin.com/in/matthieubessol'),
(6, 'irène','burlet', 12, '', '', ''),
(7, 'noemie','busquet', 12, '', '', ''),
(8, 'lisa','couavoux', 12, '', '', ''),
(9, 'mael','crespin--pommier', 12, '', '', ''),
(10, 'baptiste','crespy', 12, '', '', ''),
(11, 'corentin','dechomet', 12, 'corentin dechomet.jpg', 'www.corentindechomet.fr', 'www.linkedin.com/in/corentindechomet'),
(12, 'vincent','delannoy', 12, 'vincent delannoy.png', '', 'https://fr.linkedin.com/in/vincent-delannoy-442100b5'),
(13, 'antoine','demiere', 12, '', '', ''),
(14, 'arthur', 'ducoux', 12, '', '', ''),
(15, 'lucas','dussouchaud', 12, '', '', ''),
(16, 'quentin','ferre', 12, '', '', ''),
(17, 'hugo','flirden', 12, '', '', ''),
(18, 'coralie','goldbaum', 12, 'coralie.jpg', 'http://www.coraliegoldbaum.fr/', 'https://fr.linkedin.com/in/coralie-goldbaum-0a596687'),
(19, 'sophie','guillot', 12, '', '', ''),
(20, 'joya','haddad', 12, 'joya.jpg', 'www.joyaghaddad.com', 'www.linkedin.com/in/joyahaddad'),
(21, 'andrea','la-selva', 12, '', '', ''),
(22, 'anfray','lapeyre', 12, 'anfray.jpg', 'www.anfraylapeyre.com', 'https://fr.linkedin.com/in/anfray-lapeyre-53353295'),
(23, 'yoan','lecoq', 12, 'yoan lecoq.jpg', 'www.yoanlecoq.com', ''),
(24, 'antonin','leuret', 12, 'antonin.jpg', '', 'https://fr.linkedin.com/in/antonin-leuret-91171aba'),
(25, 'owen','manach', 12, '', '', ''),
(26, 'melodie','mersch', 12, 'melodie.jpg', '', ''),
(27, 'baptiste','olivier', 12, '', '', ''),
(28, 'melanie','paque', 12, '', '', ''),
(29, 'marion','prigent', 12, '', '', ''),
(30, 'julie','puech', 12, 'julie.jpg', '', 'https://fr.linkedin.com/in/julie-puech-723242118'),
(31, 'quentin','quemere', 12, 'quentin.jpg', 'https://www.youtube.com/playlist?list=PLTodNkd9QV50C5MT6p5S2MC642MqnrvRT', ''),
(32, 'alexandre','reho', 12, 'reho.jpg', '', ''),
(33, 'henri','respaud-bouny-stout', 12, '', '', ''),
(34, 'elise','ritoux', 12, '', '', ''),
(35, 'maureen','roche', 12, 'maureen.JPG', 'http://www.maureenroche.fr', 'https://fr.linkedin.com/in/maureen-roche-5086a589'),
(36, 'heloise','roussel', 12, '', '', ''),
(37, 'sophie','salton', 12, 'sophie.jpg', 'http://sophie-salton.com/', 'https://fr.linkedin.com/in/sophie-salton-155b01b4'),
(38, 'caroline','vien', 12, 'caroline.jpg', 'http://www.carolinevien.com/', 'https://fr.linkedin.com/in/carolinevien'),
(39, 'marion','vila', 12, 'marion.jpg', 'http://vila-marion.fr/', ''),
(40, 'steeve','vincent', 12, 'steeve.jpg', '', ''),
(41, 'pauline','vivier', 12, 'pauline.jpg', '', ''),
(42, 'marion','audebert', 2, 'Marion_Audebert.jpg', '', 'https://fr.linkedin.com/in/marionaudebert'),
(43, 'jordi','bastide', 2, 'jordi_Bastide.jpg', 'http://jordi-bastide.com/', 'https://fr.linkedin.com/in/jordibastide'),
(44, 'juliette','belin', 2, 'Juliette_Belin.jpg', 'http://jbelin.com', 'https://www.linkedin.com/in/juliettebelin'),
(45, 'marie','benoist', 2, '', '', ''),
(46, 'gwen','berthe', 2, '', '', ''),
(47, 'dorothee','biechy', 2, '', '', ''),
(48, 'armand','biteau', 2, 'Armand_Biteau.jpg', 'www.armandbiteau.com', 'https://fr.linkedin.com/in/armandbiteau'),
(49, 'pauline','bocognano', 2, '', '', ''),
(50, 'quentin','bommart', 2, 'Quentin_Bommart.jpg', 'http://kouglov.deviantart.com/', 'https://fr.linkedin.com/in/quentin-bommart-36b173105'),
(51, 'baptiste','bourron', 2, 'Baptiste_Bourron.jpg', 'http://baptistebourron.alwaysdata.net/', ''),
(52, 'mathieu','bresson ', 2, '', '', ''),
(53, 'emeline','cardinet', 2, '', '', ''),
(54, 'thibaud','carpentier', 2, 'Thibaud_Carpentier.jpg', 'http://thibaudcarpentier.com', 'https://fr.linkedin.com/in/thibaud-carpentier-318a3393'),
(55, 'pauline','cassard-boisgallais', 2, '', '', ''),
(56, 'jordan','de almeida', 2, '', '', ''),
(57, 'matthieu','denis', 2, '', '', ''),
(58, 'thomas','dufraine', 2, '', '', ''),
(59, 'maxime','engel', 2, 'Maxime_Engel.jpeg', 'http://www.maxime-engel.fr/', 'https://fr.linkedin.com/in/maxime-engel-84414495'),
(60, 'damien','fiorella', 2, '', '', ''),
(61, 'lisa','francoise', 2, 'Lisa_Francoise.jpg', 'http://lisafrancoise.fr', 'https://fr.linkedin.com/in/lisa-françoise-272591113'),
(62, 'hugo','garrido y saez', 2, 'hufo_garrido.jpg', 'http://letsdovoodoo.com/', 'https://fr.linkedin.com/in/hugo-garrido-y-saez-b6869a71'),
(63, 'marin','gauthier', 2, '', '', ''),
(64, 'paul','gerard', 2, '', '', ''),
(65, 'maxime','gilbert', 2, 'Maxime_Gilbert.png', 'http://www.maximegilbert.fr/', 'https://se.linkedin.com/in/mxmgilbert'),
(66, 'flore','giraudier', 2, 'Flore_Girauder.jpg', 'floregiraudier.com', ''),
(67, 'maximilien','glineur', 2, 'Maximilen_Glineur.jpg', 'http://www.maximilien-glineur.fr', 'https://www.linkedin.com/in/maximilien-glineur-16788553'),
(68, 'lauriane','granmagnat', 2, '', '', ''),
(69, 'timothe','griere', 2, 'Portrait1.jpg', 'http://timothegriere.fr/', 'https://www.linkedin.com/in/timothegriere'),
(70, 'manon','grisi', 2, 'Manon_Grisi.jpg', 'http://www.manongrisi.com/', 'https://www.linkedin.com/in/manongrisi'),
(71, 'pascal','ho', 2, 'Pascale_Ho.png', 'http://hisu.fr/', 'https://fr.linkedin.com/in/hphisu'),
(72, 'robin','lasne', 2, '', '', ''),
(73, 'florian','lequertier', 2, '', '', ''),
(74, 'mehdi-antoine','mahfoudi', 2, '', '', ''),
(75, 'melissa','masquelier', 2, '', '', ''),
(76, 'alice','neichols', 2, '', '', ''),
(77, 'alexis','oblet', 2, '', '', ''),
(78, 'andréas williams','pinbouen', 2, 'Andreas_Pinbouen.jpg', 'http://andreas-pinbouen.com/', 'https://fr.linkedin.com/in/andréas-pinbouen-95a11667'),
(79, 'clément','schepens', 2, 'Clement_Schepens.png', '', 'https://fr.linkedin.com/in/clément-schepens-50a25958'),
(80, 'denis','tribouillois', 2, 'Denis_Tribouillois.jpg', '', 'https://www.linkedin.com/in/denistribouillois'),
(81, 'christophe','assante di capillo', 1, '', '', ''),
(82, 'rémi','bancourt', 1, '', '', ''),
(83, 'dorian','belhaj', 1, 'Dorian_Belhaj.jpg', 'www.dorian-belhaj.fr', 'https://fr.linkedin.com/in/dorian-belhaj-36485965'),
(84, 'asmae','bouhouili', 1, '', '', ''),
(85, 'mégane','burckel', 1, 'Megane_Burckel.jpg', 'http://meganeupload.fr', 'https://www.linkedin.com/in/mégane-burckel-a5862182?trk=nav_responsive_tab_profile'),
(86, 'maëlle','carlier', 1, 'Maelle_Carlier.jpg', 'http://maellecarlier.com', 'https://fr.linkedin.com/in/maëlle-carlier-35b78562'),
(87, 'charlotte','caseau', 1, '', '', ''),
(88, 'pierre','charles', 1, 'Pierre_Charles.jpg', 'http://www.pierre-charles.com/', 'https://fr.linkedin.com/in/pierrechls'),
(89, 'louis','chartier', 1, 'louis_Chartier.jpg', 'http://www.louis-chartier.com/', 'https://fr.linkedin.com/in/louis-chartier-541717bb'),
(90, 'pierre','claisse', 1, 'Pierre_Claisse.jpg', 'http://www.pierreclaisse.com/', 'https://www.linkedin.com/in/pierreclaisse'),
(91, 'sophie','cogny', 1, 'Sophie_Cogny.jpg', 'http://www.doyoubuzz.com/sophie-cogny', 'https://www.linkedin.com/in/sophie-cogny-39905983'),
(92, 'guilhem','compain', 1, 'Guilhem_Compain.jpg', 'http://guilhemcompain.fr/', 'https://fr.linkedin.com/in/guilhem-compain-729b31113'),
(93, 'théo','costantini', 1, '', 'http://www.theocostantini.com/', 'https://fr.linkedin.com/in/theo-costantini-55b75b51'),
(94, 'quentin','couillard', 1, '', 'www.quentincouillard.com', 'https://fr.linkedin.com/in/quentin-couillard-121407b4'),
(95, 'mélina','da rocha', 1, 'Melina_Da_Rocha.jpg', '', 'https://fr.linkedin.com/in/mélina-da-rocha-51446291'),
(96, 'olivier','daire', 1, 'Oliver_Daire.jpg', 'http://www.olivierdaire.com/', 'https://www.linkedin.com/in/olivierdaire'),
(97, 'charlie','darraud', 1, 'Charlie_Darraud.jpg', 'www.charlie-darraud.com', 'https://fr.linkedin.com/in/charlie-darraud-b1b47265'),
(98, 'grégoire','de lillo', 1, 'Gregoire_De_Lillo.jpg', 'www.gregoiredelillo.com', 'https://www.linkedin.com/in/grégoire-de-lillo-239713112'),
(99, 'julia','dehais', 1, 'Julie_Dehais.jpg', 'http://juliadehais.tumblr.com/', 'https://www.linkedin.com/in/julia-dehais-82b55811a?authType=NAME_SEARCH&authToken=l2iF'),
(100, 'olivier','falconnet', 1, '', '', ''),
(101, 'alexander','feller', 1, 'Alexander_Feller.jpg', 'http://www.marchanddesel.fr/', 'https://www.linkedin.com/in/alexanderfeller'),
(102, 'grégoire','folletti', 1, 'Gregoire_Folletti.jpg', '', ''),
(103, 'romain','françois', 1, 'Romain_Francois.jpg', 'http://romainfrancois.fr ', 'https://www.linkedin.com/in/romain-fran%C3%A7ois-07924685'),
(104, 'mathias','goyeneche', 1, '', '', ''),
(105, 'quentin','guittard', 1, 'Quentin_Guittard.jpg', 'http://quentinguittard.fr/', 'https://www.linkedin.com/in/quentin-guittard-43888994?trk=nav_responsive_tab_profile_pic'),
(106, 'jerome','hernandez', 1, '', '', ''),
(107, 'lucas','horand', 1, '', 'http://luhof.fr', 'https://www.linkedin.com/in/lucas-horand-2786246a'),
(108, 'alice','jestin', 1, '', 'alicejestin.com', ''),
(109, 'robin','jungers', 1, 'Robin_Jungers.jpg', 'http://robinjungers.com/', 'https://fr.linkedin.com/in/robinjungers'),
(110, 'chamseddine','kaddouri', 1, 'chamse_Kaddouri.jpg', '', 'https://fr.linkedin.com/in/chamseddine-kaddouri-5137508a'),
(111, 'yohan','le breton', 1, 'Yohan_Le_Breton.jpg', 'http://yohanlebreton.fr/', 'https://fr.linkedin.com/in/yohanlb'),
(112, 'faustine','lemerle', 1, '', '', ''),
(113, 'corentin','limoge', 1, '', '', ''),
(114, 'alice','maixent', 1, 'Alice_Maixent.jpg', 'www.alicemaixent.com', 'https://www.linkedin.com/in/alice-maixent-42590410a'),
(115, 'bettina','migot', 1, '', '', ''),
(116, 'lorenzo','milesi', 1, 'Lorenzo_Milesi.jpg', 'http://lorenzomilesi-portfolio.fr', '    https://fr.linkedin.com/in/lorenzomilesi'),
(117, 'valentin','mourot', 1, '', '', ''),
(118, 'céline','noël', 1, 'Celine_Noel.jpg', '', 'https://www.linkedin.com/in/céline-noël-6aa045bb'),
(119, 'charlotte','nortier', 1, 'Charlotte_Nortier.jpg', 'http://charlotte-nortier.fr/', 'https://fr.linkedin.com/in/charlotte-nortier-20a61884'),
(120, 'jérémie','quesnel', 1, 'Jeremie_Quesnel.jpg', 'http://www.jeremiequesnel.fr/', 'https://fr.linkedin.com/in/jeremie-quesnel-376b4480'),
(121, 'nancy','radjaya', 1, 'Nancy_Radjaya.jpg', 'www.nancy-radjaya.com', 'https://www.linkedin.com/in/nancyradjaya'),
(122, 'julien','rousset', 1, 'Julien_Rousset.jpg', 'http://julien-rousset.fr/', 'https://www.linkedin.com/hp/?dnr=4RNII4Gjby0OOrfO4uofxuMgyv4qNoUGLOzI'),
(123, 'lea','rozen sudry', 1, '', '', ''),
(124, 'jules','tantot', 1, '', '', ''),
(125, 'isa','taoui', 1, 'Isa_Taoui.jpg', 'https://isataoui.persona.co/', ''),
(126, 'victor','viale', 1, 'Victore_Viale.jpg', 'http://www.victorviale.com', 'https://fr.linkedin.com/in/victorviale');


-- --------------------------------------------------------

--
-- Table structure for table `student_exchange_testimonials`
--

CREATE TABLE IF NOT EXISTS `student_exchange_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(10) unsigned DEFAULT NULL,
  `overview` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `student_exchange_testimonials`
--

INSERT INTO `student_exchange_testimonials` (`id`, `name`, `job`, `year`, `overview`, `url_image`) VALUES
(1, 'Matthieu Bresson', '', 2016, 'J''ai choisi Taïwan pour mon ultime semestre d''études à l''automne 2015, au sein de National Tsing Hua University. \r\nJe pourrais décrire les montagnes qui côtoient l''océan, les mille-et-un plats qui ravissent le palais, la richesse de cultures anciennes fondues dans une société moderne. Mais même les explications les plus éloquentes ne pourront pas rendre justice à ce que m''a apporté ce séjour là-bas. Quant à la barrière de la langue, elle s''est inclinée devant la gentillesse des habitants. \r\nPour moi, Taïwan est la perle de l''Asie.', 'matthieur_bresson.jpg'),
(2, 'Timothé Grière', '', 0, 'Partir en Erasmus à Stuttgart était une expérience unique. La filière Audiovisual Media proposée par la Hochschule der Medien, permet de se spécialiser en audiovisuel, tout en s’immergeant dans le monde professionnel grâce à des moyens techniques avancés. Les promotions, composées d’étudiants internationaux, ajoutent un point de vue européen et international à la formation. Stuttgart est un bon compromis pour bénéficier des avantages d’un semestre à l’étranger, sans partir trop loin.', 'Portrait1.jpg'),
(3, 'Manon Grisi', '', 0, 'Pour ma troisième année j’ai eu l’occasion de partir au Japon pendant 6 mois a Hakodate. J’ai ainsi pu travailler sur des projets originaux et innovant, mais j’ai également découvert une approche de travail différente de celle que je connaissais. Cette expérience m’a permis d’avoir un nouveau regard sur le monde numérique. J’ai d’ailleurs réalisé mon stage de fin d''études a Hiroshima. Culturellement aussi d’ailleurs, le Japon est un pays qui foisonne de choses a découvrir, goûter, tester… Une vraie expérience très enrichissante !', '12469522_10208177400929842_890586282176768866_o.jpg'),
(4, 'Marie Benoist', '', 0, 'J’ai effectué mon dernier semestre d’études en Suède à l’Université de Malmö afin d’élargir mes domaines de compétences. En effet pour ma troisième année à l’IMAC j’ai décidé de partir à l’étranger avec pour but d’améliorer mon anglais mais aussi de découvrir une autre culture. Durant mes cinq mois dans cette petite ville nordique située à seulement 20 min en train de Copenhague j’ai eu la chance de suivre deux cours en anglais : “Designing for Wearables” et “Experimental Game Interactions”. Ces cours étaient extrêmement intéressants et le mode d’éducation à la Suédoise m’a beaucoup séduit (peu de cours théoriques et beaucoup de pratique). Cette expérience a sans doute été la meilleure de toute ma scolarité, j’ai considérablement augmenté mon niveau d’anglais mais j’ai surtout rencontré des gens des quatre coins du globe. C’était une expérience unique, dans un pays dépaysant où les gens sont accueillants et l’éducation exceptionnelle.', '13023473_10209900738021961_183563738_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_testimonials`
--

CREATE TABLE IF NOT EXISTS `student_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(10) unsigned DEFAULT NULL,
  `overview` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `student_testimonials`
--

INSERT INTO `student_testimonials` (`id`, `name`, `job`, `year`, `overview`, `url_image`) VALUES
(1, 'Julie Pronzac', 'UX designer chez Nealite', 2014, 'L''IMAC m''a apporté une large culture numérique ainsi que l''ouverture d''esprit nécessaire pour m''orienter vers le métier de designer d''expérience. Être ingénieur créatif est un vrai plus dans ces métiers qui mêlent les compétences. Je recommanderais cette école pour tous les passionnés d''innovation numérique qui veulent expérimenter dans des domaines variés, et découvrir des personnes fantastiques !', 'julie-pronzac.png'),
(2, 'Thibaut Dumont ', 'Ingénieur R&D reconnaissance musicale chez MyMusicTeacher', 0, 'Après avoir terminé mon cursus par une année d''échange et un stage de recherche en Corée du sud, j''ai rejoint une jeune startup sur le développement d''un jeu vidéo d''apprentissage de la guitare. La grande force de l''IMAC est selon moi de former des ingénieurs créatifs capables de maîtriser à la fois les enjeux techniques et la dimension artistique ou ludique d''un projet multimédia, une capacité essentielle dans un monde ou les technologies de pointes vont de pair avec des innovations d''interface ou de design[...]', 'Thibaut-Dumont.png'),
(3, 'Marie Fétiveau', 'Lead Software Developer, RodeoFX, Montréal', 0, 'L''IMAC est une des rares formations à concilier sciences de l''ingénieur et arts. Ces trois années d''école m''ont permis d''acquérir des bases solides au travers des cours et des divers projets inter-diplômes, mais aussi de diversifier ma culture aussi bien technique qu''artistique, de dépasser mes limites et de nouer des relations amicales et professionnelles qui après toutes ces années continuent d''enrichir ma vie. ', 'Marie_Fétiveau.jpg'),
(4, 'Valentin Bourgoin', 'Directeur Technique chez 909c', 0, 'Je la recommanderais car c''est important, dans le monde professionnel d''aujourd''hui, d''avoir plusieurs cordes à son arc et de savoir sans cesse évoluer. La pluridisciplinarité de l''IMAC permet à ses diplômés de posséder, en plus d''un certain savoir faire, d''une culture technique et artistique très appréciée en entreprise.', 'Valentin_Bourgoin.jpg'),
(5, 'Sanaa Belkouch', 'Chef de projet digital', 0, 'Je recommande l''IMAC à toute personne qui aime créer, qui s''intéresse à la fois à l''art et aux nouvelles technologies. Apprenez à coder même si, à priori, ce n''est pas ce qui vous fait vibrer. Car cela vous ouvrira plusieurs perspectives. Pensez à l''entrepreneuriat et n''ayez pas peur de vous lancer dans la réalisation de vos idées et de vos projets[...]', 'Sana_ Belkouch.jpg'),
(6, 'Arnaud Trouvé', 'Chef de projet Post-production Audiovisuelle - Gingalab (Goyave Production)', 0, 'Venant d''un parcours très scientifique (prépa MPSI), l''IMAC m''a apporté une culture de l''image, et une rencontre avec des profils très variés et complémentaires. Je ne connais pas de formation publique aussi riche d''enseignements et diversifiée dans ses projets multimédia. Je la recommande chaudement à tous ceux qui rêvent de cinéma et d''informatique, et souhaitent un premier pas dans le domaine des effets visuels et de la post-production.', 'photo_Arnaud_Trouve.jpg'),
(7, 'Elisa Prana', 'Développeuse logiciel chez Mikros Image', 0, 'L''IMAC m''a avant tout permis de découvrir la programmation, tout en gardant un esprit ouvert et critique grâce aux autres matières. L''apprentissage par projets est également très formateur. C''est lors de mon projet tuteuré et mes stages que j''ai pu découvrir le monde des effets spéciaux, où je travaille maintenant.\r\nJe recommanderai l''IMAC à tout personne intéressée par le multimédia et l''aspect pluridisciplinaire de la formation.', 'E_Prana.jpg'),
(8, 'Adrien Herubel', 'Graphics programmer at Ubisoft Motion Pictures', 0, 'L''IMAC à travers sa formation plutôt variée laisse suffisamment de liberté à ses étudiants pour leur permettre de devenir de réels spécialistes dans le domaine de leur choix tout en leur ouvrant les yeux sur un grand ensemble des possibles dans les technologies de l''image et du son. En plus d''avoir développé mes compétences, l''école m''a permis de découvrir mon milieu professionnel actuel, et continue d''être un vivier de recrutement pour les besoins en ingénieurs de l''animation et du cinéma.', 'Adrien_Herubel.jpeg'),
(9, 'Cyrill Durigon', 'Motion designer / Directeur Artistique - Freelance', 0, 'L''Imac est pour moi une formation exigeante forte de son éclectisme. Applications, jeux vidéo, web, dispositifs interactifs, vidéos, les étudiants sont confrontés aux aspects artistiques et techniques dans tous les domaines. J''ai personnellement apprécié pouvoir m''investir dans ces projets très variés. Aujourd''hui encore, j''ai toujours à cœur de créer et d’innover. ', 'Cyrill_Durigon.jpg'),
(10, 'Aurélie Fruitière', 'Commerciale dans la Silicon Valley', 0, 'Pluridisciplinarité! Si en tant qu''étudiante ce mot m''inquiétait, aujourd''hui, en tant que professionnelle, c''est l''atout de l''école d''ingénieur IMAC que je met en avant. En entretien d''embauche ou au sein d''une équipe, fasse aux ingénieurs spécialistes, aux commerciaux de formation ou aux chargés de communication/marketing, c''est la qualité qui permet de se démarquer!', '579205_792089064154562_972753922_n.jpg'),
(11, 'Lauren AGOPIAN', 'VFX Developer, Hair & Fur TD Specialist at Mikros Image.', 2009, 'L''IMAC est la formation parfaite pour travailler dans le secteur des VFX.\r\nSpécialisé dans le "poil" et les "forêts" à Mikros Image, mon bagage technique est un véritable atout, en tant que TD / Graphiste, me permettant de développer les outils nécessaires à la création d''effets visuels assez techniques, mais également d''avoir la capacité de scripter, pour se faciliter la vie, et gagner en productivité... ( pour le coté créatif... )\r\nAu delà du caractère technique, il est essentiel, dans ce genre de milieu professionnel, d’être au contact des graphistes et de comprendre leurs problématiques, afin d''y répondre au mieux et se faire comprendre... En sortant de cette formation, l’intégration au milieu professionnel est facilité par la faculté d’être opérationnel, assez rapidement, sur le terrain !', 'lauren.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'coup de coeur'),
(2, 'web'),
(3, 'audiovisuel'),
(4, 'projet tuteuré'),
(5, 'image'),
(6, 'multimédia'),
(7, 'réalité virtuelle'),
(8, 'communcation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`) VALUES
(1, 'Julien Rousset', 'julien@imac.fr', '$2y$10$E/FJS3ebDMLPdFq0XR2xruGVOyy.R3lPpxshhPTqU4lra91shQ2Fu', 'Mq2h4md701uXox7fBkIWyeqbUAZzIJ3NXqxnFbyp01pMdVGQQb2tZWaDHN2Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
