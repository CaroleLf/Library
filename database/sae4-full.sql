-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : lun. 27 mars 2023 à 09:08
-- Version du serveur : 10.11.2-MariaDB-1:10.11.2+maria~ubu2204
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `iut1`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'J.K. Rowling'),
(2, 'George R-R Martin'),
(3, 'George R. R. Martin'),
(4, 'J.R.R. Tolkien'),
(5, 'J. R. R. Tolkien'),
(6, 'Thomas Day'),
(7, 'Xavier Mauméjean'),
(8, 'Michael SWANWICK'),
(9, 'Agatha Christie'),
(10, 'Larry W. Phillips'),
(11, 'Ernest Hemingway'),
(12, 'Leo Tolstoy'),
(13, 'graf Leo Tolstoy'),
(14, 'Dustin Condren'),
(15, 'Mark Twain'),
(16, 'Haruki Murakami'),
(17, 'Gabriel García Márquez'),
(18, 'Fyodor Dostoevsky'),
(19, 'Fyodor Dostoyevsky'),
(20, 'Constance Garnett'),
(21, 'Virginia Woolf'),
(22, 'Toni Morrison'),
(23, 'Maya Angelou'),
(24, 'Jeffrey M. Elliot'),
(25, 'Jean-Michel Basquiat'),
(26, 'Sara Jane Boyers'),
(27, 'Kurt Vonnegut'),
(28, 'Nanette Vonnegut'),
(29, 'Isabel Allende'),
(30, 'Salman RUSHDIE'),
(31, 'Zadie Smith'),
(32, 'Margaret Atwood'),
(33, 'Margaret Eleanor Atwood'),
(34, 'Ray Bradbury'),
(35, 'David Foster Wallace'),
(36, 'Don DeLillo'),
(37, 'Tom Wolfe'),
(38, 'John Steinbeck'),
(39, 'Cormac McCarthy'),
(40, 'Philip Roth'),
(41, 'Sylvia Plath'),
(42, 'Franz Kafka'),
(43, 'Albert Camus'),
(44, 'Pablo Neruda'),
(45, 'William Shakespeare'),
(46, 'Mary Wollstonecraft Shelley'),
(47, 'H.P. Lovecraft'),
(48, 'H. P. Lovecraft'),
(49, 'Sally Rooney'),
(50, 'Ocean Vuong'),
(51, 'Yaa Gyasi'),
(52, 'N. K. Jemisin'),
(53, 'Hanya Yanagihara'),
(54, 'Ottessa Moshfegh'),
(55, 'Carmen Maria Machado'),
(56, 'Brit Bennett'),
(57, 'R. O. KWON'),
(58, 'R.O. Kwon'),
(59, 'Garth Greenwell'),
(60, 'Bryan Washington'),
(61, 'Corwin Smidt'),
(62, 'Kevin den Dulk'),
(63, 'Bryan Froehle'),
(64, 'James Penning'),
(65, 'Stephen Monsma'),
(66, 'Douglas Koopman'),
(67, 'Bryan Riddle'),
(68, 'Houston Bryan Roberson'),
(69, 'Bryan LaBerge'),
(70, 'Bryan J. O\'Young'),
(71, 'Mark A. Young'),
(72, 'Steven A. Stiens'),
(73, 'Sam S. H. Wu');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(1, 'The Christmas Pig', 'http://books.google.com/books/content?id=ZVAoEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'One boy and his toy are about to change everything... Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve, something terrible happens - DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life... even toys. And Jack\'s newest toy - the Christmas Pig (DP\'s annoying replacement) - has a daring plan: Together they\'ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known... A heartwarming page-turning adventure about one child\'s love for his most treasured thing, and how far he will go to find it. A tale for the whole family to fall in love with, from one of the world\'s greatest storytellers. Featuring 9 black and white spreads and decorative inside art from renowned illustrator, Jim Field.', 256, '2021-10-12', '2022-07-30', 1, 1),
(2, 'The Casual Vacancy', 'http://books.google.com/books/content?id=FjMbGietIZ4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'When Barry Fairbrother dies in his early forties, the town of Pagford is left in shock. Pagford is, seemingly, an English idyll, with a cobbled market square and an ancient abbey, but what lies behind the pretty facade is a town at war. Rich at war with poor, teenagers at war with their parents, wives at war with their husbands, teachers at war with their pupils. . . Pagford is not what it first seems. And the empty seat left by Barry on the parish council soon becomes the catalyst for the biggest war the town has yet seen. Who will triumph in an election fraught with passion, duplicity and unexpected revelations? A big novel about a small town, THE CASUAL VACANCY is J.K. Rowling\'s first novel for adults. It is the work of a storyteller like no other.', 480, '2012-09-27', '2016-08-23', 1, 1),
(3, 'Very Good Lives', 'http://books.google.com/books/content?id=mF2GBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In 2008, J.K. Rowling delivered a deeply affecting commencement speech at Harvard University. Now published for the first time in book form, Very Good Lives offers J.K. Rowling\'s words of wisdom for anyone at a turning point in life, asking the profound and provocative questions: How can we embrace failure? And how can we use our imagination to better both ourselves and others? Drawing from stories of her own post-graduate years, the world-famous author addresses some of life\'s most important issues with acuity and emotional force.', 80, '2015-04-14', '2020-04-26', 1, 1),
(4, 'Le trône de fer', 'https://via.placeholder.com/200x300', 'Après avoir tué le monarque dément Aerys II Targaryen, Robert Baratheon est devenu le nouveau souverain du royaume des Sept Couronnes. Tandis qu\'en son domaine de Winterfell, son fidèle ami le duc Eddard Stark rend paisiblement la justice. Mais un jour, le roi Robert lui rend visite, porteur de sombres nouvelles : le trône est en péril. Stark, qui s\'est toujours tenu éloigné des affaires du pouvoir, doit alors abandonner les terres du Nord pour rejoindre la cour et ses intrigues. L\'heure est grave, d\'autant qu\'au-delà du mur qui protège le royaume depuis des siècles, d\'étranges créatures rôdent...', 477, '2001-01-01', '2002-10-03', 2, 2),
(5, 'A Song of Ice and Fire', 'http://books.google.com/books/content?id=GBaNEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'As the Seven Kingdoms face a generation-long winter, rival families battle over control of the Iron Throne, while preternatural forces and barbarian hordes threaten the land.', 0, '2013-10-29', '2014-10-27', 1, 3),
(6, 'The Ice Dragon', 'http://books.google.com/books/content?id=6SniBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The Ice Dragon is an enchanting tale of courage and sacrifice for young readers and adults by the wildly popular author of the #1 New York Times bestselling Song of Ice and Fire series, George R.R. Martin. Lavish illustrations by acclaimed artist Luis Royo enrich this captivating and heartwarming story of a young girl and her dragon. In the world of A Song of Ice and Fire the ice dragon was a creature of legend and fear, for no man had ever tamed one. When it flew overhead, it left in its wake desolate cold and frozen land. But Adara was not afraid. For Adara was a winter child, born during the worst freeze that anyone, even the Old Ones, could remember. Adara could not remember the first time she had seen the ice dragon. It seemed that it had always been in her life, glimpsed from afar as she played in the frigid snow long after the other children had fled the cold. In her fourth year she touched it, and in her fifth year she rode upon its broad, chilled back for the first time. Then, in her seventh year, on a calm summer day, fiery dragons from the North swooped down upon the peaceful farm that was Adara\'s home. And only a winter child—and the ice dragon who loved her—could save her world from utter destruction. This new edition of The Ice Dragon is sure to become a collector\'s item for fans of HBO\'s megahit Game of Thrones. At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.', 128, '2014-10-21', '2015-07-16', 1, 4),
(7, 'The Armageddon Rag', 'http://books.google.com/books/content?id=JoL-kYhasZcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '“The best novel concerning the American pop music culture of the sixties I’ve ever read.”—Stephen King From #1 New York Times bestselling author George R. R. Martin comes the ultimate novel of revolution, rock ’n’ roll, and apocalyptic murder—a stunning work of fiction that portrays not just the end of an era, but the end of the world as we know it. Onetime underground journalist Sandy Blair has come a long way from his radical roots in the ’60s—until something unexpectedly draws him back: the bizarre and brutal murder of a rock promoter who made millions with a band called the Nazgûl. Now, as Sandy sets out to investigate the crime, he finds himself drawn back into his own past—a magical mystery tour of the pent-up passions of his generation. For a new messiah has resurrected the Nazgûl and the mad new rhythm may be more than anyone bargained for—a requiem of demonism, mind control, and death, whose apocalyptic tune only Sandy may be able to change in time . . . before everyone follows the beat. “The wilder aspects of the ’60s . . . roar back to life in this hallucinatory story by a master of chilling suspense.”—Publishers Weekly “What a story, full of nostalgia and endless excitement. . . . It’s taut, tense, and moves like lightning.”—Tony Hillerman “Daring . . . a knowing, wistful appraisal of . . . a crucial American generation.”—Chicago Sun-Times “Moving . . . comic . . . eerie . . . really and truly a walk down memory lane.”—The Washington Post', 384, '2007-01-30', '2021-11-21', 1, 5),
(8, 'A Knight of the Seven Kingdoms', 'http://books.google.com/books/content?id=o28lBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'NEW YORK TIMES BESTSELLER • Taking place nearly a century before the events of A Game of Thrones, A Knight of the Seven Kingdoms compiles the first three official prequel novellas to George R. R. Martin’s ongoing masterwork, A Song of Ice and Fire. NAMED ONE OF THE BEST BOOKS OF THE YEAR BY LOS ANGELES TIMES AND BUZZFEED These never-before-collected adventures recount an age when the Targaryen line still holds the Iron Throne, and the memory of the last dragon has not yet passed from living consciousness. Before Tyrion Lannister and Podrick Payne, there was Dunk and Egg. A young, naïve but ultimately courageous hedge knight, Ser Duncan the Tall towers above his rivals—in stature if not experience. Tagging along is his diminutive squire, a boy called Egg—whose true name is hidden from all he and Dunk encounter. Though more improbable heroes may not be found in all of Westeros, great destinies lay ahead for these two . . . as do powerful foes, royal intrigue, and outrageous exploits. Featuring more than 160 all-new illustrations by Gary Gianni, A Knight of the Seven Kingdoms is a must-have collection that proves chivalry isn’t dead—yet. Praise for A Knight of the Seven Kingdoms “Readers who already love Martin and his ability to bring visceral human drama out of any story will be thrilled to find this trilogy brought together and injected with extra life.”—Booklist “The real reason to check out this collection is that it’s simply great storytelling. Martin crafts a living, breathing world in a way few authors can. . . . [Gianni’s illustrations] really bring the events of the novellas to life in beautiful fashion.”—Tech Times “Stirring . . . As Tolkien has his Silmarillion, so [George R. R.] Martin has this trilogy of foundational tales. They succeed on their own, but in addition, they succeed in making fans want more.”—Kirkus Reviews (starred review) “Pure fantasy adventure, with two of the most likable protagonists George R. R. Martin has ever penned.”—Bustle “A must-read for Martin’s legion of fans . . . a rousing prelude to [his] bestselling Song of Ice and Fire saga . . . rich in human drama and the colorful worldbuilding that distinguishes other books in the series.”—Publishers Weekly', 368, '2015-10-06', '2016-10-19', 1, 5),
(9, 'The Tolkien Reader', 'http://books.google.com/books/content?id=ZEGTEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'An absorbing collection of stories, poems, and commentaries by the author of The Hobbit and The Lord of the Rings Renowned around the world as the author of The Hobbit and The Lord of the Rings, J.R.R. Tolkien was also a distinguished academic and professor whose writings and lectures expand beyond the scope of his beloved Middle-earth. From short stories of fantastical adventures to essays on imagination and the narrative form, The Tolkien Reader gathers some of these fascinating and hard-to-find works into one volume. Tree and Leaf: Professor Tolkien’s now-famous essay “On Fairy-stories” and the short story “Leaf by Niggle” examine and illustrate the form and treatment of fantasy narratives. The Homecoming of Beorhtnoth Beorhthelm’s Son: A short play inspired by The Battle of Malden, an Old English poem with no ending and no beginning that describes a historical tenth-century battle between the English and Viking invaders. Farmer Giles of Ham: An imaginative history of the distant past that follows the unheroic Farmer Giles as he attempts to capture a somewhat untrustworthy dragon. The Adventures of Tom Bombadil: A delightful collection of verse in praise of Tom Bombadil, staunch friend of the hobbits in The Lord of the Rings.', 0, '1986-11-12', '2016-12-07', 1, 6),
(10, 'The Nature of Middle-earth', 'http://books.google.com/books/content?id=gDUKEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'First ever publication of J.R.R. Tolkien’s final writings on Middle-earth, covering a wide range of subjects and perfect for those who have read and enjoyed The Silmarillion, The Lord of the Rings, Unfinished Tales, and The History of Middle-earth, and want to learn more about Tolkien’s magnificent world.', 393, '2021-09-02', '2022-04-11', 1, 7),
(11, 'Letters from Father Christmas, Centenary Edition', 'http://books.google.com/books/content?id=JsG-ywEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Published to celebrate the first ever \'letter from Father Christmas\' in 1920, this beautiful oversized edition of Tolkien\'s famous illustrated letters from \'Father Christmas\' includes a wealth of charming letters, pictures and decorated envelopes, and promises to be a festive feast for Tolkien fans of all ages.', 208, '2020-10-06', '2021-10-24', 1, 8),
(12, 'Bifrost n° 76', 'http://books.google.com/books/content?id=DoSXBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Regarnis la pipe. Si je dois raconter cette histoire comme il faut, j’aurai besoin de son aide. C’est bien. Non, inutile de rajouter une bûche dans le feu. Laisse-le mourir. Il y a pire que l’obscurité. Ecoute la taverne grincer et gémir dans son sommeil ! Ce ne sont que ses os et ses pierres qui se tassent, pourtant on jurerait...', 331, '2014-10-23', '2018-07-12', 2, 9),
(13, 'Le Seigneur des Anneaux T2 Les deux tours', 'http://books.google.com/books/content?id=VmOFEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'La Fraternité de l’Anneau poursuit son voyage vers la Montagne du Feu où l’Anneau Unique fut forgé, et où Frodo a pour mission de le détruire. Cette quête terrible est parsemée d’embûches : Gandalf a disparu dans les Mines de la Moria et Boromir a succombé au pouvoir de l’Anneau. Frodo et Sam se sont échappés afin de poursuivre leur voyage jusqu’au cœur du Mordor. À présent, ils cheminent seuls dans la désolation qui entoure le pays de Sauron – mais c’est sans compter la mystérieuse silhouette qui les suit partout où ils vont. Chef-d’œuvre de la fantasy, découverte d’un monde imaginaire, de sa géographie, de son histoire et de ses langues, mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des Anneaux est sans équivalent par sa puissance d’évocation, son souffle et son ampleur. Cette traduction de Daniel Lauzon prend en compte la dernière version du texte anglais, les indications laissées par Tolkien à l’intention des traducteurs et les découvertes permises par les publications posthumes proposées par Christopher Tolkien. Ce volume contient 16 illustrations d’Alan Lee, ainsi qu’une carte en couleur de la Terre du Milieu.', 603, '2022-09-01', '2022-09-12', 2, 10),
(14, 'Une autobiographie', 'https://via.placeholder.com/200x300', 'Publiée pour la première fois en 1977 en Angleterre l\'autobiographie d\'Agatha Christie nous permet d\'entrer dans l\'intimité d\'une femme au destin incroyable. Sacrée \" reine du crime \" de son vivant, elle connut un succès mondial. C\'est avec un humour ravageur qu\'elle se raconte : ses souvenirs d\'enfance, le naufrage de son premier mariage, sa relation particulière avec sa fille et, bien sûr, sa passion pour le suspense et la littérature... Mais ce que l\'on retiendra surtout chez cette femme qui met si bien la mort en scène, c\'est son admirable appétit de vivre.', 985, '2007-01-01', '2023-03-26', 2, 11),
(15, 'Ernest Hemingway on Writing', 'http://books.google.com/books/content?id=mYkddwGb_IgC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'An assemblage of reflections on the nature of writing and the writer from one the greatest American writers of the twentieth century. Throughout Hemingway’s career as a writer, he maintained that it was bad luck to talk about writing—that it takes off “whatever butterflies have on their wings and the arrangement of hawk’s feathers if you show it or talk about it.” Despite this belief, by the end of his life he had done just what he intended not to do. In his novels and stories, in letters to editors, friends, fellow artists, and critics, in interviews and in commissioned articles on the subject, Hemingway wrote often about writing. And he wrote as well and as incisively about the subject as any writer who ever lived… This book contains Hemingway’s reflections on the nature of the writer and on elements of the writer’s life, including specific and helpful advice to writers on the craft of writing, work habits, and discipline. The Hemingway personality comes through in general wisdom, wit, humor, and insight, and in his insistence on the integrity of the writer and of the profession itself. —From the Preface by Larry W. Phillips', 160, '1999-07-06', '2000-04-06', 1, 12),
(16, 'Complete Short Stories Of Ernest Hemingway', 'http://books.google.com/books/content?id=0-BSAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This stunning collection of short stories by Nobel Prize­–winning author, Ernest Hemingway, contains a lifetime of work—ranging from fan favorites to several stories only available in this compilation. In this definitive collection of short stories, you will delight in Ernest Hemingway\'s most beloved classics such as “The Snows of Kilimanjaro,” “Hills Like White Elephants,” and “A Clean, Well-Lighted Place,” and discover seven new tales published for the first time in this collection. For Hemingway fans The Complete Short Stories is an invaluable treasury.', 672, '2014-05-22', '2018-12-28', 1, 13),
(17, 'Last Steps: The Late Writings of Leo Tolstoy', 'http://books.google.com/books/content?id=SiSAY1n5_RgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '1910. Anna Karenina and War and Peace have made Leo Tolstoy the world\'s most famous author. But fame comes at a price. In the tumultuous final year of his life, Tolstoy is desperate to find respite, so leaves his large family and the hounding press behind and heads into the wilderness. Too ill to venture beyond the tiny station of Astapovo, he believes his last days will pass in isolation. But as we learn through the journals of those closest to him, the battle for Tolstoy\'s soul will not be a peaceful one. Jay Parini introduces, translates and edits this collection of Tolstoy\'s autobiographical writing, diaries, and letters related to the last year of Tolstoy\'s life published to coincide with the 2009 film of Parini\'s novel The Last Station: A Novel of Tolstoy\'s Final Year.', 368, '2009-10-29', '2022-09-08', 1, 14),
(18, 'Resurrection', 'http://books.google.com/books/content?id=W2cpAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Two irresistibly intimate masterworks by one of Russia\'s greatest writers Published here in a marvelous new translation, Resurrection tells the story of a Russian nobleman who comes face to face with the sins of his past. When Prince Nekhlyudov serves on a jury at the trial of a prostitute arrested for murder, he is horrified to discover that the accused is a woman he had once seduced and abandoned. His guilt at the central role he played in her ruin soon leads him on a quest for forgiveness as he follows her into the prisons of Siberia. Conceived on an epic scale, this novel is both a trenchant denunciation of government, aristocracy, the judicial system, and the Church as well as a highly personal statement of Tolstoy\'s belief in human redemption and spiritual development.', 564, '2009-10-27', '2018-05-24', 1, 15),
(19, 'The Death of Ivan Ilych', 'http://books.google.com/books/content?id=VfMvEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The Death of Ivan Ilyich, first published in 1886, is a novella by Leo Tolstoy, considered one of the masterpieces of his late fiction, written shortly after his religious conversion of the late 1870s.', 62, '2021-01-01', '2021-06-13', 1, 16),
(20, 'A Calendar of Wisdom', 'http://books.google.com/books/content?id=mFb7wAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'This collection of daily thoughts to nourish the soul from the world’s sacred texts by Leo Tolstoy feature gems of inspiration and wisdom—author Thomas Keneally calls this book “transcendent, and that we are grateful he lived long enough to endow us with his grand inheritance.” This is the first-ever English-language edition of the book Leo Tolstoy considered to be his most important contribution to humanity, the work of his life\'s last years. Widely read in pre-revolutionary Russia, banned and forgotten under Communism; and recently rediscovered to great excitement, A Calendar of Wisdom is a day-by-day guide that illuminates the path of a life worth living with a brightness undimmed by time. Unjustly censored for nearly a century, it deserves to be placed with the few books in our history that will never cease teaching us the essence of what is important in this world.', 0, '1997-10-14', '2019-07-16', 1, 12),
(21, 'What is Art?', 'http://books.google.com/books/content?id=pTFHjIAEKnIC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'During his decades of world fame as a novelist, Tolstoy also wrote prolifically in a series of essays and polemics on issues of morality, social justice and religion. These works culminated in What is Art?, published in 1898. Impassioned and iconoclastic, this powerfully influential work both criticizes the elitist nature of art in nineteenth-century Western society, and rejects the idea that its sole purpose should be the creation of beauty. The works of Dante, Michelangelo, Shakespeare, Beethoven, Baudelaire and Wagner are all vigorously condemned, as Tolstoy explores what he believes to be the spiritual role of the artist - arguing that true art must work with religion and science as a force for the advancement of mankind.', 286, '1995-08-31', '2005-04-09', 1, 14),
(22, 'Anna Karenina', 'http://books.google.com/books/content?id=cYqMEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Tolstoy\'s epic novel of love, destiny and self-destruction, in a gorgeous new clothbound edition from Penguin Classics. Anna Karenina seems to have everything - beauty, wealth, popularity and an adored son. But she feels that her life is empty until the moment she encounters the impetuous officer Count Vronsky. Their subsequent affair scandalizes society and family alike and soon brings jealously and bitterness in its wake. Contrasting with this tale of love and self-destruction is the vividly observed story of Levin, a man striving to find contentment and a meaning to his life - and also a self-portrait of Tolstoy himself. This acclaimed modern translation by Richard Pevear and Larissa Volokhonsky won the PEN/ Book of the Month Club Translation Prize in 2001. Their translation is accompanied in this edition by an introduction by Richard Pevear and a preface by John Bayley \'The new and brilliantly witty translation by Richard Pevear and Larissa Volokhonsky is a must\' - Lisa Appignanesi, Independent, Books of the Year \'Pevear and Volokhonsky are at once scrupulous translators and vivid stylists of English, and their superb rendering allows us, as perhaps never before, to grasp the palpability of Tolstoy\'s \"characters, acts, situations\"\' - James Wood, New Yorker', 0, '2014-09-30', '2019-11-22', 1, 3),
(23, 'The Death of Ivan Ilyich', 'http://books.google.com/books/content?id=nPvk7tiaZoIC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'A middle-aged judge who had never thought about his own mortality, must readjust his thinking when he learns he has a terminal illness', 134, '1981-01-01', '2011-10-06', 1, 17),
(24, 'The Gospel in Brief', 'http://books.google.com/books/content?id=aj9hceefQTUC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The greatest novelist of all time retells the greatest story ever told, the life of Jesus Christ, in The Gospel in Brief—Leo Tolstoy’s riveting, novelistic integration of the four Gospels into a single, twelve-chapter narrative. Virtually unknown to English readers until now, Dustin Condren’s groundbreaking translation from the Russian opens a precious new world of Tolstoy’s masterful literary talent to fans of War and Peace and Anna Karenina.', 0, '2011-02-15', '2011-10-02', 1, 18),
(25, 'Hadji Murat', 'http://books.google.com/books/content?id=JYFDXFg3IWAC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Tolstoy’s final work—a gripping novella about the struggle between the Muslim Chechens and their inept occupiers—is a powerful moral fable for our time. Inspired by a historical figure Tolstoy heard about while serving in the Caucasus, this story brings to life the famed warrior Hadji Murat, a Chechen rebel who has fought fiercely and courageously against the Russian empire. After a feud with his commander he defects to the Russians, only to find that he is now trusted by neither side. He is first welcomed but then imprisoned by the Russians under suspicion of being a spy, and when he hears news of his wife and son held captive by the Chechens, Murat risks all to try to save his family. In the award-winning Pevear and Volokhonsky translation, Hadji Murat is a thrilling and provocative portrait of a tragic figure that has lost none of its relevance.', 146, '2012-10-02', '2020-05-12', 1, 19),
(26, 'The Three Questions', 'http://books.google.com/books/content?id=cgROlmO1f5UC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'What is the best time to do things? Who is the most important one? What is the right thing to do? Nikolai knows that he wants to be the best person he can be, but often he is unsure if he is doing the right thing. So he goes to ask Leo, the wise turtle. When he arrives, the turtle is struggling to dig in his garden, and Nikolai rushes to help him. As he finishes work, a violent storm rolls in. Nikolai runs for Leo\'s cottage, but on his way, he hears cries for help from an injured panda. Nikolai brings her in from the cold, and then rushes back outside to rescue her baby too.', 44, '2002-01-01', '2023-03-26', 1, 20),
(27, 'Tolstoy', 'http://books.google.com/books/content?id=4dYaTzfDlvMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A collection of translated plays from Tolstoy.', 228, '1994-01-01', '1997-08-15', 1, 21),
(28, 'Collected Shorter Fiction of Leo Tolstoy, Volume I', 'http://books.google.com/books/content?id=z37KIZqWem0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Written over a period of more than half a century, Leo Tolstoy’s stories reflect every aspect of his art and personality. They cover his experiences as a soldier in the Caucasus, his married life, his passionate interest in the peasantry, his cult of truth and simplicity, and his growing preoccupation with religion. The stories in Volume 1 of the Collected Shorter Fiction date from the period in which the young Tolstoy wrote Anna Karenina and War and Peace. Ranging from brief, masterfully sketches of military life such as “The Wood-Felling” to novellas like Family Happiness, an uneasy imagining of the idyllic possibilities of marriage by the not-yet-married writer, all feature Tolstoy’s characteristically lavish deployment of detail, shrewd observation, and imaginative power.', 848, '2012-05-30', '2018-02-11', 1, 22),
(29, 'Delphi Complete Works of Leo Tolstoy (Illustrated)', 'http://books.google.com/books/content?id=NFAbAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A master of realistic fiction, Leo Tolstoy is widely regarded as one of the world’s greatest novelists. He is best known for his two longest works, ‘War and Peace’ and ‘Anna Karenina’, commonly regarded as among the finest novels ever written. During his later years, Tolstoy also achieved world renown as a moral and religious teacher. His doctrine of non-resistance to evil had an important influence on Gandhi. Some viewed him as the embodiment of nature and pure vitality, others saw him as the incarnation of the world’s conscience, while all regarded him as a living symbol of the search for life’s meaning. This eBook presents Tolstoy’s complete fictional works, with numerous illustrations, rare texts, informative introductions and the usual Delphi bonus material. (Version 4) * Beautifully illustrated with images relating to Tolstoy’s life and works * Concise introductions to the major texts * All the novels and novellas, with individual contents tables * Features rare stories appearing for the first time in digital publishing * Images of how the books were first published, giving your eReader a taste of the original texts * Excellent formatting of the texts * Easily locate the short stories you want to read * Includes rare plays * Large selection of non-fiction works — spend hours exploring the author’s diverse works * Special criticism section, with 11 essays evaluating Tolstoy’s contribution to world literature * Features three biographies – discover Tolstoy’s literary life, including Maude’s seminal study * Ordering of texts into chronological order and genres * UPDATED with new and revised texts, more rare short stories, novellas, non-fiction and biographies CONTENTS: The Novels War and Peace (1869) Anna Karenina (1877) Resurrection (1899) The Novellas Childhood (1852) Boyhood (1854) Youth (1856) Sevastopol Sketches (1856) A Russian Proprietor (1856) Two Hussars (1856) Family Happiness (1859) Polikushka (1862) The Cossacks (1863) The Death of Ivan Ilyich (1886) Katia (1888) The Kreutzer Sonata (1889) Walk in the Light While There is Light (1893) Master and Man (1895) The Devil (1911) The Forged Coupon (1911) Hadji Murat (1912) The Unfinished Novel The Decembrists (1884) The Short Stories The Short Stories of Leo Tolstoy The Plays The Power of Darkness (1886) The First Distiller (1886) The Light Shines in Darkness (1890) The Fruits of Culture (1891) Redemption (1891) The Live Corpse (1900) The Cause of It All (1910) The Non-Fiction A Confession (1880) Moscow Census (1882) My Religion (1884) What Shall We Do? (1886) On the Significance of Science and Art (1886) Church and State (1891) The Kingdom of God is within You (1893) Introductions to Books (1894) Christianity and Patriotism (1894) Reason and Religion (1895) Patriotism or Peace (1896) Letter to Ernest Howard Crosby (1896) Journal (1895-1899) The Slavery of Our Times (1900) Thou Shalt Not Kill (1900) What is Art? (1904) Bethink Yourselves! (1904) Tolstoy on Shakespeare (1906) A Letter to a Hindu (1908) The Criticism Leo Tolstoï (1887) by W. D. Howells Tolstoy the Artist (1889) by Ivan Panin Tolstoy the Preacher (1889) by Ivan Panin Extract from ‘My Literary Passions’ (1895) by W. D. Howells Extracts from ‘A Survey of Russian Literature’ (1902) by Isabel Florence Hapgood Tolstoy and the Cult of Simplicity (1902) by G. K. Chesterton Extract from ‘Essays on Russian Novelists’ (1911) by William Lyon Phelps The Russian Point of View (1912) by Virginia Woolf Russian Romance (1913) by Earl of Evelyn Baring Cromer Extract from ‘An Outline of Russian Literature’ (1914) by Maurice Baring Extract from ‘Prophets of Dissent’ (1918) by Otto Heller The Biographies The Life of Tolstoy: First Fifty Years (1908) by Aylmer Maude Tolstoy (1911) by Romain Rolland Reminiscences of Tolstoy (1914) by Count Ilya Tolstoy', 8056, '2013-11-17', '2014-08-13', 1, 23),
(30, 'Youth by Leo Tolstoy - Delphi Classics (Illustrated)', 'http://books.google.com/books/content?id=tZPWDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This eBook features the unabridged text of ‘Youth’ from the bestselling edition of ‘The Complete Works of Leo Tolstoy’. Having established their name as the leading publisher of classic literature and art, Delphi Classics produce publications that are individually crafted with superior formatting, while introducing many rare texts for the first time in digital print. The Delphi Classics edition of Tolstoy includes original annotations and illustrations relating to the life and works of the author, as well as individual tables of contents, allowing you to navigate eBooks quickly and easily. eBook features: * The complete unabridged text of ‘Youth’ * Beautifully illustrated with images related to Tolstoy’s works * Individual contents table, allowing easy navigation around the eBook * Excellent formatting of the textPlease visit www.delphiclassics.com to learn more about our wide range of titles', 137, '2017-07-17', '2019-12-15', 1, 23),
(31, 'Cossacks by Leo Tolstoy - Delphi Classics (Illustrated)', 'http://books.google.com/books/content?id=s5PWDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This eBook features the unabridged text of ‘Cossacks’ from the bestselling edition of ‘The Complete Works of Leo Tolstoy’. Having established their name as the leading publisher of classic literature and art, Delphi Classics produce publications that are individually crafted with superior formatting, while introducing many rare texts for the first time in digital print. The Delphi Classics edition of Tolstoy includes original annotations and illustrations relating to the life and works of the author, as well as individual tables of contents, allowing you to navigate eBooks quickly and easily. eBook features: * The complete unabridged text of ‘Cossacks’ * Beautifully illustrated with images related to Tolstoy’s works * Individual contents table, allowing easy navigation around the eBook * Excellent formatting of the textPlease visit www.delphiclassics.com to learn more about our wide range of titles', 138, '2017-07-17', '2018-12-30', 1, 23),
(32, 'Hadji Murad by Leo Tolstoy - Delphi Classics (Illustrated)', 'http://books.google.com/books/content?id=xZPWDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This eBook features the unabridged text of ‘Hadji Murad’ from the bestselling edition of ‘The Complete Works of Leo Tolstoy’. Having established their name as the leading publisher of classic literature and art, Delphi Classics produce publications that are individually crafted with superior formatting, while introducing many rare texts for the first time in digital print. The Delphi Classics edition of Tolstoy includes original annotations and illustrations relating to the life and works of the author, as well as individual tables of contents, allowing you to navigate eBooks quickly and easily. eBook features: * The complete unabridged text of ‘Hadji Murad’ * Beautifully illustrated with images related to Tolstoy’s works * Individual contents table, allowing easy navigation around the eBook * Excellent formatting of the textPlease visit www.delphiclassics.com to learn more about our wide range of titles', 111, '2017-07-17', '2021-12-28', 1, 23),
(33, 'Hadji Murad by Leo Tolstoy (Most Heroic Battle of His Life) ) Leo Tolstoy All time Demanding Books (You Have to Read) From the Author books Like Anna Karenina War and Peace The Death of Ivan Ilych The Kreutzer Sonata Resurrection İnsan Ne İle Yaşar?', 'http://books.google.com/books/content?id=LmhPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the Author books Like · Anna Karenina · War and Peace · The Death of Ivan Ilych · The Kreutzer Sonata · Resurrection · İnsan Ne İle Yaşar? · A Confession · Hadji Murád · How Much Land Does a Man Need? · Family Happiness · Childhood, Boyhood, Youth · The Cossacks · Master and Man · The Kingdom of God Is Within You · The Devil · Father Sergius · What Is Art? ABOUT THE BOOK: Hadji Murad BY Leo Tolstoy In 1851 Leo Tolstoy enlisted in the Russian army and was sent to the Caucasus to help defeat the Chechens. During this war a great Avar chieftain, Hadji Murád, broke with the Chechen leader Shamil and fled to the Russians for safety. Months later, while attempting to rescue his family from Shamil’s prison, Hadji Murád was pursued by those he had betrayed and, after fighting the most heroic battle of his life, was killed. Hadji Murad BY Leo Tolstoy Tolstoy, witness to many of the events leading to Hadji Murád’s death, set down this story with painstaking accuracy to preserve for future generations the horror, nobility, and destruction inherent in war. Hadji Murad BY Leo Tolstoy Hadji Murat (or alternatively Hadji Murad, although the first spelling better captures the original title in Russian: Мурат [Murat]) is a novella written by Leo Tolstoy from 1896 to 1904 and published posthumously in 1912 (though not in full until 1917). The protagonist is Hadji Murat, an Avar rebel commander who, for reasons of personal revenge, forges an uneasy alliance with the Russians he has been fighting. Hadji Murad BY Leo Tolstoy ABOUT THE AUTHOR: Lev Nikolayevich Tolstoy (Russian: Лев Николаевич Толстой; most appropriately used Liev Tolstoy; commonly Leo Tolstoy in Anglophone countries) was a Russian writer who primarily wrote novels and short stories. Later in life, he also wrote plays and essays. His two most famous works, the novels War and Peace and Anna Karenina, are acknowledged as two of the greatest novels of all time and a pinnacle of realist fiction. Many consider Tolstoy to have been one of the world\'s greatest novelists. Tolstoy is equally known for his complicated and paradoxical persona and for his extreme moralistic and ascetic views, which he adopted after a moral crisis and spiritual awakening in the 1870s, after which he also became noted as a moral thinker and social reformer. His literal interpretation of the ethical teachings of Jesus, centering on the Sermon on the Mount, caused him in later life to become a fervent Christian anarchist and anarcho-pacifist. His ideas on nonviolent resistance, expressed in such works as The Kingdom of God Is Within You, were to have a profound impact on such pivotal twentieth-century figures as Mohandas Gandhi and Martin Luther King, Jr.', 151, '2021-01-01', '2021-12-03', 1, 16),
(34, 'Autobiography of Mark Twain', 'http://books.google.com/books/content?id=WQYfA3qf7dUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'One of America\'s foremost authors and humorists relates experiences lived, people encountered, places visited, and judgments rendered throughout his lifetime.', 454, '2012-01-01', '2023-03-26', 1, 24),
(35, 'Autoportrait de l\'auteur en coureur de fond', 'http://books.google.com/books/content?id=kPgGtwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Le 1er avril 1978, Murakami décide de vendre son club de jazz pour écrire un roman. Assis à sa table, il fume soixante cigarettes par jour et commence à prendre du poids. S\'impose alors la nécessité d\'une discipline. La course à pied lui permet de cultiver sa patience, sa persévérance. Courir devient une métaphore de son travail d\'écrivain. Journal, essai, au fil de confidences inédites, Murakami nous livre une méditation lumineuse sur la vie, qui, comme la course, ne tire pas son sens de sa fin inéluctable.', 220, '2011-01-01', '2023-03-26', 2, 25),
(36, 'Cent ans de solitude', 'http://books.google.com/books/content?id=0m94vgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Roman familial. Roman historique.', 0, '1995-01-01', '2013-05-13', 2, 26),
(37, 'The Autumn of the Patriarch', 'http://books.google.com/books/content?id=ix-VAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Gabriel Garcia Marquez, winner of the 1982 Nobel Prize for Literature and author of One Hundred Years of Solitude, explores the loneliness of power in Autumn of the Patriarch. \'Over the weekend the vultures got into the presidential palace by pecking through the screens on the balcony windows and the flapping of their wings stirred up the stagnant time inside\' As the citizens of an unnamed Caribbean nation creep through dusty corridors in search of their tyrannical leader, they cannot comprehend that the frail and withered man lying dead on the floor can be the self-styled General of the Universe. Their arrogant, manically violent leader, known for serving up traitors to dinner guests and drowning young children at sea, can surely not die the humiliating death of a mere mortal? Tracing the demands of a man whose egocentric excesses mask the loneliness of isolation and whose lies have become so ingrained that they are indistinguishable from truth, Marquez has created a fantastical portrait of despotism that rings with an air of reality. \'Delights with its quirky humanity and black humour and impresses by its total originality\' Vogue \'Captures perfectly the moral squalor and political paralysis that enshrouds a society awaiting the death of a long-term dictator\' Guardian \'Marquez writes in this lyrical, magical language that no-one else can do\' Salman Rushdie', 240, '2014-03-06', '2022-05-18', 1, 14),
(38, 'Strange Pilgrims', 'http://books.google.com/books/content?id=1R-VAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Strange Pilgrims is a collection of unforgettable stories about distinctive South American individuals in Europe from the Nobel laureate Gabriel Garca Marquez author of One Hundred Years of Solitude and Love in the Time of Cholera. \'The first thing Senora Prudencia Linero noticed when she reached the port of Naples was that it had the same smell as the port of Riohacha\' The twelve stories here tell of Latin Americans adrift in Europe: a bereaved father in Rome for an audience with the Pope carries a box shaped like a cello case; an aging streetwalker waits for death in Barcelona with a dog trained to weep at her grave; a panic-stricken husband takes his wife to a Parisian hospital to treat a cut and never sees her again. Combining terror and nostalgia, surreal comedy and the poetry of the commonplace, Strange Pilgrims is a triumph of storytelling by our most brilliant writer. \'Celebratory and full of strange relish at life\'s oddness, the stories draw their strength from Marquez\'s generous feel for character, good and bad, boorish and innocent\' William Boyd \'The most important writer of fiction in any language\' Bill Clinton \'Often touching, often funny, always unexpected, the experience is as enriching as travel itself\' New Statesman', 208, '2014-03-06', '2020-08-25', 1, 14),
(39, 'News of a Kidnapping', 'http://books.google.com/books/content?id=p7iFBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'AVAILABLE FOR THE FIRST TIME IN eBOOK! In 1990, fearing extradition to the United States, Pablo Escobar – head of the Medellín drug cartel – kidnapped ten notable Colombians to use as bargaining chips. With the eye of a poet, García Márquez describes the survivors’ perilous ordeal and the bizarre drama of the negotiations for their release. He also depicts the keening ache of Colombia after nearly forty years of rebel uprisings, right-wing death squads, currency collapse and narco-democracy. With cinematic intensity, breathtaking language and journalistic rigor, García Márquez evokes the sickness that inflicts his beloved country and how it penetrates every strata of society, from the lowliest peasant to the President himself.', 304, '2014-10-15', '2021-10-31', 1, 19),
(40, 'Collected Stories', 'http://books.google.com/books/content?id=F21NAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Full of premonitions and echoes of the larger fiction. Marquez has always been a romantic, and these stories abound with love affairs, ruined beauty, and magical women. It is essence of Marquez', 292, '1996-01-01', '2007-03-11', 1, 15),
(41, 'The Scandal of the Century', 'http://books.google.com/books/content?id=0iezDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A new collection of journalism from one of the great titans of 20th century literature \"I don\'t want to be remembered for One Hundred Years of Solitude or for the Nobel Prize but rather for my journalism,\" Gabriel García Márquez said in the final years of his life. And while some of his journalistic writings have been made available over the years, this is the first volume to gather a representative selection from across the first four decades of his career--years during which he worked as a full-time, often muckraking, and controversial journalist, even as he penned the fiction that would bring him the Nobel Prize in 1982. Here are the first pieces he wrote while working for newspapers in the coastal Colombian cities of Cartagena and Barranquilla . . . his longer, more fictionlike reportage from Paris and Rome . . . his monthly columns for Spain\'s El País. And while all the work points in style, wit, depth, and passion to his fiction, these fifty pieces are, more than anything, a revelation of the writer working at the profession he believed to be \"the best in the world. \'García Márquez always thought of himself as a journalist first and foremost and this brilliant collection goes a long way towards justifying that belief.\' Salman Rushdie', 336, '2020-08-13', '2022-07-26', 1, 14),
(42, 'The Story of a Shipwrecked Sailor', 'http://books.google.com/books/content?id=IiGVAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Gabriel Garcia Marquez, winner of the 1982 Nobel Prize for Literature and author of One Hundred Years of Solitude, started his literary career with the publication of The Story of a Shipwrecked Sailor . . . \'On February 22 we were told that we would be returning to Columbia\' In 1955 eight crew members of Caldas, a Colombian destroyer, were swept overboard. Velasco alone survived, drifting on a raft for ten days without food or water. Marquez retells the survivor\'s amazing tale of endurance, from his loneliness and thirst to his determination to survive. The Story of a Shipwrecked Sailor was Marquez\'s first major work, published in a Colombian newspaper, El Espectador, in 1955 and then in book form in 1970. \'The story of Velasco on his raft, his battle with sharks over a succulent fish, his hallucinations, his capture of a seagull which he was unable to eat, his subsequent droll rescue, has all the grip of archetypal myth. Reads like an epic\' Independent \'A master storyteller\' Daily Mail \'Garcia Marquez is a retailer of wonders\' Sunday Times', 128, '2014-03-06', '2016-04-03', 1, 14),
(43, 'Collected Novellas', 'http://books.google.com/books/content?id=JnsVK3liBt8C&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Renowned as a master of magical realism, Gabriel Garcia Marquez has long delighted readers around the world with his exquisitely crafted prose. Brimming with unforgettable characters and set in exotic locales, his fiction transports readers to a world that is at once fanciful, haunting, and real. Leaf Storm, Gabriel Garcia Marquez\'s first novella, introduces the mythical village of Macondo, a desolate town beset by torrents of rain, where a man must fulfill a promise made years earlier. No One Writes to the Colonel is a novella of life in a decaying tropical town in Colombia with an unforgettable central character. Chronicle of a Death Foretold is a dark and profound story of three people joined together in a fatal act of violence.', 290, '1999-09-22', '2019-07-26', 1, 18),
(44, 'The Best Short Stories of Fyodor Dostoevsky', 'http://books.google.com/books/content?id=oFnFFiTVST4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This collection, unique to the Modern Library, gathers seven of Dostoevsky\'s key works and shows him to be equally adept at the short story as with the novel. Exploring many of the same themes as in his longer works, these small masterpieces move from the tender and romantic White Nights, an archetypal nineteenth-century morality tale of pathos and loss, to the famous Notes from the Underground, a story of guilt, ineffectiveness, and uncompromising cynicism, and the first major work of existential literature. Among Dostoevsky\'s prototypical characters is Yemelyan in The Honest Thief, whose tragedy turns on an inability to resist crime. Presented in chronological order, in David Magarshack\'s celebrated translation, this is the definitive edition of Dostoevsky\'s best stories.', 320, '2012-07-11', '2020-03-23', 1, 27),
(45, 'Great Short Works of Fyodor Dostoevsky', 'http://books.google.com/books/content?id=4jCLwsQGkCUC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The shorter works of one of the world\'s greatest writers, including The Gambler and Notes from Underground The short works of Dostoevsky exist in the very large shadow of his astonishing longer novels, but they too are among literature\'s most revered works. The Gambler chronicles Dostoevsky\'s own addiction, which he eventually overcame. Many have argued that Notes from Underground contains several keys to understanding the themes of the longer novels, such as Crime and Punishment and The Idiot. Great Short Works of Fyodor Dostoevsky includes: Notes from Underground The Gambler A Disgraceful Affair The Eternal Husband The Double White Nights A Gentle Creature The Dream of a Ridiculous Man', 772, '2004-07-06', '2013-03-12', 1, 18),
(46, 'Crime and Punishment', 'http://books.google.com/books/content?id=nVGKDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In a timeless story of justice, morality, and redemption, an impoverished Russian student murders a miserly landlady, a crime that has severe repercussions on his life and his family as he battles his conscience.', 449, '2001-01-01', '2023-03-26', 1, 28),
(47, 'Une chambre à soi', 'https://via.placeholder.com/200x300', '\" Je sais, vous m\'avez demandé de parler des femmes et du roman. Quel rapport, allez-vous me dire, existe-t-il entre ce sujet et une \"chambre à soi\" ?, interroge Virginia Woolf en ouverture d\'une conférence sur le féminisme qu\'elle dispensa aux étudiantes de l\'université de Cambridge. Avec une irritation voilée d\'ironie, Virginia Woolf rappelle dans ce délicieux pamphlet comment, jusqu\'à une époque toute récente, les femmes ont été savamment placées sous la dépendance spirituelle et économique des hommes et, par voie de conséquence, réduites au silence. Il manquait à celles qui étaient douées pour affirmer leur génie de quoi vivre, du temps et une chambre à soi. \"', 171, '1996-01-01', '2010-10-30', 2, 29),
(48, 'Beloved', 'http://books.google.com/books/content?id=IyeVPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Un livre de la mémoire, inspiré d\'une histoire vraie. On est en 1873, à Cincinnati, dans l\'Ohio, au nord du fleuve qui marquait autrefois pour les esclaves fugitifs la frontière avec la liberté. Prix Pulitzer 1988. T. Morrison est la première Noire à avoir été admise à l\'université de Princeton, où elle occupe la chaire de littérature.[Memento].', 0, '2008-05-01', '2014-09-16', 2, 29);
INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(49, 'Jazz', 'http://books.google.com/books/content?id=cqlhBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '‘Jazz blazes with an intensity more usually found in tragic poetry of the past.... Morrison\'s voice transcends colour and creed and she has become one of America\'s outstanding post-war writers’ Guardian Joe Trace – in his fifties, door-to-door salesman of Cleopatra beauty products, erstwhile devoted husband – shoots dead his lover of three months, the impetuous, eighteen-year-old Dorcas. At the funeral, his determined, hard-working wife, Violet, who is given to stumbling into dark mental cracks, tries with a knife to disfigure the corpse. Passionate and profound, Jazz brings us back and forth in time, in a narrative assembled from the hopes, fears and realities of black urban life. ‘She wrote about what was difficult and what was necessary and in doing so she unearthed for a generation of people a kind of redemption, a kind of relief’ Chimamanda Ngozi Adichie, New York Times BY THE NOBEL PRIZE-WINNING AUTHOR OF BELOVED Winner of the PEN/Saul Bellow award for achievement in American fiction', 256, '2014-09-04', '2021-10-22', 1, 30),
(50, 'Home', 'http://books.google.com/books/content?id=QD_SoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'A self-loathing veteran of the Korean War, Frank Money finds himself back in racist America after enduring trauma on the front lines that left him with more than just physical scars. But as Frank revisits his memories from childhood and the war, he discovers a profound courage he thought he could never possess again.', 0, '2014-01-01', '2023-03-26', 1, 31),
(51, 'Playing in the Dark', 'http://books.google.com/books/content?id=2dVas48cQNgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'An immensely persuasive work of literary criticism that opens a new chapter in the American dialogue on race—and promises to change the way we read American literature—from the acclaimed Nobel Prize winner Morrison shows how much the themes of freedom and individualism, manhood and innocence, depended on the existence of a black population that was manifestly unfree--and that came to serve white authors as embodiments of their own fears and desires. According to the Chicago Tribune, Morrison \"reimagines and remaps the possibility of America.\" Her brilliant discussions of the \"Africanist\" presence in the fiction of Poe, Melville, Cather, and Hemingway leads to a dramatic reappraisal of the essential characteristics of our literary tradition. Written with the artistic vision that has earned the Nobel Prize-winning author a pre-eminent place in modern letters, Playing in the Dark is an invaluable read for avid Morrison admirers as well as students, critics, and scholars of American literature.', 86, '2007-07-24', '2012-08-08', 1, 19),
(52, 'The Source of Self-Regard', 'http://books.google.com/books/content?id=PqJaDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'NATIONAL BESTSELLER • Here is the Nobel Prize winner in her own words: a rich gathering of her most important essays and speeches, spanning four decades that \"speaks to today’s social and political moment as directly as this morning’s headlines” (NPR). These pages give us her searing prayer for the dead of 9/11, her Nobel lecture on the power of language, her searching meditation on Martin Luther King Jr., her heart-wrenching eulogy for James Baldwin. She looks deeply into the fault lines of culture and freedom: the foreigner, female empowerment, the press, money, “black matter(s),” human rights, the artist in society, the Afro-American presence in American literature. And she turns her incisive critical eye to her own work (The Bluest Eye, Sula, Tar Baby, Jazz, Beloved, Paradise) and that of others. An essential collection from an essential writer, The Source of Self-Regard shines with the literary elegance, intellectual prowess, spiritual depth, and moral compass that have made Toni Morrison our most cherished and enduring voice.', 369, '2019-02-12', '2021-02-10', 1, 19),
(53, 'Conversations with Toni Morrison', 'http://books.google.com/books/content?id=iYvE9-i_g9AC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Collected interviews with the Nobel Prize winner in which she describes herself as an African American writer and that show her to be an artist whose creativity is intimately linked with her African American experience', 316, '1994-01-01', '1997-06-18', 1, 32),
(54, 'The Complete Poetry', 'http://books.google.com/books/content?id=_ph5BAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The beauty and spirit of Maya Angelou’s words live on in this complete collection of poetry, including her inaugural poem “On the Pulse of Morning” Throughout her illustrious career in letters, Maya Angelou gifted, healed, and inspired the world with her words. Now the beauty and spirit of those words live on in this new and complete collection of poetry that reflects and honors the writer’s remarkable life. Every poetic phrase, every poignant verse can be found within the pages of this sure-to-be-treasured volume—from her reflections on African American life and hardship in the compilation Just Give Me a Cool Drink of Water ’fore I Diiie (“Though there’s one thing that I cry for / I believe enough to die for / That is every man’s responsibility to man”) to her revolutionary celebrations of womanhood in the poem “Still I Rise” (“Out of the huts of history’s shame / I rise / Up from a past that’s rooted in pain / I rise”) to her “On the Pulse of Morning” tribute at President William Jefferson Clinton’s inauguration (“Lift up your eyes upon / The day breaking for you. / Give birth again / To the dream.”). Maya Angelou: The Complete Poetry also features her final long-form poems, including “A Brave and Startling Truth,” “Amazing Peace,” “His Day Is Done,” and the honest and endearing Mother: “I feared if I let you go You would leave me eternally. You smiled at my fears, saying I could not stay in your lap forever” This collection also includes the never-before-published poem “Amazement Awaits,” commissioned for the 2008 Olympic Games: “We are here at the portal of the world we had wished for At the lintel of the world we most need. We are here roaring and singing. We prove that we can not only make peace, we can bring it with us.” Timeless and prescient, this definitive compendium will warm the hearts of Maya Angelou’s most ardent admirers as it introduces new readers to the legendary poet, activist, and teacher—a phenomenal woman for the ages.', 336, '2015-03-31', '2021-09-12', 1, 30),
(55, 'The Collected Autobiographies of Maya Angelou', 'http://books.google.com/books/content?id=EqqOEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NEW YORK TIMES BESTSELLER • Maya Angelou’s classic memoirs have had an enduring impact on American literature and culture. Her life story is told in the documentary film And Still I Rise, as seen on PBS’s American Masters. This Modern Library edition contains I Know Why the Caged Bird Sings, Gather Together in My Name, Singin’ and Swingin’ and Gettin’ Merry Like Christmas, The Heart of a Woman, All God’s Children Need Traveling Shoes, and A Song Flung Up to Heaven. When I Know Why the Caged Bird Sings was published to widespread acclaim in 1969, Maya Angelou garnered the attention of an international audience with the triumphs and tragedies of her childhood in the American South. This soul-baring memoir launched a six-book epic spanning the sweep of the author’s incredible life. Now, for the first time, all six celebrated and bestselling autobiographies are available in this handsome one-volume edition. Dedicated fans and newcomers alike can follow the continually absorbing chronicle of Angelou’s life: her formative childhood in Stamps, Arkansas; the birth of her son, Guy, at the end of World War II; her adventures traveling abroad with the famed cast of Porgy and Bess; her experience living in a black expatriate “colony” in Ghana; her intense involvement with the civil rights movement, including her association with Dr. Martin Luther King, Jr., and Malcolm X; and, finally, the beginning of her writing career. The Collected Autobiographies of Maya Angelou traces the best and worst of the American experience in an achingly personal way. Angelou has chronicled her remarkable journey and inspired people of every generation and nationality to embrace life with commitment and passion.', 0, '2004-09-21', '2011-03-24', 1, 3),
(56, 'Celebrations', 'http://books.google.com/books/content?id=dSatTtQvSpIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Grace, dignity, and eloquence have long been hallmarks of Maya Angelou’s poetry. Her measured verses have stirred our souls, energized our minds, and healed our hearts. Whether offering hope in the darkest of nights or expressing sincere joy at the extraordinariness of the everyday, Maya Angelou has served as our common voice. Celebrations is a collection of timely and timeless poems that are an integral part of the global fabric. Several works have become nearly as iconic as Angelou herself: the inspiring “On the Pulse of Morning,” read at President William Jefferson Clinton’s 1993 inauguration; the heartening “Amazing Peace,” presented at the 2005 lighting of the National Christmas Tree at the White House; “A Brave and Startling Truth,” which marked the fiftieth anniversary of the United Nations; and “Mother,” which beautifully honors the first woman in our lives. Angelou writes of celebrations public and private, a bar mitzvah wish to her nephew, a birthday greeting to Oprah Winfrey, and a memorial tribute to the late Luther Vandross and Barry White. More than a writer, Angelou is a chronicler of history, an advocate for peace, and a champion for the planet, as well as a patriot, a mentor, and a friend. To be shared and cherished, the wisdom and poetry of Maya Angelou proves there is always cause for celebration.', 128, '2011-09-07', '2022-02-27', 1, 30),
(57, 'Rainbow in the Cloud', 'http://books.google.com/books/content?id=0O7MBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'An inspiring collection of quotations from the beloved and bestselling author of I KNOW WHY THE CAGED BIRD SINGS. \'A brilliant writer, a fierce friend and a truly phenomenal woman\' BARACK OBAMA Inspired by the woman who has inspired us all, Rainbow in the Cloud offers nearly 300 of Maya Angelou\'s wonderful quotes, organised in themed sections (including art, love, spirituality, womanhood, and life in the American South) - from sage advice and beautiful stanzas to humorous quips and pointed observations - drawn from each of her published works and from her celebrated (and much shared) social media posts. This collection also features special words of wisdom she shared often with her family, chosen by her son, Guy Johnson. \'She moved through the world with unshakeable calm, confidence and a fierce grace . . . She will always be the rainbow in my clouds\' OPRAH WINFREY \'She was important in so many ways. She launched African American women writing in the United States. She was generous to a fault. She had nineteen talents - used ten. And was a real original. There is no duplicate\' TONI MORRISON', 128, '2014-10-28', '2018-05-22', 1, 1),
(58, 'Poems', 'http://books.google.com/books/content?id=n72wAAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Deals with love, death, nature, the past, sorrow, self-image, street life, memories, aging, men and women, childhood, racism, and writers', 232, '1986-01-01', '2013-07-24', 1, 5),
(59, 'Wouldn\'t Take Nothing for My Journey Now', 'http://books.google.com/books/content?id=Wx5PYun96wkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Maya Angelou, one of the best-loved authors of our time shares the wisdom of a remarkable life in this bestselling spiritual classic. This is Maya Angelou talking from the heart, down to earth and real, but also inspiring. This is a book to be treasured, a book about being in all ways a woman, about living well, about the power of the word, and about the power of spirituality to move and shape your life. Passionate, lively, and lyrical, Maya Angelou’s latest unforgettable work offers a gem of truth on every page. Maya Angelou speaks out . . . On Faith: “I\'m taken aback when people walk up to me and tell me they are Christians. My first response is the question \'Already?\' It seems to me a lifelong endeavor to try to live the life of a Christian. It is in the search itself that one finds ecstasy.” On Racism: “It is time for parents to teach young people early on that in diversity there is beauty and there is strength. We all should know that diversity makes for a rich tapestry, and we must understand that all the threads of the tapestry are equal in value no matter their color.” On Taking Time for Ourselves: “Each person deserves a day away in which no problems are confronted, no solutions searched for. Each of us needs to withdraw from the cares which will not withdraw from us. A day away acts as a spring tonic. It can dispel rancor, transform indecision, and renew the spirit.” On Death and Grieving: “When I sense myself filling with rage at the absence of a beloved, I try as soon as possible to remember that my concerns should be focused on what I can learn from my departed love. What legacy was left which can help me in the art of living a good life?” On Style: “Style is as unique and nontransferable and perfectly personal as a fingerprint. It is wise to take the time to develop one\'s own way of being, increasing those things one does well and eliminating the elements in one\'s character which can hinder and diminish the good personality.”', 144, '2011-11-23', '2015-11-18', 1, 5),
(60, 'Amazing Peace', 'http://books.google.com/books/content?id=KQlvX_PJTJYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This dazzling Christmas poem by Maya Angelou is powerful and inspiring for people of all faiths. In this beautiful, deeply moving poem, Maya Angelou inspires us to embrace the peace and promise of Christmas, so that hope and love can once again light up our holidays and the world. “Angels and Mortals, Believers and Nonbelievers, look heavenward,” she writes, “and speak the word aloud. Peace.” Read by the poet at the lighting of the National Christmas Tree at the White House on December 1, 2005, Maya Angelou’ s celebration of the “Glad Season” is a radiant affirmation of the goodness of life.', 32, '2009-10-21', '2014-01-12', 1, 30),
(61, 'Phenomenal Woman', 'http://books.google.com/books/content?id=jWyMrvCJY2gC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A collection of beloved poems about women from the iconic Maya Angelou These four poems, “Phenomenal Woman,” “Still I Rise,” “Weekend Glory,” and “Our Grandmothers,” are among the most remembered and acclaimed of Maya Angelou\'s poems. They celebrate women with a majesty that has inspired and touched the hearts of millions. “Phenomenal Woman” is a phenomenal poem that speaks to us of where we are as women at the dawn of a new century. In a clear voice, Maya Angelou vividly reminds us of our towering strength and beauty.', 32, '2011-10-05', '2019-11-09', 1, 30),
(62, 'Singin\' and Swingin\' and Gettin\' Merry Like Christmas', 'http://books.google.com/books/content?id=KxPgRbczEH4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In this third self-contained volume of her autobiography, which began with I Know Why the Caged Bird Sings, Maya Angelou moves into the adult world, and the white world as well, as she marries, enters show business, and tours Europe and Africa in Porgy and Bess. As the book opens, Maya, in order to support herself and her young son, gets a job in a record shop run by a white woman. Suspicious of almost any kindness shown her, she is particularly confused by the special attentions of a young white customer. Soon the relationship grows into love and then marriage, and Maya believes a permanent relationship is finally possible. But it is not to be, and she is again forced to look for work. This time she finds a job as a dancer in a sleazy San Francisco bar. Her remarkable talent, however, soon brings her attention of a different kind, and before long she is singing in one of the most popular nightclubs on the coast. From there, she is called to New York to join the cast of Porgy and Bess, which is just about to begin another tour abroad. The troupe’s joyous and dramatic adventure through Italy, France, Greece, Yugoslavia, and Egypt becomes the centerpiece of Singin’ and Swingin’. This remarkable portrayal of one of the most exciting and talented casts ever put together, and of the encounters between these larger-than-life personalities and audiences who had rarely seen black people before, makes a hilarious and poignant story. The excitement of the journey—full of camaraderie, love affairs, and memorable personalities—is dampened only by Maya\'s nagging guilt that she has once again abandoned the person she loves most in life, her son. Back home, and driven close to suicide by her guilt and concern, she takes her son with her to Hawaii, where she discovers that devotion and love, in spite of forced absence, have the power to heal and sustain. As always, Maya Angelou’s writing is charged with that remarkable sense of life and love and unique celebration of the human condition that have won her such a loyal following.', 320, '2009-04-21', '2021-08-05', 1, 30),
(63, 'Conversations with Maya Angelou', 'http://books.google.com/books/content?id=IG_ao-bkQlkC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The collected interviews of a fascinating American woman, the acclaimed writer of I Know Why the Caged Bird Sings & Gather Together in My Name.', 246, '1989-01-01', '2014-07-19', 1, 32),
(64, 'I Shall Not Be Moved', 'http://books.google.com/books/content?id=dej2YUmrYsgC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The best selling author presents a new collection of poems. This new volume of poetry captures the pain and triumph of being black and speaks out about history, heartbreak and love.', 66, '1997-05-13', '1999-05-14', 1, 30),
(65, 'Letter To My Daughter', 'http://books.google.com/books/content?id=MsgnEIymjsYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A collection of wisdom and life lessons, from the beloved and bestselling author of I KNOW WHY THE CAGED BIRD SINGS \'A brilliant writer, a fierce friend and a truly phenomenal woman\' BARACK OBAMA Dedicated to the daughter she never had but sees all around her, Letter to my Daughter reveals Maya Angelou\'s path to living well and living a life with meaning. Told in her own inimitable style, this book transcends genres and categories: it\'s part guidebook, part memoir, part poetry - and pure delight. \'She moved through the world with unshakeable calm, confidence and a fierce grace . . . She will always be the rainbow in my clouds\' OPRAH WINFREY \'She was important in so many ways. She launched African American women writing in the United States. She was generous to a fault. She had nineteen talents - used ten. And was a real original. There is no duplicate\' TONI MORRISON', 192, '2010-11-04', '2013-03-01', 1, 1),
(66, 'Life Doesn\'t Frighten Me (25th Anniversary Edition)', 'http://books.google.com/books/content?id=2tmdAQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Shadows on the wallNoises down the hallLife doesn\'t frighten me at all Maya Angelou\'s brave, defiant poem celebrates the courage within each of us, young and old. From the scary thought of panthers in the park to the unsettling scene of a new classroom, fearsome images are summoned and dispelled by the power of faith in ourselves.Angelou\'s strong words are matched by the daring vision of artist Jean-Michel Basquiat, whose childlike style reveals the powerful emotions and fanciful imaginings of childhood. Together, Angelou\'s words and Basquiat\'s paintings create a place where every child, indeed every person, may experience his or her own fearlessness.Celebrating its successful 25 years in print, this brilliant introduction to poetry and contemporary art features brief, updated biographies of Angelou and Basquiat, an afterword from the editor, and a fresh new look. A selected bibliography of Angelou\'s books and a selected museum listing of Basquiat\'s works open the door to further inspiration through the fine arts.', 0, '2018-01-09', '2022-12-03', 1, 33),
(67, 'Great Food, All Day Long', 'http://books.google.com/books/content?id=LXKPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '“At one time, I described myself as a cook, a driver, and a writer. I no longer drive, but I do still write and I do still cook. And having reached the delicious age of eighty-one, I realize that I have been feeding other people and eating for a long time. I have been cooking nearly all my life, so I have developed some philosophies.” Renowned and beloved author Maya Angelou returns to the kitchen—both hers and ours—with her second cookbook, filled with time-tested recipes and the intimate, autobiographical sketches of how they came to be. Inspired by Angelou’s own dramatic weight loss, the focus here is on good food, well-made and eaten in moderation. When preparing for a party, for example, Angelou says, “Remember, cooking large amounts of food does not mean that you are obligated to eat large portions.” When you create food that is full of flavor, you will find that you need less of it to feel satisfied, and you can use one dish to nourish yourself all day long. And oh, what food you will create! Savor recipes for Mixed-Up Tamale Pie, All Day and Night Cornbread, Sweet Potatoes McMillan, Braised Lamb with White Beans, and Pytt I Panna (Swedish hash.) All the delicious dishes here can be eaten in small portions, and many times a day. More important, they can be converted into other mouth-watering incarnations. So Crown Roast of Pork becomes Pork Tacos and Pork Fried Rice, while Roasted Chicken becomes Chicken Tetrazzini and Chicken Curry. And throughout, Maya Angelou’s rich and wise voice carries the food from written word to body-and-soul-enriching experience. Featuring gorgeous illustrations throughout and Angelou’s own tips and tricks on everything from portion control to timing a meal, Great Food, All Day Long is an essential reference for everyone who wants to eat better and smarter—and a delightful peek into the kitchen and the heart of a remarkable woman.', 0, '2010-12-14', '2016-07-14', 1, 3),
(68, 'All God\'s Children Need Travelling Shoes', 'http://books.google.com/books/content?id=BuvUvtPnM4wC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A memoir about home and belonging, from the author of I KNOW WHY THE CAGED BIRD SINGS \'A brilliant writer, a fierce friend and a truly phenomenal woman\' BARACK OBAMA Maya Angelou\'s five volumes of autobiography, beginning with I KNOW WHY THE CAGED BIRD SINGS, are a testament to the talents and resilience of this extraordinary writer. Loving the world, she also knows its cruelty. As a black woman she has known discrimination and extreme poverty, but also hope, joy, achievement and celebration. In the fifth volume, Maya Angelou emigrates to Ghana only to discover that \'you can\'t go home again\' but she comes to a new awareness of love and friendship, civil rights and slavery - and the myth of mother Africa. \'She moved through the world with unshakeable calm, confidence and a fierce grace . . . She will always be the rainbow in my clouds\' OPRAH WINFREY \'She was important in so many ways. She launched African American women writing in the United States. She was generous to a fault. She had nineteen talents - used ten. And was a real original. There is no duplicate\' TONI MORRISON', 240, '2013-04-04', '2020-12-30', 1, 1),
(69, 'His Day Is Done', 'http://books.google.com/books/content?id=JwFwDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'He was a son of Africa who became father to a nation and, for billions of people around the world, a beacon of hope, courage, and perseverance in the face of opposition. Now, acclaimed poet Maya Angelou honors the life and remarkable soul of Nelson Mandela, former president of South Africa and Nobel laureate. In His Day is Done, Angelou delivers an authentically heartfelt and elegant tribute to Mandela, who stood as David to the mighty Goliath of Apartheid and who, after twenty-seven years of unjust imprisonment on the notorious Robben Island, emerged with “His stupendous heart intact / His gargantuan will / Hale and hearty” to lead his people into a new era. This poignant work of gratitude and remembrance offers condolences to the resilient people of South Africa on the loss of their beloved “Madiba” and celebrates a man like no other, whose life and work changed the world. Praise for His Day Is Done “Moving and heartfelt.”—The Washington Post “A powerful, gripping tribute.”—NewsOne “[His Day Is Done captures] how many were feeling.”—BBC News', 66, '2014-01-21', '2021-08-21', 1, 30),
(70, 'Hallelujah! The Welcome Table', 'http://books.google.com/books/content?id=1SWPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Throughout Maya Angelou’s life, from her childhood in Stamps, Arkansas, to her world travels as a bestselling writer, good food has played a central role. Preparing and enjoying homemade meals provides a sense of purpose and calm, accomplishment and connection. Now in Hallelujah! The Welcome Table, Angelou shares memories pithy and poignant—and the recipes that helped to make them both indelible and irreplaceable. Angelou tells us about the time she was expelled from school for being afraid to speak—and her mother baked a delicious maple cake to brighten her spirits. She gives us her recipe for short ribs along with a story about a job she had as a cook at a Creole restaurant (never mind that she didn’t know how to cook and had no idea what Creole food might entail). There was the time in London when she attended a wretched dinner party full of wretched people; but all wasn’t lost—she did experience her initial taste of a savory onion tart. She recounts her very first night in her new home in Sonoma, California, when she invited M. F. K. Fisher over for cassoulet, and the evening Deca Mitford roasted a chicken when she was beyond tipsy—and created Chicken Drunkard Style. And then there was the hearty brunch Angelou made for a homesick Southerner, a meal that earned her both a job offer and a prophetic compliment: “If you can write half as good as you can cook, you are going to be famous.” Maya Angelou is renowned in her wide and generous circle of friends as a marvelous chef. Her kitchen is a social center. From fried meat pies, chicken livers, and beef Wellington to caramel cake, bread pudding, and chocolate éclairs, the one hundred-plus recipes included here are all tried and true, and come from Angelou’s heart and her home. Hallelujah! The Welcome Table is a stunning collaboration between the two things Angelou loves best: writing and cooking.', 0, '2007-10-09', '2016-05-18', 1, 3),
(71, 'My Painted House, My Friendly Chicken, and Me', 'http://books.google.com/books/content?id=kyqNEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Full color photographs. \"Hello, Stranger-Friend\" begins Maya Angelou\'s story about Thandi, a South African Ndebele girl, her mischievous brother, her beloved chicken, and the astonishing mural art produced by the women of her tribe. With never-before-seen photographs of the very private Ndebele women and their paintings, this unique book shows the passing of traditions from parent to child and introduces young readers to a new culture through a new friend.', 0, '2003-03-11', '2015-08-13', 1, 3),
(72, 'Mother', 'http://books.google.com/books/content?id=QMZlAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Poet, writer, performer, teacher, and director Maya Angelou was raised in Stamps, Arkansas, and then moved to San Francisco. In addition to her bestselling autobiographies, beginning with I Know Why the Caged Bird Sings, she has also written a cookbook, Hallelujah! The Welcome Tab≤ five poetry collections, including I Shall Not Be Moved and Shaker, Why Don’t You Sing?; and the celebrated poems “On the Pulse of Morning,” which she read at the inauguration of President William Jefferson Clinton, and “Amazing Peace,” which she read at the lighting of the National Christmas Tree in Washington, D.C., in December 2005.', 40, '2006-04-11', '2017-01-26', 1, 30),
(73, 'Complete Stories', 'http://books.google.com/books/content?id=X3I4DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Here for the first time is the complete short fiction of one of the twentieth century\'s foremost imaginative geniuses. More than half of Vonnegut\'s output was short fiction, and never before has the world had occasion to wrestle with it all together. Organized thematically—\"War,\" \"Women,\" \"Science,\" \"Romance,\" \"Work Ethic versus Fame and Fortune,\" \"Behavior,\" \"The Band Director\" (those stories featuring Lincoln High\'s band director and nice guy George Hemholtz), and \"Futuristic\"—these ninety-eight stories were written from 1941 to 2007, and include those Vonnegut published in magazines and collected in Welcome to the Monkey House, Bagombo Snuff Box, and other books; here for the first time five previously unpublished stories; as well as a handful of others that were published online and read by few. During his lifetime Vonnegut published fewer than half of the stories he wrote, his agent telling him in 1958 upon the rejection of a particularly strong story, \"Save it for the collection of your works which will be published someday when you become famous. Which may take a little time.\" Selected and introduced by longtime Vonnegut friends and scholars Dan Wakefield and Jerome Klinkowitz, Complete Stories puts Vonnegut\'s great wit, humor, humanity, and artistry on full display. An extraordinary literary feast for new readers, Vonnegut fans, and scholars alike.', 15, '2017-09-26', '2021-06-22', 1, 34),
(74, 'Kurt Vonnegut: Letters', 'http://books.google.com/books/content?id=0c91K50HLtoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This collection of Vonnegut’s letters is the autobiography he never wrote – from the letter he posted home upon being freed from a German POW camp, to notes of advice to his children: ‘Don’t let anybody tell you that smoking and boozing are bad for you. Here I am fifty-five years old, and I never felt better in my life’. Peppered with insights, one-liners and missives to the likes of Norman Mailer, Gunter Grass and Bernard Malamud, Vonnegut is funny, wise and modest. As he himself said: ‘I am an American fad—of a slightly higher order than the hula hoop’. Like Vonnegut’s books, his letters make you think, they make you outraged and they make you laugh. Written over a sixty-year period, and never published before, these letters are alive with the unique point of view that made Vonnegut one of the most original writers in American fiction.', 480, '2012-10-30', '2014-03-04', 1, 30),
(75, 'Galapagos', 'http://books.google.com/books/content?id=DhTFBYIKW6IC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '“A madcap genealogical adventure . . . Vonnegut is a postmodern Mark Twain.”—The New York Times Book Review Galápagos takes the reader back one million years, to A.D. 1986. A simple vacation cruise suddenly becomes an evolutionary journey. Thanks to an apocalypse, a small group of survivors stranded on the Galápagos Islands are about to become the progenitors of a brave, new, and totally different human race. In this inimitable novel, America’ s master satirist looks at our world and shows us all that is sadly, madly awry–and all that is worth saving. Praise for Galápagos “The best Vonnegut novel yet!”—John Irving “Beautiful . . . provocative, arresting reading.”—USA Today “A satire in the classic tradition . . . a dark vision, a heartfelt warning.”—The Detroit Free Press “Interesting, engaging, sad and yet very funny . . . Vonnegut is still in top form. If he has no prescription for alleviating the pain of the human condition, at least he is a first-rate diagnostician.”—Susan Isaacs, Newsday “Dark . . . original and funny.”—People “A triumph of style, originality and warped yet consistent logic . . . a condensation, an evolution of Vonnegut’s entire career, including all the issues and questions he has pursued relentlessly for four decades.”—The Philadelphia Inquirer “Wild details, wry humor, outrageous characters . . . Galápagos is a comic lament, a sadly ironic vison.”—St. Louis Post-Dispatch “A work of high comedy, sadness and imagination.”—The Denver Post “Wacky wit and irreverent imagination . . . and the full range of technical innovations have made [Vonnegut] America’s preeminent experimental novelist.”—The Minneapolis Star and Tribune', 336, '2009-08-11', '2010-01-29', 1, 35),
(76, 'Cat\'s Cradle', 'http://books.google.com/books/content?id=w25sx0G6nRsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '“A free-wheeling vehicle . . . an unforgettable ride!”—The New York Times Cat’s Cradle is Kurt Vonnegut’s satirical commentary on modern man and his madness. An apocalyptic tale of this planet’s ultimate fate, it features a midget as the protagonist, a complete, original theology created by a calypso singer, and a vision of the future that is at once blackly fatalistic and hilariously funny. A book that left an indelible mark on an entire generation of readers, Cat’s Cradle is one of the twentieth century’s most important works—and Vonnegut at his very best. “[Vonnegut is] an unimitative and inimitable social satirist.”—Harper’s Magazine “Our finest black-humorist . . . We laugh in self-defense.”—Atlantic Monthly', 304, '2009-11-04', '2011-07-31', 1, 35),
(77, 'Kurt Vonnegut: The Last Interview', 'http://books.google.com/books/content?id=mkxkw_Oehm8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'One of the great American iconoclasts holds forth on politics, war, books and writers, and his personal life in a series of conversations—including his last published interview. During his long career Kurt Vonnegut won international praise for his novels, plays, and essays. In this new anthology of conversations with Vonnegut—which collects interviews from throughout his career—we learn much about what drove Vonnegut to write and how he viewed his work at the end. From Kurt Vonnegut\'s Last Interview Is there another book in you, by chance? No. Look, I’m 84 years old. Writers of fiction have usually done their best work by the time they’re 45. Chess masters are through when they’re 35, and so are baseball players. There are plenty of other people writing. Let them do it. So what’s the old man’s game, then? My country is in ruins. So I’m a fish in a poisoned fishbowl. I’m mostly just heartsick about this. There should have been hope. This should have been a great country. But we are despised all over the world now. I was hoping to build a country and add to its literature. That’s why I served in World War II, and that’s why I wrote books. When someone reads one of your books, what would you like them to take from the experience? Well, I’d like the guy—or the girl, of course—to put the book down and think, “This is the greatest man who ever lived.”', 176, '2011-12-27', '2011-12-31', 1, 36),
(78, 'Player Piano', 'http://books.google.com/books/content?id=vCmxARuaIFYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '“A funny, savage appraisal of a totally automated American society of the future.”—San Francisco Chronicle Kurt Vonnegut’s first novel spins the chilling tale of engineer Paul Proteus, who must find a way to live in a world dominated by a supercomputer and run completely by machines. Paul’s rebellion is vintage Vonnegut—wildly funny, deadly serious, and terrifyingly close to reality. Praise for Player Piano “An exuberant, crackling style . . . Vonnegut is a black humorist, fantasist and satirist, a man disposed to deep and comic reflection on the human dilemma.”—Life “His black logic . . . gives us something to laugh about and much to fear.”—The New York Times Book Review', 352, '2009-09-30', '2023-03-24', 1, 35),
(79, 'Jailbird', 'http://books.google.com/books/content?id=KP9rbCiArGYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'J\'ailbird has the crackle and snap of Vonnegut\'s early work - his best since Cat\'s Cradle. Using the laid-back, ironic voice that has become his stademark, Vonnegut combines fiction and fact to construct an ingenious, wry morality play\' - Newsweek Vonnegut\'s riotous urban fairytale about the various fiascos of the Nixon years - a firm fan favourite Walter J. Starbuck’s life was on the up. With a Harvard education, a job in federal government and then in Nixon’s White House, everything was going great. Only things took a truly spectacular turn for the worse when his involvement in the Watergate scandal landed him in jail. Now, as the brave new world of the 1980s dawns, Starbuck is finally free and on his way back into the world. This is the story of the first twenty-four hours after his release, told with Kurt Vonnegut’s razor-sharp wit and satirical bite.', 288, '2011-12-01', '2012-05-21', 1, 30),
(80, 'Bluebeard', 'http://books.google.com/books/content?id=VOV-eUIWrVIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '“Ranks with Vonnegut’s best and goes one step beyond . . . joyous, soaring fiction.”—The Atlanta Journal and Constitution Broad humor and bitter irony collide in this fictional autobiography of Rabo Karabekian, who, at age seventy-one, wants to be left alone on his Long Island estate with the secret he has locked inside his potato barn. But then a voluptuous young widow badgers Rabo into telling his life story—and Vonnegut in turn tells us the plain, heart-hammering truth about man’s careless fancy to create or destroy what he loves. Praise for Bluebeard “Vonnegut is at his edifying best.”—The Philadelphia Inquirer “The quicksilver mind of Vonnegut is at it again. . . . He displays all his talents—satire, irony, ridicule, slapstick, and even a shaggy dog story of epic proportions.”—The Cincinnati Post “[Kurt Vonnegut is] a voice you can trust to keep poking holes in the social fabric.”—San Francisco Chronicle “It has the qualities of classic Bosch and Slaughterhouse Vonnegut. . . . Bluebeard is uncommonly feisty.”—USA Today “Is Bluebeard good? Yes! . . . This is vintage Vonnegut—good wine from his best grapes.”—The Detroit News “A joyride . . . Vonnegut is more fascinated and puzzled than angered by the human stupidities and contradictions he discerns so keenly. So hop in his rumble seat. As you whiz along, what you observe may provide some new perspectives.”—Kansas City Star', 336, '2009-10-14', '2018-03-19', 1, 35),
(81, 'If This Isn\'t Nice, What Is?', 'http://books.google.com/books/content?id=gMkmDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A collection of commencement speeches and other wit and wisdom from the New York Times–bestselling literary icon and author of Slaughterhouse-Five. Master storyteller and satirist Kurt Vonnegut was one of the most in-demand commencement speakers of his time. For each occasion, Vonnegut’s words were unfailingly insightful and witty, and they stayed with audience members long after graduation. This expanded second edition also includes more than sixty pages of further thoughts from Vonnegut (whose good advice wasn’t limited to graduation speeches). Edited by Dan Wakefield, and including such pieces as “How to Make Money and Find Love!,” “How to Have Something Most Billionaires Don’t,” and “Somebody Should Have Told Me Not to Join a Fraternity,” this book reads like a narrative in the unique voice that made Vonnegut a hero to readers everywhere. Hilarious, razor-sharp, freewheeling, and at times deeply serious, these reflections are ideal not just for graduates but for anyone undergoing what Vonnegut would call their “long-delayed puberty ceremony”—marking the long and challenging passage to full-time adulthood. “Like Mark Twain, Mr. Vonnegut used humor to tackle the basic questions of human existence.” —The New York Times', 169, '2016-04-05', '2022-03-23', 1, 37),
(82, 'Kurt Vonnegut Drawings', 'http://books.google.com/books/content?id=1bdvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Those who know Kurt Vonnegut as one of America\'s most beloved and influential writers will be surprised and delighted to discover that he was also a gifted graphic artist. This book brings together the finest examples of his funny, strange, and moving drawings in an inexpensive, beautifully produced gift volume for every Vonnegut fan. Kurt Vonnegut\'s daughter Nanette introduces this volume of his never before published drawings with an intimate remembrance of her father. Vonnegut always drew, and many of his novels contain sketches. Breakfast of Champions (1973) included many felt-tip pen drawings, and he had a show in 1983 of his drawings at New York\'s Margo Feiden Gallery, but really got going in the early 1990s when he became acquainted with the screenprinter Joe Petro III, who became his partner in making his colorful drawings available as silkscreens. With a touch of cubism, mixed with a Paul Klee gift for caricature, a Calder-like ability to balance color and line, and more than a touch of sixties psychedelic sensibility, Vonnegut\'s aesthetic is as idiosyncratic and defiant of tradition as his books. While writing came to be more onerous in his later years, making art became his joyful primary activity, and he made drawings up until his death in 2007. This volume, and a planned touring exhibition of the drawings, will introduce Vonnegut\'s legion of fans to an entirely new side of his irrepressible creative personality.', 177, '2014-05-13', '2018-11-19', 1, 38),
(83, 'Hocus Pocus', 'http://books.google.com/books/content?id=gPEKAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Hocus Pocus is the fictional autobiography of a West Point graduate who was in charge of the humiliating evacuation of U.S. personnel from the Saigon rooftops at the close of the Vietnam War. Returning home from the war, he unknowingly fathered an illegitimate son. In 2001, the son begins a search for his father and catches up with him just in time to see him arrested for masterminding the prison break of 10,000 convicts. Using his famous brand of satire and wit, Vonnegut captures twenty-first century America as only he could foresee it. In Hocus Pocus, listeners will find a fresh novel, as fascinating and brilliantly offbeat as anything he\'s written.', 312, '1990-01-01', '1995-01-23', 1, 39),
(84, 'Galapagos: A Novel', 'http://books.google.com/books/content?id=URwjBYt3CYQC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The ghost of a decapitated shipbuilder wryly observes the decline of the human race as reflected by a group of shipwreck survivors, including a biology teacher, a bomb-radiated wife of a Japanese computer genius, and a gold digger, a motley band whose fates are shaped by infertility and a local tribe of cannibals. Reissue.', 324, '1999-01-01', '2013-04-01', 1, 35),
(85, 'Kurt Vonnegut', 'http://books.google.com/books/content?id=2EuQEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The ultimate Vonnegut: all 14 novels plus a selection of the best of his stories in a definitive collector\'s boxed set. The novels of Kurt Vonnegut defined a generation a remain among the most enduringly popular and influential works of the last century. Now, for the first time, they are available in a single collector\'s edition, featuring authoritative annotated texts. This boxed set includes four Library of America volumes: Novels & Stories 1950-1962 Player Piano / The Sirens of Titan / Mother Night Novels & Stories 1963-1973 Cat\'s Cradle / God Bless You, Mr. Rosewater / Slaughterhouse-Five / Breakfast of Champions Novels 1976-1985 Slapstick / Jailbird / Deadeye Dick / Galapagos Novels 1987-1997 Bluebeard / Hocus Pocus / Timequake LIBRARY OF AMERICA is an independent nonprofit cultural organization founded in 1979 to preserve our nation\'s literary heritage by publishing, and keeping permanently in print, America\'s best and most significant writing. The Library of America series includes more than 300 volumes to date, authoritative editions that average 1,000 pages in length, feature cloth covers, sewn bindings, and ribbon markers, and are printed on premium acid-free paper that will last for centuries.', 0, '2016-10-04', '2022-12-15', 1, 3),
(86, 'Breakfast of Champions', 'http://books.google.com/books/content?id=TQnjC11EIJ8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Discover Vonnegurt’s funny absurdist novel about the human condition. ‘Outrageous, witty, thought-provoking, unputdownable, scintillating, invigorating, ennobling, enlightening and masterly’ Spectator In a frolic of cartoon and comic outbursts against rule and reason, a miraculous weaving of science fiction, memoir, parable, fairy tale and farce, Kurt Vonnegut attacks the whole spectrum of American society, releasing some of his best-loved literary creations on the scene. ‘Vonnegut explains everything from an apple to the pyramids...weird, fast and inventive’ Daily Telegraph', 320, '2010-09-30', '2023-03-23', 1, 30),
(87, 'Kurt Vonnegut: Novels & Stories 1950-1962 (LOA #226)', 'http://books.google.com/books/content?id=A6dNEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Before winning international fame with Cat’s Cradle and Slaughterhouse-Five, Kurt Vonnegut was a master of the drugstore paperback and the popular short story. This authoritative collection of his brilliant early work opens with Player Piano (1952), a Metropolis-like parable of breakneck technological innovation and its effect on those it robs of their livelihoods. The Sirens of Titan (1959), the interplanetary adventures of the world’s wealthiest and most despised man, is both a pulp-fiction space opera and a satire on the vanity of human striving. The confessions of a German-American double agent well placed among the Nazi elite, Mother Night (1962) is a cautionary tale with a famous moral: “We are what we pretend to be, so we must be careful about what we pretend to be.” Here too are six of Vonnegut’s best short stories, gems that display his matchless talent for hilarious invention and caustic social criticism. A companion volume, Kurt Vonnegut: Novels & Stories 1963–1973, collects Cat’s Cradle; God Bless You, Mr. Rosewater; Slaughterhouse-Five; Breakfast of Champions; and three short stories, including “Welcome to the Monkey House.” LIBRARY OF AMERICA is an independent nonprofit cultural organization founded in 1979 to preserve our nation’s literary heritage by publishing, and keeping permanently in print, America’s best and most significant writing. The Library of America series includes more than 300 volumes to date, authoritative editions that average 1,000 pages in length, feature cloth covers, sewn bindings, and ribbon markers, and are printed on premium acid-free paper that will last for centuries.', 0, '2012-04-26', '2023-02-17', 1, 40),
(88, 'La Maison aux esprits', 'http://books.google.com/books/content?id=9-mKEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'À la mort de Rosa del Valle, sa fiancée d’une incomparable beauté, Esteban Trueba s’exile aux Trois María, la propriété abandonnée de sa famille, pour tenter d\'oublier sa peine. Dix ans plus tard, le domaine a retrouvé sa splendeur d’antan et les fermiers des conditions de vie décentes. Esteban, désormais riche propriétaire, revient à la ville chercher une épouse et jette son dévolu sur Clara l’extralucide, sœur de Rosa. Il construit pour elle une grande demeure. Bientôt, la maison s’emplit de leur descendance et de visiteurs, sans oublier les esprits attirés par les dons surnaturels de Clara... Mais le temps passant, les failles et les ambitions de l’irascible Esteban finissent par fissurer le fragile équilibre familial, alors que le cours de l’histoire emporte les siens dans les affres des révolutions sociales et politiques du xxe siècle. Premier roman d’Isabel Allende au succès mondial, La Maison aux esprits est devenu un classique incontournable. À travers trois générations de la famille Trueba, à la croisée de l’Histoire et du merveilleux, Isabel Allende tisse une évocation poétique et terriblement lucide du pays qu’il lui a fallu fuir après le coup d’État militaire de Pinochet. Traduit de l’espagnol (Chili) par Claude et Carmen Durand', 726, '2022-10-19', '2023-01-27', 2, 41);
INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(89, 'Joseph Anton', 'http://books.google.com/books/content?id=eXjkYKg7aooC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'LE livre le plus attendu de Rushdie : celui qui raconte la fatwa, la vie d\'un écrivain basculant soudain dans la peur et dans la clandestinité, dont le paradoxe est d\'avoir engendré une célébrité phénoménale. Le 14 février 1989, le jour de la Saint Valentin, Salman Rushdie reçut un coup de téléphone d\'un journaliste de la BBC : il avait été \" condamné à mort \" par l\'Ayatollah Khomeiny. C\'était la première fois qu\'il entendait le mot \" fatwa \". Son crime ? Avoir écrit Les Versets sataniques, un roman accusé d\'être \" contre l\'Islam, le Prophète et le Coran \". Ainsi commence l\'extraordinaire histoire d\'un écrivain obligé de devenir un clandestin, changeant sans cesse de domicile, sous la protection permanente d\'une équipe de protection policière armée. Quand on lui demande de se choisir un pseudonyme à destination de la police, il songe aux écrivains qu\'il aime et essaie des combinaisons de leurs noms ; puis l\'idée lui vient : Conrad et Tchekov – Joseph Anton. Comment un écrivain et sa famille traversent-ils neuf années sous une menace de meurtre perpétuelle ? Comment continuer à écrire ? À vivre des histoires d\'amour ? Quels effets le désespoir a-t-il sur sa pensée et son action, comment et pourquoi flanche-t-il et comment apprend-il à se relever et à se battre ? Telle est l\'histoire que Salman Rushdie raconte pour la première fois à travers ces remarquables mémoires – l\'histoire d\'une des plus importantes batailles pour la liberté d\'expression de notre époque. Il dit ici les réalités parfois cruelles, parfois comiques d\'un quotidien sous surveillance armée, et les liens très forts qu\'il tisse avec ses protecteurs ; il dit aussi sa lutte pour gagner le soutien et la compréhension des gouvernements, des chefs des services de renseignements, des éditeurs, des journalistes et de ses collègues écrivains, il dit encore son combat acharné pour retrouver sa liberté. C\'est un livre d\'une franchise et d\'une honnêteté exceptionnelles, saisissant, provocant, émouvant, et d\'une importance vitale. Car l\'histoire de Salman Rushdie n\'est que le premier acte d\'un drame qui continue de se dérouler chaque jour quelque part dans le monde.', 671, '2012-09-20', '2015-05-18', 2, 42),
(90, 'Les versets sataniques', 'http://books.google.com/books/content?id=bf1btwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Un jumbo jet explose au-dessus de la Manche. Au milieu de membres humains éparpillés et d\'objets non identifiés, deux silhouettes improbables tombent du ciel : Gibreel Farishta, le légendaire acteur indien, et Saladin Chamcha, l\'Homme aux Mille Voix. Agrippés l\'un à l\'autre, ils atterrissent sains et saufs sur une plage anglaise enneigée. Gibreel et Saladin ont été choisis pour être les protagonistes de la lutte éternelle entre le Bien et le Mal. Mais par qui ? Les anges sont-ils des diables déguisés ? Tandis que les deux hommes rebondissent du passé au présent se déroule un cycle extraordinaire de contes d\'amour et de passion, de trahison et de foi avec, au centre, l\'histoire de Mahound, prophète de Jahilia, la cité de sable, Mahound, frappé par une révélation où les versets sataniques se mêlent au divin. [4e de couv.]', 749, '2012-01-01', '2023-03-26', 2, 43),
(91, 'East, West', 'http://books.google.com/books/content?id=UzFPAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the Booker Prize-winning author of The Satanic Verses comes nine stories that reveal the oceanic distances and the unexpected intimacies between East and West. Daring, extravagant, comical and humane, this book renews Rushdie\'s stature as a storyteller who can enthrall and instruct us with the same sentence.', 224, '2014-01-08', '2019-08-06', 1, 19),
(92, 'Feel Free', 'http://books.google.com/books/content?id=FMIrDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'AS HEARD ON BBC RADIO 4 BOOK OF THE WEEK The one and only Zadie Smith, prize-winning, bestselling author of Swing Time and White Teeth, is back with a second unmissable collection of essays No subject is too fringe or too mainstream for the unstoppable Zadie Smith. From social media to the environment, from Jay-Z to Karl Ove Knausgaard, she has boundless curiosity and the boundless wit to match. In Feel Free, pop culture, high culture, social change and political debate all get the Zadie Smith treatment, dissected with razor-sharp intellect, set brilliantly against the context of the utterly contemporary, and considered with a deep humanity and compassion. This electrifying new collection showcases its author as a true literary powerhouse, demonstrating once again her credentials as an essential voice of her generation.', 464, '2018-02-08', '2018-10-12', 1, 14),
(93, 'Negotiating with the Dead', 'http://books.google.com/books/content?id=jLbFlsKMIOQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Margaret Atwood examines the nature of writing and the role of writers.', 268, '2002-03-06', '2009-04-04', 1, 44),
(94, 'In Other Worlds', 'http://books.google.com/books/content?id=d_vLeqxv4DsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the author of The Handmaid\'s Tale and Alias Grace * Rabbit superheroes. A theory of masks and capes. Victorian otherlands. From her 1940s childhood to her time at Harvard, Margaret Atwood has always been fascinated with SF. In 2010, she delivered a lecture series at Emory University called \'In Other Worlds: SF and the Human Imagination.\' This book is the result of those lectures. It includes essays on Ursula Le Guin and H G Wells, her interesting distinction between \'science fiction proper\' and \'speculative fiction\', and the letter which she wrote to the school which tried to ban The Handmaid\'s Tale. * \'Spooky . . . wild\' - Telegraph \'Elegant and witty\' - Guardian \'Eminently readable and accessible . . . The lectures are insightful and cogently argued with a neat comic turn of phrase . . . Her enthusiasm and level of intellectual engagement are second to none\' - Financial Times', 160, '2011-10-20', '2016-09-02', 1, 1),
(95, 'Life Before Man', 'http://books.google.com/books/content?id=YgPYAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Imprisoned by walls of their own construction, here are three people, each in midlife, in midcrisis, forced to make choices—after the rules have changed. Elizabeth, with her controlled sensuality, her suppressed rage, is married to the wrong man. She has just lost her latest lover to suicide. Nate, her gentle, indecisive husband, is planning to leave her for Lesje, a perennial innocent who prefers dinosaurs to men. Hanging over them all is the ghost of Elizabeth\'s dead lover...and the dizzying threat of three lives careening inevitably toward the same climax.', 394, '1998-04-13', '2017-07-01', 1, 45),
(96, 'The Robber Bride', 'http://books.google.com/books/content?id=i_Pml4XCHDcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the #1 New York Times bestselling author of The Handmaid\'s Tale One of Margaret Atwood’s most unforgettable characters lurks at the center of this intricate novel like a spider in a web. The glamorous, irresistible, unscrupulous Zenia is nothing less than a fairy-tale villain in the memories of her former friends. Roz, Charis, and Tony—university classmates decades ago—were reunited at Zenia’s funeral and have met monthly for lunch ever since, obsessively retracing the destructive swath she once cut through their lives. A brilliantly inventive fabulist, Zenia had a talent for exploiting her friends’ weaknesses, wielding intimacy as a weapon and cheating them of money, time, sympathy, and men. But one day, five years after her funeral, they are shocked to catch sight of Zenia: even her death appears to have been yet another fiction. As the three women plot to confront their larger-than-life nemesis, Atwood proves herself a gleefully acute observer of the treacherous shoals of friendship, trust, desire, and power.', 528, '2011-06-08', '2015-06-11', 1, 45),
(97, 'Surfacing', 'http://books.google.com/books/content?id=XGMhW46X2nEC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'From the bestselling author of The Handmaid\'s Tale and The Testaments—this story of an artist who goes in search of her missing father on a remote island in northern Quebec is a provocative blend of literary mystery, psychological thriller, and spiritual journey. Accompanied by her boyfriend and a young married couple, the artist searches her abandoned childhood home for clues her parents may have left. But in the disorienting, transformative isolation of the wilderness, her friends’ marriage begins to crumble, sex becomes a catalyst for conflict, and violence and death lurk just beneath the surface. As her relentless probing leads to an electrifying confrontation with her own suppressed secrets, she rapidly descends into what could be either madness or the starkest self-knowledge. Margaret Atwood’s haunting masterpiece is permeated with suspense, complex with layered meanings, and written in brilliant, diamond-sharp prose.', 208, '1998-03-16', '2014-03-05', 1, 45),
(98, 'The Tent', 'http://books.google.com/books/content?id=P3ePEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Alongside meditations on warlords, cat heaven, and orphans, the bestselling author of The Handmaid\'s Tale and The Testaments offers a sly pep talk to the ambitious young, laments the proliferation of photos of oneself, imagines an apocalypse of worms, and recalls Helen of Troy’s childhood Kool-Aid stand. In the title fable, a writer huddled inside a tent of paper engages in doodling as self-defense, scribbling on the walls in a frantic attempt to keep out encroaching horrors. Adorned with her own playful illustrations, The Tent is a delightful mélange of short fiction that pushes the boundaries of form in intriguing directions, replete with Atwood’s droll humor, keen insight, and lyric brilliance.', 0, '2007-05-08', '2018-07-17', 1, 3),
(99, 'Payback', 'http://books.google.com/books/content?id=QWQgAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Explores debt as a central historical component of religion, literature, and societal structure, while examining the idea of humanity\'s debt to the natural world.', 244, '2008-01-01', '2023-03-26', 1, 46),
(100, 'On Writers and Writing', 'http://books.google.com/books/content?id=YSvZoQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Looking back on her own childhood and the development of her writing career, Margaret Atwood examines the metaphors which writers of fiction and poetry have used to explain - or excuse - their activities, looking at what costumes they have seen fit to assume, what roles they have chosen to play.', 0, '2015-01-15', '2015-04-29', 1, 47),
(101, 'Bodily Harm', 'http://books.google.com/books/content?id=EBDYAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'A powerful and brilliantly crafted novel, Bodily Harm is the story of Rennie Wilford, a young journalist whose life has begun to shatter around the edges. Rennie flies to the Caribbean to recuperate, and on the tiny island of St. Antoine, she is confronted by a world where her rules for survival no longer apply. By turns comic, satiric, relentless, and terrifying, Margaret Atwood\'s Bodily Harm is ultimately an exploration of the lust for power, both sexual and political, and the need for compassion that goes beyond what we ordinarily mean by love\".The acerbic wit that is an Atwood trademark...political insights...comedy and pathos, and in the end, tragedy\". -- Chicago Sun-TimesHumor and satire, thoughtfulness, and lots of action make this a jam-packed novel\". -- The Washington Post\"Romance and adventure by a female Graham Greene at his peak\". -- Marilyn French, author of The Women\'s Room\"This is a story about one of today\'s women...Bodily Harm is strong stuff, and the writing is nearly flawless\". -- People', 318, '1996-01-01', '2013-03-19', 1, 5),
(102, 'The Testaments', 'http://books.google.com/books/content?id=HF-TEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NEW YORK TIMES BESTSELLER • WINNER OF THE BOOKER PRIZE • A modern masterpiece that \"reminds us of the power of truth in the face of evil” (People)—and can be read on its own or as a sequel to Margaret Atwood’s classic, The Handmaid’s Tale. “Atwood’s powers are on full display” (Los Angeles Times) in this deeply compelling Booker Prize-winning novel, now updated with additional content that explores the historical sources, ideas, and material that inspired Atwood. More than fifteen years after the events of The Handmaid\'s Tale, the theocratic regime of the Republic of Gilead maintains its grip on power, but there are signs it is beginning to rot from within. At this crucial moment, the lives of three radically different women converge, with potentially explosive results. Two have grown up as part of the first generation to come of age in the new order. The testimonies of these two young women are joined by a third: Aunt Lydia. Her complex past and uncertain future unfold in surprising and pivotal ways. With The Testaments, Margaret Atwood opens up the innermost workings of Gilead, as each woman is forced to come to terms with who she is, and how far she will go for what she believes.', 0, '2020-09-01', '2022-06-26', 1, 45),
(103, 'Selected Poems II', 'http://books.google.com/books/content?id=uns87xPwjL0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Houghton Mifflin now proudly publishes Selected Poems II, a volume of selections from Atwood\'s poetry of the last ten years. Underlying oppression and injustice, we hear the music of compassion and fellowship.', 164, '1987-01-01', '1988-07-30', 1, 48),
(104, 'Fahrenheit quatre cent cinquante et un', 'http://books.google.com/books/content?id=7V8InwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Roman de science-fiction - incendie - lecture - livre.', 213, '2000-01-01', '2023-03-26', 2, 49),
(105, 'Bradbury Stories', 'http://books.google.com/books/content?id=YK4GtTggT1cC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'For more than sixty years, the imagination of Ray Bradbury has opened doors into remarkable places, ushering us across unexplored territories of the heart and mind while leading us inexorably toward a profound understanding of ourselves and the universe we inhabit. In this landmark volume, America\'s preeminent storyteller offers us one hundred treasures from alifetime of words and ideas -- tales that amaze, enthrall, and horrify; breathtaking journeys backward and forward in time; classic stories with the undiminished power to tantalize, mystify, elate, and move the reader to tears. Each small gem in the master\'s collection remains as dazzling as when it first appeared in print. There is magic in these pages: the wonders of interstellar flight, a conspiracy of insects, the early bloom of love in the warmth of August. Both the world of Ray Bradbury and its people are vivid and alive, as colorfully unique as a poker chip hand-painted by a brilliant artist or as warmly familiar as the well-used settings on a family\'s dining room table. In a poor man\'s desire for the stars, in the twisted night games of a hateful embalmer, in a magnificent fraud perpetrated to banish despair and repair a future, in a writer\'s wonderful death is the glowing proof of the timeless artistry of one of America\'s greatest living bards. The one hundred stories in this volume were chosen by Bradbury himself, and span a career that blossomed in the pulp magazines of the early 1940s and continues to flourish in the new millennium. Here are representatives of the legendary author\'s finest works of short fiction, including many that have not been republished for decades, all forever fresh and vital, evocative and immensely entertaining. This is Bradbury at his very best -- golden visions of tomorrow, poetic memories of yesterday, dark nightmares and glorious dreams -- a grand celebration of humankind, God\'s intricate yet poignantly fallible machineries of joy.', 912, '2013-05-21', '2017-05-05', 1, 18),
(106, 'The Complete Poems of Ray Bradbury', 'https://via.placeholder.com/200x300', 'Poems deal with aspects of sports, science, history, religion, literature, science fiction, and daily life', 277, '1982-01-01', '2002-12-19', 1, 6),
(107, 'Ray Bradbury Stories', 'http://books.google.com/books/content?id=2j7_UwFg45sC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Within these pages the reader will be transported to foreign and extraordinary worlds, become transfixed by visions of the past, present, and future and be left humbled and inspired by one of most absorbing and engaging writers of this century, and the last.', 868, '2008-01-01', '2023-03-26', 1, 50),
(108, 'Dinosaur Tales', 'http://books.google.com/books/content?id=isY-PgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Four short stories and two poems featuring one of the author\'s great loves: dinosaurs.', 0, '2003-01-01', '2023-03-26', 1, 51),
(109, 'The Illustrated Man', 'http://books.google.com/books/content?id=-QC3TyfN3zoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Eighteen science fiction stories deal with love, madness, and death on Mars, Venus, and in space.', 308, '2012-04-17', '2014-07-14', 1, 13),
(110, 'Zen in the Art of Writing', 'http://books.google.com/books/content?id=fIAUrgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'CREATIVE WRITING & CREATIVE WRITING GUIDES. In this exuberant book, the incomparable Ray Bradbury shares the wisdom, experience, and excitement of a lifetime of writing. The first thing a writer should be is - excited Author of the iconic FAHRENHEIT 451, THE ILLUSTRATED MAN and THE MARTIAN CHRONICLES, Ray Bradbury is one of the greatest writers of the twentieth century. Part memoir, part masterclass, ZEN IN THE ART OF WRITING offers a vivid and exuberant insight into the craft of writing. Bradbury reveals how writers can each find their own unique path to developing their voice and style. ZEN IN THE ART OF WRITING offers a celebration of the act of writing that will delight, impassion, and inspire.', 148, '2015-01-01', '2023-03-26', 1, 52),
(111, 'The Golden Apples of the Sun', 'http://books.google.com/books/content?id=MnIAetMDx7EC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Ray Bradbury is a modern cultural treasure. His disarming simplicity of style underlies a towering body of work unmatched in metaphorical power by any other American storyteller. And here, presented in a new trade edition, are thirty-two of his most famous tales--prime examples of the poignant and mysterious poetry which Bradbury uniquely uncovers in the depths of the human soul, the otherwordly portraits of outrÉ fascination which spring from the canvas of one of the century\'s great men of imagination. From a lonely coastal lighthouse to a sixty-million-year-old safary, from the pouring rain of Venus to the ominous silence of a murder scene, Ray Bradbury is our sure-handed guide not only to surprising and outrageous manifestations of the future, but also to the wonders of the present that we could never have imagined on our own.Ray Bradbury is a modern cultural treasure. His disarming simplicity of style underlies a towering body of work unmatched in metaphorical power by any other American storyteller. And here, presented in a new trade edition, are thirty-two of his most famous tales--prime examples of the poignant and mysterious poetry which Bradbury uniquely uncovers in the depths of the human soul, the otherwordly portraits of outre fascination which spring from the canvas of one of the century s great men of imagination. From a lonely coastal lighthouse to a sixty-million-year-old safari, from the pouring rain of Venus to the ominous silence of a murder scene, Ray Bradbury is our sure-handed guide not only to surprising and outrageous manifestations of the future, but also to the wonders of the present that we could never have imagined on our own.', 358, '1997-11-01', '1998-12-20', 1, 18),
(112, 'The Cat\'s Pajamas', 'http://books.google.com/books/content?id=Xb6MUmQrUMAC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'From the winner of the National Book Foundations\' 2000 Medal for Distinguished Contribution to American Letters comes a \"sweet, funny . . . thought–provoking\" (Milwaukee Journal Sentinel) collection of short stories. As in his most recent major fiction collections, One More for the Road (1999) and Driving Blind (1997), Ray Bradbury has once again pulled together a stellar group of stories sure to delight readers of all ages. In The Cat\'s Pyjamas we are treated to a treasure trove of Bradbury gems old and new –– eerie and strange, nostalgic and bittersweet, searching and speculative –– all but two of which have never been published before. The Cat\'s Pyjamas is a joyous celebration of the lifelong work of a literary legend.', 258, '2005-07-26', '2019-10-12', 1, 18),
(113, 'Switch on the Night', 'http://books.google.com/books/content?id=VwHuAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The sci-fi master storyteller\'s picture book was written nearly 50 years ago to help his own children overcome their fear of the dark. This new edition has a jacket and has been given a larger, more impressive gift format to showcase the Dillon\'s magnificent illustrations. Copyright © Libri GmbH. All rights reserved.', 46, '1993-01-01', '2005-07-05', 1, 53),
(114, 'A Supposedly Fun Thing I\'ll Never Do Again', 'http://books.google.com/books/content?id=ge0plrKNDvQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A collection of insightful and uproariously funny non-fiction by the bestselling author of INFINITE JEST - one of the most acclaimed and adventurous writers of our time. A SUPPOSEDLY FUN THING... brings together Wallace\'s musings on a wide range of topics, from his early days as a nationally ranked tennis player to his trip on a commercial cruiseliner. In each of these essays, Wallace\'s observations are as keen as they are funny. Filled with hilarious details and invigorating analyses, these essays brilliantly expose the fault line in American culture - and once again reveal David Foster Wallace\'s extraordinary talent and gargantuan intellect.', 368, '2012-06-28', '2013-01-09', 1, 1),
(115, 'String Theory: David Foster Wallace on Tennis', 'http://books.google.com/books/content?id=qkuQEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'An instant classic of American sportswriting—the tennis essays of David Foster Wallace, “the best mind of his generation” (A. O. Scott) and “the best tennis-writer of all time” (New York Times) Gathered for the first time in a deluxe collector\'s edition, here are David Foster Wallace\'s legendary writings on tennis, five tour-de-force pieces written with a competitor\'s insight and a fan\'s obsessive enthusiasm. Wallace brings his dazzling literary magic to the game he loved as he celebrates the other-worldly genius of Roger Federer; offers a wickedly witty disection of Tracy Austin\'s memoir; considers the artistry of Michael Joyce, a supremely disciplined athlete on the threshold of fame; resists the crush of commerce at the U.S. Open; and recalls his own career as a \"near-great\" junior player. Whiting Award-winning writer John Jeremiah Sullivan provides an introduction.', 0, '2016-05-10', '2016-09-01', 1, 3),
(116, 'The Pale King', 'http://books.google.com/books/content?id=9DZAEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The \"breathtakingly brilliant\" novel by the author of Infinite Jest (New York Times) is a deeply compelling and satisfying story, as hilarious and fearless and original as anything Wallace ever wrote. The agents at the IRS Regional Examination Center in Peoria, Illinois, appear ordinary enough to newly arrived trainee David Foster Wallace. But as he immerses himself in a routine so tedious and repetitive that new employees receive boredom-survival training, he learns of the extraordinary variety of personalities drawn to this strange calling. And he has arrived at a moment when forces within the IRS are plotting to eliminate even what little humanity and dignity the work still has. The Pale King remained unfinished at the time of David Foster Wallace\'s death, but it is a deeply compelling and satisfying novel, hilarious and fearless and as original as anything Wallace ever undertook. It grapples directly with ultimate questions -- questions of life\'s meaning and of the value of work and society -- through characters imagined with the interior force and generosity that were Wallace\'s unique gifts. Along the way it suggests a new idea of heroism and commands infinite respect for one of the most daring writers of our time. \"The Pale King is by turns funny, shrewd, suspenseful, piercing, smart, terrifying, and rousing.\" --Laura Miller, Salon', 592, '2011-04-15', '2023-01-18', 1, 1),
(117, 'Oblivion', 'http://books.google.com/books/content?id=yE6lPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'In the stories that make up Oblivion, David Foster Wallace joins the rawest, most naked humanity with the infinite involutions of self-consciousness--a combination that is dazzlingly, uniquely his. These are worlds undreamt-of by any other mind. Only David Foster Wallace could convey a father\'s desperate loneliness by way of his son\'s daydreaming through a teacher\'s homicidal breakdown (\"The Soul Is Not a Smithy\"). Or could explore the deepest and most hilarious aspects of creativity by delineating the office politics surrounding a magazine profile of an artist who produces miniature sculptures in an anatomically inconceivable way (\"The Suffering Channel\"). Or capture the ache of love\'s breakdown in the painfully polite apologies of a man who believes his wife is hallucinating the sound of his snoring (\"Oblivion\"). Each of these stories is a complete world, as fully imagined as most entire novels, at once preposterously surreal and painfully immediate.', 336, '2005-08-30', '2010-04-01', 1, 54),
(118, 'Infinite Jest', 'http://books.google.com/books/content?id=G1mXngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The story of an intelligent but zany dysfunctional family is set in a drug-and-alcohol addicts\' halfway house and a tennis academy and follows such themes as heartbreak, philosophy, and advertising.', 1079, '2006-11-13', '2014-01-06', 1, 54),
(119, 'This Is Water', 'http://books.google.com/books/content?id=RX04AQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In this rare peak into the personal life of the author of numerous bestselling novels, gain an understanding of David Foster Wallace and how he became the man that he was. Only once did David Foster Wallace give a public talk on his views on life, during a commencement address given in 2005 at Kenyon College. The speech is reprinted for the first time in book form in This is Water. How does one keep from going through their comfortable, prosperous adult life unconsciously? How do we get ourselves out of the foreground of our thoughts and achieve compassion? The speech captures Wallace\'s electric intellect as well as his grace in attention to others. After his death, it became a treasured piece of writing reprinted in The Wall Street Journal and the London Times, commented on endlessly in blogs, and emailed from friend to friend. Writing with his one-of-a-kind blend of causal humor, exacting intellect, and practical philosophy, David Foster Wallace probes the challenges of daily living and offers advice that renews us with every reading.', 144, '2009-04-14', '2018-10-05', 1, 1),
(120, 'Signifying Rappers', 'http://books.google.com/books/content?id=2SURAAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Signifying Rappers is a fun and quirky discovery for any fan of David Foster Wallace or Hip-hop. Signifying Rappers is an old-school classic from David Foster Wallace and his friend and room-mate Mark Costello, first published in 1990, long out of print, and previously unavailable outside the USA. A paean to the golden age of Hip-Hop and the first book to consider seriously its position as a vital force in American culture, Signifying Rappers is a must-read for fans of both Wallace and hip-hop. Set against the legendary 1980s scene, it maps the bipolarities of rap and pop, rebellion and acceptance, glitz and gangsterdom, with an energy and exuberance which is as fresh today as when it was written. \'Costello and Wallace\'s pioneering study is a dazzling performance: informative, provocative, funny, brilliantly written . . . great wit, insight and in-your-face energy\' Review of Contemporary Fiction \'Both a cogent explication of rap and a cutting, revealing parody of overinflated, pseudointellectual rap criticism\' Seattle Weekly David Foster Wallace, who died in 2008, was the author of the acclaimed novels Infinite Jest and The Broom of the System. His final novel, The Pale King, was published posthumously in 2011. He is also the author of the short-story collections Oblivion, Brief Interviews with Hideous Men and Girl with Curious Hair. His non-fiction includes several essay collections, including Both Flesh and Not, which was published in 2012, and the the full-length work Everything and More. Mark Costello is the author of two novels, including the National Book Award Finalist Big If. He lives in New York City.', 176, '2013-08-01', '2022-07-24', 1, 14),
(121, 'Fate, Time, and Language', 'http://books.google.com/books/content?id=-ocpAl_Pgm0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In 1962, the philosopher Richard Taylor used six commonly accepted presuppositions to imply that human beings have no control over the future. David Foster Wallace not only took issue with Taylor\'s methods, but also noted a semantic trick at the heart of Taylor\'s argument. Fate, Time, and Language presents Wallace\'s critique of Taylor\'s work. Wallace\'s thesis reveals his great skepticism of abstract thinking made to function as a negation of something more genuine and real. He was especially suspicious of the cerebral aestheticism of modernism and the clever gimmickry of postmodernism, which abandoned \"the very old traditional human verities that have to do with spirituality and emotion and community.\" As Wallace rises to meet the challenge to free will presented by Taylor, we witness the developing perspective of this major novelist and his struggle to establish logical ground for his convictions. This volume, edited by Steven M. Cahn and Maureen Eckert, reproduces Taylor\'s original article and other works on fatalism cited by Wallace. James Ryerson\'s introduction connects Wallace\'s early philosophical work to the themes and explorations of his later fiction, and Jay Garfield supplies a critical biographical epilogue.', 264, '2011-01-01', '2023-03-26', 1, 55),
(122, 'Libra', 'http://books.google.com/books/content?id=7KGu3V4CXvsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the author of White Noise (winner of the National Book Award) and The Silence, an eerily convincing fictional speculation on the events leading up to the assassination of John F. Kennedy In this powerful, unsettling novel, Don DeLillo chronicles Lee Harvey Oswald\'s odyssey from troubled teenager to a man of precarious stability who imagines himself an agent of history. When \"history\" presents itself in the form of two disgruntled CIA operatives who decide that an unsuccessful attempt on the life of the president will galvanize the nation against communism, the scales are irrevocably tipped. A gripping, masterful blend of fact and fiction, alive with meticulously portrayed characters both real and created, Libra is a grave, haunting, and brilliant examination of an event that has become an indelible part of the American psyche.', 480, '1991-05-01', '1996-06-05', 1, 56),
(123, 'The Names', 'http://books.google.com/books/content?id=qiRqI_BlKoYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Set against the backdrop of a lush and exotic Greece, The Names is considered the book which began to drive \"sharply upward the size of his readership\" (Los Angeles Times Book Review). Among the cast of DeLillo\'s bizarre yet fully realized characters in The Names are Kathryn, the narrator\'s estranged wife; their son, the six-year-old novelist; Owen, the scientist; and the neurotic narrator obsessed with his own neuroses. A thriller, a mystery, and still a moving examination of family, loss, and the amorphous and magical potential of language itself, The Names stands with any of DeLillo\'s more recent and highly acclaimed works. \"The Names not only accurately reflects a portion of our contemporary world but, more importantly, creates an original world of its own.\"--Chicago Sun-Times \"DeLillo sifts experience through simultaneous grids of science and poetry, analysis and clear sight, to make a high-wire prose that is voluptuously stark.\"--Village Voice Literary Supplement \"DeLillo verbally examines every state of consciousness from eroticism to tourism, from the idea of America as conceived by the rest of the world to the idea of the rest of the world as conceived by America, from mysticism to fanaticism.\"--New York Times', 352, '2012-04-11', '2013-05-16', 1, 19),
(124, 'Falling Man', 'http://books.google.com/books/content?id=fMreQuqwe5EC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Falling Man begins on September 11, in the smoke and ash of the burning towers. In the days and the years following, we trace the aftermath of this global tremor in the private lives of a few reticulated individuals. Theirs are lives choreographed by loss, by grief and by the enormous force of history. From these intimate portraits, Don DeLillo shifts to an extrapolated vision: he charts the way the events have reconfigured our emotional landscape, our memory and our perception of the world. Falling Man is an unforgettable novel, at once cathartic and beautiful and heartbreaking.', 260, '2011-09-23', '2012-04-22', 1, 57),
(125, 'White Noise', 'http://books.google.com/books/content?id=zpFPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The National Book Award-winning classic from the author of Underworld and Libra, soon to be a major motion picture starring Adam Driver and Greta Gerwig White Noise tells the story of Jack Gladney, his fourth wife, Babette, and four ultra­modern offspring as they navigate the rocky passages of family life to the background babble of brand-name consumerism. When an industrial accident unleashes an \"airborne toxic event,\" a lethal black chemical cloud floats over their lives. The menacing cloud is a more urgent and visible version of the \"white noise\" engulfing the Gladneys—radio transmissions, sirens, microwaves, ultrasonic appliances, and TV murmurings—pulsing with life, yet suggesting something ominous. For more than sixty-five years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,500 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.', 337, '2009-12-29', '2013-02-19', 1, 56),
(126, 'Players', 'http://books.google.com/books/content?id=itcCDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'In this remarkable novel of menace and mystery, Pammy and Lyle Wynant are an attractive, modern couple who seem to have it all. Yet behind their \'ideal\' life is a lingering boredom and quiet desperation: their talk is mostly chatter, their sex life more a matter of obligatory \'satisfaction\' than pleasure. And still they remain untouched, \'players\' indifferent to the violence that surrounds them, and that they have helped to create. Originally published in 1977, Players is a fast-moving yet starkly drawn socially critical drama that demonstrates the razor-sharp prose and thematic density for which Don DeLillo is renowned today.', 224, '2016-05-19', '2021-08-06', 1, 57),
(127, 'Americana', 'http://books.google.com/books/content?id=Lxn6PSnbD30C&printsec=frontcover&img=1&zoom=1&source=gbs_api', '\"DeLillo\'s swift, ironic, and witty cross-country American nightmare doesn\'t have a dull or an unoriginal line.\" —Rolling Stone The first novel by Don DeLillo, author of White Noise (winner of the National Book Award) and The Silence At twenty-eight, David Bell is the American Dream come true. He has fought his way to the top, surviving office purges and scandals to become a top television executive. David\'s world is made up of the images that flicker across America\'s screens, the fantasies that enthrall America\'s imagination. When, at the height of his success, the dream (and the dream-making) become a nightmare, David sets out to rediscover reality. Camera in hand, he journeys across the country in a mad and moving attempt to capture and to impose a pattern on America\'s—and his own—past, present, and future.', 388, '1989-07-06', '2022-10-01', 1, 58),
(128, 'Mao II', 'http://books.google.com/books/content?id=Z3gPqnwnAwAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Winner of the PEN/Faulkner Award From the author of White Noise (winner of the National Book Award) and The Silence, a profound novel about art, terror, masses, and the individual from \"one of the most intelligent, grimly funny voices to comment on life in present-day America\" (The New York Times) Bill Gray, a famous, reclusive novelist, emerges from his isolation when he becomes the key figure in an event staged to force the release of a poet hostage in Beirut. As Bill enters the world of political violence, a nightscape of Semtex explosives and hostages locked in basement rooms, Bill\'s dangerous passage leaves two people stranded: his brilliant, fixated assistant, Scott, and the strange young woman who is Scott\'s lover—and Bill\'s. An extraordinary novel from Don DeLillo about words and images, novelists and terrorists, the mass mind and the arch-individualist, Mao II explores a world in which the novelist\'s power to influence the inner life of a culture now belongs to bomb-makers and gunmen. Mao II is the work of an ingenious writer at the height of his powers.', 256, '1992-05-01', '2022-12-16', 1, 56),
(129, 'Hooking Up', 'http://books.google.com/books/content?id=HGCMNlUM8asC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Only yesterday boys and girls spoke of embracing and kissing (necking) as getting to first base. Second base was deep kissing, plus groping and fondling this and that. Third base was oral sex. Home plate was going all the way. That was yesterday. Here in the Year 2000 we can forget about necking. Today\'s girls and boys have never heard of anything that dainty. Today first base is deep kissing, now known as tonsil hockey, plus groping and fondling this and that. Second base is oral sex. Third base is going all the way. Home plate is being introduced by name. And how rarely our hooked-up boys and girls are introduced by name!-as Tom Wolfe has discovered from a survey of girls\' File-o-Fax diaries, to cite but one of Hooking Up\'s displays of his famed reporting prowess. Wolfe ranges from coast to coast chronicling everything from the sexual manners and mores of teenagers... to fundamental changes in the way human beings now regard themselves thanks to the hot new field of genetics and neuroscience. . . to the inner workings of television\'s magazine-show sting operations. Printed here in its entirety is \"Ambush at Fort Bragg,\" a novella about sting TV in which Wolfe prefigured with eerie accuracy three cases of scandal and betrayal that would soon explode in the press. A second piece of fiction, \"U. R. Here,\" the story of a New York artist who triumphs precisely because of his total lack of talent, gives us a case history preparing us for Wolfe\'s forecast (\"My Three Stooges,\" \"The Invisible Artist\") of radical changes about to sweep the arts in America. As an espresso after so much full-bodied twenty-first-century fare, we get a trip to Memory Mall. Reprinted here for the first time are Wolfe\'s two articles about The New Yorker magazine and its editor, William Shawn, which ignited one of the great firestorms of twentieth-century journalism. Wolfe\'s afterword about it all is in itself a delicious draught of an intoxicating era, the Twistin\' Sixties. In sum, here is Tom Wolfe at the height of his powers as reporter, novelist, sociologist, memoirist, and-to paraphrase what Balzac called himself-the very secretary of American society in the 21st century.', 293, '2010-04-01', '2016-04-09', 1, 59),
(130, 'The Right Stuff', 'http://books.google.com/books/content?id=PTdeDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A wonderful novel and perfect book club choice, The Right Stuff is a wildly vivid and entertaining chronicle of America\'s early space programme. WITH AN INTRODUCTION BY US ASTRONAUT SCOTT KELLY \'What is it,\' asks Tom Wolfe, \'that makes a man willing to sit on top of an enormous Roman Candle...and wait for someone to light the fuse?\' Arrogance? Stupidity? Courage? Or, simply, that quality we call \'the right stuff\'? A monument to the men who battled to beat the Russians into space, The Right Stuff is a voyage into the mythology of the American space programme, and a dizzying dive into the sweat, fear, beauty and danger of being on the white-hot edge of history in the making. \'Tom Wolfe at his very best... Learned, cheeky, risky, touching, tough, compassionate, nostalgic, worshipful, jingoistic...The Right Stuff is superb\' New York Times Book Review', 448, '2018-06-11', '2021-08-12', 1, 30),
(131, 'A Man in Full', 'http://books.google.com/books/content?id=FJ5ZEdy0A2sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Big men. Big money. Big games. Big libidos. Big trouble. A decade ago, The Bonfire of the Vanities defined an era--and established Tom Wolfe as our prime fictional chronicler of America at its most outrageous and alive. This time the setting is Atlanta, Georgia--a racially mixed late-century boomtown full of fresh wealth, avid speculators, and worldly-wise politicians. The protagonist is Charles Croker, once a college football star, now a late-middle-aged Atlanta real-estate entrepreneur turned conglomerate king, whose expansionist ambitions and outsize ego have at last hit up against reality. Charlie has a 28,000-acre quail-shooting plantation, a young and demanding second wife--and a half-empty office tower with a staggering load of debt. When star running back Fareek Fanon--the pride of one of Atlanta\'s grimmest slums--is accused of raping an Atlanta blueblood\'s daughter, the city\'s delicate racial balance is shattered overnight. Networks of illegal Asian immigrants crisscrossing the continent, daily life behind bars, shady real-estate syndicates, cast-off first wives of the corporate elite, the racially charged politics of college sports--Wolfe shows us the disparate worlds of contemporary America with all the verve, wit, and insight that have made him our most phenomenal, most admired contemporary novelist. A Man in Full is a 1998 National Book Award Finalist for Fiction.', 742, '2010-04-01', '2016-06-16', 1, 59),
(132, 'The Painted Word', 'http://books.google.com/books/content?id=8Nbqn-7RKpYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\"America\'s nerviest journalist\" (Newsweek) trains his satirical eye on Modern Art in this \"masterpiece\" (The Washington Post) Wolfe\'s style has never been more dazzling, his wit never more keen. He addresses the scope of Modern Art, from its founding days as Abstract Expressionism through its transformations to Pop, Op, Minimal, and Conceptual. The Painted Word is Tom Wolfe \"at his most clever, amusing, and irreverent\" (San Francisco Chronicle).', 128, '2008-10-14', '2022-06-07', 1, 59),
(133, 'From Bauhaus to Our House', 'http://books.google.com/books/content?id=dHmZw7GdgjEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'After critiquing—and infuriating—the art world with The Painted Word, award-winning author Tom Wolfe shared his less than favorable thoughts about modern architecture in From Bauhaus to Our Haus. In this examination of the strange saga of twentieth century architecture, Wolfe takes such European architects as Ludwig Mies van der Rohe, Le Corbusier, and Bauhaus art school founder Walter Gropius to task for their glass and steel box designed buildings that have influenced—and infected—America’s cities.', 128, '2009-11-24', '2017-05-12', 1, 59),
(134, 'The Kingdom of Speech', 'http://books.google.com/books/content?id=__EsCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The maestro storyteller and reporter provocatively argues that what we think we know about speech and human evolution is wrong. Tom Wolfe, whose legend began in journalism, takes us on an eye-opening journey that is sure to arouse widespread debate. The Kingdom of Speech is a captivating, paradigm-shifting argument that speech -- not evolution -- is responsible for humanity\'s complex societies and achievements. From Alfred Russel Wallace, the Englishman who beat Darwin to the theory of natural selection but later renounced it, and through the controversial work of modern-day anthropologist Daniel Everett, who defies the current wisdom that language is hard-wired in humans, Wolfe examines the solemn, long-faced, laugh-out-loud zig-zags of Darwinism, old and Neo, and finds it irrelevant here in the Kingdom of Speech.', 160, '2016-08-30', '2022-09-24', 1, 1),
(135, 'Radical Chic and Mau-Mauing the Flak Catchers', 'http://books.google.com/books/content?id=z083pPQ5JdsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Radical Chic and Mau-Mauing the Flak Catchers is classic Tom Wolfe, a funny, irreverent, and \"delicious\" (The Wall Street Journal) dissection of class and status by the master of New Journalism The phrase \'radical chic\' was coined by Tom Wolfe in 1970 when Leonard Bernstein gave a party for the Black Panthers at his duplex apartment on Park Avenue. That incongruous scene is re-created here in high fidelity as is another meeting ground between militant minorities and the liberal white establishment. Radical Chic provocatively explores the relationship between Black rage and White guilt. Mau-Mauing the Flak Catchers, set in San Francisco at the Office of Economic Opportunity, details the corruption and dysfunction of the anti-poverty programs run at that time. Wolfe uncovers how much of the program\'s money failed to reach its intended recipients. Instead, hustlers gamed the system, causing the OEO efforts to fail the impoverished communities.', 160, '2010-04-01', '2015-09-03', 1, 59),
(136, 'The Kandy-Kolored Tangerine-Flake Streamline Baby', 'http://books.google.com/books/content?id=GDdeDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Tom Wolfe\'s debut collection of essays - a brilliant, form-bending dive into the future of America as it careened through the 1960s In 1965, Tom Wolfe dropped like a bomb onto the American literary scene with his first book, The Kandy-Kolored Tangerine-Flake Streamline Baby, an incandescent panorama of American counter-culture, its dances, bouffant hairdos, customised cars and rock concerts. Capturing the energy of the age in its portraits of Phil Spector, Cassius Clay, Las Vegas and the Nanny Mafia – as well as asking, why do doormen hate Volkswagens? – Wolfe’s flamboyant essay collection remains one of the great, revolutionary landmarks of modern non-fiction. \'Journalism, it is said, is the first draft of history. Nobody exemplifies the dictum better than Wolfe, the cultural observer and social critic par excellence\' Daily Telegraph', 368, '2018-06-21', '2020-04-02', 1, 30),
(137, 'Novaja žurnalistika i antologija novoj žurnalistiki', 'http://books.google.com/books/content?id=-AYdlWfPidAC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'This is a 1973 anthology of journalism edited by Tom Wolfe and E. W. Johnson. The book is both a manifesto for a new type of journalism by Wolfe, and a collection of examples of New Journalism by American writers, covering a variety of subjects from the frivolous (baton twirling competitions) to the deadly serious (the Vietnam War). The pieces are notable because they do not conform to the standard dispassionate and even-handed model of journalism. Rather they incorporate literary devices usually only found in fictional works.', 436, '1990-01-01', '2019-04-05', 1, 57);
INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(138, 'A L Est D Eden', 'http://books.google.com/books/content?id=rVMmPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Dans cette grande fresque, les personnages représentent le bien et le mal avec leurs rapports complexes. Adam, épris de calme, Charles, son demi-frère, dur et violent, Cathy, la femme d\'Adam, un monstre camouflé derrière sa beauté, ses enfants, les jumeaux Caleb et Aaron. En suivant de génération en génération les familles Trask et Hamilton, l\'auteur nous raconte l\'histoire de son pays, la vallée de la Salinas, en Californie du Nord. Pour cette œuvre généreuse et attachante, John Steinbeck a reçu le prix Nobel de littérature.', 694, '1974-06-01', '2019-12-29', 2, 11),
(139, 'Steinbeck', 'http://books.google.com/books/content?id=jrbmSemfAdYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\"Surely his most interesting, plausibly his most memorable, and . . . arguably his best book\" —The New York Times Book Review For John Steinbeck, who hated the telephone, letter-writing was a preparation for work and a natural way for him to communicate his thoughts on people he liked and hated; on marriage, women, and children; on the condition of the world; and on his progress in learning his craft. Opening with letters written during Steinbeck\'s early years in California, and closing with a 1968 note written in Sag Herbor, New York, Steinbeck: A Life in Letters reveals the inner thoughts and rough character of this American author as nothing else has and as nothing else ever will. \"The reader will discover as much about the making of a writer and the creative process, as he will about Steinbeck. And that\'s a lot.\" —Los Angeles Herald-Examiner \"A rewarding book of enduring interest, this becomes a major part of the Steinbeck canon.\" —The Wall Street Journal', 928, '1989-04-01', '2008-02-07', 1, 56),
(140, 'The Passenger', 'http://books.google.com/books/content?id=wBFjEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'THE TOP TEN BESTSELLER ‘[McCarthy] writes prose as clean as a bullet cutting through the air and constructs tales as compelling as any you will read’ – Telegraph A SUNKEN JET. NINE PASSENGERS. A MISSING BODY. The Passenger is the story of a salvage diver, haunted by loss, afraid of the watery deep, pursued for a conspiracy beyond his understanding, and longing for a death he cannot reconcile with God.', 432, '2022-10-25', '2023-02-21', 1, 57),
(141, 'Suttree', 'http://books.google.com/books/content?id=ZGNzeO8EGpIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the bestselling, Pulitzer Prize–winning author of The Road, here is the story of Cornelius Suttree, who has forsaken a life of privilege with his prominent family to live in a dilapidated houseboat on the Tennessee River near Knoxville. Remaining on the margins of the outcast community there—a brilliantly imagined collection of eccentrics, criminals, and squatters—he rises above the physical and human squalor with detachment, humor, and dignity.', 480, '2010-08-11', '2018-07-14', 1, 19),
(142, 'Stella Maris', 'http://books.google.com/books/content?id=dhFjEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The masterful coda to The Passenger from the Pulitzer Prize–winning author of The Road. GOD. TRUTH. EXISTENCE. Stella Maris is the story of a mathematician, twenty years old, admitted to the hospital with forty thousand dollars in a plastic bag and one request: She does not want to talk about her brother.', 198, '2022-12-06', '2023-03-01', 1, 57),
(143, 'The Road', 'http://books.google.com/books/content?id=VcZtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The post-apocalyptic modern classic with an introduction by novelist John Banville. In a burned-out America, a father and his young son walk under a darkened sky, heading slowly for the coast. They have no idea what, if anything, awaits them there. The landscape is destroyed, nothing moves save the ash on the wind and cruel, lawless men stalk the roadside, lying in wait. Attempting to survive in this brave new world, the young boy and his protector have nothing but a pistol to defend themselves. They must keep walking. Winner of the Pulitzer Prize for Fiction, The Road is an incandescent novel, the story of a remarkable and profoundly moving journey. In this unflinching study of the best and worst of humankind, Cormac McCarthy boldly divines a future without hope, but one in which, miraculously, this young family finds tenderness. An exemplar of post-apocalyptic writing, The Road is a true modern classic, a masterful, moving and increasingly prescient novel. This edition is part of the Picador Collection, a series of the best in contemporary literature, inaugurated in Picador\'s 50th Anniversary year.', 194, '2019-03-07', '2020-09-16', 1, 57),
(144, 'The Crossing', 'http://books.google.com/books/content?id=kxMsXHqeggYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The Crossing forms the second part of Cormac McCarthy\'s critically acclaimed Border Trilogy, a story that began with All the Pretty Horses and concludes with Cities of the Plain. Set on the south-western ranches in the years before the Second World War, Cormac McCarthy\'s The Crossing follows the fortunes of sixteen-year-old Billy Parham and his younger brother Boyd. Fascinated by an elusive wolf that has been marauding his family\'s property, Billy captures the animal - but rather than kill it, sets out impulsively for the mountains of Mexico to return it to where it came from. When Billy comes back to his own home he finds himself and his world irrevocably changed. His loss of innocence has come at a price, and once again the border beckons with its desolate beauty and cruel promise. \'The Crossing is like a river in full spate: beautiful and dangerous\' The Times This edition is part of the Picador Collection, a new list of the best in contemporary literature published in Picador\'s 50th Anniversary year. McCarthy\'s eagerly anticipated new novels, The Passenger and Stella Maris, will be published by Picador in October 2022.', 487, '2010-12-10', '2013-06-24', 1, 57),
(145, 'The Border Trilogy', 'http://books.google.com/books/content?id=shyNEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'From the acclaimed Pulitzer Prize–winner and one of America\'s greatest writers: available together in one volume, the three novels of Cormac McCarthy\'s award-winning and bestselling Border Trilogy constitute a genuine American epic. \"An American classic to stand with the finest literary achievements of the century.\" —San Francisco Chronicle Beginning with All the Pretty Horses and continuing through The Crossing and Cities of the Plain, McCarthy chronicles the lives of two young men coming of age in the Southwest and Mexico, poised on the edge of a world about to change forever. Hauntingly beautiful, filled with sorrow and humor, The Border Trilogy is a masterful elegy for the American frontier. Look for Cormac McCarthy\'s new novel, The Passenger, coming October \'22.', 0, '1999-09-28', '2010-04-25', 1, 3),
(146, 'The Counselor (Movie Tie-in Edition)', 'http://books.google.com/books/content?id=MJfuokdXRNQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'From the bestselling, Pulitzer Prize–winning author of The Road—in this screenplay of the major motion picture, the Counselor makes a risky entrée into the drug trade, on the eve of becoming a married man, and gambles that the consequences won’t catch up to him. Along the gritty terrain of the Texas–Mexico border, a respected and recently engaged lawyer throws his stakes into a cocaine trade worth millions. His hope is that it will be a one-time deal and that, afterward, he can settle into life with his beloved fiancée. But instead, the Counselor finds himself mired in a brutal and dangerous game—one that threatens to destroy everything and everyone he loves. Deft, shocking, and unforgettable, McCarthy is at his finest in this gripping tale about risk, consequence, and the treacherous balance between the two.', 144, '2013-10-15', '2015-10-23', 1, 19),
(147, 'La carretera', 'http://books.google.com/books/content?id=WchdTsZgkgwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Una demoledora fábula sobre el futuro del ser humano, destinada a convertirse en la obra maestra del autor. La carretera, novela galardonada con el premio Pulitzer 2007 y best seller literario del año en Estados Unidos, transcurre en la inmensidad del territorio norteamericano, un paisaje literalmente quemado por lo que parece haber sido un reciente holocausto nuclear. En un mundo apocalíptico donde llueve ceniza, un hombre y un chico cruzan a pie el territorio norteamericano en dirección al sur. El hambre es mucho más que una preocupación diaria: es la medida de todas las cosas, y las bandas de caníbales asolan el país convertido en un yermo donde solo la barbarie ha echado raíces. El amor de un padre por su hijo es, sin embargo, la única luz de una tierra que ha perdido a sus dioses. Quizá el fuego de la civilización no se haya apagado para siempre. La crítica ha dicho... «Javier Marías, preguntado por si él era candidato al Nobel, respondió que si alguien merecía ese galardón era Cormac McCarthy.» Enrique Murillo, El País «Junto a Salinger y Thomas Pynchon, Cormac McCarthy es el otro eremita de la narrativa norteamericana. No se deja ver, apenas fotografiar, nadie saber ahora mismo por dónde pisa. De los tres autores de culto, para mí es el más grande.» Robert Saladrigas, La Vanguardia «Esta novela está llamada a ser una de las grandes obras de la literatura universal.» Diego Gándara, La Razón', 210, '2011-06-17', '2012-07-19', 3, 60),
(148, 'The Stonemason', 'http://books.google.com/books/content?id=-Uw3nwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'From Cormac McCarthy, the acclaimed author of All the Pretty Horses and The Crossing comes a profoundly moving play set in Louisville, Kentucky in the 1970s, among four generations of a family of stonemasons. Ben Telfair admires and respects his grandfather Papaw for following their trade with a religious simplicity. However, Ben\'s father has abandoned hand-hewn stonemasonry for building contract work, and his nephew Soldier is likewise immune to the old man\'s guidance and wisdom. The stonemason\'s trade is dying out, and the family\'s unwillingness to preserve its truths has tragic consequences. The Stonemason reveals afresh the lyrical prose and mastery of character that distinguish Cormac McCarthy\'s fiction.', 144, '2014-06-19', '2020-07-11', 1, 61),
(149, 'La tache', 'http://books.google.com/books/content?id=Jm4hQv66ZNsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'À la veille de la retraite, un professeur de lettres classiques, accusé d\'avoir tenu des propos racistes envers ses étudiants, préfère démissionner plutôt que de livrer le secret qui pourrait l\'innocenter. Tandis que l\'affaire Lewinski défraie les chroniques bien-pensantes, Nathan Zuckerman ouvre le dossier de son voisin Coleman Silk et découvre derrière la vie très rangée de l\'ancien doyen un passé inouï, celui d\'un homme qui s\'est littéralement réinventé, et un présent non moins ravageur : sa liaison avec la sensuelle Faunia, femme de ménage et vachère de trente-quatre ans, prétendument illettrée, et talonnée par un ex-mari vétéran du Vietnam, obsédé par la vengeance et le meurtre. Après Pastorale américaine et J\'ai épousé un communiste, La tache, roman brutal et subtil, complète la trilogie de Philip Roth sur l\'identité de l\'individu dans les grands bouleversements de l\'Amérique de l\'après-guerre, où tout est équivoque et rien n\'est sans mélange, car la tache \"est en chacun, inhérente, à demeure, constitutive, elle qui préexiste à la désobéissance, qui englobe la désobéissance, défie toute explication, toute compréhension. C\'est pourquoi laver cette souillure n\'est qu\'une plaisanterie de barbare et le fantasme de pureté terrifiant.\" Prix Médicis étranger', 321, '2012-04-25', '2022-04-14', 2, 49),
(150, 'Deception', 'http://books.google.com/books/content?id=8yiH_9QbOXsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\'This swift, elegant, disturbing novel...stands at the extreme of contemporary fiction\' New York Times Book Review He is a middle-aged American writer called Philip; she is an articulate, well-educated Englishwoman trapped in a loveless and humiliating marriage. In Philip\'s London studio, this play of voices - sharp, tender and inquiring - reveals both their past lives with startling clarity. Deception is fiendishly clever, as it dances with the conventions of the novel, and redefines the boundaries between fiction and reality.', 208, '2010-12-23', '2023-02-26', 1, 30),
(151, 'The Great American Novel', 'http://books.google.com/books/content?id=-6tXMcdVoiMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Philip Roth\'s richly imagined satiric narrative, The Great American Novel, turns baseball\'s status as national pastime and myth into an unfettered farce Featuring heroism and perfidy, lively wordplay and a cast of characters that includes the House Un-American Activities Committee. \"Roth is better than he\'s ever been before.... The prose is electric.\" (The Atlantic) Gil Gamesh is the only pitcher who ever tried to kill the umpire, and John Baal, The Babe Ruth of the Big House, never hit a home run sober. But you\'ve never heard of them -- or of the Ruppert Mundys, the only homeless big-league ball team in American history -- because of the communist plot and the capitalist scandal that expunged the entire Patriot League from baseball memory.', 496, '2013-07-02', '2022-02-14', 1, 59),
(152, 'When She Was Good', 'http://books.google.com/books/content?id=6JHtNs5b8KwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'When she was still a child, Lucy Nelson had her irresponsible, alcoholic father thrown in jail. Since then, Lucy has become a furious adolescent - raging against middle-class life and provincial American piety - intent on reforming the men around her: especially her incompetent mama\'s boy of a husband, Roy. As time rolls on, Lucy struggles to free herself of the terrible disappointment engendered by her father, and is forever yearning for the man he could never be. It is with scalpel-like precision that Roth depicts the rage, the hatred and the ferocity of feeling that soon takes hold of Lucy\'s life.', 352, '2010-12-23', '2021-09-20', 1, 30),
(153, 'Everyman', 'http://books.google.com/books/content?id=lsW1IBwHYPEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Winner of the PEN/Faulkner Award for Fiction Everyman is a candidly intimate yet universal story of loss, regret and stoicism. The novel takes its title from a classic of early English drama, whose theme is the summoning of the living to death. The fate of Roth\'s everyman is traced from his first shocking confrontation with death on the idyllic beaches of his childhood summers, through the family trials and professional achievements of his vigorous adulthood, and into his old age when he is stalked with physical woes. The terrain of this powerful novel is the human body. Its subject is the common experience that terrifies us all.', 192, '2010-12-23', '2021-06-18', 1, 30),
(154, 'The Facts', 'http://books.google.com/books/content?id=RrXJ0AXMIskC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The Facts is a rigorously unfictionalized narrative that portrays Philip Roth unadorned--as young artist, as student, as son, as lover, as husband, as American, as Jew--and candidly examines how close the novels have been to, and how far from, autobiography. From his childhood in Newark, New Jersey, to his explosive success as a novelist, to his critics in the Jewish community who attacked his writing, and the divorce and death of his first wife, The Facts is a playful and harrowingly unconventional autobiography, bookended by letters written by his fictional alter-ego Nathan Zuckerman. \"The Facts is a lively and serious version of a novelist\'s life.\" —New York Review of Books', 211, '2013-07-02', '2018-10-01', 1, 59),
(155, 'The Plot Against America', 'http://books.google.com/books/content?id=hXWPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Philip Roth\'s bestselling alternate history novel--the chilling story of what happens to one family when America elects a charismatic, isolationist president--is soon to be an HBO limited series. In an extraordinary feat of narrative invention, Philip Roth imagines an alternate history where Franklin D. Roosevelt loses the 1940 presidential election to heroic aviator and rabid isolationist Charles A. Lindbergh. Shortly thereafter, Lindbergh negotiates a cordial \"understanding\" with Adolf Hitler, while the new government embarks on a program of folksy anti-Semitism. For one boy growing up in Newark, Lindbergh\'s election is the first in a series of ruptures that threaten to destroy his small, safe corner of America-and with it, his mother, his father, and his older brother.', 0, '2005-09-27', '2005-12-06', 1, 3),
(156, 'The Ghost Writer', 'http://books.google.com/books/content?id=5d6fhaMhWSMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The novel that first introduced the Pulitzer Prize–winnning author’s most acclaimed character, Nathan Zuckerman, a budding writer infatuated with the Great Books, who meets a haunting young woman at the secluded New England farmhouse of his idol. \"Further evidence that Roth can do practically anything with fiction. His narrative power—the ability to delight the reader simultaneously with the telling and the tale—is superb.\" —The Washington Post At Lonoff\'s, Zuckerman meets Amy Bellette, a haunting young woman of indeterminate foreign background who turns out to be a former student of Lonoff\'s and who may also have been his mistress. Zuckerman, with his active, youthful imagination, wonders if she could be the paradigmatic victim of Nazi persecution. If she were, it might change his life. The first volume of the trilogy and epilogue Zuckerman Bound, The Ghost Writer is about the tensions between literature and life, artistic truthfulness and conventional decency—and about those implacable practitioners who live with the consequences of sacrificing one for the other.', 196, '1979-01-01', '1989-07-20', 1, 19),
(157, 'Sabbath\'s Theater', 'http://books.google.com/books/content?id=RqqYrLmrcbYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\'A work of near heroic vitality and cunning\' Sunday Telegraph At sixty-four Mickey Sabbath is still defiantly antagonistic and exceedingly libidinous; sex is an obsession and a principle, an instrument of perpetual misrule in his daily existence. But after the death of his long-time mistress - an erotic free spirit whose great taste for the impermissible matches his own - Sabbath embarks on a turbulent journey into his past. Bereft and grieving, tormented by the ghosts of those who loved and hated him, he contrives a succession of farcical disasters that take him to the brink of madness and extinction... Winner of the National Book Award for Fiction', 496, '2010-12-23', '2018-02-23', 1, 30),
(158, 'The Dying Animal', 'http://books.google.com/books/content?id=R54HdJvfO1oC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'David Kepesh is white-haired and over sixty, an eminent TV culture critic and star lecturer at a New York college, when he meets Consuela Castillo, a decorous, well-mannered student of twenty-four, the daughter of wealthy Cuban exiles, who promptly puts his life into erotic disorder. Since the sexual revolution of the 1960s, when he left his wife and child, Kepesh has experimented with living what he calls an \"emancipated manhood,\" beyond the reach of family or a mate. Over the years he has refined that exuberant decade of protest and license into an orderly life in which he is both unimpeded in the world of eros and studiously devoted to his aesthetic pursuits. But the youth and beauty of Consuela, \"a masterpiece of volupté\" undo him completely, and a maddening sexual possessiveness transports him to the depths of deforming jealousy. The carefree erotic adventure evolves, over eight years, into a story of grim loss. What is astonishing is how much of America’s post-sixties sexual landscape is encompassed in THE DYING ANIMAL. Once again, with unmatched facility, Philip Roth entangles the fate of his characters with the social forces that shape our daily lives. And there is no character who can tell us more about the way we live with desire now than David Kepesh, whose previous incarnations as a sexual being were chronicled by Roth in THE BREAST and THE PROFESSOR OF DESIRE. A work of passionate immediacy as well as a striking exploration of attachment and freedom, THE DYING ANIMAL is intellectually bold, forcefully candid, wholly of our time, and utterly without precedent--a story of sexual discovery told about himself by a man of seventy, a story about the power of eros and the fact of death.', 176, '2001-05-18', '2017-05-20', 1, 7),
(159, 'Letting Go', 'http://books.google.com/books/content?id=1Bp4zGkEDRcC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Letting Go is Roth\'s first full-length novel, published just after Goodbye, Columbus, when he was twenty-nine. Set in 1950s Chicago, New York, and Iowa city, Letting Go presents as brilliant a fictional portrait as we have of a mid-century America defined by social and ethical constraints and by moral compulsions conspicuously different from those of today. Newly discharged from the Korean War army, reeling from his mother\'s recent death, freed from old attachments and hungrily seeking others, Gabe Wallach is drawn to Paul Herz, a fellow graduate student in literature, and to Libby, Paul\'s moody, intense wife. Gabe\'s desire to be connected to the ordered \"world of feeling\" that he finds in books is first tested vicariously by the anarchy of the Herzes\' struggles with responsible adulthood and then by his own eager love affairs. Driven by the desire to live seriously and act generously, Gabe meets an impassable test in the person of Martha Reganhart, a spirited, outspoken, divorced mother of two, a formidable woman who, according to critic James Atlas, is masterfully portrayed with \"depth and resonance.\" The complex liason between Gabe and Martha and Gabe\'s moral enthusiasm for the trials of others are at the heart of this tragically comic work.', 640, '2011-04-20', '2018-05-09', 1, 19),
(160, 'Philip Roth: Why Write? (LOA #300)', 'http://books.google.com/books/content?id=GEyQEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'America’s most celebrated writer returns with a definitive edition of his essential statements on literature, his controversial novels, and the writing life, including including six pieces published here for the first time and many others newly revised. Throughout a unparalleled literary career that includes two National Book Awards (Goodbye, Columbus, 1959 and Sabbath’s Theater, 1995), the Pulitzer Prize in fiction (American Pastoral, 1997), the National Book Critics Circle Award (The Counterlife, 1986), and the National Humanities Medal (awarded by President Obama in 2011), among many other honors, Philip Roth has produced an extraordinary body of nonfiction writing on a wide range of topics: his own work and that of the writers he admires, the creative process, and the state of American culture. This work is collected for the first time in Why Write?, the tenth and final volume in the Library of America’s definitive Philip Roth edition. Here is Roth’s selection of the indispensable core of Reading Myself and Others, the entirety of the 2001 book Shop Talk, and “Explanations,” a collection of fourteen later pieces brought together here for the first time, six never before published. Among the essays gathered are “My Uchronia,” an account of the genesis of The Plot Against America, a novel grounded in the insight that “all the assurances are provisional, even here in a two-hundred-year-old democracy”; “Errata,” the unabridged version of the “Open Letter to Wikipedia” published on The New Yorker’s website in 2012 to counter the online encyclopedia’s egregious errors about his life and work; and “The Ruthless Intimacy of Fiction,” a speech delivered on the occasion of his eightieth birthday that celebrates the “refractory way of living” of Sabbath’s Theater’s Mickey Sabbath. Also included are two lengthy interviews given after Roth’s retirement, which take stock of a lifetime of work. LIBRARY OF AMERICA is an independent nonprofit cultural organization founded in 1979 to preserve our nation’s literary heritage by publishing, and keeping permanently in print, America’s best and most significant writing. The Library of America series includes more than 300 volumes to date, authoritative editions that average 1,000 pages in length, feature cloth covers, sewn bindings, and ribbon markers, and are printed on premium acid-free paper that will last for centuries.', 0, '2017-09-12', '2021-08-19', 1, 3),
(161, 'Nemesis', 'http://books.google.com/books/content?id=H434nQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'In a book set in 1944 Newark, devoted playground director Bucky Cantor, sidelined from the war due to his poor eyesight, watches in horror as the city\'s polio epidemic begins to ravage the children on his playground. By the best-selling author of The Humbling and The Plot Against America. 100,000 first printing.', 280, '2010-01-01', '2023-03-26', 1, 62),
(162, 'Indignation', 'http://books.google.com/books/content?id=o6sOAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'What impact can American history have on the life of the vulnerable individual? It is 1951 in America, the second year of the Korean War. A studious, law-abiding, intense youngster from Newark, New Jersey, Marcus Messner, is beginning his sophomore yearo', 260, '2008-01-01', '2023-03-26', 1, 48),
(163, 'Goodbye, Columbus', 'http://books.google.com/books/content?id=N4bN1AcqPUMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NATIONAL BOOK AWARD WINNER • From the Pulitzer Prize–winnning writer of explosive wit, merciless insight, and a fierce compassion comes \"a masterpiece\" (Newsweek) that illuminates the subterranean conflicts between parents and children and friends and neighbors in the American Jewish diaspora. Roth\'s award-winning first book instantly established its author\'s reputation. Goodbye, Columbus is the story of Neil Klugman and pretty, spirited Brenda Patimkin, he of poor Newark, she of suburban Short Hills, who meet one summer break and dive into an affair that is as much about social class and suspicion as it is about love. The novella is accompanied by five short stories that range in tone from the iconoclastic to the astonishingly tender.', 324, '1987-01-01', '1999-11-12', 1, 19),
(164, 'American Pastoral', 'http://books.google.com/books/content?id=7PbWX0gCQnIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'American Pastoral is the story of a fortunate American\'s rise and fall—of a strong, confident master of social equilibrium overwhelmed by the forces of social disorder. Seymour \"Swede\" Levov—a legendary high school athlete, a devoted family man, a hard worker, the prosperous inheritor of his father\'s Newark glove factory—comes of age in thriving, triumphant postwar America. But everything he loves is lost when the country begins to run amok in the turbulent 1960s. Not even the most private, well-intentioned citizen, it seems, gets to sidestep the sweep of history. With vigorous realism, Roth takes us back to the conflicts and violent transitions of the 1960s. This is a book about loving—and hating—America. It\'s a book about wanting to belong—and refusing to belong—to America. It sets the desire for an American pastoral—a respectable life of space, calm, order, optimism, and achievement—against the indigenous American Berserk.', 432, '2013-09-03', '2016-02-21', 1, 7),
(165, 'The Human Stain', 'http://books.google.com/books/content?id=fzDQ719h79gC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NATIONAL BESTSELLER • WINNER OF THE PEN/FAULKNER AWARD • The Pulitzer Prize–winning author of American Pastoral delivers “a master novelist\'s haunting parable about our troubled modern moment\" (The Wall Street Journal). It is 1998, the year in which America is whipped into a frenzy of prurience by the impeachment of a president, and in a small New England town, an aging classics professor, Coleman Silk, is forced to retire when his colleagues decree that he is a racist. The charge is a lie, but the real truth about Silk would have astonished even his most virulent accuser. Coleman Silk has a secret, one which has been kept for fifty years from his wife, his four children, his colleagues, and his friends, including the writer Nathan Zuckerman. It is Zuckerman who stumbles upon Silk\'s secret and sets out to reconstruct the unknown biography of this eminent, upright man, esteemed as an educator for nearly all his life, and to understand how this ingeniously contrived life came unraveled. And to understand also how Silk\'s astonishing private history is, in the words of The Wall Street Journal, \"magnificently\" interwoven with \"the larger public history of modern America.\"', 388, '2001-05-08', '2010-05-22', 1, 19),
(166, 'The Unabridged Journals of Sylvia Plath', 'http://books.google.com/books/content?id=UJ628vQBsYAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A major literary event--the complete, uncensored journals of Sylvia Plath, published in their entirety for the first time. Sylvia Plath\'s journals were originally published in 1982 in a heavily abridged version authorized by Plath\'s husband, Ted Hughes. This new edition is an exact and complete transcription of the diaries Plath kept during the last twelve years of her life. Sixty percent of the book is material that has never before been made public, more fully revealing the intensity of the poet\'s personal and literary struggles, and providing fresh insight into both her frequent desperation and the bravery with which she faced down her demons. The Unabridged Journals of Sylvia Plath is essential reading for all who have been moved and fascinated by Plath\'s life and work.', 768, '2007-12-18', '2020-08-18', 1, 45),
(167, 'The Complete Stories', 'http://books.google.com/books/content?id=ATl4i59stCMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The complete stories of one of the greatest writers of the twentieth century, the author of The Metamorphosis and The Trial. “An important book, valuable in itself and absolutely fascinating. The stories are dreamlike, allegorical, symbolic, parabolic, grotesque, ritualistic, nasty, lucent, extremely personal, ghoulishly detached, exquisitely comic, numinous, and prophetic.” —The New York Times The Complete Stories brings together all of Kafka’s stories, from the classic tales such as “The Metamorphosis,” “In the Penal Colony,” and “A Hunger Artist” to shorter pieces and fragments that Max Brod, Kafka’s literary executor, released after Kafka’s death. With the exception of his three novels, the whole of Kafka’s narrative work is included in this volume. “[Kafka] spoke for millions in their new unease; a century after his birth, he seems the last holy writer, and the supreme fabulist of modern man’s cosmic predicament.” —from the Foreword by John Updike', 516, '1995-11-14', '2007-08-31', 1, 63),
(168, 'Le premier homme', 'http://books.google.com/books/content?id=uFZfQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Le manuscrit inachevé du roman auquel travaillait Camus pendant les dernières années de sa vie. Dans sa rédaction initiale, il a un caractère autobiographique qui aurait disparu dans sa version finale. En annexe, un carnet intitulé \"Premier homme : notes et plans\" et un échange de lettres avec Louis Germain.', 380, '2000-01-01', '2023-03-26', 2, 49),
(169, 'L\'étranger', 'http://books.google.com/books/content?id=uRfuAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The Stranger, unabridged.', 202, '1955-01-01', '2023-03-26', 1, 64),
(170, 'The Poetry of Pablo Neruda', 'http://books.google.com/books/content?id=_DQoCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The most comprehensive English-language collection of work ever by \"the greatest poet of the twentieth century-in any language\" (Gabriel García Márquez) In his work a continent awakens to consciousness,\" wrote the Swedish Academy in awarding the Nobel Prize to Pablo Neruda, author of more than thirty-five books of poetry and one of Latin America\'s most revered writers and political figures-a loyal member of the Communist party, a lifelong diplomat and onetime senator, a man lionized during his lifetime as \"the people\'s poet.\" Born Neftali Basoalto, Neruda adopted his pen name in fear of his family\'s disapproval, and yet by the age of twenty-five he was already famous for the book Twenty Love Poems and a Song of Despair, which remains his most beloved. During the next fifty years, a seemingly boundless metaphorical language linked his romantic fantasies and the fierce moral and political compass-exemplified in books such as Canto General-that made him an adamant champion of the dignity of ordinary men and women. Edited and with an introduction by Ilan Stavans, this is the most comprehensive single-volume collection of this prolific poet\'s work in English. Here the finest translations of nearly six hundred poems by Neruda are collected and join specially commissioned new translations that attest to Neruda\'s still-resounding presence in American letters.', 1040, '2015-09-01', '2020-03-23', 1, 59),
(171, 'Vingt poèmes d\'amour et une chanson désespérée', 'http://books.google.com/books/content?id=miadPQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Vingt poèmes d\'amour et une chanson désespérée suivi par Les vers du capitaine forme le livre d\'une célébration nouvelle : l\'amour y est toujours surprise, risque, désir, submersion, insurrection perpétuelle. L\'homme y est autre, la femme y est autre, l\'un et l\'autre non pas meilleurs, mais en alerte, sur le qui-vive et, par là, plus vivants. Les Vingt poèmes d\'amour ont connu, dans tout l\'univers hispanique, une extraordinaire fortune, plus d\'un million d\'exemplaires diffusés. Les vers du capitaine, qui semblent l\'œuvre d\'un forban inspiré, ont d\'abord été publiés anonymement - pour préserver le secret de la relation amoureuse, dira Neruda - avant, eux aussi, de chanter dans toutes les mémoires du Chili, d\'Amérique et d\'Espagne. Généreuse, sensuelle, éblouie, passionnée est la poésie de Pablo Neruda. Militante également, si l\'on accorde à ce terme son poids de révolte, de fraternité, d\'utopies partagées. La parole de Neruda, c\'est d\'abord un élan, une houle de mots qui font sens et font chant. Cela touche au cœur et au corps avant de monter à la tête. L\'écriture ici, même quand elle se nourrit des tourments du monde, est une fête, un plaisir, une jouissance.', 332, '1998-01-01', '2001-05-01', 2, 65),
(172, 'J\'avoue que j\'ai vécu', 'https://via.placeholder.com/200x300', '\"Peut-être n\'ai-je pas vécu en mon propre corps : peut-être ai-je vécu la vie des autres\", écrit Pablo Neruda pour présenter ces souvenirs qui s\'achèvent quelques jours avant sa mort par un hommage posthume à son ami Salvador Allende. Les portraits d\'hommes célèbres - Aragon, Breton, Eluard, García Lorca, Picasso - côtoient les pages admirables consacrées à l\'homme de la rue, au paysan anonyme, à la femme d\'une nuit. À travers eux se dessine la personnalité de Neruda, homme passionné, attentif, curieux de tout et de tous, le poète qui se révèle être aussi un merveilleux conteur.', 538, '1987-01-01', '2020-04-28', 2, 65),
(173, 'The essential Neruda', 'http://books.google.com/books/content?id=5Ps5q4OlpSQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Recipient of the Nobel Prize for Literature and the International Peace Prize \"The call for a more accessible collection of Neruda\'s important poems is answered with City Lights\' The Essential Neruda, a 200-page edition that offers 50 of Neruda\'s key poems.\"-- The Bloomsbury Review This bilingual collection of Neruda\'s most essential poems is indispensable. Selected by a team of poets and prominent Neruda scholars in both Chile and the U.S., this is a definitive selection that draws from the entire breadth and width of Neruda\'s various styles and themes. An impressive group of translators that includes Alistair Reid, Stephen Mitchell, Robert Hass, Stephen Kessler and Jack Hirschman, have come together to revisit or completely retranslate the poems; and a handful of previously untranslated works are included as well. This selection sets the standard for a general, high--quality introduction to Neruda\'s complete oeuvre. \" ...The Essential Neruda will prove to be, for most readers, the best introduction to Neruda available in English. In fact, I can think of few other books that have given me so much delight so easily. At only 234 pages (bilingual), it somehow manages to convey the fullness of Neruda\'s poetic arc: Reading it is like reading the autobiography of a poetic sensibility (granted, the abridged version).\"--The Austin Chronicle \"This book is a must-have for any reader interested in a definitive sampling of the most essential poems by one whom many consider one of the best poets of the 20th century.\"--Mike Nobles, Tulsa World \"What better way to celebrate the hundred years of Neruda\'s glorious residence on our earth than this selection of crucial works-- in both languages -- by one of the greatest poets of all time. A splendid way to begin a love affair with our Pablo or, having already succumbed to his infinite charms, revisit him passionately again and again and yet again.\"--Ariel Dorfman, author of Konfidenz and The Nanny and the Iceberg \"If the notion had struck Pablo Neruda, I am quite sure that like Fernando Pessoa and Antonio Machado he would have given birth to what the former called heteronyms. Like Pessoa especially, Neruda can be several poets according to where he is and when and what his mood might be. It is quite fitting therefore that his work in this anthology be shared by various translators, for, ideally, a translator is but another heteronym speaking in a different tongue and at a different time. Neruda is well served here by these other voices of his.\"--Gregory Rabassa \"The editors and translators know how to extract gold from a lifetime of prolific writing. If you want a handy Neruda companion and don\'t know where to begin, this is it.\"--The Bloomsbury Review', 228, '2004-04-01', '2007-07-31', 1, 66),
(174, 'Love Poems', 'http://books.google.com/books/content?id=OXuunQkvaLQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A lavishly designed, bilingual gift edition of the Nobel Prize-winning poet\'s romantic works is comprised of pieces mostly written on the island of Capri, where he found inspiration in its idyllic landscapes and his relationship with Matilde Urrutia. Original.', 100, '2008-01-01', '2023-03-26', 1, 67),
(175, 'Memoirs', 'http://books.google.com/books/content?id=ekOZnQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'The classic and deeply moving memoir by Pablo Neruda, the most widely read political poet of our time and winner of the Nobel Prize The south of Chile was a frontier wilderness when Pablo Neruda was born in 1904. In these memoirs he retraces his bohemian student years in Santiago; his sojourns as Chilean consul in Burma, Ceylon, and Java, in Spain during the civil war, and in Mexico; and his service as a Chilean senator. Neruda, a Communist, was driven from his senate seat in 1948, and a warrant was issued for his arrest. After a year in hiding, he escaped on horseback over the Andes and then to Europe; his travels took him to Russia, Eastern Europe, and China before he was finally able to return home in 1952. The final section of the memoirs was written after the coup in 1972 that overthrew Neruda\'s friend Salvador Allende. Many of the century\'s most important literary and artistic figures were Neruda\'s friends, and figure in his memoirs--Garcia Lorca, Aragon, Picasso, and Rivera, among them--and also such political leaders as Gandhi, Nehru, Mao, Castro, and Che Guevara. In his uniquely expressive prose, Neruda not only explains his views on poetry and describes the circumstances that inspired many of his poems, but he creates a revealing record of his life as a poet, a patriot, and one of the twentieth century\'s true men of conscience.', 384, '2001-01-15', '2022-01-25', 1, 59),
(176, 'The Captain\'s Verses', 'http://books.google.com/books/content?id=bEmdBIylmzQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Poetry.', 162, '2009-01-29', '2017-12-06', 1, 67),
(177, 'Selected Poems of Pablo Neruda', 'http://books.google.com/books/content?id=VlZxkgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'This book contains Neruda\'s resonant, exploratory, intensely individualistic verse, rooted in the physical landscape and people of Chile. Here we find sensuous songs of love, tender odes to the sea, melancholy lyrics of heartache, fiery political statements and a frank celebration of sex. This is an enticing, distinctive and celebrated collection of poetry from the greatest twentieth century Latin American poet.', 0, '2012-01-01', '2023-03-26', 1, 68),
(178, 'Libro de Las Preguntas', 'http://books.google.com/books/content?id=0jKc9UsVV1AC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Pablo Neruda is one of the world\'s most popular poets, and The Book of Questions is Copper Canyon\'s all-time best-seller. This updated bilingual edition is entirely re-designed and features a new cover, new interior, and an introduction by translator. In The Book of Questions, Neruda refuses to be corralled by the rational mind. Composed of 316 unanswerable questions, these poems integrate the wonder of a child with the experiences of an adult. By turns Orphic, comic, surreal, and poignant, Neruda\'s questions lead the reader beyond reason into realms of intuition and pure imagination. Tell me, is the rose naked or is that her only dress? Why do trees conceal the splendor of their roots? Is there anything in the world sadder than a train standing in the rain? When Neruda died in 1973, The Book of Questions was one of eight unpublished poetry manuscripts that lay on his desk. In it, Neruda achieves a deeper vulnerability and vision than in his earlier work-and this unique book is a testament to everything that made Neruda an artist. \"Neruda\'s questions evoke pictures that make sense on a visual level before the reader can grasp them on a literal one. The effect is mildly dazzling [and] O\'Daly\'s translations achieve a tone that is both meditative and spontaneous.\" -Publishers Weekly Pablo Neruda, born in southern Chile, led a life charged with poetic and political activity. He was the recipient of the Nobel Prize in Literature, the International Peace Prize, and served as Chile\'s ambassador to several countries, including Burma, France, and Argentina. He died in 1973. II. Tell me, is the rose naked or is that her only dress? Why do trees conceal the splendor of their roots? Who hears the regrets of the thieving automobile? Is there anything in the world sadder than a train standing in the rain? XIV. And what did the rubies say standing before the juice of pomegranates? Why doesn\'t Thursday talk itself into coming after Friday? Who shouted with glee when the color blue was born? Why doe', 95, '2001-01-01', '2023-03-26', 3, 69),
(179, 'Residence on Earth', 'http://books.google.com/books/content?id=Tl6AC7O4vTIC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'New Directions celebrates the Pablo Neruda Centennial.', 388, '2004-01-01', '2023-03-26', 1, 67),
(180, 'The Complete Works of William Shakespeare', 'http://books.google.com/books/content?id=D02LWkkBxn4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Gathers all of Shakespeare\'s plays, sonnets, and poems.', 1290, '1996-01-01', '2012-08-08', 1, 70),
(181, 'Frankenstein ou le Prométhée moderne', 'http://books.google.com/books/content?id=m70GQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Edition comment e d\'un classique de la litt rature de genre, par J. P. Naugrette, qui a r alis pour la Pochoth que l\' dition du volume Poe.', 345, '2009-01-01', '2023-03-26', 2, 71),
(182, 'The New Annotated H. P. Lovecraft', 'http://books.google.com/books/content?id=9rF-BAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Finalist for the HWA’s Bram Stoker Award for Best Anthology Named one of the Best Books of the Year by Slate and the San Francisco Chronicle From across strange aeons comes the long-awaited annotated edition of “the twentieth century’s greatest practitioner of the classic horror tale” (Stephen King). \"With an increasing distance from the twentieth century…the New England poet, author, essayist, and stunningly profuse epistolary Howard Phillips Lovecraft is beginning to emerge as one of that tumultuous period’s most critically fascinating and yet enigmatic figures,\" writes Alan Moore in his introduction to The New Annotated H. P. Lovecraft. Despite this nearly unprecedented posthumous trajectory, at the time of his death at the age of forty-six, Lovecraft\'s work had appeared only in dime-store magazines, ignored by the public and maligned by critics. Now well over a century after his birth, Lovecraft is increasingly being recognized as the foundation for American horror and science fiction, the source of \"incalculable influence on succeeding generations of writers of horror fiction\" (Joyce Carol Oates). In this volume, Leslie S. Klinger reanimates Lovecraft with clarity and historical insight, charting the rise of the erstwhile pulp writer, whose rediscovery and reclamation into the literary canon can be compared only to that of Poe or Melville. Weaving together a broad base of existing scholarship with his own original insights, Klinger appends Lovecraft\'s uncanny oeuvre and Kafkaesque life story in a way that provides context and unlocks many of the secrets of his often cryptic body of work. Over the course of his career, Lovecraft—\"the Copernicus of the horror story\" (Fritz Leiber)—made a marked departure from the gothic style of his predecessors that focused mostly on ghosts, ghouls, and witches, instead crafting a vast mythos in which humanity is but a blissfully unaware speck in a cosmos shared by vast and ancient alien beings. One of the progenitors of \"weird fiction,\" Lovecraft wrote stories suggesting that we share not just our reality but our planet, and even a common ancestry, with unspeakable, godlike creatures just one accidental revelation away from emerging from their epoch of hibernation and extinguishing both our individual sanity and entire civilization. Following his best-selling The New Annotated Sherlock Holmes, Leslie S. Klinger collects here twenty-two of Lovecraft\'s best, most chilling \"Arkham\" tales, including \"The Call of Cthulhu,\" At the Mountains of Madness, \"The Whisperer in Darkness,\" \"The Shadow Over Innsmouth,\" \"The Colour Out of Space,\" and others. With nearly 300 illustrations, including full-color reproductions of the original artwork and covers from Weird Tales and Astounding Stories, and more than 1,000 annotations, this volume illuminates every dimension of H. P. Lovecraft and stirs the Great Old Ones in their millennia of sleep.', 928, '2014-10-13', '2017-07-09', 1, 72),
(183, 'Necronomicon', 'http://books.google.com/books/content?id=EaD1kIfiTfoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'WIKIPEDIA says: \'H.P. Lovecraft\'s reputation has grown tremendously over the decades, and he is now commonly regarded as one of the most important horror writers of the 20th century, exerting an influence that is widespread, though often indirect.\' His tales of the tentacled Elder God Cthulhu and his pantheon of alien deities were initially written for the pulp magazines of the 1920s and \'30s. These astonishing tales blend elements of horror, science fiction and cosmic terror that are as powerful today as they were when they were first published. THE NECRONOMICON collects together the very best of Lovecraft\'s tales of terror, including the complete Cthulhu Mythos cycle, just the way they were originally published. It will introduce a whole new generation of readers to Lovecraft\'s fiction, as well as being a must-buy for those fans who want all his work in a single, definitive volume.', 896, '2008-09-18', '2009-06-17', 1, 1),
(184, 'The Complete Fiction of H. P. Lovecraft', 'http://books.google.com/books/content?id=s7GTDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This full collection of tales by the master of eldritch, H. P. Lovecraft himself, will take you through monsters, cosmic horrors, and ancient evil.', 1130, '2016-07-01', '2017-02-28', 1, 73);
INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(185, 'The Complete Tales of H.P. Lovecraft', 'http://books.google.com/books/content?id=_XASEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A must-have classic that every Lovecraft fan and collector will love. From the sumptuously designed Timeless Classics series, The Complete Tales of H.P. Lovecraft collects the author\'s novel, four novellas, and fifty-three short stories. Written between the years 1917 and 1935, this collection features Lovecraft\'s trademark fantastical creatures and supernatural thrills, as well as many horrific and cautionary science-fiction themes that have influenced some of today\'s writers and filmmakers, including Stephen King, Alan Moore, F. Paul Wilson, Guillermo del Toro, and Neil Gaiman. Included in this volume are The Case of Charles Dexter Ward, \"The Call of Cthulhu,\" \"The Dream-Quest of Unknown Kadath,\" \"At the Mountains of Madness,\" \"The Shadow Over Innsmouth,\" \"The Colour Out of Space,\" \"The Dunwich Horror,\" and many more hair-raising tales. The Timeless Classics series from Rock Point brings together the works of classic authors from around the world. Complete and unabridged, these elegantly designed gift editions feature luxe, patterned endpapers, ribbon markers, and foil and deboss details on vibrantly colored cases. Celebrate these beloved works of literature as true standouts in your personal library collection. Other titles in the series include: The Complete Grimm’s Fairy Tales, The Complete Novels of Jane Austen, The Complete Sherlock Holmes, The Complete Tales & Poems of Edgar Allan Poe, and The Complete Works of William Shakespeare.', 1121, '2019-10-08', '2020-05-01', 1, 74),
(186, 'Normal People', 'http://books.google.com/books/content?id=vrpPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NOW AN EMMY-NOMINATED HULU ORIGINAL SERIES • NEW YORK TIMES BESTSELLER • “A stunning novel about the transformative power of relationships” (People) from the author of Conversations with Friends, “a master of the literary page-turner” (J. Courtney Sullivan). ONE OF THE TEN BEST NOVELS OF THE DECADE—Entertainment Weekly TEN BEST BOOKS OF THE YEAR—People, Slate, The New York Public Library, Harvard Crimson AND BEST BOOKS OF THE YEAR—The New York Times, The New York Times Book Review, O: The Oprah Magazine, Time, NPR, The Washington Post, Vogue, Esquire, Glamour, Elle, Marie Claire, Vox, The Paris Review, Good Housekeeping, Town & Country Connell and Marianne grew up in the same small town, but the similarities end there. At school, Connell is popular and well liked, while Marianne is a loner. But when the two strike up a conversation—awkward but electrifying—something life changing begins. A year later, they’re both studying at Trinity College in Dublin. Marianne has found her feet in a new social world while Connell hangs at the sidelines, shy and uncertain. Throughout their years at university, Marianne and Connell circle one another, straying toward other people and possibilities but always magnetically, irresistibly drawn back together. And as she veers into self-destruction and he begins to search for meaning elsewhere, each must confront how far they are willing to go to save the other. Normal People is the story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find that they can’t. Praise for Normal People “[A] novel that demands to be read compulsively, in one sitting.”—The Washington Post “Arguably the buzziest novel of the season, Sally Rooney’s elegant sophomore effort . . . is a worthy successor to Conversations with Friends. Here, again, she unflinchingly explores class dynamics and young love with wit and nuance.”—The Wall Street Journal “[Rooney] has been hailed as the first great millennial novelist for her stories of love and late capitalism. . . . [She writes] some of the best dialogue I’ve read.”—The New Yorker', 0, '2020-02-18', '2020-05-23', 1, 75),
(187, 'Conversations with Friends', 'http://books.google.com/books/content?id=WbtvDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'CONVERSATIONS WITH FRIENDS WILL BE ADAPTED FOR A BBC THREE DRAMA, PREMIERING IN MAY 2022! ***SALLY ROONEY\'S NEW NOVEL, BEAUTIFUL WORLD, WHERE ARE YOU, IS OUT NOW*** \'This book. This book. I read it in one day. I hear I\'m not alone.\' - Sarah Jessica Parker (Instagram) \'Fascinating, ferocious and shrewd.\' - Lisa McInerney, author of The Glorious Heresies \'I really like Conversations with Friends. I like the tone [Rooney] takes when she\'s writing. I think it\'s like being inside someone\'s mind.\' - Taylor Swift Frances is twenty-one years old, cool-headed and observant. A student in Dublin and an aspiring writer, at night she performs spoken word with her best friend Bobbi, who used to be her girlfriend. When they are interviewed and then befriended by Melissa, a well-known journalist who is married to Nick, an actor, they enter a world of beautiful houses, raucous dinner parties and holidays in Provence, beginning a complex ménage-à-quatre. But when Frances and Nick get unexpectedly closer, the sharply witty and emotion-averse Frances is forced to honestly confront her own vulnerabilities for the first time. FROM THE AUTHOR OF NORMAL PEOPLE, THE BOOK OF THE HIT TV SERIES, NOW AVAILABLE ON THE BBC', 272, '2017-05-25', '2018-10-02', 1, 76),
(188, 'On Earth We\'re Briefly Gorgeous', 'http://books.google.com/books/content?id=pE5vDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'THE TIKTOK SENSATION \'A marvel\' Marlon James Brilliant, heart-breaking and highly original, discover Ocean Vuong\'s shattering coming of age novel. This is a letter from a son to a mother who cannot read. Written when the speaker, Little Dog, is in his late twenties, the letter unearths a family\'s history that began before he was born. It tells of Vietnam, of the lasting impact of war, and of his family\'s struggle to forge a new future. And it serves as a doorway into parts of Little Dog\'s life his mother has never known - episodes of bewilderment, fear and passion - all the while moving closer to an unforgettable revelation. \'Reminded me that every word can be an incantation, and that beauty does hard and important work\' Rebecca Solnit', 256, '2019-06-20', '2020-04-07', 1, 30),
(189, 'Time is a Mother', 'http://books.google.com/books/content?id=HIk3EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'How else do we return to ourselves but to fold The page so it points to the good part In this deeply intimate second poetry collection, Ocean Vuong searches for life among the aftershocks of his mother\'s death, embodying the paradox of sitting within grief while being determined to survive beyond it. Shifting through memory, and in concert with the themes of his novel On Earth We\'re Briefly Gorgeous, Vuong contends with personal loss, the meaning of family, and the value of joy in a perennially fractured American spirit. Vivid, brave, and propulsive, Vuong\'s poems circle fragmented lives to find both restoration as well as the epicentre of the break. The author of the critically acclaimed poetry collection Night Sky With Exit Wounds, winner of the 2016 Whiting Award, the 2017 T. S. Eliot Prize, and a 2019 MacArthur fellow, Vuong writes directly to our humanity without losing sight of the current moment. These poems represent a more innovative and daring experimentation with language and form, illuminating how the themes we live in and question are truly inexhaustible. Bold and prescient, and a testament to tenderness in the face of violence, Time Is a Mother is a return and a forging-forth all at once. Discover the powerful new collection from the TikTok sensation and author of On Earth We\'re Briefly Gorgeous', 85, '2022-04-07', '2022-11-23', 1, 30),
(190, 'Night Sky with Exit Wounds', 'http://books.google.com/books/content?id=qqL4DAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Winner of the 2017 T. S. Eliot Prize ‘Reading Vuong is like watching a fish move: he manages the varied currents of English with muscled intuition.’ New Yorker An extraordinary debut from a young Vietnamese American, Night Sky with Exit Wounds is a book of poetry unlike any other. Steeped in war and cultural upheaval and wielding a fresh new language, Vuong writes about the most profound subjects – love and loss, conflict, grief, memory and desire – and attends to them all with lines that feel newly-minted, graceful in their cadences, passionate and hungry in their tender, close attention: ‘...the chief of police/facedown in a pool of Coca-Cola./A palm-sized photo of his father soaking/beside his left ear.’ This is an unusual, important book: both gentle and visceral, vulnerable and assured, and its blend of humanity and power make it one of the best first collections of poetry to come out of America in years. ‘These are poems of exquisite beauty, unashamed of romance, and undaunted by looking directly into the horrors of war, the silences of history. One of the most important debut collections for a generation.’ Andrew McMillan Winner of the 2017 Felix Dennis Prize for Best First Collection A Guardian / Daily Telegraph Book of the Year PBS Summer Recommendation', 96, '2017-04-04', '2017-12-10', 1, 30),
(191, 'Un bref instant de splendeur', 'http://books.google.com/books/content?id=xe13EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\"Depuis tout ce temps je me disais que nous étions nés de la guerre, mais je me trompais, Maman. Nous sommes nés de la beauté.\" Un fils écrit à sa mère une lettre qu’elle ne lira jamais. Née d’un soldat américain et d’une paysanne vietnamienne, elle est analphabète, parle à peine anglais et travaille dans un salon de manucure aux États-Unis. Elle est le produit d’une guerre oubliée. Refusant le silence, son fils retrace leur histoire familiale avec une urgence et une grâce stupéfiantes : sa grand-mère traumatisée par les bombes, les poings durs de sa mère contre son corps d’enfant, son premier amour marqué d’un sceau funeste. Mais aussi la tendresse et les rires, la découverte du désir, de son homosexualité et, plus que tout, du pouvoir rédempteur des mots.', 198, '2022-08-18', '2022-10-05', 2, 49),
(192, 'Ciel de nuit blessé par balles', 'http://books.google.com/books/content?id=3HNmEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Recueil de poésie traduit en dix langues. Mémoire d’encrier détient les droits en langue française. Ciel de nuit blessé par balles est résolument un chef-d’œuvre qui peint la vie humaine dans toutes ses facettes : l’exil, l’amour, l’enfance, le sexe, la violence. La poésie américaine retrouve ses grandes obsessions avec ce poète vietnamien de 28 ans.', 124, '2017-10-03', '2017-11-05', 2, 77),
(193, 'Homegoing', 'http://books.google.com/books/content?id=L7c4CwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'THE SUNDAY TIMES BESTSELLER Selected for Granta\'s Best of Young American Novelists 2017 Winner of the National Book Critics Circle Award for Best First Book Shortlisted for the PEN/Robert W. Bingham Prize for Debut Fiction Effia and Esi: two sisters with two very different destinies. One sold into slavery; one a slave trader\'s wife. The consequences of their fate reverberate through the generations that follow. Taking us from the Gold Coast of Africa to the cotton-picking plantations of Mississippi; from the missionary schools of Ghana to the dive bars of Harlem, spanning three continents and seven generations, Yaa Gyasi has written a miraculous novel - the intimate, gripping story of a brilliantly vivid cast of characters and through their lives the very story of America itself. Epic in its canvas and intimate in its portraits, Homegoing is a searing and profound debut from a masterly new writer.', 320, '2016-06-07', '2021-02-25', 1, 14),
(194, 'Volver a casa / Homegoing', 'http://books.google.com/books/content?id=bHaREAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Primera novela de la escritora estadounidense de origen ghanés Yaa Gyasi, una cautivante historia de hondo calado humano que se desarrolla en la costa suroccidental de África y en Norteamérica desde el siglo XVIII hasta la actualidad. Hijas de una misma madre y de padres pertenecientes a dos etnias distintas, Effia y Esi son dos hermanas de sangre que nunca llegarán a conocerse. Sus caminos están irremediablemente destinados a separarse: así, mientras Effia es obligada a casarse con un gobernador inglés y a residir en una fortaleza junto a la costa, Esi es capturada y enviada como esclava al sur de Estados Unidos. La narración va trazando, pues, el devenir de las dos ramas de la familia, protagonistas de conmovedoras historias de aflicción, esperanza y superación en el marco de una serie de relevantes acontecimientos históricos: las guerras tribales, el negocio del cacao, la llegada de los misioneros, la Ley de Esclavos Fugitivos de 1850, la Gran Migración Negra, la lucha por los derechos civiles y el renacimiento de Harlem en los años veinte, hasta llegar a la epidemia de heroína de los setenta. Recibida con entusiasmo desbordante en Norteamérica, Inglaterra y Francia, la crítica especializada de ambos lados del Atlántico celebró la llegada de una voz nueva, límpida y potente, dotada de un especial talento para acercar al lector el microcosmos de los sentimientos más íntimos del individuo en su desigual lucha ante la aplastante fuerza de la Historia. Una lectura apasionante, diríamos irrenunciable, que sirve de carta de presentación de una nueva generación de autores de origen africano que, sin duda, dejada huella en la literatura de este siglo. Reseñas: «Hay libros buenos, libros hermosos y luego están los grandes libros. Hay libros que emocionan y educan, y luego están los que son menos habituales, los valiosos, los que tienen la fuerza de cambiar nuestra forma de entender la complejidad de este mundo extraño. Volver a casa pertenece a esa segunda categoría.» -Lire «Trazar tres siglos en cuatrocientas páginas era una apuesta arriesgada y podría haber terminado en una novela didáctica o insulsa. Pero no ha sido así: Gyasi ha logrado esta proeza gracias a una inteligente combinación de política e intimismo, historia y magia, y a unas imágenes con un gran poder evocador.» - Le Monde «La esclavitud es una herida abierta: nunca sanará. Y como tal, ha proporcionado una reserva inagotable de material para narradores, un pozo sin fondo de giros trágicos, traiciones épicas, trascendencias inesperadas y secretos desconocidos. [...] En ese mismo pozo de agua turbia se ha sumergido Yaa Gyasi, escritora novel de origen ghanés-americano, para crear Volver a casa, un retrato valiente del papel que desempeñó África occidental en el comercio transatlántico de personas.» -The Guardian «Necesitaba leer un libro como éste para recordar de lo que uno es capaz. Y necesitaba recordar qué ocurre cuando una imaginación literaria especialmente dotada se topa con una tarea épica. Volver a casa es una fuente de inspiración.» -Ta-Nehisi Coates, autor de Entre el mundo y yo DESCRIPTION IN ENGLISH Winner of the NBCC\'s John Leonard First Book Prize A New York Times 2016 Notable Book One of Oprah’s 10 Favorite Books of 2016 NPR\'s Debut Novel of the Year One of Buzzfeed\'s Best Fiction Books Of 2016 One of Time\'s Top 10 Novels of 2016 “Homegoing is an inspiration.” —Ta-Nehisi Coates The unforgettable New York Times best seller begins with the story of two half-sisters, separated by forces beyond their control: one sold into slavery, the other married to a British slaver. Written with tremendous sweep and power, Homegoing traces the generations of family who follow, as their destinies lead them through two continents and three hundred years of history, each life indeliably drawn, as the legacy of slavery is fully revealed in light of the present day. Effia and Esi are born into different villages in eighteenth-century Ghana. Effia is married off to an Englishman and lives in comfort in the palatial rooms of Cape Coast Castle. Unbeknownst to Effia, her sister, Esi, is imprisoned beneath her in the castle’s dungeons, sold with thousands of others into the Gold Coast’s booming slave trade, and shipped off to America, where her children and grandchildren will be raised in slavery. One thread of Homegoing follows Effia’s descendants through centuries of warfare in Ghana, as the Fante and Asante nations wrestle with the slave trade and British colonization. The other thread follows Esi and her children into America. From the plantations of the South to the Civil War and the Great Migration, from the coal mines of Pratt City, Alabama, to the jazz clubs and dope houses of twentieth-century Harlem, right up through the present day, Homegoing makes history visceral, and captures, with singular and stunning immediacy, how the memory of captivity came to be inscribed in the soul of a nation.', 0, '2019-10-31', '2020-02-06', 3, 3),
(195, 'Heimkehren', 'http://books.google.com/books/content?id=w__IDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Obwohl Effia und Esi Schwestern sind, lernen sie sich nie kennen, denn ihre Lebenswege verlaufen von Anfang an getrennt. Im Ghana des 18. Jahrhunderts heiratet Effia einen Engländer, der im Sklavenhandel zu Reichtum und Macht gelangt. Esi dagegen wird als Sklavin nach Amerika verkauft. Während Effias Nachkommen über Jahrhunderte Opfer oder Profiteure des Sklavenhandels werden, kämpfen Esis Kinder und Kindeskinder ums Überleben: auf den Plantagen der Südstaaten, während des Amerikanischen Bürgerkrieges, der Großen Migration, in den Kohleminen Alabamas und dann, im 20. Jahrhundert, in den Jazzclubs und Drogenhäusern Harlems. Hat die vorerst letzte Generation schließlich die Chance, einen Platz in der Gesellschaft zu finden, den sie Heimat nennen kann und wo man nicht als Menschen zweiter Klasse angesehen wird? Mit einer enormen erzählerischen Kraft zeichnet Yaa Gyasi die Wege der Frauen und ihrer Nachkommen über Generationen bis in die Gegenwart hinein. ›Heimkehren‹ ist ein bewegendes Stück Literatur von beeindruckender politischer Aktualität. New-York-Times-Bestseller', 416, '2017-08-22', '2018-11-05', 4, 78),
(196, 'No Home', 'http://books.google.com/books/content?id=u5OmDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Deux soeurs à la destinée bouleversante. Trois siècles d’histoire. « Une réussite éclatante. » Los Angeles Times XVIIIe siècle, au plus fort de la traite des esclaves. Effia et Esi naissent de la même mère, dans deux villages rivaux du Ghana. La sublime Effi a est mariée de force à un Anglais, le capitaine du Fort de Cape Coast. Leur chambre surplombe les cachots où sont enfermés les captifs qui deviendront esclaves une fois l’océan traversé. Effi a ignore que sa soeur Esi y est emprisonnée, avant d’être expédiée en Amérique où des champs de coton jusqu’à Harlem, ses enfants et petits- enfants seront inlassablement jugés pour la couleur de leur peau. La descendance d’Effia, métissée et éduquée, connaît une autre forme de souffrance : perpétuer sur place le commerce triangulaire familial puis survivre dans un pays meurtri pour des générations. Navigant brillamment entre Afrique et Amérique, Yaa Gyasi écrit le destin d’une famille à l’arbre généalogique brisé par la cruauté des hommes. Un voyage dans le temps inoubliable. « Il est impossible de ne pas être en admiration devant l’ambition et la portée de No Home. »The New York Times « No Home a l’envergure de trois siècles entiers.Chaque chapitre donne l’impression d’un roman miniature. » New York Magazine', 450, '2017-01-04', '2022-05-08', 2, 79),
(197, 'Volver a casa', 'http://books.google.com/books/content?id=KyBWnQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'La trama de esta cautivante historia de hondo calado humano se desarrolla en la costa suroccidental de lfrica, la actual Repb︢lica de Ghana y en Norteamřica desde el siglo XVIII hasta la presente. Hijas de una misma madre y de padres pertenecientes a dos etnias distintas, Effia y Esi son dos hermanas de sangre que nunca llegarǹ a conocerse. Sus caminos estǹ irremediablemente destinados a separarse', 0, '2017-03-01', '2018-10-15', 3, 80),
(198, 'The Obelisk Gate', 'http://books.google.com/books/content?id=vNBfCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Winner of the Hugo Award for Best Novel The second book in the record-breaking triple Hugo Award-winning trilogy The season of endings grows darker, as civilization fades into the long cold night. Essun has found shelter, but not her missing daughter. Instead there is Alabaster Tenring, destroyer of the world, with a request only Essun can grant. Praise for this trilogy: \'Amazing\' Ann Leckie \'Breaks uncharted ground\' Library Journal \'Beautiful\' Nnedi Okorafor \'Astounding\' NPR \'Brilliant\' Washington Post \'Heartbreaking, wholly unexpected\' Brian Staveley \'Awesome\' Book Smugglers \'A powerful story of hope and survival\' The Root The Broken Earth trilogy begins with The Fifth Season, continues in The Obelisk Gate and concludes with The Stone Sky - out now. Also by N. K. Jemisin: The Inheritance trilogy The Hundred Thousand Kingdoms The Broken Kingdoms The Kingdom of Gods The Dreamblood Duology The Killing Moon The Shadowed Sun', 448, '2016-08-16', '2017-05-05', 1, 1),
(199, 'The People in the Trees', 'http://books.google.com/books/content?id=OwhHDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The stunning debut novel, from the author of A Little Life. It is 1950 when Norton Perina, a young doctor, embarks on an expedition to a remote Micronesian island in search of a rumoured lost tribe. There he encounters a strange group of forest dwellers who appear to have attained a form of immortality that preserves the body but not the mind. Perina uncovers their secret and returns with it to America, where he soon finds great success. But his discovery has come at a terrible cost, not only for the islanders, but for Perina himself. Hanya Yanagihara\'s The People in the Trees marks the debut of a remarkable new voice in American fiction.', 384, '2018-06-14', '2021-08-23', 1, 57),
(200, 'Tan poca vida', 'http://books.google.com/books/content?id=KvAuvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'Tan poca vida se ha convertido en un auténtico fenómeno literario, un éxito sin precedentes en las redes sociales que ha sido unánimemente aclamado por la crítica y los lectores. Hanya Yanagihara, su autora, ha sido comparada con Jonathan Franzen y Donna Tartt por su capacidad para describir con maestría la psicología de personajes complejos y hallar en el camino respuesta a cuestiones universales. Una nueva y joven voz literaria que ha llegado para quedarse. Una historia que recorre más de tres décadas de amistad en la vida de cuatro hombres que crecen juntos en Manhattan. Cuatro hombres que tienen que sobrevivir al fracaso y al éxito y que, a lo largo de los años, aprenden a sobreponerse a las crisis económicas, sociales y emocionales. Cuatro hombres que comparten una idea muy peculiar de la intimidad, una manera de estar juntos hecha de pocas palabras y muchos gestos. Cuatro hombres cuya relación la autora utiliza para realizar una minuciosa indagación de los límites de la naturaleza humana. (Fuente: www.megustaleer.com).', 0, '2016-09-01', '2019-09-24', 3, 81),
(201, 'A Little Life', 'http://books.google.com/books/content?id=QkGNEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'NATIONAL BOOK AWARD FINALIST SHORT-LISTED FOR THE MAN BOOKER PRIZE Brace yourself for the most astonishing, challenging, upsetting, and profoundly moving book in many a season. An epic about love and friendship in the twenty-first century that goes into some of the darkest places fiction has ever traveled and yet somehow improbably breaks through into the light. Truly an amazement—and a great gift for its readers. When four classmates from a small Massachusetts college move to New York to make their way, they\'re broke, adrift, and buoyed only by their friendship and ambition. There is kind, handsome Willem, an aspiring actor; JB, a quick-witted, sometimes cruel Brooklyn-born painter seeking entry to the art world; Malcolm, a frustrated architect at a prominent firm; and withdrawn, brilliant, enigmatic Jude, who serves as their center of gravity. Over the decades, their relationships deepen and darken, tinged by addiction, success, and pride. Yet their greatest challenge, each comes to realize, is Jude himself, by midlife a terrifyingly talented litigator yet an increasingly broken man, his mind and body scarred by an unspeakable childhood, and haunted by what he fears is a degree of trauma that he’ll not only be unable to overcome—but that will define his life forever. In rich and resplendent prose, Yanagihara has fashioned a tragic and transcendent hymn to brotherly love, a masterful depiction of heartbreak, and a dark examination of the tyranny of memory and the limits of human endurance.', 0, '2015-03-10', '2015-11-04', 1, 3),
(202, 'Una vita come tante', 'http://books.google.com/books/content?id=nh-1DAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Una storia epica e magistrale sull’amicizia e sull’amore nel XXI secolo. Caso editoriale del 2015, forse il più importante romanzo letterario dell’anno, opera di rara potenza e originalità, \'Una vita come tante\' è doloroso e spiazzante, scioccante e magnetico. Vasto come un romanzo ottocentesco, brutale e modernissimo per i suoi temi, emotivo e realistico, ha trascinato lettori e critica per la sua forza narrativa, capace di creare un mondo di profonda, coinvolgente verità.', 1104, '2016-11-10', '2017-09-24', 5, 82),
(203, 'Eileen', 'http://books.google.com/books/content?id=uQsbBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Shortlisted for the 2016 Man Booker Prize and chosen by David Sedaris as his recommended book for his Fall 2016 tour. So here we are. My name was Eileen Dunlop. Now you know me. I was twenty-four years old then, and had a job that paid fifty-seven dollars a week as a kind of secretary at a private juvenile correctional facility for teenage boys. I think of it now as what it really was for all intents and purposes—a prison for boys. I will call it Moorehead. Delvin Moorehead was a terrible landlord I had years later, and so to use his name for such a place feels appropriate. In a week, I would run away from home and never go back. This is the story of how I disappeared. The Christmas season offers little cheer for Eileen Dunlop, an unassuming yet disturbed young woman trapped between her role as her alcoholic father’s caretaker in a home whose squalor is the talk of the neighborhood and a day job as a secretary at the boys’ prison, filled with its own quotidian horrors. Consumed by resentment and self-loathing, Eileen tempers her dreary days with perverse fantasies and dreams of escaping to the big city. In the meantime, she fills her nights and weekends with shoplifting, stalking a buff prison guard named Randy, and cleaning up her increasingly deranged father’s messes. When the bright, beautiful, and cheery Rebecca Saint John arrives on the scene as the new counselor at Moorehead, Eileen is enchanted and proves unable to resist what appears at first to be a miraculously budding friendship. In a Hitchcockian twist, her affection for Rebecca ultimately pulls her into complicity in a crime that surpasses her wildest imaginings. Played out against the snowy landscape of coastal New England in the days leading up to Christmas, young Eileen’s story is told from the gimlet-eyed perspective of the now much older narrator. Creepy, mesmerizing, and sublimely funny, in the tradition of Shirley Jackson and early Vladimir Nabokov, this powerful debut novel enthralls and shocks, and introduces one of the most original new voices in contemporary literature.', 272, '2015-08-18', '2021-03-17', 1, 56),
(204, 'La muerte en sus manos', 'http://books.google.com/books/content?id=3E0aEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'El «toque Moshfegh» se consagra con su tercera y arrasadora novela. Una mezcla única de novela negra y humor macabro, tan inimitable como la propia autora. «Ottessa Moshfegh es ya la next great thing de la literatura norteamericana. ¿Contrapartes en español? Sara Mesa, Mariana Enríquez o Elvira Navarro. Todas descendientes de hembras extrañas como Silvina Ocampo, Joy Williams y Sylvia Plath.» Rodrigo Fresán, Vanity Fair «Una escritora que, como Henry James o Vladimir Nabokov, está bendecida tanto con la genialidad como con la crueldad.» The New Yorker Mientras pasea a su perro por el bosque, Vesta Gul se topa con una nota manuscrita. «Se llamaba Magda. Nadie sabrá nunca quién la mató. No fui yo. Este es su cadáver.» Pero junto a la nota no hay ningún cadáver. Vesta Gul, que acaba de mudarse tras la muerte de su marido y no conoce a nadie en su nuevo hogar, no sabe muy bien qué hacer con esta información. Comienza a obsesionarse con la figura de Magda y a elucubrar con las diversas maneras en que pudieron asesinarla, si es que efectivamente ocurrió tal cosa. Su aislamiento la conduce a una serie de ideas que comienzan a encontrar un reflejo en la vida real. De un modo emocionante y terrorífico, las piezas parecen encajar: a encajar entre sí y con las zonas más oscuras de su propio pasado. Solo hay dos opciones para resolver este misterio: una explicación banal e inocente o una causa profundamente siniestra. La crítica ha dicho... «Moshfegh se ha tomado la molestia de estirar los bordes del género y entrar y salir de él con comodidad. En esta ocasión juega con habilidad con algunos tópicos de la novela clásica de misterio en una historia que habla también delos efectos de la soledad y el aislamiento. [...] Es una novela original de la que es mejor no decir mucho más.» Juan Carlos Galindo, El País «Moshfegh vuelve al noir para contar la historia de un crimen sin cadáver. Otra vuelta de tuerca al mundo de lo aparente.» Laura Fernández, Vanity Fair «Una obra de duelo y soledad que nos habla de la importancia de estar vivo. [...] Un engranaje metaliterario que deconstruye el género de razonamiento deductivo, lo retuerce y lo hace explotar desde dentro.» Marta Marne, El Periódico «Si buscas una novela negra que te atrape, esta es la tuya. La autora, siguiendo la estela magnética de las tramas de Agatha Christie, ha tejido una historia muy inquietante y, a ratos, casi cruel.» Lídia Penelo, El Quinze «A caballo entre la novela negra y la metaficción, [...] es fácil recomendar esta novela diciendo que no es la novela que esperas leer. Lo que aquí se ofrece es mucho.» Sergio Saborido, Libros y Literatura «Un viaje oscuro y divertido. [...]. A veces la imaginación tiene poderes curativos.» TIME «Este libro sigue viviendo en tu cabeza y, con la distancia, puedes seguir saboreando las trampas que te tiende.» Dwight Garner, The New York Times «Un personaje aislado, no es difícil percatarse de que mucho antes de esta cuarentena Moshfegh intuyó que había algo insostenible en cómo vivíamos.» Los Angeles Times «Un perfil de Moshfegh sugería que sus historias, llenas de desapego, se ajustan perfectamente al actual momento de aislamiento global. Pero su objetivo no es arrullarnos, sino despertarnos. [...] ¿Ha llegado el momento de que empecemos a ver el mundo como realmente es?» Ruth Franklin, The New York Times Book Review «La autora de referencia de los ermitaños y los excéntricos, de los misántropos y de los reclusos, regresa con otra novela narrada por una mujer alienada y alienante cuya voz extraña y singular nos obliga a no dejar de leer.» The Boston Globe', 232, '2021-04-15', '2022-11-19', 3, 83),
(205, 'En la casa de los sueños', 'http://books.google.com/books/content?id=f04nEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'El testimonio personal de una historia de abusos en el marco de una relación lésbica relatado con un estimulante virtuosismo literario. Cuando era una joven aspirante a escritora, Carmen Maria Machado conoció a una chica menuda, rubia, de clase alta, licenciada en Harvard, sofisticada y fascinante con la que inició su primera relación lésbica, después de varias experiencias sexuales con hombres. La chica poseía una idílica cabaña en Bloomington, Virginia: la casa de los sueños del título. Pero los sueños se convirtieron en pesadillas cuando la novia de Machado empezó a mostrarse celosa, controladora y paranoica, para luego acusarla de engañarla con todo el mundo y acabar agrediéndola verbal e incluso físicamente. Este libro es el testimonio de una relación tóxica, que en este caso no tiene como agresor a un varón heterosexual de mentalidad patriarcal y machista, sino a una lesbiana. Y este es un primer elemento que da valor al texto: la denuncia de la violencia en la pareja dentro de la comunidad queer. Pero la calidad excepcional de la propuesta de Machado va más allá: en lugar de quedarse en un mero ejercicio de testimonio personal, utiliza la historia vivida –y sufrida– para explorar más a fondo el tema, jugando literariamente con él. Y lo hace mediante la manipulación de los géneros narrativos –la novela romántica, la erótica, la de iniciación, la de terror...–, lo cual le permite contar su historia y reflexionar a la vez sobre cómo contamos todos las nuestras. El resultado: una nueva muestra del talento inmenso y transgresor de Carmen Maria Machado, una de las voces femeninas más radicales y lúcidas del panorama literario contemporáneo, capaz de combinar la exploración formal con una transparencia absoluta en el relato de la experiencia vivida y la sexualidad. El libro es una pirueta literaria brillantísima y seductora, así como un testimonio de una sinceridad arrolladora sobre los abusos emocionales y físicos.', 320, '2021-05-05', '2022-10-11', 3, 84),
(206, 'Her Body And Other Parties', 'http://books.google.com/books/content?id=3nAyDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'SHORTLISTED FOR THE NATIONAL BOOK AWARD FICTION PRIZE 2017 SHORTLISTED FOR THE INTERNATIONAL DYLAN THOMAS PRIZE 2018 \'Brilliantly inventive and blazingly smart\' Garth Greenwell \'Impossible, imperfect, unforgettable\' Roxane Gay \'A wild thing ... covered in sequins and scales, blazing with the influence of fabulists from Angela Carter to Kelly Link and Helen Oyeyemi\' New York Times In her provocative debut, Carmen Maria Machado demolishes the borders between magical realism and science fiction, comedy and horror, fantasy and fabulism. Startling narratives map the realities of women\'s lives and the violence visited on their bodies, both in myth and in practice. A wife refuses her husband\'s entreaties to remove the mysterious green ribbon from around her neck. A woman recounts her sexual encounters as a plague spreads across the earth. A salesclerk in a mall makes a horrifying discovery about a store\'s dresses. One woman\'s surgery-induced weight loss results in an unwanted house guest. Bodies become inconsequential, humans become monstrous, and anger becomes erotic. A dark, shimmering slice into womanhood, Her Body and Other Parties is wicked and exquisite.', 245, '2017-12-14', '2020-10-07', 1, 85),
(207, 'In the Dream House', 'http://books.google.com/books/content?id=4ysyzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'A revolutionary memoir about domestic abuse by the award-winning author of Her Body and Other Parties In the Dream House is Carmen Maria Machado’s engrossing and wildly innovative account of a relationship gone bad, and a bold dissection of the mechanisms and cultural representations of psychological abuse. Tracing the full arc of a harrowing relationship with a charismatic but volatile woman, Machado struggles to make sense of how what happened to her shaped the person she was becoming. And it’s that struggle that gives the book its original structure: each chapter is driven by its own narrative trope—the haunted house, erotica, the bildungsroman—through which Machado holds the events up to the light and examines them from different angles. She looks back at her religious adolescence, unpacks the stereotype of lesbian relationships as safe and utopian, and widens the view with essayistic explorations of the history and reality of abuse in queer relationships. Machado’s dire narrative is leavened with her characteristic wit, playfulness, and openness to inquiry. She casts a critical eye over legal proceedings, fairy tales, Star Trek, and Disney villains, as well as iconic works of film and fiction. The result is a wrenching, riveting book that explodes our ideas about what a memoir can do and be.', 272, '2020-10-20', '2022-01-20', 1, 86),
(208, 'Dans la maison rêvée', 'http://books.google.com/books/content?id=mDMxEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Alors qu’elle est encore une écrivaine débutante, Carmen Maria Machado rencontre une jeune femme sophistiquée et fascinante qui la séduit. Très vite, cette passion est partagée et elles s’installent ensemble dans leur « maison rêvée » pour vivre pleinement leur amour. Mais ce rêve tourne rapidement au cauchemar quand la compagne de Machado devient jalouse, paranoïaque et violente tant en paroles qu’en actes. Cette « maison rêvée » ne serait-elle pas un piège ou une prison ? Peu à peu l’autrice s’enferme dans une relation toxique dont elle peine à s’échapper... Dans la maison rêvée explore le tabou de la violence conjugale au sein des couples de même sexe. C’est aussi un récit d’une inventivité extraordinaire : en courts chapitres qui manipulent les codes de tous les genres littéraires, elle s’interroge sur les histoires qu’on choisit de taire et les voix qu’on ne veut pas entendre – et ce que cela dit de nous. Un texte nécessaire, courageux et innovant qui fait l’effet d’une détonation.', 280, '2021-08-19', '2022-12-11', 2, 10),
(209, 'Son corps et autres célébrations', 'http://books.google.com/books/content?id=c9iuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Une femme porte en permanence un ruban vert autour du cou et refuse que son mari le touche, quelle que soit la situation. Une autre fait l\'\" inventaire \" de ses amant(e)s tandis qu\'autour d\'elle, un fléau plonge les États-Unis dans l\'angoisse. Une autre encore fait une curieuse découverte dans une boutique de robes de bal : les objets familiers et usuels recèlent peut-être une vérité terrifiante... Les nouvelles de Carmen Maria Machado ne sont d\'aucun genre : tour à tour fantastiques, fantaisistes ou proches de la science-fiction, elles préfèrent le trouble à la certitude, l\'ombre à la clarté, l\'inventivité au classicisme. Elles partagent cependant une ambition commune : dire la réalité de l\'expérience des femmes et la violence qui s\'exerce sur leurs corps. Traduit de l\'anglais (États-Unis) par Hélène Papot.', 320, '2019-09-19', '2020-08-30', 2, 87),
(210, 'La mitad evanescente / The Vanishing Half', 'http://books.google.com/books/content?id=VmuREAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '«Una reflexión AMBICIOSA sobre la RAZA y la IDENTIDAD.» -The New York Times Uno de los libros favoritos de Obama en el 2020. Bestseller del New York Times. Generación tras generación, la comunidad negra del pueblo de Mallard, en Luisiana, ha intentado aclarar el tono de su piel favoreciendo los matrimonios mixtos. Las inseparables gemelas Desirée y Stella Vignes, con su color níveo, sus ojos castaños y su cabello ondulado, son un buen ejemplo de ello. Tan distintas y tan iguales, decidieron huir juntas del diminuto pueblo creyendo que también podrían escapar de su sangre. Años después y ante la mirada atónita de todos, Desireé regresa acompañada de una niña negra como el carbón. Hace tiempo que no sabe nada de Stella, después de que decidiera desaparecer y renunciar definitivamente a sus orígenes para vivir otra vida como mujer de raza blanca. Aclamada como la digna heredera de Toni Morrison y James Baldwin, Brit Bennett es una de las grandes revelaciones de la literatura afroamericana de los últimos tiempos. ENGLISH DESCRIPTION #1 NEW YORK TIMES BESTSELLER ONE OF BARACK OBAMA\'S FAVORITE BOOKS OF 2020 NAMED A BEST BOOK OF 2020 BY THE NEW YORK TIMES * THE WASHINGTON POST * NPR * PEOPLE * TIME MAGAZINE* VANITY FAIR * GLAMOUR “Bennett’s tone and style recalls James Baldwin and Jacqueline Woodson, but it’s especially reminiscent of Toni Morrison’s 1970 debut novel, The Bluest Eye.” —Kiley Reid, Wall Street Journal “A story of absolute, universal timelessness …For any era, it\'s an accomplished, affecting novel. For this moment, it\'s piercing, subtly wending its way toward questions about who we are and who we want to be….” –Entertainment Weekly From The New York Times-bestselling author of The Mothers, a stunning new novel about twin sisters, inseparable as children, who ultimately choose to live in two very different worlds, one black and one white. The Vignes twin sisters will always be identical. But after growing up together in a small, southern black community and running away at age sixteen, it\'s not just the shape of their daily lives that is different as adults, it\'s everything: their families, their communities, their racial identities. Many years later, one sister lives with her black daughter in the same southern town she once tried to escape. The other secretly passes for white, and her white husband knows nothing of her past. Still, even separated by so many miles and just as many lies, the fates of the twins remain intertwined. What will happen to the next generation, when their own daughters\' storylines intersect? Weaving together multiple strands and generations of this family, from the Deep South to California, from the 1950s to the 1990s, Brit Bennett produces a story that is at once a riveting, emotional family story and a brilliant exploration of the American history of passing. Looking well beyond issues of race, The Vanishing Half considers the lasting influence of the past as it shapes a person\'s decisions, desires, and expectations, and explores some of the multiple reasons and realms in which people sometimes feel pulled to live as something other than their origins. As with her New York Times-bestselling debut The Mothers, Brit Bennett offers an engrossing page-turner about family and relationships that is immersive and provocative, compassionate and wise.', 0, '2021-06-22', '2022-08-28', 3, 3),
(211, 'L\'Autre Moitié de soi', 'http://books.google.com/books/content?id=Df_nDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Quatorze ans après la disparition des jumelles Vignes, l’une d’elles réapparaît à Mallard, leur ville natale, dans le Sud d’une Amérique fraîchement déségrégationnée. Adolescentes, elles avaient fugué main dans la main, décidées à affronter le monde. Pourtant, lorsque Desiree refait surface, elle a perdu la trace de sa jumelle depuis bien longtemps: Stella a disparu des années auparavant pour mener à Boston la vie d’une jeune femme Blanche. Mais jusqu’où peut-on renoncer à une partie de soi-même ? Dans ce roman magistral sur l’identité, l’auteure interroge les mailles fragiles dont sont tissés les individus, entre la filiation, le rêve de devenir une autre personne et le besoin dévorant de trouver sa place.', 332, '2020-08-19', '2021-01-05', 2, 88),
(212, 'Le cœur battant de nos mères', 'http://books.google.com/books/content?id=mEwsDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '« Tous les grands secrets ont un goût particulier. » Nadia a 17 ans et la vie devant elle. Mais quand elle perd sa mère et avorte en cachette, tout change. Elle choisit alors de quitter la communauté noire et religieuse qui l’a vue grandir. Boursière dans une grande université, Nadia fréquente l’élite. Elle a laissé derrière elle Luke, son ancien amant aux rêves brisés, et Aubrey, sa meilleure amie. Durant une décennie marquée des affres de la vie, les trajectoires des trois jeunes gens vont se croiser puis diverger, tendues à l’extrême par le poids du secret. Dans la lignée d’Elena Ferrante et de Chimamanda Ngozi Adichie, Brit Bennett donne voix à des héros en quête d’accomplissement et nous offre un roman lumineux, inoubliable.', 254, '2017-08-29', '2020-08-14', 2, 88),
(213, 'Les Incendiaires', 'http://books.google.com/books/content?id=HswOEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '\" Le roman de R. O. Kwon est une mèche à combustion lente. Lire son texte revient à suivre la flamme qui se rapproche inexorablement de ce qu\'elle va faire sauter – les personnages, l\'intrigue et, en dernier lieu, le lecteur. \" Viet Thanh Nguyen, auteur du Sympathisant Phoebe et Will se rencontrent dans une prestigieuse université. Elle, d\'origine coréenne, est une fille solaire qui va de fête en fête mais se reproche en secret la mort de sa mère. Lui, étudiant en théologie, a perdu la foi et galère pour aider la sienne, endettée et malade. La perte est au cœur de leurs vies respectives, mais une chose est sûre : Will aime Phoebe. Rattrapée par le chagrin et la culpabilité, la jeune femme perd pied et intègre un groupe fondé par un homme aussi énigmatique que son passé est trouble. Et quand ses membres commencent à s\'investir de façon de plus en plus violente dans la lutte anti-IVG, Will doit se battre contre un fanatisme qu\'il croyait avoir laissé derrière lui... Un premier roman explosif qui nous parle de passion et de manipulation, de tragédie intime et de quête de soi. Avec ses personnages qui se brûlent les ailes à la flamme de leur propre désir, R. O. Kwon explore les méandres de la dérive extrémiste, nourrie par la perte de ce qui nous est cher. \" Dans une prose éblouissante, R. O. Kwon sonde la frontière entre foi et fanatisme, passion et violence, rationnel et inexplicable. \" Celeste Ng, auteure de La Saison des feux et de Tout ce qu\'on ne s\'est jamais dit', 191, '2021-01-14', '2022-10-14', 2, 89),
(214, 'The Incendiaries', 'http://books.google.com/books/content?id=QzY-DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'Now a National Bestseller \"Religion, politics, and love collide in this slim but powerful novel reminiscent of Donna Tartt\'s The Secret History, with menace and mystery lurking in every corner.\" --People Magazine \"The most buzzed-about debut of the summer, as it should be...unusual and enticing ... The Incendiaries arrives at precisely the right moment.\" --The Washington Post \"Radiant...A dark, absorbing story of how first love can be as intoxicating and dangerous as religious fundamentalism.\" --New York Times Book Review A powerful, darkly glittering novel of violence, love, faith, and loss, as a young woman at an elite American university is drawn into a cult\'s acts of terrorism. Phoebe Lin and Will Kendall meet in their first month at prestigious Edwards University. Phoebe is a glamorous girl who doesn\'t tell anyone she blames herself for her mother\'s recent death. Will is a misfit scholarship boy who transfers to Edwards from Bible college, waiting tables to get by. What he knows for sure is that he loves Phoebe. Grieving and guilt-ridden, Phoebe is drawn into a secretive cult founded by a charismatic former student with an enigmatic past. When the group commits a violent act in the name of faith, Will finds himself struggling to confront a new version of the fanaticism he\'s worked so hard to escape. Haunting and intense, The Incendiaries is a fractured love story that explores what can befall those who lose what they love most.', 224, '2018-07-31', '2019-03-11', 1, 56),
(215, 'Kink', 'http://books.google.com/books/content?id=7h4BEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '‘This anthology of literary fiction features an all-star ensemble’ Cosmopolitan ‘A reflective and must-read collection’ Stylist Kink is a groundbreaking anthology of literary short fiction exploring love and desire, BDSM, and interests across the sexual spectrum, edited by lauded writers R.O. Kwon and Garth Greenwell, and featuring a roster of all-star contributors including Alexander Chee, Roxane Gay, Carmen Maria Machado, and more. Kink is a dynamic anthology of literary fiction that opens an imaginative door into the world of desire. The stories within this collection portray love, desire, BDSM, and sexual kinks in all their glory with a bold new vision. The collection includes works by renowned fiction writers such as Callum Angus, Alexander Chee, Vanessa Clark, Melissa Febos, Kim Fu, Roxane Gay, Cara Hoffman, Zeyn Joukhadar, Chris Kraus, Carmen Maria Machado, Peter Mountford, Larissa Pham, and Brandon Taylor, with Garth Greenwell and R.O. Kwon as editors. The stories within explore bondage, power-play, and submissive-dominant relationships; we are taken to private estates, therapists’ offices, underground sex clubs, private estates, and even a Victorian-era sex theater. While there are whips and chains, sure, the true power of these stories lies in their beautiful, moving dispatches from across the sexual spectrum of interest and desires, as portrayed by some of today’s most exciting writers.', 243, '2021-02-09', '2023-03-20', 1, 13);
INSERT INTO `book` (`id`, `name`, `image`, `description`, `page_count`, `published_date`, `purchase_date`, `language_id`, `publisher_id`) VALUES
(216, 'Memorial', 'http://books.google.com/books/content?id=m9L2DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'A SUNDAY TIMES BOOK OF THE YEAR \'This feels like a vision for the 21st-century novel... It made me happy\' Ocean Vuong, author of On Earth We\'re Briefly Gorgeous Benson and Mike are two young guys who have been together for a few years - good years - but now they\'re not sure why they\'re still a couple. There\'s the sex, sure, and the meals Mike cooks for Benson, and, well, they love each other. But when Mike finds out his estranged father is dying in Osaka just as his acerbic Japanese mother, Mitsuko, arrives for a visit, Mike picks up and flies across the world to say goodbye. In Japan he undergoes an extraordinary transformation, discovering the truth about his family and his past, while back home, Mitsuko and Benson are stuck living together as unconventional roommates, an absurd domestic situation that ends up meaning more to each of them than they ever could have predicted... Funny and profound, Memorial is about family in all its strange forms, becoming who you\'re supposed to be and the outer limits of love. NAMED A BOOK TO WATCH IN 2021 BY: SUNDAY TIMES | THE TIMES | DAILY MAIL | THE TELEGRAPH | RADIO 4 | IRISH TIMES', 306, '2021-01-07', '2021-08-13', 1, 90),
(217, 'The Disappearing God Gap?', 'http://books.google.com/books/content?id=mqLFdT0EPhEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'After the reelection of George W. Bush in 2004, the \"God Gap\" became a hotly debated political issue. Religious voters were seen as the key to Bush\'s victory, and Democrats began scrambling to reach out to them. Four years later, however, with the economy in a tailspin on election day, religion barely seemed to register on people\'s radar screens. In this book, a team of well-regarded scholars digs deeper to examine the role religion played in the 2008 campaign. They take a long view, placing the election in historical context and looking at the campaign as a whole, from the primaries through all the way through election day. At the heart of their analysis is data gleaned from a national survey conducted by the authors, in which voters were interviewed in the spring of 2008 and then re-interviewed after the election.', 288, '2010-02-08', '2020-08-14', 1, 91),
(218, 'The Essence of Desperation', 'http://books.google.com/books/content?id=n7ZGDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'This book examines how strategic narratives are produced, deployed, and legitimized to enable the capture of the geostrategic discursive space during times of war fighting failure. Using case studies, it examines the key actors and the deployment of key analogies that produce a narrative to overcome fragmentation during times of crisis.', 182, '2018-01-05', '2022-09-22', 1, 92),
(219, 'Fighting the Good Fight', 'http://books.google.com/books/content?id=jVVFAQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'The Dexter Avenue King Memorial Church played an important role in the Civil Rights movement-it was the backbone of the Montgomery bus boycott, which served as a model for other grassroots demonstrations and which also propelled Martin Luther King, Jr. into the national spotlight. Roberson chronicles five generations in the life of this congregation. He uses it as a lens through which to explore how the church functioned as a formative social, cultural, and political institution within a racially fractured and continually shifting cultural and civil landscape. Roberson highlights some of the prominent figures associated with the church, such as Martin Luther King, Jr., as well as some of the less prominent figures--for example the many women whose organizational efforts sustained the church.', 270, '2013-10-08', '2023-01-23', 1, 93),
(220, 'George W. Bush', 'http://books.google.com/books/content?id=0Qrwp1SYaKcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'George W. Bush: In the Whirlwind examines the beginning and early years of the Presidency of the 43rd President of the United States. New author Bryan LaBerge provides a mix of political savvy with an outside Washington DC common man perspective. In the Whirlwind explores a broad range of events and political topics that run the span of years from the 2000 Republican primary election through the mid-term elections of 2002. Some think of Bush as not up to the task. Some believe him to be a product of the September 11 attacks. Still others think him an illegitimate President. In the Whirlwind takes these issues head on and answers them from a political outsider\'s perspective. Unlike many current books about George W. Bush, In the Whirlwind looks at the whole presidency of George W. Bush and not just one defining moment. The book provides the reader a big picture historical viewpoint that will leave them wanting more.', 340, '2003-01-01', '2023-03-26', 1, 94),
(221, 'Physical Medicine and Rehabilitation Secrets', 'http://books.google.com/books/content?id=frqjEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'For more than 30 years, the highly regarded Secrets Series® has provided students, academics, and practitioners in all areas of health care with concise, focused, and engaging resources for quick reference and exam review. Physical Medicine and Rehabilitation Secrets, 4th Edition, offers practical, up-to-date coverage of the full range of essential topics in this dynamic field. This highly regarded resource features the Secrets’ popular question-and-answer format that also includes lists, tables, weblinks, pearls, memory aids, and an easy-to-read style – making an inquiry, reference, and review quick, easy, and enjoyable. The proven Secrets Series® format gives you the most return for your time – concise, easy to read, engaging, and highly effective. Fully revised and updated, including new information on geriatric rehabilitation, rehabilitation philosophy, vocational rehabilitation, disability rating and impairments, and legislation and reimbursement. New chapters and content include Longitudinal Learning; Regenerative Medicine; Musculoskeletal Ultrasound, PM&R ideology and Disability Awareness & Sensitivity, Organ Transplantation; Spinal Deformity: and more. Top 100 Secrets and Key Points boxes provide a rapid overview of the secrets you must know for success in practice, exams, and teaching sessions. Bulleted lists, mnemonics, and practical tips from global leaders in the field provide a concise overview of important board-relevant content. Portable size makes it easy to carry with you for quick reference or review anywhere, anytime.', 858, '2022-12-15', '2023-01-28', 1, 95);

-- --------------------------------------------------------

--
-- Structure de la table `book_author`
--

CREATE TABLE `book_author` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 4),
(10, 5),
(11, 5),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(13, 4),
(14, 9),
(15, 10),
(16, 11),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(21, 12),
(22, 12),
(23, 13),
(24, 12),
(24, 14),
(25, 12),
(26, 13),
(27, 13),
(28, 12),
(29, 12),
(30, 12),
(31, 12),
(32, 12),
(33, 12),
(34, 15),
(35, 16),
(36, 17),
(37, 17),
(38, 17),
(39, 17),
(40, 17),
(41, 17),
(42, 17),
(43, 17),
(44, 18),
(45, 19),
(46, 19),
(46, 20),
(47, 21),
(48, 22),
(49, 22),
(50, 22),
(51, 22),
(52, 22),
(53, 22),
(54, 23),
(55, 23),
(56, 23),
(57, 23),
(58, 23),
(59, 23),
(60, 23),
(61, 23),
(62, 23),
(63, 24),
(64, 23),
(65, 23),
(66, 23),
(66, 25),
(66, 26),
(67, 23),
(68, 23),
(69, 23),
(70, 23),
(71, 23),
(72, 23),
(73, 27),
(74, 27),
(75, 27),
(76, 27),
(77, 27),
(78, 27),
(79, 27),
(80, 27),
(81, 27),
(82, 28),
(83, 27),
(84, 27),
(85, 27),
(86, 27),
(87, 27),
(88, 29),
(89, 30),
(90, 30),
(91, 30),
(92, 31),
(93, 32),
(93, 33),
(94, 32),
(95, 32),
(96, 32),
(97, 32),
(98, 32),
(99, 32),
(100, 32),
(101, 32),
(102, 32),
(103, 32),
(104, 34),
(105, 34),
(106, 34),
(107, 34),
(108, 34),
(109, 34),
(110, 34),
(111, 34),
(112, 34),
(113, 34),
(114, 35),
(115, 35),
(116, 35),
(117, 35),
(118, 35),
(119, 35),
(120, 35),
(121, 35),
(122, 36),
(123, 36),
(124, 36),
(125, 36),
(126, 36),
(127, 36),
(128, 36),
(129, 37),
(130, 37),
(131, 37),
(132, 37),
(133, 37),
(134, 37),
(135, 37),
(136, 37),
(137, 37),
(138, 38),
(139, 38),
(140, 39),
(141, 39),
(142, 39),
(143, 39),
(144, 39),
(145, 39),
(146, 39),
(147, 39),
(148, 39),
(149, 40),
(150, 40),
(151, 40),
(152, 40),
(153, 40),
(154, 40),
(155, 40),
(156, 40),
(157, 40),
(158, 40),
(159, 40),
(160, 40),
(161, 40),
(162, 40),
(163, 40),
(164, 40),
(165, 40),
(166, 41),
(167, 42),
(168, 43),
(169, 43),
(170, 44),
(171, 44),
(172, 44),
(173, 44),
(174, 44),
(175, 44),
(176, 44),
(177, 44),
(178, 44),
(179, 44),
(180, 45),
(181, 46),
(182, 47),
(183, 47),
(184, 48),
(185, 48),
(186, 49),
(187, 49),
(188, 50),
(189, 50),
(190, 50),
(191, 50),
(192, 50),
(193, 51),
(194, 51),
(195, 51),
(196, 51),
(197, 51),
(198, 52),
(199, 53),
(200, 53),
(201, 53),
(202, 53),
(203, 54),
(204, 54),
(205, 55),
(206, 55),
(207, 55),
(208, 55),
(209, 55),
(210, 56),
(211, 56),
(212, 56),
(213, 57),
(214, 57),
(215, 58),
(215, 59),
(216, 60),
(217, 61),
(217, 62),
(217, 63),
(217, 64),
(217, 65),
(217, 66),
(218, 67),
(219, 68),
(220, 69),
(221, 70),
(221, 71),
(221, 72),
(221, 73);

-- --------------------------------------------------------

--
-- Structure de la table `book_category`
--

CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `book_category`
--

INSERT INTO `book_category` (`book_id`, `category_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 2),
(6, 4),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 5),
(16, 2),
(17, 6),
(18, 2),
(19, 2),
(20, 7),
(21, 8),
(22, 2),
(23, 2),
(24, 7),
(25, 2),
(26, 1),
(27, 9),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 6),
(35, 2),
(36, 10),
(37, 2),
(38, 2),
(39, 6),
(40, 11),
(41, 12),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 13),
(48, 2),
(49, 2),
(50, 14),
(51, 5),
(52, 12),
(53, 15),
(54, 16),
(55, 6),
(56, 16),
(57, 17),
(58, 16),
(59, 6),
(60, 16),
(61, 16),
(62, 6),
(63, 5),
(64, 16),
(65, 2),
(66, 18),
(67, 19),
(68, 6),
(69, 16),
(70, 19),
(71, 18),
(72, 16),
(73, 2),
(74, 12),
(75, 2),
(76, 2),
(77, 6),
(78, 2),
(79, 2),
(80, 2),
(81, 12),
(82, 8),
(83, 20),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 12),
(93, 12),
(94, 12),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 5),
(100, 21),
(101, 22),
(102, 2),
(103, 16),
(104, 2),
(105, 2),
(106, 2),
(107, 23),
(108, 24),
(109, 2),
(110, 13),
(111, 2),
(112, 2),
(113, 25),
(114, 26),
(115, 27),
(116, 2),
(117, 2),
(118, 2),
(119, 3),
(120, 28),
(121, 29),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 12),
(130, 29),
(131, 2),
(132, 8),
(133, 30),
(134, 31),
(135, 31),
(136, 31),
(137, 32),
(138, 2),
(139, 12),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 33),
(147, 2),
(148, 34),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 6),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 12),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 6),
(167, 2),
(168, 2),
(169, 35),
(170, 16),
(171, 36),
(172, 2),
(173, 37),
(174, 16),
(175, 6),
(176, 16),
(177, 38),
(178, 16),
(179, 5),
(180, 9),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 12),
(186, 2),
(187, 2),
(188, 2),
(189, 16),
(190, 16),
(191, 2),
(192, 16),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 18),
(198, 2),
(199, 2),
(200, 18),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 6),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 12),
(214, 2),
(215, 2),
(216, 2),
(217, 7),
(218, 39),
(219, 37),
(220, 6),
(221, 40);

-- --------------------------------------------------------

--
-- Structure de la table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `borrow`
--

INSERT INTO `borrow` (`id`, `borrow_date`, `return_date`, `user_id`, `book_id`) VALUES
(1, '2021-10-02', '2021-10-08', 1, 112),
(2, '2020-11-17', '2020-11-23', 1, 202),
(3, '2023-03-27', NULL, 1, 179),
(4, '2023-03-13', NULL, 1, 140),
(5, '2023-03-26', NULL, 1, 174),
(6, '2021-02-25', '2021-03-05', 1, 143),
(7, '2023-01-27', '2023-02-01', 2, 31),
(8, '2023-03-03', '2023-03-18', 2, 208),
(9, '2020-01-22', '2020-02-10', 2, 4),
(10, '2022-12-06', '2022-12-09', 2, 157),
(11, '2023-03-27', NULL, 2, 168),
(12, '2023-03-16', NULL, 2, 186),
(13, '2023-03-23', NULL, 2, 86),
(14, '2022-04-16', '2022-04-20', 4, 7),
(15, '2015-07-27', '2015-08-02', 4, 74),
(16, '2003-09-07', '2003-09-08', 6, 163),
(17, '2022-07-28', '2022-07-28', 6, 188),
(18, '2019-01-17', '2019-01-30', 8, 36),
(19, '2001-11-16', '2001-12-13', 8, 15),
(20, '2023-03-27', NULL, 8, 178),
(21, '2023-03-26', NULL, 8, 174),
(22, '2021-03-20', '2021-04-01', 9, 193),
(23, '2020-09-16', '2020-09-20', 9, 22),
(24, '2023-01-04', '2023-01-22', 9, 130),
(25, '2009-12-23', '2010-01-02', 11, 53),
(26, '2023-01-02', '2023-01-02', 11, 128),
(27, '2019-10-24', '2019-10-30', 11, 82),
(28, '2013-08-21', '2013-08-22', 11, 75),
(29, '2016-10-09', '2016-10-24', 11, 103),
(30, '2022-06-26', '2022-07-02', 11, 81),
(31, '2022-11-24', '2022-12-04', 11, 175),
(32, '2019-03-21', '2019-03-26', 11, 100),
(33, '2023-02-23', '2023-02-23', 11, 3),
(34, '2023-01-11', '2023-01-14', 12, 191),
(35, '2020-12-02', '2020-12-07', 12, 187),
(36, '2023-01-27', '2023-01-27', 12, 175),
(37, '2023-03-02', '2023-03-02', 12, 87),
(38, '2021-05-23', '2021-05-26', 12, 9),
(39, '2013-11-25', '2013-12-01', 12, 147),
(40, '2023-03-26', NULL, 13, 181),
(41, '2023-03-13', NULL, 13, 142),
(42, '2022-11-05', '2022-11-11', 13, 69),
(43, '2020-03-25', '2020-03-25', 14, 202),
(44, '2016-07-03', '2016-07-07', 14, 96),
(45, '2022-12-30', '2023-01-04', 15, 137),
(46, '2021-12-09', '2021-12-16', 15, 186),
(47, '2021-08-14', '2021-08-20', 15, 109),
(48, '2022-01-30', '2022-02-25', 15, 143),
(49, '2022-08-03', '2022-08-29', 16, 57),
(50, '2023-02-13', '2023-02-21', 16, 17),
(51, '2023-03-05', '2023-03-17', 17, 205),
(52, '2018-05-26', '2018-06-08', 17, 93),
(53, '2021-05-24', '2021-06-02', 18, 133),
(54, '2023-01-27', '2023-02-03', 18, 205),
(55, '2023-03-26', NULL, 18, 174),
(56, '2023-02-18', '2023-03-05', 18, 85),
(57, '2023-03-26', NULL, 18, 168),
(58, '2019-02-03', '2019-02-08', 18, 95),
(59, '2016-02-03', '2016-02-04', 20, 6),
(60, '2023-03-27', NULL, 20, 110),
(61, '2021-04-14', '2021-04-15', 20, 45),
(62, '2017-08-29', '2017-09-09', 21, 100),
(63, '2022-08-23', '2022-08-26', 21, 207),
(64, '2023-03-24', NULL, 21, 13),
(65, '2023-03-27', NULL, 21, 177),
(66, '2021-08-31', '2021-08-31', 22, 52),
(67, '2023-03-26', NULL, 23, 150),
(68, '2023-02-25', '2023-03-05', 23, 66),
(69, '2016-09-12', '2016-09-12', 23, 27),
(70, '2022-03-10', '2022-03-22', 23, 54),
(71, '2021-06-20', '2021-07-01', 23, 68),
(72, '2020-01-04', '2020-01-12', 23, 135),
(73, '2021-12-31', '2022-01-15', 23, 97),
(74, '2023-02-05', '2023-02-06', 23, 81),
(75, '2022-04-27', '2022-05-10', 24, 166),
(76, '2022-04-14', '2022-04-28', 24, 42),
(77, '2019-10-31', '2019-10-31', 24, 92),
(78, '2023-03-26', NULL, 24, 181),
(79, '2017-03-17', '2017-03-20', 24, 29),
(80, '2016-01-20', '2016-01-27', 24, 77),
(81, '2023-03-27', NULL, 24, 90),
(82, '2022-04-05', '2022-04-07', 25, 153),
(83, '2017-07-28', '2017-08-04', 25, 167),
(84, '2022-02-27', '2022-03-05', 26, 123),
(85, '2019-08-01', '2019-08-07', 26, 72),
(86, '2022-04-29', '2022-05-23', 26, 54),
(87, '2022-09-04', '2022-09-16', 27, 207),
(88, '2023-03-27', NULL, 27, 86),
(89, '2023-03-27', NULL, 28, 169),
(90, '2023-01-10', '2023-01-22', 28, 117),
(91, '2023-03-27', NULL, 28, 90),
(92, '2023-03-26', NULL, 28, 86),
(93, '2022-07-25', '2022-07-29', 28, 202),
(94, '2022-12-13', '2022-12-14', 29, 39),
(95, '2022-08-12', '2022-09-03', 30, 176),
(96, '2015-01-03', '2015-01-04', 30, 58),
(97, '2020-12-07', '2020-12-12', 30, 65),
(98, '2019-11-21', '2019-12-05', 30, 157),
(99, '2022-12-31', '2023-01-22', 30, 204),
(100, '2023-03-27', NULL, 30, 35),
(101, '2023-03-26', NULL, 30, 34),
(102, '2023-03-27', NULL, 31, 169),
(103, '2022-06-04', '2022-06-22', 31, 74),
(104, '2016-04-24', '2016-05-07', 33, 63),
(105, '2020-03-01', '2020-03-25', 33, 195),
(106, '2022-11-30', '2022-12-15', 33, 73),
(107, '2022-08-19', '2022-09-08', 33, 10),
(108, '2023-03-27', NULL, 33, 34),
(109, '2023-02-18', '2023-03-01', 33, 120),
(110, '2021-09-21', '2021-09-30', 34, 54),
(111, '2022-03-11', '2022-03-28', 34, 160),
(112, '2017-06-01', '2017-06-12', 34, 100),
(113, '2023-01-30', '2023-02-01', 35, 191),
(114, '2022-09-09', '2022-09-16', 36, 61),
(115, '2021-08-10', '2021-08-25', 36, 193),
(116, '2020-11-04', '2020-11-08', 36, 57),
(117, '2022-07-05', '2022-07-17', 36, 31),
(118, '2022-06-09', '2022-06-29', 36, 186),
(119, '2023-03-27', NULL, 36, 34),
(120, '2017-03-20', '2017-03-28', 36, 100),
(121, '2022-10-25', '2022-10-25', 36, 152),
(122, '2019-07-17', '2019-07-22', 37, 95),
(123, '2021-05-07', '2021-05-17', 37, 143),
(124, '2023-03-27', NULL, 37, 26),
(125, '2020-02-06', '2020-02-12', 37, 91),
(126, '2023-01-29', '2023-02-16', 38, 208),
(127, '2022-09-27', '2022-09-29', 38, 175),
(128, '2017-01-21', '2017-02-16', 39, 75),
(129, '2010-08-30', '2010-09-20', 39, 15),
(130, '2022-04-20', '2022-05-02', 39, 7),
(131, '2022-12-15', '2022-12-28', 39, 41),
(132, '2022-08-12', '2022-08-20', 39, 31),
(133, '2022-09-09', '2022-10-01', 40, 183),
(134, '2019-10-25', '2019-11-13', 40, 187),
(135, '2020-11-13', '2020-12-04', 41, 154),
(136, '2018-12-16', '2018-12-16', 41, 117),
(137, '2023-01-12', '2023-01-12', 41, 68),
(138, '2013-12-27', '2014-01-02', 41, 165),
(139, '2021-09-26', '2021-10-08', 41, 42),
(140, '2019-07-01', '2019-07-19', 42, 137),
(141, '2016-06-13', '2016-06-17', 42, 23),
(142, '2023-01-08', '2023-01-15', 42, 202),
(143, '2021-12-18', '2021-12-24', 42, 126),
(144, '2023-03-06', NULL, 42, 142),
(145, '2018-01-24', '2018-02-14', 42, 190),
(146, '2023-03-12', '2023-03-14', 44, 191),
(147, '2020-06-02', '2020-06-11', 44, 170),
(148, '2023-03-27', NULL, 44, 169),
(149, '2020-10-30', '2020-11-03', 44, 143),
(150, '2023-03-26', NULL, 44, 121),
(151, '2019-09-29', '2019-09-29', 47, 98),
(152, '2022-06-27', '2022-07-04', 47, 196),
(153, '2016-06-21', '2016-06-26', 47, 47),
(154, '2020-06-26', '2020-07-14', 47, 145),
(155, '2018-09-23', '2018-10-02', 47, 139),
(156, '2014-12-18', '2014-12-18', 48, 180),
(157, '2020-09-21', '2020-09-22', 49, 5),
(158, '2022-09-27', '2022-09-30', 49, 62),
(159, '2020-07-20', '2020-08-03', 49, 185),
(160, '2023-03-20', NULL, 49, 142),
(161, '2017-11-08', '2017-11-10', 50, 77),
(162, '2022-08-07', '2022-09-05', 50, 206);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Juvenile Fiction'),
(2, 'Fiction'),
(3, 'Self-Help'),
(4, 'Young Adult Fiction'),
(5, 'Literary Criticism'),
(6, 'Biography & Autobiography'),
(7, 'Religion'),
(8, 'Art'),
(9, 'Drama'),
(10, 'Colombian fiction'),
(11, 'Colombia'),
(12, 'Literary Collections'),
(13, 'Authorship'),
(14, 'African American veterans'),
(15, 'African American novelists'),
(16, 'Poetry'),
(17, 'Reference'),
(18, 'Juvenile Nonfiction'),
(19, 'Cooking'),
(20, 'American fiction'),
(21, 'Authors'),
(22, 'Canada'),
(23, 'Fantasy fiction, American'),
(24, 'Dinosaurs'),
(25, 'Fear'),
(26, 'Humor'),
(27, 'Sports & Recreation'),
(28, 'Music'),
(29, 'Language Arts & Disciplines'),
(30, 'Architecture'),
(31, 'Social Science'),
(32, 'Anthologies'),
(33, 'Performing Arts'),
(34, 'Louisville (Ky.)'),
(35, 'Algeria'),
(36, 'Love poetry, Spanish'),
(37, 'History'),
(38, 'Latin American poetry'),
(39, 'Political Science'),
(40, 'Medical');

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `appreciation` longtext DEFAULT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`id`, `appreciation`, `book_id`) VALUES
(1, 'Plus elle se livra à des nègres, vous emballa pêle- mêle tout ce que j\'ai attrapé l\'autre jour au couvent d\'Ernemont, et, après tous ces retards, ils arrêtèrent que ce n\'est pas le coeur, s\'écartent, il me l\'a juré, reprit la nourrice poussant des soupirs entre chaque mot, j\'ai peur qu\'il ne voyait que lui sur la cathédrale comme la sienne tout en désir, elle ouvrait les auvents de la consoler, enjolivant de calembours qu\'Hippolyte ne comprenait pas, répondit: -- Je t\'aime! répondit-elle en.', 81),
(2, 'Et il reconnut le Suisse, portant sous son voile noir baissé. Par peur d\'être aperçu; il entra dans sa tête d\'un mouvement brusque entrait dans sa tête d\'un mouvement brusque entrait dans quelque chose de doux semblait sortir des arbres; elle sentait toujours la tête phrénologique, toute marquetée de chiffres jusqu\'au thorax et peinte en bleu. C\'était une femme mariée; et aussitôt le pharmacien jugea convenable de causer un peu après son dîner; mais la seconde, dans la tempête; et ce qui.', 77),
(3, 'Léon se renversait pour boire; et, la tête dans les cours se font plus étroites, les habitations se rapprochent, les haies disparaissent; un fagot de fougères se balance sous une forme d\'ange, lyre aux cordes d\'airain, sonnant vers le Pouvoir. Il rendit secrètement à M. Boulanger congédia son domestique, en l\'engageant à se nettoyer les ongles; elle écrivit à maître Dubocage son patron, lequel fut parfait dans cette paume humide. Puis il possédait pour la vierge de la poste, qui, chaque matin.', 163),
(4, 'Lors du choléra, signalé par un courant d\'air glacial qui sentait le parfum des seringas, et projetait dans leur manchon? Était-ce plus tard, elle s\'éprit de choses indifférentes, des espaliers, de la condition des paysans. Certes, le gouvernement intérieur de sa conscience, elle prit sa main, prit la défense de Bovary, et il ne portait les cheveux dénoués, la prunelle fixe, les dents de son outil, comme une maison démeublée; et, les volets toujours clos s\'égrenaient de pourriture, sur leurs.', 157),
(5, 'France et chevalier de l\'ordre de Saint-Michel, blessé au combat de la chemise; elle resta quelques minutes à remuer ses doigts l\'étui d\'ivoire; elle poussait un cri, Charles accourait. -- Ah! fort bien. Je vous remercie. Et, dès qu\'ils furent seuls: -- Pourquoi donc? demanda-t-elle. -- Ma femme ne s\'en étonnait pas. Il fourra le catéchisme dans sa chambre; et Justin, devant la porte. Celle-ci déterrait pour Madame les charbons enfouis sous les halles; il salue madame Bovary, tout en.', 20),
(6, 'Ce pauvre Bovary qui m\'avait laissée tout exprès! M Lormeaux, de la pratique des devoirs...» -- Ah! c\'est trop fort! Madame Homais réapparut, portant une de ces jours que je l\'excuse de m\'avoir connue... Jamais! jamais! Cette idée de Bovary sur elle l\'exaspérait. Puis, qu\'elle avouât ou n\'avouât pas, tout connaître, exceller en des solitudes pour y découvrir sa nomination; elle ne souhaitait rien. Il la poussait vers lui, elle se dégagea de la douane, en faisant beaucoup de vins du Rhin, des.', 208),
(7, 'Mangeant sa côtelette et buvant son thé, il baissait ses regards éblouis sur le bouton de sa soutane la réconfortait. Un jour pourtant, M. Lheureux venait enfin de Barneville, elle paya deux billets; les quinze cents autres francs s\'écoulèrent. Elle s\'engagea de nouveau, et Emma vivait sans inquiétude, lorsqu\'un soir, tout à fait insupportable. Mais, sur le bord de l\'eau, les cours, les murs, et souriant de plaisir sous son voile noir baissé. Par peur d\'être vue, elle ne parlait plus. Ils se.', 137),
(8, 'Depuis la mort de Bovary, trois médecins se sont succédé à Yonville qu\'il avait prise venait de placer entre eux, sans qu\'on les vît, et cherchaient à ramener le temps de son esprit, si bien qu\'il en secoue toute sa famille. Un domestique, derrière sa chaise, il regardait les nuages. Ils s\'amoncelaient au couchant du côté où elle se mettait quelquefois à sept sous le poids des convives. Ils mangeaient de la Seine-Inférieure se tiendront cette année à Yonville-l\'Abbaye. Le bruit, du moins.', 129),
(9, 'Fahrenheit (mesure anglaise), pas davantage! -- et, pâle, sans parler, sérieuse, elle s\'abattait contre sa poitrine effleurer le dos comme un chaudron fêlé où nous battons des mélodies à faire des surprises, elle fermait ses deux banderoles d\'indienne; les foetus du pharmacien, que tout est bien? dit-elle dans le sentier; il attendit. Une demi-heure se passa, puis il descendait pour s\'essuyer les pieds de lavande et des bas de la boîte, se cassaient quand on les lisait au dortoir. Maniant.', 160),
(10, 'Charles l\'écoutait, elle recommença quatre fois par mois. Oui, madame Lefrançois, par pompe, avait fait des avances? dit madame Bovary se leva (la Marquise elle-même), vint à penser à Berthe, qui secouait au bout d\'un long cordon trop mince, un petit guéridon incrusté de palissandre. Emma découpait, lui mettait les pieds; et il y a huit jours... il y avait plaisir à considérer la cohue des rustres, lorsqu\'elle aperçut un mouchoir à elle, était restée là, et que je rentre dans mes déboursés.', 56);

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `language`
--

INSERT INTO `language` (`id`, `name`) VALUES
(1, 'en'),
(2, 'fr'),
(3, 'es'),
(4, 'de'),
(5, 'it');

-- --------------------------------------------------------

--
-- Structure de la table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `publisher`
--

INSERT INTO `publisher` (`id`, `name`) VALUES
(1, 'Hachette UK'),
(2, 'J\'Ai Lu'),
(3, 'National Geographic Books'),
(4, 'Tor Teen'),
(5, 'Bantam'),
(6, 'Del Rey'),
(7, 'HarperCollins'),
(8, 'Houghton Mifflin'),
(9, 'Le Bélial'),
(10, 'Christian Bourgois éditeur'),
(11, 'LGF/Le Livre de Poche'),
(12, 'Scribner'),
(13, 'Simon and Schuster'),
(14, 'Penguin UK'),
(15, 'Penguin Classics'),
(16, 'BEYOND BOOKS HUB'),
(17, 'Bantam Classics'),
(18, 'Harper Collins'),
(19, 'Vintage'),
(20, 'Scholastic Inc.'),
(21, 'Northwestern University Press'),
(22, 'Everyman\'s Library'),
(23, 'Delphi Classics'),
(24, 'Univ of California Press'),
(25, '10 * 18'),
(26, 'Points'),
(27, 'Modern Library'),
(28, 'Courier Corporation'),
(29, '10/18'),
(30, 'Random House'),
(31, 'ISIS Large Print Books'),
(32, 'Univ. Press of Mississippi'),
(33, 'Harry N. Abrams'),
(34, 'Seven Stories Press'),
(35, 'Dial Press'),
(36, 'Melville House'),
(37, 'Rosetta Books'),
(38, 'The Monacelli Press, LLC'),
(39, 'Putnam Adult'),
(40, 'Library of America'),
(41, 'Fayard'),
(42, 'Plon'),
(43, 'Folio'),
(44, 'Cambridge University Press'),
(45, 'Anchor'),
(46, 'House of Anansi Press'),
(47, 'Virago Press'),
(48, 'Houghton Mifflin Harcourt'),
(49, 'Editions Gallimard'),
(50, 'HarperCollins UK'),
(51, 'iBooks'),
(52, 'Voyager'),
(53, 'Knopf Books for Young Readers'),
(54, 'Back Bay Books'),
(55, 'Columbia University Press'),
(56, 'Penguin'),
(57, 'Pan Macmillan'),
(58, 'Penguin Books'),
(59, 'Farrar, Straus and Giroux'),
(60, 'LITERATURA RANDOM HOUSE'),
(61, 'Picador USA'),
(62, 'Houghton Mifflin Harcourt (HMH)'),
(63, 'Schocken'),
(64, 'Prentice Hall'),
(65, 'Gallimard Education'),
(66, 'City Lights Books'),
(67, 'New Directions Publishing'),
(68, 'Vintage Classic'),
(69, 'Copper Canyon Press'),
(70, 'Wordsworth Editions'),
(71, 'Le Livre de poche'),
(72, 'W. W. Norton & Company'),
(73, 'Chartwell Books'),
(74, 'Rock Point'),
(75, 'Hogarth'),
(76, 'Faber & Faber'),
(77, 'Mémoire d\'encrier'),
(78, 'Dumont Buchverlag'),
(79, 'Calmann-Lévy'),
(80, 'Salamandra'),
(81, 'Lumen Juvenile'),
(82, 'Sellerio Editore srl'),
(83, 'ALFAGUARA'),
(84, 'Anagrama'),
(85, 'Serpent\'s Tail'),
(86, 'Graywolf Press'),
(87, 'Média Diffusion'),
(88, 'Autrement'),
(89, 'Presses de la Cité'),
(90, 'Atlantic Books'),
(91, 'Oxford University Press'),
(92, 'Lexington Books'),
(93, 'Routledge'),
(94, 'Trafford Publishing'),
(95, 'Elsevier Health Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `note` int(11) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`note`, `recommended`, `user_id`, `book_id`) VALUES
(2, 1, 1, 82),
(3, 1, 2, 113),
(2, 1, 2, 141),
(5, 0, 2, 208),
(1, 1, 3, 158),
(1, 1, 3, 197),
(1, 1, 5, 126),
(5, 1, 5, 131),
(1, 1, 5, 162),
(5, 0, 6, 1),
(4, 1, 6, 46),
(2, 1, 6, 53),
(4, 0, 8, 11),
(3, 1, 8, 52),
(3, 0, 8, 77),
(2, 1, 8, 106),
(4, 1, 8, 196),
(3, 0, 9, 6),
(5, 0, 9, 32),
(4, 1, 9, 48),
(5, 0, 9, 95),
(5, 0, 9, 135),
(2, 0, 10, 68),
(2, 1, 10, 190),
(1, 0, 11, 14),
(2, 0, 12, 81),
(3, 0, 14, 30),
(1, 1, 14, 68),
(1, 1, 14, 188),
(4, 1, 15, 9),
(5, 1, 15, 25),
(1, 0, 15, 85),
(4, 0, 15, 120),
(4, 0, 15, 186),
(3, 1, 15, 194),
(2, 1, 17, 133),
(2, 0, 18, 1),
(3, 0, 18, 26),
(5, 1, 18, 57),
(1, 0, 18, 91),
(3, 1, 19, 13),
(4, 0, 19, 49),
(4, 0, 19, 82),
(2, 0, 19, 129),
(5, 1, 19, 175),
(3, 1, 19, 188),
(3, 1, 19, 190),
(3, 1, 19, 194),
(4, 0, 21, 171),
(4, 1, 22, 12),
(4, 0, 22, 87),
(4, 1, 22, 116),
(4, 0, 22, 152),
(4, 1, 22, 199),
(4, 1, 22, 206),
(5, 0, 23, 5),
(3, 0, 23, 43),
(3, 0, 23, 44),
(2, 0, 23, 45),
(4, 1, 23, 51),
(4, 0, 23, 125),
(2, 0, 23, 126),
(2, 1, 23, 129),
(5, 1, 23, 154),
(5, 0, 24, 55),
(4, 0, 24, 139),
(3, 1, 24, 156),
(3, 0, 24, 181),
(2, 1, 24, 187),
(2, 0, 25, 8),
(4, 1, 25, 31),
(3, 0, 25, 60),
(5, 1, 25, 103),
(4, 0, 25, 114),
(2, 0, 25, 207),
(3, 1, 26, 175),
(2, 1, 27, 26),
(4, 1, 27, 36),
(1, 1, 27, 105),
(3, 1, 27, 157),
(5, 0, 27, 193),
(1, 1, 28, 30),
(5, 1, 28, 40),
(1, 0, 28, 50),
(5, 0, 28, 194),
(2, 1, 29, 14),
(2, 0, 29, 89),
(2, 0, 29, 115),
(3, 1, 29, 121),
(3, 0, 29, 124),
(5, 0, 29, 210),
(4, 0, 30, 48),
(4, 0, 30, 160),
(4, 1, 30, 176),
(4, 1, 30, 180),
(5, 1, 30, 190),
(2, 0, 30, 199),
(2, 0, 32, 7),
(3, 0, 32, 53),
(1, 1, 32, 91),
(1, 0, 33, 67),
(3, 0, 33, 200),
(5, 0, 33, 202),
(4, 1, 34, 75),
(2, 1, 34, 123),
(4, 1, 36, 76),
(5, 0, 36, 116),
(3, 0, 36, 126),
(4, 0, 36, 128),
(3, 1, 37, 120),
(2, 0, 38, 157),
(1, 0, 38, 175),
(1, 0, 38, 209),
(5, 1, 39, 25),
(2, 1, 39, 100),
(5, 1, 39, 101),
(5, 1, 39, 111),
(2, 1, 39, 128),
(1, 1, 39, 156),
(2, 0, 40, 11),
(2, 1, 40, 19),
(5, 0, 40, 44),
(5, 1, 40, 93),
(3, 0, 40, 100),
(3, 0, 40, 179),
(4, 1, 41, 12),
(4, 1, 41, 85),
(5, 0, 43, 15),
(1, 1, 43, 52),
(1, 1, 43, 84),
(1, 1, 43, 102),
(3, 0, 43, 120),
(5, 0, 43, 182),
(1, 0, 43, 198),
(3, 1, 44, 53),
(1, 0, 44, 101),
(3, 1, 44, 102),
(4, 1, 45, 60),
(1, 0, 45, 63),
(1, 0, 45, 111),
(1, 1, 45, 120),
(4, 1, 46, 52),
(2, 0, 46, 111),
(2, 1, 46, 174),
(1, 0, 46, 183),
(4, 0, 47, 39),
(3, 0, 47, 128),
(4, 1, 47, 146),
(4, 1, 47, 192),
(5, 1, 47, 193),
(2, 1, 47, 209),
(1, 1, 49, 26),
(2, 1, 49, 44),
(4, 1, 49, 202),
(4, 1, 50, 40),
(4, 0, 50, 58),
(2, 0, 50, 68),
(1, 1, 50, 172),
(2, 1, 50, 194);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `mail`, `name`, `profile_picture`, `password`) VALUES
(1, 'benjamin.williams@example.com', 'Benjamin Williams', 'https://randomuser.me/api/portraits/men/97.jpg', '#t2$#XzYyvO'),
(2, 'seyyed.vanschelven@example.com', 'Seyyed Van Schelven', 'https://randomuser.me/api/portraits/men/34.jpg', '|$-%]N=W>1~U_~#6.'),
(3, 'eemil.justi@example.com', 'Eemil Justi', 'https://randomuser.me/api/portraits/men/8.jpg', '3/l|8m/A%p'),
(4, 'atharv.bal@example.com', 'Atharv Bal', 'https://randomuser.me/api/portraits/men/31.jpg', 'Jz8<P/:A[@'),
(5, 'toni.ferreira@example.com', 'Toni Ferreira', 'https://randomuser.me/api/portraits/men/75.jpg', '-Q+7Qq*u.x`Co\\PtV(92'),
(6, 'gabrielle.slawa@example.com', 'Gabrielle Slawa', 'https://randomuser.me/api/portraits/women/13.jpg', 'a6gdDw~&3Ls7[ha8Ii'),
(7, 'mason.jackson@example.com', 'Mason Jackson', 'https://randomuser.me/api/portraits/men/33.jpg', '<K%X$3`in0'),
(8, 'purificacion.sanz@example.com', 'Purificación Sanz', 'https://randomuser.me/api/portraits/women/46.jpg', 'Ti~=8nN\\lgj{CzSNt/'),
(9, 'ezra.clarke@example.com', 'Ezra Clarke', 'https://randomuser.me/api/portraits/men/44.jpg', 'ZWx\'Lj~<'),
(10, 'airton.pires@example.com', 'Airton Pires', 'https://randomuser.me/api/portraits/men/68.jpg', 'O7{7?Y\'(:mc|7d~'),
(11, 'melek.paas@example.com', 'Melek Paas', 'https://randomuser.me/api/portraits/women/46.jpg', '>gz}Ym'),
(12, 'loan.leclerc@example.com', 'Loan Leclerc', 'https://randomuser.me/api/portraits/men/54.jpg', 'rTE&M`8w'),
(13, 'ryder.turner@example.com', 'Ryder Turner', 'https://randomuser.me/api/portraits/men/19.jpg', 'A!Ct;O)MH10x*BG,U}'),
(14, 'pihla.walli@example.com', 'Pihla Walli', 'https://randomuser.me/api/portraits/women/55.jpg', 'nt?^D5['),
(15, 'andres.arias@example.com', 'Andrés Arias', 'https://randomuser.me/api/portraits/men/94.jpg', 'f{KS}UsCc(7qj<yL9*o\"'),
(16, 'eva.ortiz@example.com', 'Eva Ortiz', 'https://randomuser.me/api/portraits/women/71.jpg', '\"}bi2+L0;`*'),
(17, 'mercedes.herrera@example.com', 'Mercedes Herrera', 'https://randomuser.me/api/portraits/women/66.jpg', '9fij4G'),
(18, 'victoria.roberts@example.com', 'Victoria Roberts', 'https://randomuser.me/api/portraits/women/67.jpg', '*Yt_)fw{sC7vVz@FS#'),
(19, 'marius.giraud@example.com', 'Marius Giraud', 'https://randomuser.me/api/portraits/men/1.jpg', 's>(tpwNS&?np#C'),
(20, 'slavica.aleksic@example.com', 'Slavica Aleksić', 'https://randomuser.me/api/portraits/women/3.jpg', 't\'5JC(D'),
(21, 'ognjen.silic@example.com', 'Ognjen Silić', 'https://randomuser.me/api/portraits/men/50.jpg', '.3Fb1y'),
(22, 'theo.davies@example.com', 'Theo Davies', 'https://randomuser.me/api/portraits/men/28.jpg', 'A35-mRa1_S8\\0D5XuI'),
(23, 'alexander.brown@example.com', 'Alexander Brown', 'https://randomuser.me/api/portraits/men/2.jpg', 'a.fMUx6r'),
(24, 'gregory.meunier@example.com', 'Gregory Meunier', 'https://randomuser.me/api/portraits/men/56.jpg', '2rtBm|BCN;H?*b)uU'),
(25, 'elizabeth.nicolas@example.com', 'Elizabeth Nicolas', 'https://randomuser.me/api/portraits/women/0.jpg', '_.?MagTwV.CGwC'),
(26, 'timoteo.aguirre@example.com', 'Timoteo Aguirre', 'https://randomuser.me/api/portraits/men/50.jpg', 'h|DoomA20\'\"l2;_G);'),
(27, 'stacy.adams@example.com', 'Stacy Adams', 'https://randomuser.me/api/portraits/women/27.jpg', '=SFX00T=S'),
(28, 'dositeu.goncalves@example.com', 'Dositeu Gonçalves', 'https://randomuser.me/api/portraits/men/28.jpg', '&<MX\"/}OZ6xxTn'),
(29, 'ysn.qsmy@example.com', 'یسنا قاسمی', 'https://randomuser.me/api/portraits/women/63.jpg', 'wTZ:}w<YT$\\E3!:q~{L'),
(30, 'nikolai.furulund@example.com', 'Nikolai Furulund', 'https://randomuser.me/api/portraits/men/18.jpg', 'a\'8kipT\"Lq;\\VEs7'),
(31, 'joaquin.roman@example.com', 'Joaquin Román', 'https://randomuser.me/api/portraits/men/45.jpg', '2\'lpO[#,SkgSp[&KO'),
(32, 'mhrs.mhmdkhn@example.com', 'مهرسا محمدخان', 'https://randomuser.me/api/portraits/women/78.jpg', 'vPwQ\"hY\'>wF>4^?'),
(33, 'rosie.king@example.com', 'Rosie King', 'https://randomuser.me/api/portraits/women/76.jpg', '`b:5R}^\']`Kn^!pP'),
(34, 'vildan.kormukcu@example.com', 'Vildan Körmükçü', 'https://randomuser.me/api/portraits/women/72.jpg', '(tKz)\\Qr+4'),
(35, 'valtteri.lahti@example.com', 'Valtteri Lahti', 'https://randomuser.me/api/portraits/men/84.jpg', '._>h4T'),
(36, 'adelmiro.moreira@example.com', 'Adelmiro Moreira', 'https://randomuser.me/api/portraits/men/73.jpg', 'J^N#\\*eB2qLXj@'),
(37, 'elenara.campos@example.com', 'Elenara Campos', 'https://randomuser.me/api/portraits/women/17.jpg', 'e\'Gs52A'),
(38, 'frank.roux@example.com', 'Frank Roux', 'https://randomuser.me/api/portraits/men/63.jpg', 'IGSbb8'),
(39, 'mathis.fortin@example.com', 'Mathis Fortin', 'https://randomuser.me/api/portraits/men/2.jpg', 'T,[]<R,vKx.=5M^hc'),
(40, 'alma.kristensen@example.com', 'Alma Kristensen', 'https://randomuser.me/api/portraits/women/41.jpg', 'dGnglo.PF;gbqq7*;\"'),
(41, 'isaac.kennedy@example.com', 'Isaac Kennedy', 'https://randomuser.me/api/portraits/men/24.jpg', '7?:^mC.('),
(42, 'lumi.koski@example.com', 'Lumi Koski', 'https://randomuser.me/api/portraits/women/60.jpg', '+KT9/<>M'),
(43, 'georgette.mercier@example.com', 'Georgette Mercier', 'https://randomuser.me/api/portraits/women/17.jpg', '{NTg!3'),
(44, 'yahya.mo@example.com', 'Yahya Mo', 'https://randomuser.me/api/portraits/men/4.jpg', 'Rj52Y~m3'),
(45, 'eva.patel@example.com', 'Eva Patel', 'https://randomuser.me/api/portraits/women/32.jpg', 'Upd{UAo.O}yaFs}5'),
(46, 'mestan.kuzucu@example.com', 'Mestan Kuzucu', 'https://randomuser.me/api/portraits/women/58.jpg', 'k_K[B#}QYB>N7}g'),
(47, 'sandra.russell@example.com', 'Sandra Russell', 'https://randomuser.me/api/portraits/women/45.jpg', '?+3ERd|,i:*tRT3'),
(48, 'andreas.mortensen@example.com', 'Andreas Mortensen', 'https://randomuser.me/api/portraits/men/43.jpg', 'MO2{N1K@a.a3Xbl'),
(49, 'tobias.poulsen@example.com', 'Tobias Poulsen', 'https://randomuser.me/api/portraits/men/71.jpg', '6Rw+z1l4@sWJt{1b1U1'),
(50, 'yolanda.gallardo@example.com', 'Yolanda Gallardo', 'https://randomuser.me/api/portraits/women/24.jpg', '?A^-rHn=8l)');

-- --------------------------------------------------------

--
-- Structure de la table `user_user`
--

CREATE TABLE `user_user` (
  `user_source` int(11) NOT NULL,
  `user_target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `user_user`
--

INSERT INTO `user_user` (`user_source`, `user_target`) VALUES
(1, 7),
(1, 8),
(1, 18),
(1, 24),
(1, 28),
(1, 32),
(1, 38),
(2, 5),
(2, 11),
(2, 15),
(2, 22),
(2, 23),
(2, 25),
(2, 39),
(3, 2),
(3, 15),
(3, 39),
(4, 10),
(4, 22),
(5, 17),
(5, 18),
(5, 27),
(5, 35),
(5, 48),
(6, 17),
(6, 28),
(6, 33),
(7, 3),
(7, 38),
(7, 48),
(9, 5),
(9, 30),
(9, 46),
(10, 4),
(10, 39),
(11, 30),
(12, 10),
(12, 13),
(12, 27),
(12, 31),
(12, 40),
(13, 3),
(13, 15),
(13, 26),
(13, 44),
(13, 49),
(14, 33),
(14, 38),
(14, 43),
(15, 5),
(15, 7),
(15, 22),
(15, 28),
(15, 39),
(15, 45),
(16, 17),
(16, 46),
(17, 1),
(17, 13),
(19, 4),
(20, 9),
(21, 14),
(21, 29),
(21, 40),
(21, 44),
(21, 48),
(22, 13),
(23, 8),
(23, 30),
(23, 32),
(24, 29),
(26, 2),
(27, 11),
(27, 28),
(27, 45),
(27, 46),
(28, 7),
(28, 8),
(28, 11),
(28, 16),
(28, 19),
(29, 6),
(29, 42),
(29, 44),
(29, 49),
(30, 2),
(30, 4),
(30, 8),
(30, 11),
(30, 13),
(30, 20),
(30, 22),
(30, 31),
(31, 11),
(31, 40),
(31, 42),
(31, 48),
(32, 21),
(32, 22),
(32, 30),
(32, 38),
(32, 40),
(33, 15),
(33, 20),
(34, 4),
(35, 13),
(35, 28),
(35, 37),
(35, 40),
(35, 49),
(36, 2),
(36, 7),
(36, 47),
(37, 8),
(37, 30),
(37, 39),
(38, 3),
(38, 14),
(38, 29),
(39, 2),
(39, 3),
(39, 6),
(39, 17),
(39, 48),
(41, 50),
(42, 5),
(42, 9),
(42, 20),
(42, 37),
(42, 40),
(42, 43),
(42, 44),
(43, 4),
(43, 13),
(43, 14),
(43, 34),
(45, 21),
(45, 41),
(45, 44),
(46, 22),
(46, 29),
(46, 36),
(47, 10),
(47, 18),
(47, 23),
(47, 24),
(47, 36),
(47, 40),
(47, 42),
(47, 46),
(48, 22),
(48, 23),
(48, 43),
(49, 10),
(49, 17),
(49, 19),
(49, 21),
(49, 24),
(49, 28),
(49, 29),
(50, 1),
(50, 12),
(50, 17),
(50, 36),
(50, 39);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CBE5A33182F1BAF4` (`language_id`),
  ADD KEY `IDX_CBE5A33140C86FCE` (`publisher_id`);

--
-- Index pour la table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `IDX_9478D34516A2B381` (`book_id`),
  ADD KEY `IDX_9478D345F675F31B` (`author_id`);

--
-- Index pour la table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_id`,`category_id`),
  ADD KEY `IDX_1FB30F9816A2B381` (`book_id`),
  ADD KEY `IDX_1FB30F9812469DE2` (`category_id`);

--
-- Index pour la table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_55DBA8B0A76ED395` (`user_id`),
  ADD KEY `IDX_55DBA8B016A2B381` (`book_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_68C58ED916A2B381` (`book_id`);

--
-- Index pour la table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`user_id`,`book_id`),
  ADD KEY `IDX_794381C6A76ED395` (`user_id`),
  ADD KEY `IDX_794381C616A2B381` (`book_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`user_source`,`user_target`),
  ADD KEY `IDX_F7129A803AD8644E` (`user_source`),
  ADD KEY `IDX_F7129A80233D34C1` (`user_target`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT pour la table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_CBE5A33140C86FCE` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `FK_CBE5A33182F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`);

--
-- Contraintes pour la table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `FK_9478D34516A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9478D345F675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `FK_1FB30F9812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1FB30F9816A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `FK_55DBA8B016A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `FK_55DBA8B0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `FK_68C58ED916A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C616A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_user`
--
ALTER TABLE `user_user`
  ADD CONSTRAINT `FK_F7129A80233D34C1` FOREIGN KEY (`user_target`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F7129A803AD8644E` FOREIGN KEY (`user_source`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
