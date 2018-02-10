-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2018 at 05:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_nina_smolen_wilson_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `media_list_author` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `media_list_author`) VALUES
(1, 'Sade', 'Adu', 'Soldiers of Love, Lovers Rock, Love Deluxe, Stronger than Pride, Promise'),
(2, 'Bob', 'Dylan', 'Bob Dylan (1962)\r\nThe Freewheelin’ Bob Dylan (1963)\r\nThe Times They Are a-Changin’ (1964)\r\nAnother Side of Bob Dylan (1964)\r\nBringing It All Back Home (1965)\r\nHighway 61 Revisited (1965)\r\nBlonde on Blonde (1966)\r\nJohn Wesley Harding (1967)\r\nNashville Skyline (1969)\r\nSelf Portrait (1970)\r\nNew Morning (1970)\r\nPat Garrett & Billy the Kid (1973)\r\nDylan – A Fool Such as I (1973)\r\nPlanet Waves (1974, mit The Band)\r\nBlood on the Tracks (1975)\r\nThe Basement Tapes (1975, mit The Band)\r\nDesire (1976)\r\nStreet Legal (1'),
(3, 'Gentleman', 'Tilmann Otto', 'Trodin in, Journey to Jah, Confidence, Another Intensity, Diversity,Live your Live'),
(4, 'Katja', 'Brandis', 'Woodwalkers\r\nWoodwalkers\r\nDer Elefanten-Tempel\r\nFloaters\r\nFreestyler\r\nGepardensommer\r\nKoalaträume\r\nRuf der Tiefe\r\nSchatten des Dschungels\r\nVulkanjäger\r\nWhite Zone\r\nDelfinTeam\r\nDie Romane\r\nExtras zu DelfinTeam\r\nDaresh – Die Welt\r\nDaresh-Extras\r\nDer Sucher\r\nFeuerblüte\r\nKampf um Daresh'),
(5, 'Isaac', 'Asimov', 'Der Zweihundertjährige, Der Aufbruch zu den Sternen, Foundation; Best of Asimov'),
(6, 'Nick', 'Hornby', '31 Songs, High Fidelity, About a boy'),
(7, 'Charlie', 'Chaplin', 'City lights, Making a Living\r\n,Kid Auto Races at Venice, Mabel’s Strange Predicament, A Thief Catcher\r\n Between Showers\r\nA Film Johnnie\r\nTango Tangles\r\nThe Star Boarder\r\nTwenty Minutes of Love\r\n Caught in a Cabaret\r\n Caught in the Rain'),
(8, 'T.E.', 'Lawrence', 'Prince of Arabia'),
(9, 'Radu', 'Mihaileanu', 'Geh und lebe, Zug des Lebens, Quelle der Frauen'),
(10, 'Billy', 'Joel', 'Piano Man, The strangers, River of Dreams');

-- --------------------------------------------------------

--
-- Table structure for table `big_medialist`
--

CREATE TABLE `big_medialist` (
  `media_id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `short_description` varchar(512) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `image` varchar(900) DEFAULT NULL,
  `publish_date` year(4) DEFAULT NULL,
  `type_of_data` varchar(11) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `big_medialist`
--

INSERT INTO `big_medialist` (`media_id`, `title`, `short_description`, `ISBN`, `image`, `publish_date`, `type_of_data`, `fk_author_id`, `fk_publisher_id`) VALUES
(1, 'Diamond Life', 'Smooth Soul', '3-432-00001-4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyZO7PmPQkyjzUmvQGORuyL9t9oQu6oP-j7a9d8W49l0eXwgJz', 1984, 'CD', 1, 1),
(2, 'Dylan', 'Rock', '978-3-86680', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkZwiZ4ExwA2Ky3yJai32bhbi5OxPPYk4Mqdqa91jjkCJD4u6_', 1982, 'CD', 2, 2),
(3, 'Trodin on', 'Reggae', '978-3-631-999', 'https://img.discogs.com/IdLHNGy4TawDN2DzUZ1J-hVy-kM=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-429791-1112294607.jpg.jpg', 2009, 'CD', 3, 3),
(4, 'Woodwalkers', 'Belletristik  loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum', '978-3-8311-00', 'https://media.buch.de/img-adb/45346735-00-00.jpg', 2016, 'book', 4, 4),
(5, 'Foundation', 'The Foundation series is a science fiction book series written by American author Isaac Asimov. For nearly thirty years, the series was a trilogy.', '978-3-7657-11', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-uEBOdxH6lbFDxOq_6_E8SzDTGHosyRgZNwoCKGEgZDMH-PA7', 1991, 'book', 5, 5),
(6, '31 songs', 'Songbook (published in the United Kingdom as 31 Songs) is a 2002 collection of 26 essays by English writer Nick Hornby about songs and (more often) the particular emotional resonance they carry for him. ', '978-3-923145-', 'http://systembiology.info/img/620879.jpg', 2002, 'book', 6, 6),
(7, 'CIty lights', 'Charlie Chaplin comedy Lorem ipsum blabla', '978-3-89124-9', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Chaplin_City_Lights_still.jpg/220px-Chaplin_City_Lights_still.jpg', 1931, 'DVD', 7, 7),
(8, 'Lawrence Prince of Arabia', 'whatever again lorem ipsum it is an historical drama', '978-3-9804123', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_bEiMWcdriVyJW4z5DpcImJKgsMyC3igmWTP2a-fYqLGoPyuqQQ', 1962, 'DVD', 8, 8),
(9, 'Live and Become', 'Live and Become (French: Va, vis et deviens) is a 2005 French drama film about an Ethiopian Christian boy who disguises himself as an Ethiopian Jew to escape famine and emigrates to Israel. ', '978-3-8311-00', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUTExIVFRUVGBcYFxYWFxcYFxcYFxcXGBcXGBcYHSggGBolHhcYITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLf/AABEIAREAuAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYHAf/EAEwQAAIBAgQDBQQHBQUFBQkAAAECEQADBBIhMQVBUQYTImFxMoGRoQcUI0KxwfAzUnKy0SRDYnOCkrPC4fEVNFNjhBYXRFRVlKKj0v/EABoBAAIDAQEAAAAAAAAAAAAAAAECAAMEBQb/xAAvEQACAgEEAQMCBAYDAAAAAAAAAQIRAwQSITFBBRNRIrEUYXHRMkKBkaHBFSRS/9oADAMBAAIRAxEAPwDk4WvclSRVvhGC764EJgHc+UgQPeaMpUrGSsHRSArccC7B/XrK4mzfCo3fKUIE27ysos2TJk580ydo86vp9GKF8v13RWvJcYWpCvZtK7xB1gkj3GimA5wRSroyfRcyor38Zbtqbd67nyTbCW3tqj5gdFYXFby1qWz9E75ZvX2Vlt23dEthjmdipVTMNETUsBzOlFdOw/0WI5tD601trxuhFuIiN9kSCSjuHYHQ+EHQjastjuzyoMgYs5w9i+GKun7UElCjbgZYn/F5UspJKwpWZoU6Kv8AC8GrpcusCUtKWgGJaCVBPTbatjw/6NDeS06YtMt9bT2sygF1gHEtE6d3IPn8Kimm6C1Rz4ivYroX/u2U2jdXGKFNpbltrlvKj', 2005, 'DVD', 9, 9),
(10, 'Rivers od Babylon', 'Music', '978-3-631-000', '', 0000, 'CD', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `login_authentification`
--

CREATE TABLE `login_authentification` (
  `authentification_id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `email` varchar(155) NOT NULL,
  `user_password` varchar(30) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_authentification`
--

INSERT INTO `login_authentification` (`authentification_id`, `first_name`, `last_name`, `email`, `user_password`, `fk_user_id`, `fk_media_id`) VALUES
(1, 'Nina', 'Smolen', 'nina.smo@gmx.at', '123456', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `adress` varchar(155) NOT NULL,
  `size` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `adress`, `size`) VALUES
(1, 'Epic', 'London', 'big'),
(2, 'Columbia', 'New York', 'big'),
(3, 'Four Music', 'Kingston', 'medium'),
(4, 'Bild', 'Frankfurt', 'big'),
(5, 'Heyne', 'München', 'big'),
(6, 'Penguin books', 'London', 'medium'),
(7, 'United Artists', 'New York', 'big'),
(8, 'Columbia Pictures', 'New York', 'big'),
(9, 'menemshafilms', 'Addis Abeba', 'small'),
(10, 'Columbia', 'New York', 'big');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `email` varchar(155) NOT NULL,
  `user_password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `user_password`) VALUES
(1, 'Nina', 'Smolen', 'nina.smo@gmx.at', '123456'),
(2, 'NIna', 'Smolen', 'nina.smo@gmx.at', '8d969eef6ecad3c29a3a629280e686'),
(3, 'Nana', 'Samir', 'nana@samir.at', 'a4a978e8c085c17607c3a935096aa2'),
(4, 'sara', 'wilson', 'sara@wilson.at', '2a8610aefdd0028c6bf074dd18721c'),
(5, 'marianne', 'kreit', 'marianne@kreit.at', '2dc0269fa54d269a87536810ec453c'),
(6, 'paul', 'mann', 'paul@mann.at', '8586911165acc09167ce35f071c5fa'),
(7, 'Klara', 'Klar', 'klara@klar.at', '963620a8b180c62077fb3c9ec399b2'),
(8, 'maria', 'lachs', 'm@lachs.at', '798a468c43440c22aebf4cf8767e19'),
(9, 'ahmed', 'arkan', 'ahmed@arkan.at', 'ahmeda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `big_medialist`
--
ALTER TABLE `big_medialist`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `login_authentification`
--
ALTER TABLE `login_authentification`
  ADD PRIMARY KEY (`authentification_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_media_id` (`fk_media_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `big_medialist`
--
ALTER TABLE `big_medialist`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_authentification`
--
ALTER TABLE `login_authentification`
  MODIFY `authentification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `big_medialist`
--
ALTER TABLE `big_medialist`
  ADD CONSTRAINT `big_medialist_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `big_medialist_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `login_authentification`
--
ALTER TABLE `login_authentification`
  ADD CONSTRAINT `login_authentification_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `login_authentification_ibfk_2` FOREIGN KEY (`fk_media_id`) REFERENCES `big_medialist` (`media_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
