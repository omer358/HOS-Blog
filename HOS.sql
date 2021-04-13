-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2021 at 12:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HOS`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`, `password`, `email`, `username`) VALUES
(1, 'Hosham', 'Mohamed', '81dc9bdb52d04dc20036dbd8313ed055', 'hoshammohammed477@gmail.com', 'hosham477'),
(2, 'Omer', 'Maki', '81dc9bdb52d04dc20036dbd8313ed055', 'omermaki358@gmai.com', 'omer358'),
(5, 'Salah', 'Mohamed', '81dc9bdb52d04dc20036dbd8313ed055', 'salahkatir127@gmai.com', 'salah127');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pub_date` date NOT NULL,
  `author_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `pub_date`, `author_id`) VALUES
(6, 'How to Become Android Developer', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n    <meta name=\"description\" content=\"\">\r\n    <meta name=\"author\" content=\"\">\r\n\r\n    <title>Clean Blog - Start Bootstrap Theme</title>\r\n\r\n    <!-- Bootstrap core CSS -->\r\n    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n\r\n    <!-- Custom fonts for this template -->\r\n    <link href=\"vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\'https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic\' rel=\'stylesheet\' type=\'text/css\'>\r\n    <link href=\'https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800\' rel=\'stylesheet\' type=\'text/css\'>\r\n\r\n    <!-- Custom styles for this template -->\r\n    <link href=\"assets/css/main.css\" rel=\"stylesheet\">\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n    <!-- Navigation -->\r\n    <nav class=\"navbar navbar-expand-lg navbar-light fixed-top\" id=\"mainNav\">\r\n        <div class=\"container\">\r\n            <a class=\"navbar-brand\" href=\"index.html\">HOS Blog</a>\r\n            <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n          Menu\r\n          <i class=\"fas fa-bars\"></i>\r\n        </button>\r\n            <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\r\n                <ul class=\"navbar-nav ml-auto\">\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"index.html\">Home</a>\r\n                    </li>\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"post.html\">Posts</a>\r\n                    </li>\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"about.html\">About Us</a>\r\n                    </li>\r\n\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"login.html\"> Login</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </nav>\r\n\r\n    <!-- Page Header -->\r\n    <header class=\"masthead\" style=\"background-image: url(https://miro.medium.com/max/2560/1*Ec7MJdsUiuVUMkeTw_6y_g.jpeg)\">\r\n        <div class=\"overlay\"></div>\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n                    <div class=\"post-heading\">\r\n                        <h1>How To become A Mobile Developer</h1>\r\n                        <h2 class=\"subheading\">make constant progress to land your first jop as a mobile Developer.</h2>\r\n                        <span class=\"meta\">Posted by\r\n              <a href=\"#\">Omer Maki</a>\r\n              on January 24, 2021</span>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </header>\r\n\r\n    <!-- Post Content -->\r\n    <article>\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n                    <p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center\r\n                        because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n                    <p>Science cuts two ways, of course; its products can be used for both good and evil. But there\'s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n                    <p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n                    <p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That\'s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n                    <p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those\r\n                        which divide us.</p>\r\n\r\n                    <h2 class=\"section-heading\">The Final Frontier</h2>\r\n\r\n                    <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n                    <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n                    <blockquote class=\"blockquote\">The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n                    <p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n                    <h2 class=\"section-heading\">Reaching for the Stars</h2>\r\n\r\n                    <p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched\r\n                        it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n                    <a href=\"#\">\r\n                        <img class=\"img-fluid\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mU4CMEDwIseCZQvskKAhZut5q7juzFg7Zg&usqp=CAU\" alt=\"no Image\" width=\"100%\">\r\n                    </a>\r\n                    <span class=\"caption text-muted\">To go places and do things that have never been done before – that’s what living is all about.</span>\r\n\r\n                    <p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n                    <p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n                    <p>Placeholder text by\r\n                        <a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by\r\n                        <a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </article>\r\n\r\n    <hr>\r\n\r\n    <!-- Footer -->\r\n    <footer>\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n                    <ul class=\"list-inline text-center\">\r\n                        <li class=\"list-inline-item\">\r\n                            <a href=\"#\">\r\n                                <span class=\"fa-stack fa-lg\">\r\n                  <i class=\"fas fa-circle fa-stack-2x\"></i>\r\n                  <i class=\"fab fa-twitter fa-stack-1x fa-inverse\"></i>\r\n                </span>\r\n                            </a>\r\n                        </li>\r\n                        <li class=\"list-inline-item\">\r\n                            <a href=\"#\">\r\n                                <span class=\"fa-stack fa-lg\">\r\n                  <i class=\"fas fa-circle fa-stack-2x\"></i>\r\n                  <i class=\"fab fa-facebook-f fa-stack-1x fa-inverse\"></i>\r\n                </span>\r\n                            </a>\r\n                        </li>\r\n                        <li class=\"list-inline-item\">\r\n                            <a href=\"#\">\r\n                                <span class=\"fa-stack fa-lg\">\r\n                  <i class=\"fas fa-circle fa-stack-2x\"></i>\r\n                  <i class=\"fab fa-github fa-stack-1x fa-inverse\"></i>\r\n                </span>\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                    <p class=\"copyright text-muted\">Copyright &copy; Your Website 2020</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n\r\n    <!-- Bootstrap core JavaScript -->\r\n    <script src=\"vendor/jquery/jquery.min.js\"></script>\r\n    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n\r\n    <!-- Custom scripts for this template -->\r\n    <script src=\"js/clean-blog.min.js\"></script>\r\n\r\n</body>\r\n\r\n</html>', '2021-04-13', 2),
(7, 'Why Learning To Code is So Hard?', ' <article>\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n                    <p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center\r\n                        because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n                    <p>Science cuts two ways, of course; its products can be used for both good and evil. But there\'s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n                    <p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n                    <p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That\'s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n                    <p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those\r\n                        which divide us.</p>\r\n\r\n                    <h2 class=\"section-heading\">The Final Frontier</h2>\r\n\r\n                    <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n                    <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n                    <blockquote class=\"blockquote\">The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n                    <p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n                    <h2 class=\"section-heading\">Reaching for the Stars</h2>\r\n\r\n                    <p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched\r\n                        it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n                    <a href=\"#\">\r\n                        <img class=\"img-fluid\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mU4CMEDwIseCZQvskKAhZut5q7juzFg7Zg&usqp=CAU\" alt=\"no Image\" width=\"100%\">\r\n                    </a>\r\n                    <span class=\"caption text-muted\">To go places and do things that have never been done before – that’s what living is all about.</span>\r\n\r\n                    <p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n                    <p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n                    <p>Placeholder text by\r\n                        <a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by\r\n                        <a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </article>\r\n', '2021-04-13', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
