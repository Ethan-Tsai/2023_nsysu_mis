-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-14 09:48:35
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `web_project_1111`
--

-- --------------------------------------------------------

--
-- 資料表結構 `acco`
--

CREATE TABLE `acco` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `tips` text NOT NULL,
  `pic_route` text NOT NULL,
  `upload_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `acco`
--

INSERT INTO `acco` (`id`, `title`, `content`, `tips`, `pic_route`, `upload_time`) VALUES
(1, 'Sunset Beach Resort', 'Introduction： Sunset Beach Resort is located on the campus of National Sun Yat-Sen University. It provides comfortable accommodation, dining and exhibition venues for teaching, internship, research, academic exchanges, conferences and visitors. There are friendly service staff, because the hotel does not have an elevator, they will help with luggage to the room. The room is spacious and the beach is very comfortable.', 'Address：No.51, Lianhai Rd., Gushan Dist., Kaohsiung City 80441\r\nTEL：+ 886 - 7 - 525 0056 / FAX：+ 886 - 7 - 525 0195\r\nEmail：seasbay@gmail.com', '../../pic/new_pic/acco/Sunset Beach Resort.jpg', '2022-12-10 21:45:07'),
(2, 'Ambassador Hotel', 'Introduction： The Ambassador Hotel Kaohsiung is the best place for vacation with its charming love river style. Every National Day, there will be National Day fireworks by the Love River, and the balcony in the room of the Ambassador Hotel Kaohsiung is an excellent place to appreciate it. However, it will be closed in January next year, so you should hold on to the chance to book a room.', 'Address：No. 202, Minsheng 2nd Rd, Qianjin District, Kaohsiung City, 80144\r\nTEL：+886 7 211 5211/ 0800 051 111', '../../pic/new_pic/acco/Ambassador Hotel.jpg', '2022-12-10 21:45:07'),
(3, 'Hotel Yam Lagom', 'Introduction： This hotel has been open in recent years. The counter staff are friendly, and there are free biscuits and tea bags that you can pick up while waiting. The room is a bit small, but the furnishings are quite good, and there are also small drinks in the refrigerator. The scenery outside the window overlooks Kaohsiung Port and part of Yancheng. Although the bathroom is separated from wet and dry, it can only take shower. The overall performance is average, but the price is cheap, and it is still a good experience for us.', 'Address：No. 58, Qixian 3rd RD, Yancheng District, Kaohsiung City, 803\r\nTEL：07-5517066 / FAX：07-5518066', '../../pic/new_pic/acco/Hotel Yam Lagom.jpg', '2022-12-10 21:45:07'),
(4, 'Hamasen Homestay', 'Introduction： No matter what your reason for visiting Kaohsiung City, Hamasen Homestay is the ideal choice for a relaxing and relaxing getaway. Just 3.0 km from The Dome of Light, Hamasen Homestay in Kaohsiung is the ideal place to experience the local culture. All rooms are equipped with a variety of equipment to provide guests with a comfortable stay and a restful night\'s sleep. Some of the selected rooms at Hama Star Coast Homestay are uniquely designed and come with a balcony or terrace. Selected rooms offer TVs, daily newspapers and cable TV for your entertainment.', 'Address：No. 66, Lixiong Street,,Gushan, 804 Kaohsiung, Taiwan\r\nTEL：07-5315156', '../../pic/new_pic/acco/Hamasen Homestay.jpg', '2022-12-10 21:45:07'),
(5, 'Fullon Hotel Kaohsiung', 'Introduction：We provide you with elegant and comfortable sleeping space, seasonal and delicious exquisite cuisine, and the most sincere, cordial and considerate exclusive service. There are 250 exquisite guest rooms, suitable for business travelers, friends traveling, or family gatherings.There are seven basic room types. You can choose to overlook the wide view of Kaohsiung Harbor or the beautifully lit scene of Love River at night to fully experience the various customs of Kaohsiung.\r\n', 'TEL：07-551-1188 / FAX：07-521-1166\r\nEmail：kh@fullon-hotels.com.tw\r\nAddress：No. 45, Wufu 4th Road, Yancheng District, Kaohsiung City', '../../pic/new_pic/acco/Fullon Hotel Kaohsiung.jpg', '2022-12-10 23:09:48'),
(6, 'TENZ-GO Hotel', 'Introduction：\"Consideration and warmth\" is the core spirit of Tianzige Hotel. We sincerely offer our warm wishes to all passengers. Through the thoughtful, sincere and delicate services provided by our team members from the heart and original intention, we will bring you as the warmth and comfort of being at home, and a beautiful memory belonging to Kaohsiung. For the parent-child group, the entire third floor is planned as a parent-child room and a children\'s recreation area. Outdoor tents and cars are directly moved into the room, so that children can play to their heart\'s content. The children\'s recreation area is in cooperation with papark Climber Parent-child Paradise , to create a parent-child entertainment area with a department store feel, and become a unique hotel parent-child children\'s playground in Kaohsiung.', 'TEL：886 7 5328899 / FAX：886 7 5327799\r\nAddress：No. 128, Qixian 3rd Road, Yancheng District, Kaohsiung City 803', '../../pic/new_pic/acco/TENZ-GO Hotel.jpg', '2022-12-10 23:09:48'),
(7, 'Q21 Hotel', 'Introduction：Under 3 years and 8 months of construction, Q21 Hotel is located in one of the prime districts- Yancheng district- in Kaohsiung city, neighboring the famous love river, the Pier 2 Art Zone and conveniently located near Yanchengpu metro station exit 2. 78 Non-smoking rooms, Buffet restaurant , 24 hours counter service, mechanical parking lots, Tourists travel informations, Free Wi-Fi,\r\nLaundromat, and 3D scanning for future modeling.', 'TEL：07-5212211 / 07-5210808\r\nAddress：No. 21, Dalu Road, Yancheng District, Kaohsiung City', '../../pic/new_pic/acco/Q21 Hotel.jpg\r\n', '2022-12-10 23:09:48'),
(8, 'YouBike in Kaohsiung', 'There are many Youbike station inside NSYSU, for example: There are some bikes behind the Management Institute. You can ride it and go through the tunnel, and you are arrived at Yancheng District. The website we provided to you can tell you that where the nearst youbike is for you, so you can save lots of time finding the youbike.', 'YouBike 2.0 Service Phone：07-262-6288\r\nCustomer Service Email：\r\nservice-kaohsiung@youbike.com.tw\r\n', '../../pic/new_pic/acco/YouBike in Kaohsiung.jpg', '2022-12-10 21:57:58'),
(9, 'MRT, LRT in Kaohsiung', 'The nearest MRT station is Sizihwan. First you go to the tunnel in NSYSU, and then just go straight, and Sizihwan Station is on your right side. When you arrived in Formosa Boulevard, you can change to the red line. LRT is a special feature in Kaohsiung, you can travel around Kaohsiung by it.', 'Customer service phone：(07)793-8888 Service time： 07:00~23:00\r\nLight rail customer service phone： (07)793-9676 \r\nService hours： 06:30~23:00', '../../pic/new_pic/acco/MRT, LRT in Kaohsiung.jpg', '2022-12-10 21:57:58'),
(10, 'Bus system in Kaohsiung', 'There are many bus station in NSYSU and Kaohsiung, and you can go to MRT station or other travel viewpoint by bus. The website have many functions. For example: It wil ask you to input where you are and where you want to go, and the website will show the nearest bus station and arange the journey for you.', 'Address：\r\n8th Floor, No. 25, Zhongzheng 3rd Road, Xinxing District, Kaohsiung City 800301\r\nTEL：07-229-9825', '../../pic/new_pic/acco/Bus system in Kaohsiung.jpg', '2022-12-10 21:57:58'),
(21, 'testadd', 'Enter your content in here...', 'Other tips?', '../../pic/new_pic/acco/testadd.jpg', '2022-12-13 19:04:11'),
(23, 'aaanew', 'Enter your content in here...', 'Other tips?', '../../pic/new_pic/acco/aaanew.jpg', '2022-12-13 19:18:25'),
(24, 'wqdnlqbjfdkwef', 'Enter your content in here...', 'Other tips?', '../../pic/new_pic/acco/wqdnlqbjfdkwef.jpg', '2022-12-13 22:04:44');

-- --------------------------------------------------------

--
-- 資料表結構 `attr`
--

CREATE TABLE `attr` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `tips` text NOT NULL,
  `pic_route` text NOT NULL,
  `upload_time` datetime NOT NULL DEFAULT current_timestamp(),
  `good` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `attr`
--

INSERT INTO `attr` (`id`, `title`, `content`, `tips`, `pic_route`, `upload_time`, `good`) VALUES
(1, 'Mt.Chai Secret', 'Located in Kaohsiung Chai Mountain, the \"Sea Cave\" is a very rammed Chai Mountain secret place in Kaohsiung recently, located in the middle of nowhere, you need to go down the slope from the path next to \"Cape Coffee\", look up when approaching the sea, this huge inverted U-shaped sea erosion arch scene is a natural studio sweeping IG, and at low tide you can also go to the rock in the center of the cave to take a beautiful photo, if you visit when no one is there,you will have the feeling of being on a desert island', 'recommended time: 4:00a.m. to 6:00p.m.', '../../pic/new_pic/attr/Mt.Chai Secret.jpg', '2022-12-10 22:11:49', 0),
(2, 'Dagou British Consulate', 'Dagou British Consulate Cultural Park is a Western-style building built by the United Kingdom in Kaohsiung in 1879. It is the first western-style building with the oldest recorded history in Taiwan. It is currently converted into a cultural and creative commodity store, a coffee shop, and high-end afternoon tea. Restaurant, art exhibition space. Look down for a view of Kaohsiung Harbor', 'recommended time: 9:00a.m. to 9:00p.m.', '../../pic/new_pic/attr/Dagou British Consulate.jpg', '2022-12-10 22:15:12', 2),
(3, 'ShoushanZoo', 'There are more than 100 kinds of rare birds and animals from all over the world in the park. They have their own stories. It is the best place to entertain and teach. There are not only animals, but also more than 100 kinds of native plants. There are many in the quiet Shoushan. The famous temple is hidden here, and it is located on the mountain, so the night view is also very beautiful.', 'recommended time: 9:00a.m. to 5:00p.m.', '../../pic/new_pic/attr/ShoushanZoo.jpg', '2022-12-10 22:18:20', 0),
(4, 'The Pier-2 Art Center', 'Through cooperation with artists, the unused warehouse space is reused. It occupies a large area and is mainly divided into three parts, Dayong Warehouse, Penglai Warehouse, and Dayi Warehouse, and each has its own scenic spots, such as Dayong\'s second tower with three floors. The building is high, you can see not only the port and Cijin, but also the 85th Building. The Railway Museum in Penglai displays various railways and train models.', 'recommended time: 8:00a.m. to 5:00p.m. ', '../../pic/new_pic/attr/The Pier-2 Art Center.jpg', '2022-12-10 22:21:09', 2),
(5, 'Wude tample', 'The building of Wude tample combines the spatial elements of \"Buddhist Temple\", \"Palace\" and \"Shrine\", so when you enter, you can feel the aura of respecting martial arts! The stairs outside have the feeling of a shrine, while the Roman columns at the entrance have the feeling of a palace, and some detailed decorations have the feeling of a Buddhist temple! At present, it is used as a place for kendo practice. There are Japanese shrines to worship the god of war, as well as samurai swords and armors to watch.', 'recommended time: 9:00a.m. to 5:00p.m.', '../../pic/new_pic/attr/Wude tample.jpg', '2022-12-10 22:23:32', 21),
(6, 'Kaohsiung Martyrs\' Shrine', 'Formerly known as a Japanese shrine, it was changed to a traditional Chinese-style building after the war, adding a mountain gate, a front hall and a cloister platform, full of solemn and magnificent momentum, enshrined in the middle of the martyrs of the National Revolution, and surrounded by greenery, quiet environment, located on the mountainside of Shoushan Mountain, and there is an observation deck nearby to overlook the best scenery of the different abundant day and night of Greater Kaohsiung.', 'recommended time: 9:00a.m. to 9:00p.m.', '../../pic/new_pic/attr/Kaohsiung Martyrs\' Shrine.jpg', '2022-12-10 22:25:34', 8),
(7, 'Kaohsiung Lighthouse', 'Kaohsiung lighthouse is a city-designated historic site, the only white octagonal brick lighthouse in China, with balconies for overlooking, displaying the instruments used by the lighthouse before, lighthouse photos and location maps, although the park is not large, but walk around the Taiwan Strait and Kaohsiung downtown scenery at a glance, overlooking the coastal ship into the port and brilliant golden sunset.', 'recommended time: 9:00a.m. to 7:00p.m.', '../../pic/new_pic/attr/Kaohsiung Lighthouse.jpg', '2022-12-10 22:28:17', 3),
(8, 'Kaohsiung Daitangong', 'There is a gorgeous archway in front of the temple, the temple building adopts the shape of the South China temple, solemn and brilliant, heavy eaves and mountain-style temple roof, regardless of the characters and beasts, flowers and birds on the terrace, are exquisite and delicately carved, now not only the community residents\' faith center, the snack night market in front of the square often attracts many foodies to smell the incense, and is also a major feature of Daitian Palace.', 'recommended time: 8:00a.m. to 8:00p.m. ', '../../pic/new_pic/attr/Kaohsiung Daitangong.jpg', '2022-12-10 22:30:09', 0),
(9, 'North gate of Xiongzhen', 'The north gate of Xiongzhen is a city-designated monument, because the north gate of Xiongzhen has been severely damaged by many earthquakes and typhoons, and in 2018, the restoration project was carried out, and finally completed in 2022, the south and north barracks will be planned to be displayed as a promotion space, where you can see the large ships entering and leaving the port up close, opposite the Qijin Lighthouse.', 'recommended time: 9:00a.m. to 6:00p.m.', '../../pic/new_pic/attr/North gate of Xiongzhen.jpg', '2022-12-10 22:32:35', 1),
(10, 'Gushan Fish Market', 'The first auction hall retains the building structure and is designed as a space with good penetration, and plans the agricultural and fishery boutique exhibition and sales area, seafood cooking area and catering rest space; The original second auction hall is planned as an outdoor Marina Square, providing an excellent spot for citizens to walk, rest and watch the ferry from Kaohsiung Port; As for the original third auction hall, after demolition, it was converted into a parking lot and landscaping.', 'recommended time: 2:00p.m. to 10:00p.m.', '../../pic/new_pic/attr/Gushan Fish Market.jpg', '2022-12-10 22:45:47', 3),
(49, 'aakjdnkjndsjkkd', 'Enter your content in here...add', 'Other tips?', '../../pic/new_pic/attr/aakjdnkjndsjkkd.jpg', '2022-12-13 22:04:29', 33);

-- --------------------------------------------------------

--
-- 資料表結構 `dess`
--

CREATE TABLE `dess` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `tips` text NOT NULL,
  `pic_route` text NOT NULL,
  `upload_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `dess`
--

INSERT INTO `dess` (`id`, `title`, `content`, `tips`, `pic_route`, `upload_time`) VALUES
(1, '\"Reverse\" Thick Toast', 'A small shop which is hidden in alley, there are plenty of sweets are sold in this place, just like thick toast ,fried noodles and some dessert. Above all, as the shop’s name says ,which I recommend the most is the thick toast .There are lots of flavor you can choose,from chocolate and milk to black tea,all of them with a cup of tea  is perfect match.', 'Tel: 075312838\r\nAddress: No. 42, Yancheng St., Yancheng Dist., Kaohsiung City', '../../pic/new_pic/dess/Reverse Thick Toast.jpg', '2022-12-10 21:50:36'),
(2, 'Maruhama Ice Cream', 'One of the famous ice cream shop in Si Zih Bay, it’s common that there are lots of people line up in front of the shop . Every day, they provide two different flavors and will change to another flavor in the second day.The flavor on the picture is tiramisu with milk. Moreover, when it comes to some special days,they will have special flavor for each festival .The more time we go there, the more surprise we get.', 'Tel: 0916203223\r\nAddress: No. 27, Lixiong St., Gushan Dist., Kaohsiung City', '../../pic/new_pic/dess/Maruhama.jpg', '2022-12-10 21:53:46'),
(3, 'Yancheng Wu\'s Tofu Puddi', 'It’s a vendor that I go with my friends.Although the appearance is inconspicuous, the tofu pudding inside is not the same.There three or four flavors can be choose, and I order the one.The sour sauce mixed with syrup and delicate tofu pudding, it’s not the taste I’ve ever see before.People who want to try something new can take a look if you go to Yancheng.', 'Tel:0963981381\r\nAddress: No. 70, Fuye Rd., Yancheng Dist., Kaohsiung City', '../../pic/new_pic/dess/Yancheng Wus Tofu Pudding.jpg', '2022-12-10 21:55:38'),
(4, 'Yancheng Lee 2 Donut', 'This shop locate in a traditional market entrance, there are lots of old building around. I found it by accident when I once went out to eat dinner.I bought the chocolate one, and there are other flavors, too. Such as cheese, strawberry ...etc. It\'s not very sweet but delicious, and the outer texture is crispy but inner is soft. Recommend it to every donut lover.', 'Tel: 0986719205 \r\nAddress:No. 213-7, Xinle St., Yancheng Dist., Kaohsiung City', '../../pic/new_pic/dess/Yancheng Li 2 Donut.jpg', '2022-12-10 21:58:32'),
(5, 'Fuquan Shaved Snow', 'A popular ice shop near NSYSU and Gushan Ferry Station, well known by students. We went there many time after the dinner.My favorite type of ice is the mango shaved snow, and my friends favorite one is mango flavor. Mango with shaved snow, a little sour with a little sweet, plus the milk taste mix together,it\'s one of the best choice before a meal.', 'Tel: 075214206 \r\nAddress: No. 91, Binhai 1st Rd., Gushan Dist., Kaohsiung City ', '../../pic/new_pic/dess/Fuquan Shaved Snow.jpg', '2022-12-10 22:01:13'),
(6, 'Big Fat Grilled Sandwich', 'The products sold here are simple,\r\nBasically, there is only one kind of charcoal grilled toast.There are no other products such as hamburgers, omelets, and carrot cakes.The difference between toast and sandwiches is:\r\nToast: two slices of toast, uncut.\r\nSandwich: Three slices of toast, can be cut in half for dining in.\r\n\r\nWhich I recommend is cheese sandwich and signature sandwich, the smell is very tempty.', 'Tel:075610262\r\nAddress:No.78, Dagong Rd., Yancheng Dist., Kaohsiung City \r\n', '../../pic/new_pic/dess/Big Fat Grilled Sandwich.jpg', '2022-12-13 20:25:53'),
(7, '\"PUPPY LOVE\" Ice Shop', 'It\'s a Japanese-style ice cream store with its own characteristics, There are Japanese-stylehand-brushed tea ice products, as well as Taiwanese-style ice products. The store also sells some clothing and merchandise, so you can take a look. If you want some delicate sweet to taste, you an give it a try.', 'Tel:xx\r\nAddress: Kaohsiung City, Yancheng District, Lane 56, Fuye Rd, No.10, 2F', '../../pic/new_pic/dess/PUPPY LOVE Ice Shop.jpg', '2022-12-13 20:34:05'),
(8, 'Next Pot Shui Jian Bao', 'This well-known restaurant \"Next Pot Shui Jian Bun\" has only one flavor of fried buns.Telephone reservations are now accepted, so when you arrive, even if you see hot fried buns in the box, but they are all booked, so we have to wait for the next pot, and it\'s why the shop\'s  name is set.', 'Tel:0915010853\r\nAddress: No. 24, Dali St, Yancheng District, Kaohsiung City', '../../pic/new_pic/dess/Next Pot Shui Jian Bao.jpg', '2022-12-13 20:36:19'),
(9, '\"Hua Da\" Milk Tea', '\"Hua Da\" have lots of store distributed in everywhere in Taiwan, and its head office is in Yancheng. The signature milk tea is regular sugar, if you want less sugar, you can see what you wnt on the menu.\r\nI took the original one. When I took the first sip, I felt a little too sweet, but the more I drank it, the smoother the taste, and I didn’t feel sweet anymore.\r\nIts sweetness is very smooth, and the ratio of milk and tea is just right\r\nNo one will steal someone\'s style.', 'Tel:075512151\r\nAddress: No.101, Sinle St, Yancheng District, Kaohsiung City', '../../pic/new_pic/dess/Hua Da Milk Tea.jpg', '2022-12-13 20:39:14'),
(10, 'Super QQ Egg', 'Pier-2 Night Market is a hidden version of the night market in Yancheng every Saturday. Which I eat every time is Super QQ Egg. The super QQ eggs near the entrance often have a long queue. The oil in the frying pan of this restaurant looks very clean. The fried QQ eggs are quite large, and they taste thick and strong.\r\nPeople who wants some sweets after dinner should take some.  ', 'Tel: xx\r\nAddress: Jianguo 4th Rd, Yancheng District, Kaohsiung City( Yanchengpu (Pier-2) Night Market )', '../../pic/new_pic/dess/Super QQ Egg.jpg', '2022-12-13 21:04:23'),
(11, 'eataddtest', 'Enter your content in here...', 'Other tips?', '../../pic/new_pic/dess/eataddtest.jpg', '2022-12-13 23:05:49');

-- --------------------------------------------------------

--
-- 資料表結構 `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `acc` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `login_user`
--

INSERT INTO `login_user` (`id`, `acc`, `pass`) VALUES
(1, 'Ethan', 'iloveweb'),
(2, 'test', 'ilovewebtoo'),
(4, 'test2', 'webnice'),
(5, 'Owen', '123');

-- --------------------------------------------------------

--
-- 資料表結構 `rest`
--

CREATE TABLE `rest` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `tips` text NOT NULL,
  `pic_route` text NOT NULL,
  `upload_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `rest`
--

INSERT INTO `rest` (`id`, `title`, `content`, `tips`, `pic_route`, `upload_time`) VALUES
(1, 'Han Ye Cold Noodles King ', 'A very distinctive Korean restaurant, located near Gushan Ferry Station, only 5 minutes from Sun Yat-sen University.\r\nOne of the most distinctive dishes is Korean cold noodles. The cold soup and springy noodles are a good choice for hot summer days. In addition, Korean barbecue is also available there, which is a good place for gatherings and drinks.\r\n', 'Business hours are: \r\n11:30–14:30, 17:00–21:00\r\n*off day: Wednesday, Thursday*\r\nAddress: \r\nNo. 57, Binhai 1st Road, Gushan District, Kaohsiung City 804', '../../pic/new_pic/rest/Han Ye Cold Noodles King.jpg', '2022-12-13 22:47:47'),
(2, 'Hong Kong Fortune Roast M', 'A delicious Hong Kong-style restaurant, with roast meat rice (siu mei), beef flat rice noodles, Hong Kong Fried Rice (Guangzhou Fried Rice).\r\nAnd there is always a long queue of people during the meal time every night.', 'Business hours are: 10:00–20:00\r\n*off day: Saturday*\r\nAddress: \r\nNo. 108, Qixian 3rd Road, Yancheng District, Kaohsiung City 803', '../../pic/new_pic/rest/Hong Kong Fortune Roast M.jpg', '2022-12-13 22:47:47'),
(3, 'He Yu Pavilion', 'Located in Yancheng District near the Love River, it is a traditional Japanese restaurant.\r\nDuring meal time, there are often Japanese customers in the restaurant, and Japanese is the main language in the restaurant.\r\nIts Japanese steamed egg, miso soup in the combo set meal is very delicate and delicious, and the main meal is even more amazing. like mackerel, tempura.', 'Business hours are: \r\n11:00–14:00, 17:00–23:00，\r\nWednesday: 17:00–23:00\r\n*off day: Thursday*\r\nAddress: \r\nNo. 30, Wufu 4th Road, Yancheng District, Kaohsiung City 803', '../../pic/new_pic/rest/He Yu Pavilion.jpg', '2022-12-13 22:50:03'),
(4, 'Kaohsiung Beigang Cai Ton', 'A traditional Chinese snack bar, awarded Michelin Bib Gournand in 2022.\r\nLocated on the banks of the Love River, it has three storefronts wide, and every day before opening for business, there will be queues.\r\nIts most famous item is the rice cake, which is very delicious with its rich flavor and sticky rice texture.\r\nAnother famous item is the steamed egg soup, which has a smooth taste and rich soup, which makes people flock to it.', 'Business hours are: \r\n13:30–21:30\r\n*off day: Wednesday*\r\nAddress: \r\nNo. 57,No. 167, Hexi Road, Yancheng District, Kaohsiung City 803', '../../pic/new_pic/rest/Kaohsiung Beigang Cai Ton.jpg', '2022-12-13 22:50:03'),
(5, 'Wanquan Meatball', 'It is an old restaurant located in Hama Singh. The steamed meatball is its most famous meal.\r\nThe sauce is very special and the skin is delicious, and the stuffing is also delicious.', 'Business hours are: \r\n06:00–17:30\r\n*off day: No*\r\nAddress: \r\nNo. 1, Linhai 1st Road, Gushan District, Kaohsiung City 804\r\n', '../../pic/new_pic/rest/Wanquan Meatball.jpg', '2022-12-13 22:50:03'),
(6, 'Duck Jane', 'It has been operating in Yancheng District for more than 60 years. It is famous for its duck meat snacks and is always crowded with people. The signature smoked duck sliced plate is a must-order dish for every customer. The duck is firm and juicy, and it is served with the special garlic sauce for extra flavor.\r\nWhen ordering, the boss will match the duck offal platter or duck soup according to the number of diners, which is considerate and thoughtful. In addition, the minced meat rice is also excellent, and the meat is moderately fat and thin, which makes people eat with relish.', 'Address：\r\nNo. 258, Wufu 4th Road, Yancheng District, Kaohsiung City 803\r\nTEL：07 521 5018', '../../pic/new_pic/rest/Duck Jane.jpg', '2022-12-13 23:04:30'),
(7, 'Tan Zuo Ma Li', 'Adhere to the use of high-grade charcoal, combined with professional downdraft ventilation equipment, can make the charcoal fragrant and healthy without burden. The meat is cut on the spot. The chef carefully cuts and trims excess fascia without marinating in advance to preserve the flavor of fresh ingredients. After grilling, lightly dip in the unique special vegetable and fruit sauce to enhance the taste and sublimate the taste. Continuing the yakiniku love, \"Tanzuo Mari Yakiniku\" is the ultimate interpretation of Japanese-style yakiniku. In addition to supplying the most unrestrained high-quality yakiniku, it also incorporates top-notch Japanese cuisine, expert creative cuisine, professional bar drinks and handmade Desserts are comparable to five-star standard.', 'Address：\r\nNo. 562, Meimei East 4th Road, Gushan District, Kaohsiung City 804\r\nTEL：07 552 6555', '../../pic/new_pic/rest/Tan Zuo Ma Li.jpg', '2022-12-13 23:04:30'),
(8, 'Dain-Dain Hamburger', 'Dain-Dain Hamburger is a Taiwanese fast food brand that features a combination of Chinese and Western meals. The first store was established in Qianjin District, Kaohsiung City in 1984. It ranked second in the \"Most Frequently Consumed Fast Food Store\" in Taiwanese Internet media polls. It was called \"Nanbatian Fast Food\" by the Taiwanese media. A must-eat fast food restaurant in the south. As of 2019, there are a total of 43 branches in Taiwan, covering cities in southern Taiwan.\r\nDandan Burger is well-known for its high CP. \r\nIt is characterized by serving Western food such as crispy chicken drumsticks and crispy fried chicken, as well as Chinese food such as red meat noodles and lean meat porridge.\r\n', 'Address：\r\nNo. 224, Qixian 2nd Road, Qianjin District, Kaohsiung City 801\r\nTEL：07 241 0928', '../../pic/new_pic/rest/Dain-Dain Hamburger.jpg', '2022-12-13 23:04:30'),
(9, 'Taitai I Want', 'Taitai I Want Ecstasy Restaurant is located at the bow of Sizihwan, and it is a good place for dinner. There are a variety of special dishes prepared by the owner in the restaurant, adding some ingenious ideas to bring different feasts to the taste buds. We recommend the must-eat Ecstasy Niubi Rice with Eggs. Meat lovers can upgrade to enjoy 3 times more meat. The rich and mellow taste is quite mouth-watering when paired with Eggs! If you like the aroma of coconut milk, you can try Thai Thai Coconut Milk Green Curry Chicken Rice. The meal has a spicy taste, and the soup will cover the white rice, which is quite delicious. After the meal, don’t forget to have another dessert to satisfy your sweet tooth. The lovely French pillow donuts sprinkled with Milo cocoa and ice cream will make you have a good mood all night!\r\n', 'Address： \r\nNo. 20-6, Linhai 1st Road, Gushan District, Kaohsiung City\r\nTEL：07-5315100\r\nBusiness hours：\r\nMonday to Friday：18:00-23:00\r\nSaturday and Sunday： \r\n12:00-14:00, 18:00-23:00\r\nClosed on Tuesday', '../../pic/new_pic/rest/Taitai I Want.jpg', '2022-12-13 23:04:30'),
(10, 'Fat Master Hotpot', 'It\'s cold, if you really want to eat hot pot, we recommand you the Fat Master Hotpot. Fat Master Hotpot next to Haizhibing is the favorite cheap hotpot restaurant of Sun Yat-sen college students! There are small hot pot, sukiyaki, stone roasted meat, fried food, braised pork. There are so many options! Unlimited supply of rice and drinks. You can eat all you want. The newly launched Japanese stone pot pork chop is very popular. There are 15 meat rolls, the feeling of eating meat is very refreshing, very suitable for friends or students to have dinner together.\r\n\r\n', 'Address：\r\nNo. 7, Yanping Street, Gushan District, Kaohsiung City 804\r\nTEL：07 521 0737', '../../pic/new_pic/rest/Fat Master Hotpot.jpg', '2022-12-13 23:04:30');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `acco`
--
ALTER TABLE `acco`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dess`
--
ALTER TABLE `dess`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `rest`
--
ALTER TABLE `rest`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `acco`
--
ALTER TABLE `acco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `attr`
--
ALTER TABLE `attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dess`
--
ALTER TABLE `dess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rest`
--
ALTER TABLE `rest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
