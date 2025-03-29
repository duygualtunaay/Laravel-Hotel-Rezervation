-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Şub 2021, 13:26:24
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `laravel-otel-rezervasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(34, 0, 'Yurt İçi Orteller', 'Yurt İçi Orteller', 'Yurt İçi Orteller', NULL, 'True', NULL, NULL, 'yurtici'),
(35, 0, 'Yurt Dışı Oteller', 'Yurt Dışı Oteller', 'Yurt Dışı Oteller', NULL, 'True', NULL, '2021-01-31 15:39:52', 'yurtdisi'),
(36, 0, 'Şehir Otelleri', 'Şehir Otelleri', 'Şehir Otelleri', NULL, 'True', NULL, NULL, 'sehirotelleri'),
(37, 0, 'Termal Oteller', 'Termal Oteller', 'Termal Oteller', NULL, 'True', NULL, NULL, 'termaloteller');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'nasıl üye olunur?', '<p>My accounttan join butonuna tıklayarak &uuml;ye olabilirisiniz.</p>', 1, 'True', '2021-02-03 21:09:25', '2021-02-03 21:09:25'),
(2, 'yorumlarımı nereden silebilirim?', '<p>My account men&uuml;s&uuml;nden review a tıklayarak istediğiniz işlemi yapabilirsiniz :)</p>', 2, 'True', '2021-02-03 21:13:14', '2021-02-03 21:13:14'),
(4, 'nasıl?', 'neden', 3, 'True', '2021-02-03 21:46:15', '2021-02-03 21:46:15'),
(5, 'naber?', '<p>iyi senden</p>\r\n\r\n<p>nasıl</p>\r\n\r\n<p>ahhaha</p>', 23, 'True', '2021-02-04 06:08:42', '2021-02-04 06:09:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `keywords`, `description`, `category_id`, `user_id`, `detail`, `star`, `price`, `address`, `phone`, `city`, `country`, `status`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(26, 'Melas Resort Hotel - Antalya', 'Melas Resort Hotel', 'Melas Resort Hotel', '34', 1, '<h3>Melas Resort Hotel Konaklama &Ouml;zellikleri</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Konaklama Tipi:</td>\r\n			<td>Herşey Dahil</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Konaklama A&ccedil;ıklaması:</td>\r\n			<td>Her şey d&acirc;hil konseptinde hizmet vermekte olan tesiste a&ccedil;ık b&uuml;fe kahvaltı, ge&ccedil; kahvaltı, &ouml;ğle ve akşam yemeği, snack saati, ikramlı beş &ccedil;ayı servisi, dondurma saati, gece snack, g&ouml;zleme servisi sunmaktadır.<br />\r\n			<br />\r\n			Sabah Kahvaltısı :07.00&nbsp;- 10.00<br />\r\n			Ge&ccedil; Kahvaltı :10.00&nbsp;- 11.00<br />\r\n			Pastane:11.00 - 18.00<br />\r\n			&Ouml;ğle Yemeği :12.30&nbsp;- 14.30<br />\r\n			Snack Servis :12.30&nbsp;- 16.00<br />\r\n			Beş &Ccedil;ayı :16.30&nbsp;- 17.30<br />\r\n			Dondurma Saati :12.00&nbsp;- 17.00<br />\r\n			G&ouml;zleme Saati :12.00&nbsp;- 16.00<br />\r\n			Akşam Yemeği :19.00&nbsp;- 21.00<br />\r\n			Gece Snack :23.00&nbsp;- 24.00<br />\r\n			<br />\r\n			Ala Carte Rest: Balık ve T&uuml;rk (1 haftalık konaklama da 1 adet rezervasyon hakkı &uuml;cretsiz)<br />\r\n			Minibar (her 2 g&uuml;nde bir kola , fanta , su , bira ve soda ile doldurulur)<br />\r\n			T&uuml;m yerli alkoll&uuml; ve alkols&uuml;z i&ccedil;ecekler 10:00 - 24:00 saatleri &nbsp;arasında &nbsp;&uuml;cretsizdir. (disco da 02.00`ye kadar devam eder.)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Melas Resort Hotel Genel Bilgiler</p>\r\n\r\n<p>Melas Resort Hotel Antalya, Side b&ouml;lgesinde bulunmaktadır. 60000 m2&nbsp;alanda kurulmuş olan Melas Resort Hotel herşey dahil konseptiyle misafirlerimize hizmet vermektedir. Melas Resort Hotel denize sıfır konumuyla dikkat &ccedil;ekmektedir.<br />\r\n<br />\r\n100 m uzunluğundaki sahilinde denizin tadını &ccedil;ıkartabilirsiniz. Tesisin kendine &ouml;zel kum plajı bulunmaktadır. Tesiste bulunan ala carte restaurant, a&ccedil;ık restaurant, kapalı restaurantta yemeklerinizi yiyebilirsiniz.<br />\r\n<br />\r\nA&ccedil;ık ve kapalı y&uuml;zme havuzları ile eğlenme ve dinlenme imkanı bulabilirsiniz. Tesis i&ccedil;erisinde yer alan masaj hizmetlerinden faydalanarak rahatlayabilir ve kendinizi yenilenmiş hissedebilirsiniz. İhtiyacınıza g&ouml;re tesisteki doktor, fotoğraf&ccedil;ı, kuaf&ouml;r, market hizmetlerini kullanabilirsiniz.<br />\r\n<br />\r\nKeyifli vakit ge&ccedil;irmeniz i&ccedil;in tesiste bar bulunmaktadır. Otel Antalya Havaalanı&#39;na 65 km, Manavgat&#39;a 7 km uzaklıktadır.</p>\r\n\r\n<p>Konum Bilgileri</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Hava Alanına Uzaklığı:</td>\r\n			<td>Antalya HA 65 Km</td>\r\n			<td>Kurulu Alan:</td>\r\n			<td>60000 m2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Şehir Merkezine Uzaklık:</td>\r\n			<td>Manavgat 7 km</td>\r\n			<td>Plaj:</td>\r\n			<td>Mavi Bayraklı &Ouml;zel Plaj</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Denize Uzaklığı:</td>\r\n			<td>Denize Sıfır</td>\r\n			<td>İskele:</td>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sahil Uzunluğu:</td>\r\n			<td>100 m</td>\r\n			<td>Kum &Ouml;zelliği:</td>\r\n			<td>Kum</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Salgın Hastalık &Ouml;nlemleri</p>\r\n\r\n<p>Bu tesisin resmi makamlarca verilen &quot;Sağlıklı Turizm Sertifikası&quot; vardır. *</p>\r\n\r\n<ul>\r\n	<li>Depo G&uuml;venliği denetimi</li>\r\n	<li>En az 24 saat boş bırakılmış odalar</li>\r\n	<li>Ortak alanlarda G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>Oda kapasitesinin %25 oranında d&uuml;ş&uuml;r&uuml;lmesi</li>\r\n	<li>Ge&ccedil;ici karantina alanı/odası ayarlanması</li>\r\n	<li>Oyun odaları, &ccedil;ocuk kul&uuml;b&uuml;, lunapark, oyun bah&ccedil;esi - alanının rezervasyonlu kullanımı</li>\r\n	<li>Salgın Hastalık s&uuml;recini y&ouml;netecek bir y&ouml;netici g&ouml;revlendirilmesi</li>\r\n	<li>G&uuml;nl&uuml;k denetim ve kontrol listelerinin hazırlanması</li>\r\n	<li>Kapalı alanlar i&ccedil;in yeniden faaliyete a&ccedil;ma protokol&uuml; hazırlanması</li>\r\n	<li>Sosyal mesafeyi belirten d&uuml;zenlemeler yapılması</li>\r\n	<li>Misafirlere alınan tedbirler ile ilgili broş&uuml;r hazırlanması</li>\r\n	<li>Genel alanlarda dezenfektan bulundurulması</li>\r\n	<li>Bağışıklık Sistemini Destekleyici Gıda ve İ&ccedil;ecek</li>\r\n	<li>Gıda G&uuml;venliği Denetimi</li>\r\n	<li>Yeme &ndash; İ&ccedil;me Alanlarında G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>A&ccedil;ık b&uuml;felerde masaya servis hizmeti (Alacarte)</li>\r\n	<li>Mutfak ve yeme-i&ccedil;me alanlarının sıklıkla dezenfektasyona tabi tutulması</li>\r\n	<li>Mutfak ara&ccedil; gere&ccedil;lerinin dezenfekte edilmesi ve kontrol&uuml;</li>\r\n	<li>Mutfak personelinin koruyucu ekipman kullanımı</li>\r\n	<li>Ortak alanlardaki &ccedil;ay-kahve gibi ara&ccedil;ların kaldırılması veya g&ouml;revli tarafından servis edilmesi</li>\r\n	<li>A&ccedil;ık b&uuml;fede şeffaf koruyucu perdeleme yapılması</li>\r\n	<li>Her misafirin girişlerde elektronik ateş &ouml;l&ccedil;er/termal kamera ile ateş &ouml;l&ccedil;&uuml;m&uuml;</li>\r\n	<li>Ozon ve ULV Makineleri ile dezenfeksiyon</li>\r\n	<li>Periyodik a&ccedil;ık alan dezenfeksiyonu</li>\r\n	<li>Periyodik kapalı alan dezenfeksiyonu</li>\r\n	<li>Tekstil &uuml;r&uuml;nleri 90 derece sıcaklıkta yıkanması</li>\r\n	<li>Sağlık Bakanlığından onaylı temizlik &uuml;r&uuml;nleri kullanımı</li>\r\n	<li>Sağlık Bakanlığından onaylı koruyucu ekipman kullanımı</li>\r\n	<li>Personelin hijyen ve temizlik prosed&uuml;rlerinin arttırılması</li>\r\n	<li>El hijyeni ve temizlik &uuml;r&uuml;n&uuml; spesifikasyonları</li>\r\n	<li>Kapalı alanlarda ventilasyon desteği</li>\r\n	<li>Havuzlarda d&uuml;zenli klor d&uuml;zeyi kontrol&uuml;</li>\r\n	<li>Ortak alanlarda dezenfektan bulundurma</li>\r\n	<li>Misafire maske temin edilmesi</li>\r\n	<li>Oda temizliği formlarının g&uuml;nl&uuml;k takibi ve kayıt altına alınması</li>\r\n	<li>Odada tek kullanımlık temizlik malzemesi temini</li>\r\n	<li>Personele Corona Vir&uuml;s ve tedbirleri eğitimi</li>\r\n	<li>Personelin periyodik sağlık testlerinin yaptırılması</li>\r\n	<li>Personelin eldiven ve maske kullanımı</li>\r\n	<li>Personelin geliş-gidiş kayıtlarının takip edilmesi</li>\r\n	<li>Personel tarafından kullanılan ara&ccedil; gere&ccedil;lerin dezenfekte edilmesi</li>\r\n</ul>\r\n\r\n<p>Otel &Ouml;zellikleri</p>\r\n\r\n<p>Tesis Kapasitesi</p>\r\n\r\n<p>249</p>\r\n\r\n<ul>\r\n	<li>A la Carte Restoran</li>\r\n	<li>A&ccedil;ık Havuz</li>\r\n	<li>A&ccedil;ık Restoran</li>\r\n	<li>Bar</li>\r\n	<li>Doktor</li>\r\n	<li>Fotoğraf&ccedil;ı</li>\r\n	<li>Kapalı Havuz</li>\r\n	<li>Kapalı Restoran</li>\r\n	<li>Konferans</li>\r\n	<li>Kuaf&ouml;r</li>\r\n	<li>Market</li>\r\n	<li>Su Kaydırağı (4 Adet)</li>\r\n	<li>Tiyatro</li>\r\n	<li>Wireless Internet</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretsiz Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>Animasyon</li>\r\n	<li>Basketbol</li>\r\n	<li>Beach Voley</li>\r\n	<li>Bilardo</li>\r\n	<li>Canlı Eğlence</li>\r\n	<li>Dart</li>\r\n	<li>Deniz Bisikleti</li>\r\n	<li>Disco</li>\r\n	<li>Fitness</li>\r\n	<li>Hamam</li>\r\n	<li>Kano</li>\r\n	<li>Masa Tenisi</li>\r\n	<li>Sauna</li>\r\n	<li>Squash</li>\r\n	<li>Su Kaydırağı</li>\r\n	<li>S&ouml;rf</li>\r\n	<li>Tenis</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretli Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>İnternet Cafe</li>\r\n	<li>Masaj</li>\r\n</ul>\r\n\r\n<p>&Ccedil;ocuklar İ&ccedil;in</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;cretsiz</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Ccedil;ocuk Kulub&uuml;</li>\r\n				<li>&Ccedil;ocuk Parkı</li>\r\n				<li>&Ccedil;ocuk Havuzu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;cretli</td>\r\n			<td>\r\n			<ul>\r\n				<li>Bebek Bakımı</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Diğer Notlar</p>\r\n\r\n<p><strong>Tesisin t&uuml;m odaları twin beddir.</strong><br />\r\n<br />\r\nKapalı ısıtmalı havuzu mevcuttur.<br />\r\nMinibar, tenis ekipmanları&nbsp;&uuml;cretsizdir.<br />\r\nİthal i&ccedil;kiler, kort ışıklandırması odada kasa &uuml;cretlidir.<br />\r\nPlajda ve havuz başında şemsiye , şezlong , minder &uuml;cretsizdir.<br />\r\n<strong>Su sporları sadece yaz sezonunda ve tesisin belirtiği d&ouml;nemlerde yapılmaktadır.</strong>&nbsp;<strong>Tesis gerekli doluluğu sağlayamadığı takdirde konsept veya konsept dahilinde değişiklik uyguluyabilir.</strong></p>\r\n\r\n<p>* Salgın Hastalık T&uuml;ketici Bilgilendirmesi</p>\r\n\r\n<p>&Ccedil;in&rsquo;de ortaya &ccedil;ıkarak t&uuml;m d&uuml;nyayı kısa s&uuml;rede etkisi altına alan Koronavir&uuml;s (COVID-19) salgını nedeniyle D&uuml;nya Sağlık &Ouml;rg&uuml;t&uuml; tarafından Koronavir&uuml;s (COVID-19) y&ouml;n&uuml;nden risk seviyesi &quot;y&uuml;ksek&quot; seviyesinden &quot;&ccedil;ok y&uuml;ksek&quot; seviyesine &ccedil;ıkartılmış, d&uuml;nyada birden fazla &uuml;lkede veya &ccedil;ok geniş bir alanda yayılan ve etkisini g&ouml;steren salgın hastalık olarak pandemi ilan edilmiştir. Tatilsepeti Koronavir&uuml;se (COVID-19) rağmen, vir&uuml;s tedbirlerini alan Oteller ile m&uuml;şterileri buluşturmak &uuml;zere bir platform oluşturmuştur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tatilsepeti.com ilgili seyahat acenteleri ve oteller aracılığıyla oteller tarafından verilen konaklama hizmetini son kullanıcı t&uuml;keticilere internet sitesi veya &ccedil;ağrı merkezi aracılığıyla ulaştıran platform konumunda olup tatilsepeti.com &uuml;zerinden satışı yapılan t&uuml;m otellere ilişkin fiyat, broş&uuml;r, reklam, tanıtım ve COVID-19 tedbirlerine ilişkin bilgiler ve otel &ouml;zellikleri bizatihi tesisler tarafından bildirilmektedir. Tatilsepeti.com internet sitesi &uuml;zerinden satışı yapılan otellerde alınan Koronavir&uuml;s (COVID-19) &ouml;nlemleri, Tatilsepeti.com&rsquo;a oteller tarafından bildirilmekte olup yapılan bu bildirimler, platform &uuml;zerinde g&ouml;z&uuml;kmektedir. Tatilsepeti.com bu a&ccedil;ıdan bir platform hizmeti sunmaktadır. S&ouml;z konusu tedbirleri denetleme imkanı ve yetkisi olmayıp bu konuda sorumluluk otellere aittir.</p>', 3, 300.00, 'Antalya - Side-Kumköy', 555555, 'Antalya', 'Türkiye', 'True', 'images/JgDbSyFkjaRjKOZ1kc5bh3nVk0CdqgWVHVlvMfqR.jpg', '2021-01-31 15:47:04', '2021-01-31 15:47:04', 'melas-resort-hotel'),
(27, 'Novotel Paris Centre Tour Eiffel', 'Novotel Paris Centre Tour Eiffel', 'Novotel Paris Centre Tour Eiffel', '35', 1, '<p>Otel Genel Bilgileri</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Otele Giriş Saati:</th>\r\n			<td>14:00</td>\r\n			<th>Otelden &Ccedil;ıkış Saati:</th>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Oda Sayısı:</th>\r\n			<td>764</td>\r\n			<th>Kat Sayısı:</th>\r\n			<td>31</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Giriş Bilgileri:</strong></p>\r\n\r\n<ul>\r\n	<li>İlave yatak &uuml;creti alınabilir ve bu &uuml;cret, otel politikasına g&ouml;re değişiklik g&ouml;sterebilir</li>\r\n	<li>Olası ekstra harcamalar i&ccedil;in otele giriş sırasında, resmi kurumlarca d&uuml;zenlenmiş fotoğraflı kimlik ve kredi kartı gerekebilir</li>\r\n	<li>&Ouml;zel talepler, otele giriş sırasında m&uuml;saitlik durumuna bağlıdır ve ek &ouml;deme gerektirebilir. &Ouml;zel talepler garanti edilemez</li>\r\n	<li>Ekstra harcamaları &ouml;demek i&ccedil;in otele girişte kullanılan kredi kartının &uuml;zerindeki isim, oda rezervasyonundaki ilk isim olmalıdır</li>\r\n	<li>Bu otel kredi kartı kabul etmektedir; nakit kabul edilmez</li>\r\n	<li>Bu oteldeki g&uuml;venlik &ouml;zellikleri arasında duman detekt&ouml;r&uuml; ve g&uuml;venlik sistemi yer almaktadır</li>\r\n	<li>K&uuml;lt&uuml;rel normların ve misafir politikalarının &uuml;lkeye ve otele g&ouml;re farklılık g&ouml;sterebileceğini l&uuml;tfen unutmayın. Burada listelenen politikalar otel tarafından sağlanmıştır</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Y&uuml;zme havuzunda s&ouml;rf ve board şortu giyilmesine izin verilmemektedir. Misafirlerin y&uuml;zme şortu veya &quot;boxer&quot; şort giymesi gereklidir.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>&Ouml;zel Talimatlar:</strong><br />\r\nResepsiyon &ccedil;alışanları varışta misafirleri karşılayacaktır. Daha fazla bilgi i&ccedil;in l&uuml;tfen rezervasyon onayındaki bilgileri kullanarak otelle irtibat kurun. COVID-19 nedeniyle, bu otelin yiyecek ve i&ccedil;ecek se&ccedil;enekleri yerel y&ouml;netmeliklere g&ouml;re sınırlı olabilir.<br />\r\n<br />\r\n<strong>Ulusal Derecelendirme:</strong><br />\r\nBu otelin resmi yıldız derecelendirmesi, Fransız Turizm Geliştirme Kurumu ATOUT France tarafından verilmiştir.<br />\r\n<br />\r\n<strong>Gitmeden &Ouml;nce Bilmeniz Gerekenler:</strong></p>\r\n\r\n<ul>\r\n	<li>Havuz 9.00 ve 18.30 arasında a&ccedil;ıktır.</li>\r\n	<li>Ebeveynleri veya vasisiyle aynı odada kalan ve mevcut yatak takımlarını kullanan 15 yaş ve altındaki en fazla 2 &ccedil;ocuk i&ccedil;in konaklama &uuml;creti alınmaz.</li>\r\n	<li>Bu otel, an itibarıyla artırılmış temizlik ve misafir g&uuml;venliği &ouml;nlemlerinin uygulandığını bildirmektedir.</li>\r\n	<li>Oteli temizlemek i&ccedil;in dezenfektan kullanılır, sık dokunulan y&uuml;zeyler konaklama aralarında dezenfektanla temizlenir, yatak &ccedil;arşafları ve havlular en az 60 &deg;C/140 &deg;F sıcaklıkta yıkanır.</li>\r\n	<li>Sosyal mesafe kuralları ge&ccedil;erlidir, oteldeki personel kişisel koruyucu ekipman kullanır, ana iletişim alanlarında personel ve misafirler arasında akrilik y&uuml;z koruyucu siperlik bulunur, misafirlere el dezenfektanı sağlanır.</li>\r\n	<li>Temassız giriş imkanı ve temassız &ccedil;ıkış imkanı sunulur.</li>\r\n	<li>Otel, ALLSAFE (Accor Hotels) y&ouml;nergelerindeki temizlik ve dezenfeksiyon uygulamalarına uyduğunu belirtmektedir.</li>\r\n	<li>Otel, Bureau Veritas (3. taraf uzman - K&uuml;resel) temizlik ve dezenfeksiyon uygulamalarına uyduğunu belirtmektedir.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>&Uuml;cretler:</strong></p>\r\n\r\n<p>Servis verilirken, giriş veya &ccedil;ıkış sırasında otel tarafından aşağıdaki &uuml;cretler ve depozitolar alınır.</p>\r\n\r\n<ul>\r\n	<li>A&ccedil;ık b&uuml;fe kahvaltı &uuml;creti: Kişi başı 19.9 EUR (fiyatlar yaklaşık değerleri g&ouml;stermektedir)</li>\r\n	<li>Valesiz otopark &uuml;creti: g&uuml;nl&uuml;k 29 EUR.</li>\r\n	<li>Valeli otopark &uuml;creti: g&uuml;nl&uuml;k 29 EUR.</li>\r\n	<li>Evcil hayvan &uuml;creti: evcil hayvan başına, gecelik 15 EUR.</li>\r\n</ul>\r\n\r\n<p>Yukarıdaki liste t&uuml;m bilgileri i&ccedil;ermeyebilir. &Uuml;cretlere ve depozitolara vergi dahil olmayabilir, ayrıca &uuml;cretler ve depozitolar değişebilir.</p>\r\n\r\n<p><br />\r\n<strong>Zorunlu &Uuml;cretler ve Vergiler:</strong></p>\r\n\r\n<p>Sizden otelde şu &uuml;cretleri &ouml;demeniz istenecektir:</p>\r\n\r\n<ul>\r\n	<li>Şehir vergisi uygulanır: kişi başı, gecelik 2.88 EUR. Bu vergi 18 yaş yaş altı &ccedil;ocuklar i&ccedil;in ge&ccedil;erli değildir.</li>\r\n</ul>\r\n\r\n<p>Otelin bize bildirdiği t&uuml;m &uuml;cretleri dahil ettik. Bununla birlikte, &ouml;rneğin, konaklama s&uuml;resine veya rezervasyon yaptığınız odaya bağlı olarak &uuml;cretler değişebilir.</p>\r\n\r\n<p><br />\r\n<strong>Onarımlar ve Kapanışlar:&nbsp;</strong>Aşağıdaki tesisler veya hizmetler 1 Ekim 2020 - 31 Ocak 2021 tarihleri arasında kapalı olacaktır (tarihler değişiklik g&ouml;sterebilir):</p>\r\n\r\n<ul>\r\n	<li>Restoran</li>\r\n	<li>Spor salonu</li>\r\n	<li>Sauna</li>\r\n	<li>Spa</li>\r\n	<li>Y&uuml;zme havuzu</li>\r\n</ul>\r\n\r\n<p>Bu otelin yiyecek ve i&ccedil;ecek se&ccedil;enekleri COVID-19 nedeniyle sınırlı olabilir.</p>\r\n\r\n<p>Otel &Ouml;zellikleri</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>24 saat a&ccedil;ık resepsiyon</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Asans&ouml;r</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Banket salonu</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Bar/dinlenme salonu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Bilgisayar istasyonu</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Birden fazla dil bilen personel</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Danışma</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Engellilere uygun banyo</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Engellilere uygun duş</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Hediyelik eşya mağazaları veya gazete bayii</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Kahvaltı servisi var (&uuml;cretli)</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Kahve d&uuml;kkanı veya kafe</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Kapalı havuz</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Kat sayısı - 31</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Konferans alanı</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Konferans alanı b&uuml;y&uuml;kl&uuml;ğ&uuml; (feet) - 32292</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Konferans alanı b&uuml;y&uuml;kl&uuml;ğ&uuml; (metre) - 3000</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Konferans merkezi</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Kuru temizleme/&ccedil;amaşırhane</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Lobide &uuml;cretsiz gazete</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Oda hizmet&ccedil;isi/belboy</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Odada engellilere y&ouml;nelik &ouml;zellikler</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Ofis</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Otomatik satış makinesi</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Restoran sayısı - 3</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Sauna</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Sigara i&ccedil;ilmeyen otel</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Snack bar/b&uuml;fe</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Spor salonu</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Tekerlekli sandalye kullanımına uygun ge&ccedil;iş yolu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Tekerlekli sandalye kullanımına uygun otopark</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Toplam oda sayısı - 764</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Toplantı odaları</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Tur/bilet hizmetleri</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Vale otopark (&uuml;cretli)</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Valesiz otopark (&uuml;cretli)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Valiz dolabı</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yardımcı dinleme cihazları bulunur</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Y&uuml;zme havuzu</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Ccedil;amaşırhane</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>&Uuml;cretsiz kablosuz internet</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Oda &Ouml;zellikleri</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Ayrı ayrı d&ouml;şenmiş</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Duş/k&uuml;vet kombinasyonu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Film kiralama</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>G&uuml;nl&uuml;k kat hizmeti</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Kahve/&ccedil;ay makinesi</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Kaliteli TV kanalları</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Kaliteli yatak takımı</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Klima</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>LED TV</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Masa</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Mini Bar</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Oda servisi (sınırlı saatlerde)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Odada emanet kasası (diz&uuml;st&uuml; bilgisayara uygun)</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Odada klima kumandası (klima)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Sa&ccedil; kurutma makinesi</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Sigara İ&ccedil;ilmez</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Telefon</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Uydu TV kanalları</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>&Ouml;zel banyo</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Uuml;cretsiz banyo/kozmetik &uuml;r&uuml;nleri</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>&Uuml;cretsiz kablosuz internet</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Uuml;cretsiz şişe su</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>&Uuml;t&uuml;/&uuml;t&uuml; masası (istek &uuml;zerine)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nYukarıda belirtilen oda &ouml;zellikleri otelin genel oda &ouml;zellikleridir. Bu &ouml;zellikler se&ccedil;tiğiniz oda tipine g&ouml;re değişiklik g&ouml;sterebilir. L&uuml;tfen se&ccedil;tiğiniz oda tipinin yanındaki sekmeyi tıklayarak o oda tipinin &ouml;zelliklerini kontrol ediniz.</p>', 4, 12000.00, 'Rue du Commerce', 54445, 'Paris', 'Fransa', 'True', 'images/85bZ4FSTdTBkhTHFQqP176PNXB3lutnRyJen79iI.webp', '2021-01-31 16:01:02', '2021-01-31 16:01:02', 'novotel-paris-centre-tour-eiffel-fransa-yd-116982'),
(28, 'Park Inn By Radisson İstanbul Asia Kavacık', 'Park Inn By Radisson İstanbul Asia Kavacık', 'Park Inn By Radisson İstanbul Asia Kavacık', '36', 1, '<p>Park Inn By Radisson İstanbul Asia Kavacık Genel Bilgiler</p>\r\n\r\n<p>Park Inn By Radisson İstanbul Asia Kavacık İstanbul, Beykoz b&ouml;lgesinde bulunmaktadır. Otel hava alanına Sabiha G&ouml;k&ccedil;en 33 km,İstanbul 39 km uzaklıktadır. Tesis oda kahvaltı konseptinde hizmet vermektedir.<br />\r\n<br />\r\nKonaklamanız boyunca faydalanabileceğiniz TV, oda kasası standart odalarda mevcuttur. Tesiste bulunan ala carte restaurant, kapalı restaurantta yemeklerinizi yiyebilirsiniz.</p>\r\n\r\n<p>Konum Bilgileri</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Hava Alanına Uzaklığı:</td>\r\n			<td>Sabiha G&ouml;k&ccedil;en 33 Km,İstanbul 39 Km</td>\r\n			<td>Kurulu Alan:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Şehir Merkezine Uzaklık:</td>\r\n			<td>&nbsp;</td>\r\n			<td>Plaj:</td>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Denize Uzaklığı:</td>\r\n			<td>Uygun Değil</td>\r\n			<td>İskele:</td>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sahil Uzunluğu:</td>\r\n			<td>&nbsp;</td>\r\n			<td>Kum &Ouml;zelliği:</td>\r\n			<td>Kum</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Salgın Hastalık &Ouml;nlemleri</p>\r\n\r\n<ul>\r\n	<li>Depo G&uuml;venliği denetimi</li>\r\n	<li>Ortak alanlarda G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>Ge&ccedil;ici karantina alanı/odası ayarlanması</li>\r\n	<li>Salgın Hastalık s&uuml;recini y&ouml;netecek bir y&ouml;netici g&ouml;revlendirilmesi</li>\r\n	<li>G&uuml;nl&uuml;k denetim ve kontrol listelerinin hazırlanması</li>\r\n	<li>Sosyal mesafeyi belirten d&uuml;zenlemeler yapılması</li>\r\n	<li>Misafirlere alınan tedbirler ile ilgili broş&uuml;r hazırlanması</li>\r\n	<li>Genel alanlarda dezenfektan bulundurulması</li>\r\n	<li>Gym, fitness, hamam, sauna gibi aktivite alanlarının Salgın Hastalık sağlık kurallarına g&ouml;re a&ccedil;ılması</li>\r\n	<li>Gıda G&uuml;venliği Denetimi</li>\r\n	<li>Yeme &ndash; İ&ccedil;me Alanlarında G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>A&ccedil;ık b&uuml;felerde masaya servis hizmeti (Alacarte)</li>\r\n	<li>Mutfak ve yeme-i&ccedil;me alanlarının sıklıkla dezenfektasyona tabi tutulması</li>\r\n	<li>Mutfak ara&ccedil; gere&ccedil;lerinin dezenfekte edilmesi ve kontrol&uuml;</li>\r\n	<li>Mutfak personelinin koruyucu ekipman kullanımı</li>\r\n	<li>Ortak alanlardaki &ccedil;ay-kahve gibi ara&ccedil;ların kaldırılması veya g&ouml;revli tarafından servis edilmesi</li>\r\n	<li>A&ccedil;ık b&uuml;fede şeffaf koruyucu perdeleme yapılması</li>\r\n	<li>Her misafirin girişlerde elektronik ateş &ouml;l&ccedil;er/termal kamera ile ateş &ouml;l&ccedil;&uuml;m&uuml;</li>\r\n	<li>Ozon ve ULV Makineleri ile dezenfeksiyon</li>\r\n	<li>Periyodik kapalı alan dezenfeksiyonu</li>\r\n	<li>Tekstil &uuml;r&uuml;nleri 90 derece sıcaklıkta yıkanması</li>\r\n	<li>Sağlık Bakanlığından onaylı temizlik &uuml;r&uuml;nleri kullanımı</li>\r\n	<li>Sağlık Bakanlığından onaylı koruyucu ekipman kullanımı</li>\r\n	<li>Personelin hijyen ve temizlik prosed&uuml;rlerinin arttırılması</li>\r\n	<li>El hijyeni ve temizlik &uuml;r&uuml;n&uuml; spesifikasyonları</li>\r\n	<li>Kapalı alanlarda ventilasyon desteği</li>\r\n	<li>Ortak alanlarda dezenfektan bulundurma</li>\r\n	<li>Periyodik a&ccedil;ık alan dezenfeksiyonu</li>\r\n	<li>Misafire maske temin edilmesi</li>\r\n	<li>Odada tek kullanımlık temizlik malzemesi temini</li>\r\n	<li>Personele Corona Vir&uuml;s ve tedbirleri eğitimi</li>\r\n	<li>Personelin eldiven ve maske kullanımı</li>\r\n	<li>Personelin periyodik sağlık testlerinin yaptırılması</li>\r\n	<li>Personelin geliş-gidiş kayıtlarının takip edilmesi</li>\r\n	<li>Personel tarafından kullanılan ara&ccedil; gere&ccedil;lerin dezenfekte edilmesi</li>\r\n</ul>\r\n\r\n<p>Otel &Ouml;zellikleri</p>\r\n\r\n<p>Tesis Kapasitesi</p>\r\n\r\n<p>110</p>\r\n\r\n<ul>\r\n	<li>A la Carte Restoran</li>\r\n	<li>Asans&ouml;r</li>\r\n	<li>Kapalı Restoran</li>\r\n	<li>Otopark</li>\r\n	<li>Wireless Internet</li>\r\n</ul>\r\n\r\n<p>Diğer Notlar</p>\r\n\r\n<p><strong>Tesis gerekli doluluğu sağlayamadığı takdirde konsept veya konsept dahilinde değişiklik uygulayabilir.</strong></p>\r\n\r\n<p>* Salgın Hastalık T&uuml;ketici Bilgilendirmesi</p>\r\n\r\n<p>&Ccedil;in&rsquo;de ortaya &ccedil;ıkarak t&uuml;m d&uuml;nyayı kısa s&uuml;rede etkisi altına alan Koronavir&uuml;s (COVID-19) salgını nedeniyle D&uuml;nya Sağlık &Ouml;rg&uuml;t&uuml; tarafından Koronavir&uuml;s (COVID-19) y&ouml;n&uuml;nden risk seviyesi &quot;y&uuml;ksek&quot; seviyesinden &quot;&ccedil;ok y&uuml;ksek&quot; seviyesine &ccedil;ıkartılmış, d&uuml;nyada birden fazla &uuml;lkede veya &ccedil;ok geniş bir alanda yayılan ve etkisini g&ouml;steren salgın hastalık olarak pandemi ilan edilmiştir. Tatilsepeti Koronavir&uuml;se (COVID-19) rağmen, vir&uuml;s tedbirlerini alan Oteller ile m&uuml;şterileri buluşturmak &uuml;zere bir platform oluşturmuştur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tatilsepeti.com ilgili seyahat acenteleri ve oteller aracılığıyla oteller tarafından verilen konaklama hizmetini son kullanıcı t&uuml;keticilere internet sitesi veya &ccedil;ağrı merkezi aracılığıyla ulaştıran platform konumunda olup tatilsepeti.com &uuml;zerinden satışı yapılan t&uuml;m otellere ilişkin fiyat, broş&uuml;r, reklam, tanıtım ve COVID-19 tedbirlerine ilişkin bilgiler ve otel &ouml;zellikleri bizatihi tesisler tarafından bildirilmektedir. Tatilsepeti.com internet sitesi &uuml;zerinden satışı yapılan otellerde alınan Koronavir&uuml;s (COVID-19) &ouml;nlemleri, Tatilsepeti.com&rsquo;a oteller tarafından bildirilmekte olup yapılan bu bildirimler, platform &uuml;zerinde g&ouml;z&uuml;kmektedir. Tatilsepeti.com bu a&ccedil;ıdan bir platform hizmeti sunmaktadır. S&ouml;z konusu tedbirleri denetleme imkanı ve yetkisi olmayıp bu konuda sorumluluk otellere aittir.</p>', 4, 500.00, 'Beykoz-Kavacık', 55555, 'İstanbul', 'Türkiye', 'True', 'images/kxM6pNQHqQWpqCQeS4el5PY4rgQIhw3uso23hMAs.jpg', '2021-01-31 16:18:17', '2021-01-31 16:18:17', 'park-inn-by-radisson-istanbul-asia-kavacik?RT=5'),
(29, 'Grand Yazıcı Club Turban Thermal Hotel - Marmaris', 'Grand Yazıcı Club Turban Thermal Hotel', 'Grand Yazıcı Club Turban Thermal Hotel', '37', 1, '<h3>Grand Yazıcı Club Turban Thermal Hotel Konaklama &Ouml;zellikleri</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Konaklama Tipi:</td>\r\n			<td>Ultra Herşey Dahil</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Konaklama A&ccedil;ıklaması:</td>\r\n			<td>Yaz sezonunda Ultra Her Şey Dahil konseptinde hizmet vermektedir.<br />\r\n			<br />\r\n			Kış sezonunda Oda &amp; Kahvaltı,&nbsp; Yarım Pansiyon ve Tam Pansiyon olarak hizmet vermektedir.<br />\r\n			<br />\r\n			Kahvaltı: 07:00-10:00<br />\r\n			Ge&ccedil; Kahvaltı: 10:00-10:30<br />\r\n			&Ouml;ğle Yemeği: 12:30-14:00<br />\r\n			Akşam Yemeği: 18:30-21:00<br />\r\n			Snack Men&uuml;: 12:00-16:00<br />\r\n			La Pergola Restaurant: 12:00-15:00<br />\r\n			Sandwich Corner: 23:00-06:00<br />\r\n			Limon Cafe: 11:00-17:30<br />\r\n			G&ouml;zleme Corner: 11:00-17:30<br />\r\n			Steak House: 19:00-22:00(&uuml;cretli)<br />\r\n			Asia Restaurant: 19:00-22:00<br />\r\n			Kebap House: 19:00-22:00<br />\r\n			Le Pergola Restaurant: 19:00-22:00(&uuml;cretli)<br />\r\n			Mavi Restaurant: 19:00-22:00(&uuml;cretli)<br />\r\n			<br />\r\n			Beach Bar: 10:00-00:00<br />\r\n			Timeless Bar: 24 Saat<br />\r\n			Pool Bar: 10:00-00:00<br />\r\n			Coffe Corner: 09:00-00:00<br />\r\n			Vitamin Bar: 10:00-19:00<br />\r\n			Le Pergola Bar: 10:00-18:00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Grand Yazıcı Club Turban Thermal Hotel Genel Bilgiler</p>\r\n\r\n<p>2006 yılında yapılan Grand Yazıcı Club Turban Thermal Hotel Marmaris, Siteler b&ouml;lgesinde bulunmaktadır. 73000 m2&nbsp;alanda kurulmuş olan Grand Yazıcı Club Turban Thermal Hotel ultra herşey dahil konseptiyle misafirlerimize hizmet vermektedir.<br />\r\n<br />\r\nDenize sıfır olan Grand Yazıcı Club Turban Thermal Hotel ile plaj arasından yol ge&ccedil;mektedir. 330 m uzunluğundaki sahile sahip tesisin kendine ait iskelesi vardır. Tesisin kendine &ouml;zel kum plajı bulunmaktadır.<br />\r\n<br />\r\nTesis 5 adet ala carte restaurant ile misafirlere &ouml;zel hizmet sunmaktadır. 3 adet a&ccedil;ık y&uuml;zme havuzu ile keyifli bir tatil yaşayabilirsiniz. Denizde sadece y&uuml;zmeyecek, banana, deniz bisikleti, jetski, kano, katamaran, s&ouml;rf gibi su sporlarından da faydanalabiliyor olacaksınız.<br />\r\n<br />\r\nTatiliniz s&uuml;resince paraş&uuml;t, dalgı&ccedil;lık okulu, s&ouml;rf gibi aktiviteler ile zamanınızı değerlendirebilirsiniz. Arzu ederseniz tesis i&ccedil;erisinde bilardo oynayabilirsiniz. Tesis i&ccedil;erisinde yer alan masaj hizmetlerinden faydalanarak rahatlayabilir ve kendinizi yenilenmiş hissedebilirsiniz.<br />\r\n<br />\r\nİhtiyacınıza g&ouml;re tesisteki doktor, fotoğraf&ccedil;ı, market, ara&ccedil; kiralama hizmetlerini kullanabilirsiniz. Keyifli vakit ge&ccedil;irmeniz i&ccedil;in tesiste bar bulunmaktadır. Odanızda bulunan merkezi klima/split klima ile oda sıcaklığınız ayarlanabilir.<br />\r\n<br />\r\nKonaklamanız boyunca faydalanabileceğiniz TV, kablosuz internet, telefon ve oda kasası standart odalarda mevcuttur. Oda servisi hizmeti bulunmaktadır. Otel havaalanına DalamanHA90 km, Marmaris&#39;e 6 km, İ&ccedil;meler&#39;e 2 km uzaklıktadır.</p>\r\n\r\n<p>Konum Bilgileri</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Hava Alanına Uzaklığı:</td>\r\n			<td>DalamanHA90 Km</td>\r\n			<td>Kurulu Alan:</td>\r\n			<td>73000 m2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Şehir Merkezine Uzaklık:</td>\r\n			<td>Marmaris 6 km, İ&ccedil;meler 2 km</td>\r\n			<td>Plaj:</td>\r\n			<td>Mavi Bayraklı &Ouml;zel Plaj</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Denize Uzaklığı:</td>\r\n			<td>Denize Sıfır (Aradan Yol Ge&ccedil;iyor)</td>\r\n			<td>İskele:</td>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sahil Uzunluğu:</td>\r\n			<td>330 m</td>\r\n			<td>Kum &Ouml;zelliği:</td>\r\n			<td>Kum</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Salgın Hastalık &Ouml;nlemleri</p>\r\n\r\n<p>Bu tesisin resmi makamlarca verilen &quot;Sağlıklı Turizm Sertifikası&quot; vardır. *</p>\r\n\r\n<ul>\r\n	<li>Depo G&uuml;venliği denetimi</li>\r\n	<li>Ortak alanlarda G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>Ge&ccedil;ici karantina alanı/odası ayarlanması</li>\r\n	<li>Salgın Hastalık s&uuml;recini y&ouml;netecek bir y&ouml;netici g&ouml;revlendirilmesi</li>\r\n	<li>G&uuml;nl&uuml;k denetim ve kontrol listelerinin hazırlanması</li>\r\n	<li>Kapalı alanlar i&ccedil;in yeniden faaliyete a&ccedil;ma protokol&uuml; hazırlanması</li>\r\n	<li>Sosyal mesafeyi belirten d&uuml;zenlemeler yapılması</li>\r\n	<li>Misafirlere alınan tedbirler ile ilgili broş&uuml;r hazırlanması</li>\r\n	<li>Genel alanlarda dezenfektan bulundurulması</li>\r\n	<li>Gıda G&uuml;venliği Denetimi</li>\r\n	<li>Yeme &ndash; İ&ccedil;me Alanlarında G&uuml;venli Sosyal Mesafe d&uuml;zenlemesi</li>\r\n	<li>Mutfak ve yeme-i&ccedil;me alanlarının sıklıkla dezenfektasyona tabi tutulması</li>\r\n	<li>Mutfak ara&ccedil; gere&ccedil;lerinin dezenfekte edilmesi ve kontrol&uuml;</li>\r\n	<li>Mutfak personelinin koruyucu ekipman kullanımı</li>\r\n	<li>Ortak alanlardaki &ccedil;ay-kahve gibi ara&ccedil;ların kaldırılması veya g&ouml;revli tarafından servis edilmesi</li>\r\n	<li>A&ccedil;ık b&uuml;fede şeffaf koruyucu perdeleme yapılması</li>\r\n	<li>Her misafirin girişlerde elektronik ateş &ouml;l&ccedil;er/termal kamera ile ateş &ouml;l&ccedil;&uuml;m&uuml;</li>\r\n	<li>Ozon ve ULV Makineleri ile dezenfeksiyon</li>\r\n	<li>Periyodik a&ccedil;ık alan dezenfeksiyonu</li>\r\n	<li>Periyodik kapalı alan dezenfeksiyonu</li>\r\n	<li>Sağlık Bakanlığından onaylı temizlik &uuml;r&uuml;nleri kullanımı</li>\r\n	<li>Tekstil &uuml;r&uuml;nleri 90 derece sıcaklıkta yıkanması</li>\r\n	<li>Sağlık Bakanlığından onaylı koruyucu ekipman kullanımı</li>\r\n	<li>Personelin hijyen ve temizlik prosed&uuml;rlerinin arttırılması</li>\r\n	<li>El hijyeni ve temizlik &uuml;r&uuml;n&uuml; spesifikasyonları</li>\r\n	<li>Havuzlarda d&uuml;zenli klor d&uuml;zeyi kontrol&uuml;</li>\r\n	<li>Ortak alanlarda dezenfektan bulundurma</li>\r\n	<li>Misafire maske temin edilmesi</li>\r\n	<li>Oda temizliği formlarının g&uuml;nl&uuml;k takibi ve kayıt altına alınması</li>\r\n	<li>Odada tek kullanımlık temizlik malzemesi temini</li>\r\n	<li>Personele Corona Vir&uuml;s ve tedbirleri eğitimi</li>\r\n	<li>Personelin periyodik sağlık testlerinin yaptırılması</li>\r\n	<li>Personelin eldiven ve maske kullanımı</li>\r\n	<li>Personelin geliş-gidiş kayıtlarının takip edilmesi</li>\r\n	<li>Personel tarafından kullanılan ara&ccedil; gere&ccedil;lerin dezenfekte edilmesi</li>\r\n	<li>Kapalı alanlarda ventilasyon desteği</li>\r\n	<li>Oyun odaları, &ccedil;ocuk kul&uuml;b&uuml;, lunapark, oyun bah&ccedil;esi - alanının rezervasyonlu kullanımı</li>\r\n</ul>\r\n\r\n<p>Otel &Ouml;zellikleri</p>\r\n\r\n<p>Tesis Kapasitesi</p>\r\n\r\n<p>84</p>\r\n\r\n<p>Tesis Yapım</p>\r\n\r\n<p>2006</p>\r\n\r\n<ul>\r\n	<li>A la Carte Restoran (5 Adet)</li>\r\n	<li>A&ccedil;ık Havuz (3 Adet)</li>\r\n	<li>A&ccedil;ık Restoran</li>\r\n	<li>Ara&ccedil; Kiralama</li>\r\n	<li>Asans&ouml;r</li>\r\n	<li>Bar (5 Adet)</li>\r\n	<li>Bedensel Engelli Odası</li>\r\n	<li>Doktor</li>\r\n	<li>Fotoğraf&ccedil;ı</li>\r\n	<li>Havaalanı Servis</li>\r\n	<li>Kapalı Havuz</li>\r\n	<li>Kapalı Restoran</li>\r\n	<li>Konferans</li>\r\n	<li>Market</li>\r\n	<li>Otopark</li>\r\n	<li>Su Kaydırağı (3 Adet)</li>\r\n	<li>Tiyatro</li>\r\n	<li>Wireless Internet</li>\r\n	<li>Haşema</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretsiz Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>Animasyon</li>\r\n	<li>Beach Voley</li>\r\n	<li>Canlı Eğlence</li>\r\n	<li>Dart</li>\r\n	<li>Disco</li>\r\n	<li>Fitness</li>\r\n	<li>Hamam</li>\r\n	<li>Masa Tenisi</li>\r\n	<li>Mini Golf</li>\r\n	<li>Sauna</li>\r\n	<li>Su Kaydırağı</li>\r\n	<li>Tenis</li>\r\n	<li>Tv Salonu</li>\r\n	<li>Voleybol</li>\r\n	<li>Yelkenli</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretli Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>Banana</li>\r\n	<li>Bilardo</li>\r\n	<li>Dalgı&ccedil;lık Okulu</li>\r\n	<li>Deniz Bisikleti</li>\r\n	<li>İnternet Cafe</li>\r\n	<li>Jetski</li>\r\n	<li>Kano</li>\r\n	<li>Katamaran</li>\r\n	<li>Masaj</li>\r\n	<li>Oyun Salonu</li>\r\n	<li>Paraş&uuml;t</li>\r\n	<li>S&ouml;rf</li>\r\n	<li>Termal Havuz</li>\r\n</ul>\r\n\r\n<p>&Ccedil;ocuklar İ&ccedil;in</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;cretsiz</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Ccedil;ocuk Kulub&uuml;</li>\r\n				<li>&Ccedil;ocuk Parkı</li>\r\n				<li>&Ccedil;ocuk Havuzu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;cretli</td>\r\n			<td>\r\n			<ul>\r\n				<li>Bebek Bakımı</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 5, 1200.00, 'Marmaris - Siteler', 55555, 'Muğla', 'Türkiye', 'True', 'images/uBwZhKqrCqEYYmsRN4Jm6EV5bSsGCEEv7wX1FM7T.jpg', '2021-01-31 16:26:46', '2021-01-31 16:26:46', 'grand-yazici-club-turban-thermal-hotel?RT=5'),
(30, 'Kempinski Hotel Barbaros Bay - Muğla', 'Kempinski Hotel Barbaros Bay', 'Kempinski Hotel Barbaros Bay', '34', 1, '<p>Otel &Ouml;zellikleri</p>\r\n\r\n<p>Tesis Kapasitesi</p>\r\n\r\n<p>173</p>\r\n\r\n<p>Tesis Yapım</p>\r\n\r\n<p>2006</p>\r\n\r\n<p>Tesis Yenileme</p>\r\n\r\n<p>2011</p>\r\n\r\n<ul>\r\n	<li>A la Carte Restoran</li>\r\n	<li>A&ccedil;ık Havuz</li>\r\n	<li>A&ccedil;ık Restoran</li>\r\n	<li>Ara&ccedil; Kiralama</li>\r\n	<li>Asans&ouml;r</li>\r\n	<li>Bedensel Engelli Odası</li>\r\n	<li>Doktor</li>\r\n	<li>Fotoğraf&ccedil;ı</li>\r\n	<li>G&uuml;zellik Salonu</li>\r\n	<li>Kapalı Havuz</li>\r\n	<li>Kapalı Restoran</li>\r\n	<li>Konferans</li>\r\n	<li>Kuaf&ouml;r</li>\r\n	<li>Market</li>\r\n	<li>Otopark</li>\r\n	<li>Resepsiyon&#39;da Kasa</li>\r\n	<li>Wireless Internet</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretsiz Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>Beach Voley</li>\r\n	<li>Fitness</li>\r\n	<li>Hamam</li>\r\n	<li>Masa Tenisi</li>\r\n</ul>\r\n\r\n<p>&Uuml;cretli Aktiviteler</p>\r\n\r\n<ul>\r\n	<li>Bilardo</li>\r\n	<li>Dalgı&ccedil;lık Okulu</li>\r\n	<li>İnternet Cafe</li>\r\n	<li>Jetski</li>\r\n	<li>Kano</li>\r\n	<li>Katamaran</li>\r\n	<li>Masaj</li>\r\n	<li>Paraş&uuml;t</li>\r\n	<li>SPA</li>\r\n	<li>S&ouml;rf</li>\r\n	<li>Yelkenli</li>\r\n</ul>\r\n\r\n<p>&Ccedil;ocuklar İ&ccedil;in</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;cretsiz</td>\r\n			<td>\r\n			<ul>\r\n				<li>&Ccedil;ocuk Kulub&uuml;</li>\r\n				<li>&Ccedil;ocuk Parkı</li>\r\n				<li>&Ccedil;ocuk Havuzu</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;cretli</td>\r\n			<td>\r\n			<ul>\r\n				<li>Bebek Bakımı</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Diğer Notlar</p>\r\n\r\n<p>Plajda alınan şemsiye ve şezlong &uuml;cretsizdir.<br />\r\n<strong>Tesiste gerekli doluluk sağlanamadığı takdirde konseptte değişiklik uygulanabilir.</strong></p>', 4, 5000.00, 'Bodrum - Yalıçiftlik', 55555, 'Muğla', 'Türkiye', 'True', 'images/1Kns3W4LbY0rfyjJdrLs6dyjiVw4kQyDbGKBXebh.jpg', '2021-02-01 16:03:38', '2021-02-01 16:03:38', 'kempinski-hotel-barbaros-bay');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `hotel_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(15, '26', 'Havuz', 'images/bMu4kZEOJQsMj84DdnQyz1D6G6MbxuYFWSwN4onw.jpg', '2021-01-31 15:51:41', '2021-01-31 15:51:41'),
(16, '26', 'iç', 'images/cq4yv6aTEl0XtKKBT6iQR3xlTkmr1t4EnEjrxNrw.jpg', '2021-01-31 15:52:01', '2021-01-31 15:52:01'),
(17, '27', 'Havuz', 'images/8kTljC8oYuvurSbeYN1T2fDVayTlqIlKg22jjqzD.webp', '2021-01-31 16:13:30', '2021-01-31 16:13:30'),
(18, '29', 'Havuz', 'images/ZquZ542OhEKYL8txP4vjsF1QoXGnx3hhYW2RJ6fE.jpg', '2021-01-31 16:27:04', '2021-01-31 16:27:04'),
(19, '29', 'Büyük Havuz', 'images/xyw20BMzZVcvU6EhfwrpPtcXFsgPxW9QRQuaXkOW.jpg', '2021-01-31 16:27:18', '2021-01-31 16:27:18'),
(20, '28', 'oda', 'images/5h0dG8PXM67xP638RlzsZQbkD3kF316xUsrMdjTI.jpg', '2021-01-31 20:05:47', '2021-01-31 20:05:47'),
(21, '30', 'havuz', 'images/LPE3Bze9Qu2yWEpUa6vLP7G3Xxo7Fymyyvd3jtfF.jpg', '2021-02-01 16:04:14', '2021-02-01 16:04:14'),
(22, '30', 'Kempinski Hotel Barbaros Bay', 'images/0FzyyWuSFpo2OGi7itNdU25JZQnRd79t0Hwxcznt.jpg', '2021-02-01 16:04:40', '2021-02-01 16:04:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`, `id`) VALUES
('erbaş', 'seymaerbas0619@gmail.com', '05071361494', 'otel', 'zxdfgh', 'asdfghj', 'Read', '2021-01-27 11:19:18', '2021-01-27 12:35:41', 4),
('gfhjdkls', 'sdfghj@email.com', 'dfghj', 'dfgh', 'sdfghj', NULL, 'Read', '2021-01-27 12:22:24', '2021-01-27 12:22:41', 5),
('erbaş', 'seymaerbas0619@gmail.com', '05071361494', 'otel', 'sdfghjklş', 'tamam', 'Read', '2021-01-29 20:46:38', '2021-01-29 20:47:09', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_11_214152_create_sessions_table', 1),
(7, '2021_01_01_215204_create_categories_table', 2),
(10, '2021_01_01_223904_category', 3),
(11, '2021_01_11_170537_create_products_table', 4),
(12, '2021_01_11_192233_product', 4),
(13, '2021_01_12_194901_create_hotels_table', 5),
(14, '2021_01_12_201727_hotel', 5),
(15, '2021_01_14_114119_create_images_table', 6),
(16, '2021_01_14_150541_image', 6),
(17, '2021_01_17_220847_change_fields_from_hotels_table', 7),
(18, '2021_01_20_110707_create_settings_table', 8),
(19, '2021_01_20_114306_setting', 8),
(20, '2021_01_24_123230_add_address_to_users', 9),
(21, '2021_01_24_123759_add_address_to_users', 10),
(22, '2021_01_24_130251_user', 11),
(23, '2021_01_24_130520_add_address_to_users', 12),
(24, '2021_01_24_130746_add_phone_to_users', 13),
(25, '2021_01_26_233755_create_messages_table', 14),
(26, '2021_01_26_235903_message', 14),
(27, '2021_01_27_134757_change-fields-from-messages-table', 15),
(28, '2021_01_30_171502_create_rooms_table', 16),
(29, '2021_01_30_172040_room', 16),
(30, '2021_01_30_172842_add_adet_to_rooms', 17),
(31, '2021_01_30_173155_add_adet_to_rooms', 18),
(32, '2021_01_30_222639_create_rooms_table', 19),
(33, '2021_01_30_222744_room', 19),
(34, '2021_01_30_223621_create_rooms_table', 20),
(35, '2021_01_30_223710_room', 20),
(36, '2021_01_31_195931_add_slug_to_categories', 21),
(37, '2021_02_02_120650_create_reviews_table', 22),
(38, '2021_02_02_120746_review', 22),
(39, '2021_02_02_121138_create_reviews_table', 23),
(40, '2021_02_02_121207_review', 23),
(41, '2021_02_03_222146_create_faqs_table', 24),
(42, '2021_02_03_222547_faq', 24),
(43, '2021_02_04_130910_create_rezerves_table', 25),
(44, '2021_02_04_132216_rezerve', 25),
(45, '2021_02_05_144024_add_adet_to_rezerves', 26),
(46, '2021_02_05_205331_add_miktar_to_rooms', 27),
(47, '2021_02_05_215904_create_roles_table', 28),
(48, '2021_02_05_221106_create_role_user_table', 29),
(49, '2021_02_05_221749_role_user', 29),
(50, '2021_02_08_215326_add_checkin_to_rezerves', 30),
(51, '2021_02_08_215416_add_checkout_to_rezerves', 30),
(52, '2021_02_09_084136_create_rezerves_table', 31),
(53, '2021_02_09_084426_rezerve', 31),
(54, '2021_02_09_125943_create_rezerves_table', 32),
(55, '2021_02_09_130011_rezerve', 32);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `hotel_id`, `subject`, `review`, `IP`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 28, 'Şeymoş', 'oda var mı oda', '127.0.0.1', 1, 'Read', '2021-02-02 09:25:12', '2021-02-02 15:26:13'),
(4, 1, 26, 'otel', 'Harika', '127.0.0.1', 5, 'Read', '2021-02-02 12:24:47', '2021-02-02 12:24:47'),
(5, 1, 27, 'otel', 'mükemmel', '127.0.0.1', 5, 'New', '2021-02-02 12:47:10', '2021-02-02 12:47:10'),
(7, 1, 26, 'otel', 'asdf', '127.0.0.1', 4, 'New', '2021-02-08 15:20:13', '2021-02-08 15:20:13'),
(8, 1, 26, 'Şahane', 'çok güzel', '127.0.0.1', 3, 'New', '2021-02-08 17:49:51', '2021-02-08 17:49:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezerves`
--

CREATE TABLE `rezerves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `rezerves`
--

INSERT INTO `rezerves` (`id`, `user_id`, `hotel_id`, `room_id`, `name`, `surname`, `email`, `phone`, `total`, `checkin`, `checkout`, `days`, `IP`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 4, 'Şeyma', 'Erbaş', 'seymaerbas0619@gmail.com', '0545454544', NULL, '2021-02-10 00:00:00', '2021-02-14 00:00:00', 4, '127.0.0.1', 'not', 'New', '2021-02-09 10:04:49', '2021-02-09 10:04:49'),
(2, 1, 5, 5, 'Şeyma', 'sadlal', 'hasldjasl@hkajsdhksahsdk', '464646', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'asdadasda', 'New', '2021-02-09 10:17:34', '2021-02-09 10:17:34'),
(3, 1, 7, 7, 'qwewqewq', 'qweqewq', 'qweqwuo@ahljalsdj', '6464654', NULL, '2021-02-10 00:00:00', '2021-02-15 00:00:00', 5, '127.0.0.1', 'asdsasadads', 'New', '2021-02-09 10:18:16', '2021-02-09 10:18:16'),
(4, 1, 15, 15, 'Şeyma', 'Erbaş', 'seymaerbas0619@gmail.com', '0545454545', NULL, '2021-02-12 00:00:00', '2021-02-21 00:00:00', NULL, '127.0.0.1', 'şlsakjşdka', 'New', '2021-02-09 10:19:34', '2021-02-10 09:14:17'),
(5, 1, 9, 9, 'asdsasd', 'asdasasdasd', 'asdasas@jasdhaksjh', '4646546465', NULL, '2021-02-09 00:00:00', '2021-02-14 00:00:00', 5, '127.0.0.1', 'zxzxcczxzxc', 'New', '2021-02-09 10:23:53', '2021-02-09 10:23:53'),
(6, 1, 4, 4, 'asdasdsa', 'asdasda', 'amazonwq@gmail.com', '0545454545', NULL, '2021-02-10 00:00:00', '2021-02-12 00:00:00', 2, '127.0.0.1', 'sadsadsa', 'New', '2021-02-09 10:24:55', '2021-02-09 10:24:55'),
(7, 1, 4, 4, 'asdsada', 'asdasdsa', 'asdasas@jasdhaksjh', '05454545', NULL, '2021-02-12 00:00:00', '2021-02-18 00:00:00', 6, '127.0.0.1', 'asdasdsad', 'New', '2021-02-09 10:27:51', '2021-02-09 10:27:51'),
(8, 1, 15, 15, 'asdsadsa', 'asdasd', 'nurevsan_1903@hotmail.com', '05067627425', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'asdsadsa', 'New', '2021-02-09 10:33:32', '2021-02-09 10:33:32'),
(9, 1, 15, 15, 'asdsadsa', 'asdasd', 'nurevsan_1903@hotmail.com', '05067627425', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'asdsadsa', 'New', '2021-02-09 10:34:41', '2021-02-09 10:34:41'),
(10, 1, 4, 4, 'asdads', 'asdasd', 'amazonwq@gmail.com', '456465464', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'adas', 'New', '2021-02-09 10:36:09', '2021-02-09 10:36:09'),
(11, 1, 5, 5, 'asdsadas', 'asdadsa', 'asdaasdas@fsdsdffsd', 'asdsadasas', NULL, '2021-02-10 00:00:00', '2021-02-14 00:00:00', 4, '127.0.0.1', 'adsadas', 'New', '2021-02-09 10:37:47', '2021-02-09 10:37:47'),
(12, 1, 12, 12, 'adsasda', 'asdsadsa', 'aasdasda@kasjlfksajasl', '654646465', NULL, '2021-02-17 00:00:00', '2021-02-20 00:00:00', 3, '127.0.0.1', 'asdasdas', 'New', '2021-02-09 10:45:39', '2021-02-09 10:45:39'),
(13, 1, 4, 4, 'daasdas', 'asdasdas', 'asdasas@jasdhaksjh', '4646546465', NULL, '2021-02-10 00:00:00', '2021-02-12 00:00:00', 2, '127.0.0.1', 'asdsaasdasdasd', 'New', '2021-02-09 10:51:52', '2021-02-09 10:51:52'),
(14, 1, 12, 12, 'kjokjlkj', 'jgjgjhg', 'kjklj@gmail', '5465456465', NULL, '2021-02-10 00:00:00', '2021-02-13 00:00:00', 3, '127.0.0.1', 'lkjljl', 'New', '2021-02-09 10:52:59', '2021-02-09 10:52:59'),
(15, 1, 4, 4, 'kkhkg', 'hfhgfhgf', 'site@info.com', '0545454', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'lkjlkj', 'New', '2021-02-09 10:56:25', '2021-02-09 10:56:25'),
(16, 1, 13, 13, 'lııyuyıu', 'kjk', 'dfgfdgf@hghjg', '546465465', NULL, '2021-02-11 00:00:00', '2021-02-14 00:00:00', 3, '127.0.0.1', 'ljlkjl', 'New', '2021-02-09 10:59:03', '2021-02-09 10:59:03'),
(17, 1, 4, 4, 'Şeyma', 'Erbaş', 'seymaerbas0619@gmail.com', '04545454', NULL, '2021-02-13 00:00:00', '2021-02-21 00:00:00', NULL, '127.0.0.1', 'not', 'New', '2021-02-10 09:16:05', '2021-02-10 09:16:05'),
(18, 1, 7, 7, 'Şeyma', 'Erbaş', 'seymaerbas0619@gmail.com', '05545454', NULL, '2021-02-19 00:00:00', '2021-02-21 00:00:00', NULL, '127.0.0.1', 'asddasdas', 'New', '2021-02-10 09:18:06', '2021-02-10 09:18:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `description`, `hotel_id`, `price`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Kısmi Deniz Manzaralı Oda', 'Kısmi Deniz Manzaralı Oda', 26, 1500.00, NULL, 'True', 'images/XXp3iyvGONRqKVo8ouvBvfAlBQ0lVtQWeXtougIf.jpg', '2021-01-31 15:49:59', '2021-02-05 18:00:25'),
(5, 'Kara Manzaralı Standart Oda', 'Kara Manzaralı Standart Oda', 26, 14000.00, NULL, 'True', 'images/SshxK4nbhhzuXNfDyiFbIR3yrh8KhBKZqz2AbWuW.jpg', '2021-01-31 15:50:34', '2021-01-31 15:50:34'),
(6, 'Ana Bina Geniş Oda', 'Ana Bina Geniş Oda', 26, 1900.00, NULL, 'True', 'images/HLpeh8kJoRxonAKuohrWBAEDIC7E0wUM1f5mERPU.jpg', '2021-01-31 15:51:11', '2021-01-31 15:51:11'),
(7, 'Classic Oda, 1 Büyük (queen) Boy Yatak', 'Classic Oda, 1 Büyük (queen) Boy Yatak', 27, 12888.00, NULL, 'True', 'images/2WGgfA51FqYWAhdPVbFl5W4iU8Nfi9sJ0UwqgVRj.webp', '2021-01-31 16:11:02', '2021-01-31 16:11:02'),
(8, 'Classic Oda, 2 Tek Kişilik Yatak', 'Classic Oda, 2 Tek Kişilik Yatak', 27, 1288.00, NULL, 'True', 'images/CzKtMOjPJKHoCnEO3ofWFOtxkgR7xIa2kqJembyA.webp', '2021-01-31 16:12:16', '2021-01-31 16:12:16'),
(9, 'Standart Oda', 'Standart Oda', 28, 456.00, NULL, 'True', 'images/ObY04yVlmjD2d0kZCgCrNxR9T0gu7lHPOaPtGQ0n.jpg', '2021-01-31 16:20:03', '2021-01-31 16:20:03'),
(10, 'Superior Oda', 'Superior Oda', 28, 584.00, NULL, 'True', 'images/TgVdczCccdzItKRZmTx3J6UYbX944jDHFbzTpFAR.jpg', '2021-01-31 16:20:49', '2021-01-31 16:52:10'),
(11, 'Family Oda', 'Family Oda', 28, 657.00, NULL, 'True', 'images/ceYpRyku3TIZYUE4dv0vX4xHzeYBe2DsJlf6et6Q.jpg', '2021-01-31 16:21:37', '2021-01-31 16:21:37'),
(12, 'Standart Oda', 'Standart Oda', 29, 1400.00, NULL, 'True', 'images/o9bB9ucTml2UX9GuhqunL0DlVvSyZefIwWFkKPYK.jpg', '2021-01-31 16:29:12', '2021-01-31 16:29:12'),
(13, 'Marin Suit Oda Deniz Manzara', 'Marin Suit Oda Deniz Manzara', 29, 4650.00, NULL, 'True', 'images/pBVDHJFC6Fv69waVcJY1PI7zUPZCmC2RoFqhMtMw.jpg', '2021-01-31 16:29:49', '2021-01-31 16:29:49'),
(14, 'Aile Odası', 'Aile Odası', 29, 2100.00, NULL, 'True', 'images/ZngiaJWDpCG4RQTWyyMp4kiWOuG77mYIU9sL7bTF.jpg', '2021-01-31 16:30:12', '2021-01-31 16:30:12'),
(15, 'Superior Oda', 'Superior Oda', 30, 3600.00, NULL, 'True', 'images/pmNT5q09B2zIbcaRnNsLVHkilGfP96ijeKF1oL9o.jpg', '2021-02-01 16:05:55', '2021-02-01 16:08:20'),
(16, 'Deluxe Oda', 'Deluxe Oda', 30, 4469.00, NULL, 'True', 'images/HOeH9MYMFxdIf3QgkxqajueOAU0h3JUSk9mqy9zI.jpg', '2021-02-01 16:06:27', '2021-02-01 16:08:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5eLHownSLFe3MQS3JRoKZAenTwIoBPheBRdfhIkH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWllzZWd5SzJLUzhpTVF4b2I2dzJrWnBiRjFLbjRzQ0RPQnI3QUN0bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3JlemVydmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMzNNS1p5amthaE4xTmIyMXBHVlBOLnR3eXBZYy9adXg2MEFOb3NJdVBuWnJhT051TGVtZHkiO30=', 1612959488),
('aktONNMf7ACndJnrVfQI8zv2I33LSxzgl6rHgl7o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDBuS0pWck5EamEwa2VWVHFXOFlubWhCeW5rRUxDb3RmQVpzRVNEbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1612881488);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'otel rezervasyon', 'otel', 'otel', 'SELF', 'naci çakır mahallesi ilker caddesi 7/5 yüzbaşıoğlu apartmanı dikmen/ankara', '05071361494', 'fgh', 'sdfghj@email.com', '100', 'seymaerbas0619@gmail.com', 'Se*4831340', 512, 'https://www.facebook.com/seyma.erbas.75', 'asdftg', 'https://mobile.twitter.com/TubbaCamci', '<h1>T&uuml;rkiye&#39;nin en b&uuml;y&uuml;k &ccedil;evrimi&ccedil;i otel rezervasyon sitelerinden biriyiz.</h1>\r\n\r\n<hr />\r\n<p><strong>&Ouml;n &ouml;demesiz otel rezervasyonu ile tanışın.</strong></p>\r\n\r\n<p>Zonline Ticaret ve Turizm AŞ. b&uuml;nyesinde, &ccedil;evrimi&ccedil;i otel rezervasyonları yapılmasını sağlamak amacıyla 2013 yılında kurulan otelz.com, 120 kişilik deneyimli kadrosu ile sekt&ouml;re yeni bir soluk getirmiştir.</p>\r\n\r\n<p>B&uuml;nyemizdeki 15.000&#39;i aşkın konaklama tesisini, fiyatları ve doğru tanıtımları ile t&uuml;keticilere sunmak arzumuzdur.&nbsp;&Uuml;ye otel&nbsp;sayımız her ge&ccedil;en g&uuml;n artmaktadır.&nbsp;Ayda ortalama 200.000 kişi Otelz.com&#39;dan otel araması yapmaktadır&nbsp;.</p>\r\n\r\n<p>Otelz.com, Deloitte Teknoloji, T&uuml;rkiye&#39;nin en hızlı b&uuml;y&uuml;yen turizm teknolojisi şirketi konumuna hızlı 50. sıradan girmiştir.</p>\r\n\r\n<p>Otelz.com&#39;un mevcut yazılımı, teknolojinin t&uuml;m olanakları kullanılarak 12 kişilik ekip tarafından 1,5 senelik bir &ccedil;alışma sonrası V3 yeni nesil platformu Aralık&nbsp;2019&#39;da hayata ge&ccedil;irildi.&nbsp;Yazılım g&uuml;venliği ve web sitemizin kolay, kullanıcı dostu bir site olması i&ccedil;in &ccedil;&ouml;z&uuml;m ortaklarımızı T&uuml;rkiye&#39;nin en değerli ve deneyimli markalarından se&ccedil;tik.&nbsp;&nbsp;</p>\r\n\r\n<p>Otelz.com y&uuml;zde y&uuml;z yerli sermaye ile kurulmuştur. Vergilerimizi T&uuml;rkiye&#39;de &ouml;d&uuml;yor ve &uuml;lke hazinesine katma değer sağlıyoruz. Konaklama tesislerinden aldığımız komisyonları yine T&uuml;rk Turizm sekt&ouml;r&uuml;ne yaptığımız yatırımlarda kullanıyoruz.</p>\r\n\r\n<hr />\r\n<h2>Misyonumuz</h2>\r\n\r\n<p>Her b&uuml;t&ccedil;eye uygun binlerce konaklama tesisini m&uuml;şterilerimize sunmak, gerek tatil gerek iş ama&ccedil;lı seyahatleri i&ccedil;in hızlı, kolay ve g&uuml;venilir rezervasyon yapmalarını sağlamak.</p>\r\n\r\n<hr />\r\n<h2>Vizyonumuz</h2>\r\n\r\n<p>Gerek iş ama&ccedil;lı gerek tatil ama&ccedil;lı seyahatlerde en uygun fiyatları ve en fazla otel se&ccedil;eneğini m&uuml;şterilerimize sunan, kolay kullanımlı g&uuml;venilir bir site olmayı hedefliyoruz.</p>\r\n\r\n<p>Turizm sekt&ouml;r&uuml;nde yıllarca deneyim kazanmış, potansiyel m&uuml;şterilerin seyahatlerinde ne istediğini &ccedil;ok iyi bilen, anlayan ve hızlı &ccedil;&ouml;z&uuml;mler sunabilen M&uuml;şteri Hizmetleri ekibi, yenilik&ccedil;i teknolojilerle m&uuml;şterisine hizmet sunan Yazılım Ekibiyle, T&uuml;rkiye&#39;yi karış karış gezerek b&uuml;t&uuml;n otellerin kapısını &ccedil;alan &Uuml;r&uuml;n Geliştirme Uzmanları ve m&uuml;şterilerimizin haklarını korumak amacıyla turizm mevzuatını, ilgili kanunları &ccedil;ok iyi analiz etmiş Hukuk Departmanımız ve Profesyonel Danışmanlarımız ile hep beraber sizler i&ccedil;in &ccedil;alışıyoruz.&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>Gezginlerin kazancı; &ouml;n &ouml;deme ve rezervasyon &uuml;creti yok...</strong></p>\r\n\r\n<p>Otelz.com T&uuml;rkiye&#39;de seyahat eden gezginlere b&uuml;y&uuml;k kolaylıklar getirdi. En d&uuml;ş&uuml;k fiyat garantisi ile &ouml;n &ouml;demesiz otel rezervasyon imk&acirc;nı sağlanmaktadır. Rezervasyon esnasında sizden herhangi bir &uuml;cret alınmaz. &Ouml;demeyi konaklama tesisine gittiğinizde yaparsınız. 5 yıldızlı otellerden pansiyonlara kadar konaklamaya dair ne ararsanız hepsini Otelz.com&#39;da bulabilirsiniz.</p>\r\n\r\n<hr />\r\n<p><strong>Yurt dışındaki konaklama tesislerini de b&uuml;nyemize alıyoruz&hellip;</strong></p>\r\n\r\n<p>G&uuml;n ge&ccedil;tik&ccedil;e ivme kazandığımız yolda, hedeflerimize yurt dışındaki tesisleri de ekledik. &Uuml;r&uuml;n gamımızı genişleterek,&nbsp; 2021&rsquo;de yurt dışına a&ccedil;ılmayı planlıyoruz.</p>', '<h3>İletişim Bilgileri</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>LOCATION</p>\r\n\r\n	<p>The company name<br />\r\n	New York City.</p>\r\n	</li>\r\n	<li>\r\n	<p>EMAIL</p>\r\n	<a href=\"mailto:info@example.com\">mail@example.com</a><br />\r\n	<a href=\"mailto:info@example.com\">mail2@example.com</a></li>\r\n	<li>\r\n	<p>PHONE NUMBER</p>\r\n\r\n	<p>+ 1234567890</p>\r\n\r\n	<p>+ 0987654321</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"https://www.otelrezervasyonsistemi.com/images/referans-oteller.png\" /></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Her ge&ccedil;en g&uuml;n bizi tercih eden ve sayısı g&uuml;nden g&uuml;ne hızla artan otellerimize teşekk&uuml;r ederiz.</p>\r\n\r\n	<p>Başlıca referanslarımızın logolarına tıklayarak web sayfalarındaki rezervasyon mod&uuml;l&uuml;m&uuml;z&uuml; inceleyebilirsiniz.</p>\r\n	<img alt=\"sheraton_hotel\" src=\"https://hotelrunner.com/wp-content/uploads/2015/07/sheraton_hotel.png\" style=\"height:300px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bw (1)\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/bw-1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"ramadalara\" src=\"https://hotelrunner.com/wp-content/uploads/2015/07/ramadalara.png\" style=\"height:300px; width:300px\" />&nbsp; <img alt=\"divan\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/divan.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"double-tree-by-hilton\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/double-tree-by-hilton.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"ibis_hotel\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/ibis_hotel.jpg\" style=\"height:300px; width:300px\" /></li>\r\n	<li><img alt=\"swandor-logo\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/swandor-logo.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"crystal_resort\" src=\"https://hotelrunner.com/wp-content/uploads/2015/07/crystal_resort.png\" style=\"height:300px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"grenpark_hotel\" src=\"https://hotelrunner.com/wp-content/uploads/2015/07/grenpark_hotel.png\" style=\"height:300px; width:300px\" /></li>\r\n	<li><img alt=\"akturk_hotel\" src=\"https://hotelrunner.com/wp-content/uploads/2015/07/akturk_hotel1.png\" style=\"height:300px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"radisson-blu\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/radisson-blu.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"nova_hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/nova_hotels1.png\" style=\"height:300px; width:300px\" /></li>\r\n	<li><img alt=\"hilton-garden-inn\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/hilton-garden-inn.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"glk-group-hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/glk-group-hotels.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"von_hotel\" src=\"https://hotelrunner.com/wp-content/uploads/2014/04/von_hotel.jpg\" style=\"height:300px; width:300px\" /></li>\r\n	<li><img alt=\"dorak-hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/dorak-hotels1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"concorde-deluxe\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/concorde-deluxe.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"molton-hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/molton-hotels1.png\" style=\"height:220px; width:220px\" /></li>\r\n	<li><img alt=\"bof-hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/bof-hotels1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"amara-hotels\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/amara-hotels.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"armas\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/armas1.png\" style=\"height:220px; width:220px\" /></li>\r\n	<li><img alt=\"anemon\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/anemon1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"zorlu\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/zorlu1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"delphin\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/delphin1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"sub\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/sub1.png\" style=\"height:220px; width:220px\" /></li>\r\n	<li><img alt=\"metropolitan\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/metropolitan1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"mercure\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/mercure1.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"martı\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/mart%C4%B11.png\" style=\"height:220px; width:220px\" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"julian\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/julian1.png\" style=\"height:220px; width:220px\" />&nbsp;<img alt=\"yasmak\" src=\"https://hotelrunner.com/wp-content/uploads/2014/11/yasmak.png\" style=\"height:220px; width:220px\" /></li>\r\n</ul>', 'True', '2021-01-20 12:22:55', '2021-01-29 20:48:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `address`, `phone`) VALUES
(1, 'erbaş', 'seymaerbas0619@gmail.com', NULL, '$2y$10$33MKZyjkahN1Nb21pGVPN.twypYc/Zux60ANosIuPnZraONuLemdy', NULL, NULL, NULL, NULL, 'profile-photos/7FAZhLiidfsicgs2Hk6WgK4RVaxUuLFIZGA6EtU6.jpg', '2020-12-30 14:01:37', '2021-02-06 20:56:33', 'ilker caddesi 7/5 yüzbaşıoğlu apartmanı dikmen/ankara', '5123142124242'),
(2, 'erbaş', 'seymaerbas72@gmail.com', NULL, '$2y$10$7.fNfwryRBZznrnzH.iRPexo79ndC4yZTnJnGEsyLaUzylCr0Hfwi', NULL, NULL, NULL, NULL, 'profile-photos/y5FvIy0jCTZO71K8JgdrnoQkS3vSiafkhYHhkpvs.png', '2021-02-05 19:19:40', '2021-02-06 21:35:49', 'ilker caddesi 7/5 yüzbaşıoğlu apartmanı dikmen/ankara', '5123142124242');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rezerves`
--
ALTER TABLE `rezerves`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `rezerves`
--
ALTER TABLE `rezerves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
