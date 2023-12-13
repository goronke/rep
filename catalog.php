<?php 
$db = new PDO("mysql:127.0.0.1 = localhost; dbname=books",
"root", "");

$info = [];

if($query = $db->query("SELECT * FROM books")) {
	$info = $query->fetchAll(PDO::FETCH_ASSOC);
} else {
	print_r($d->errorInfo());
}

?>


<!DOCTYPE HTML>
<html>
	<head>
		<title>Black Library</title>
		<link rel="stylesheet" href="assets/css/style.css"/>
		<link rel=" shortcut icon" href="images/logo.png"/>
		<meta charset="utf-8"/>
	</head>
	<body>
		<div class="header">
			<div id="logo">
				<h1><a href="index.html" id="logo_a">Black Library</a></h1>
			</div>
			<div id="navs">
				<nav>
					<a href="index.html" id="nav_a">О нас</a>
					<a href="catalog.php" id="nav_a">Каталог</a>
					<a href="series.html" id="nav_a">Популярные серии</a>
					<a href="index.html" id="nav_a">Авторизация</a>
				</nav>
			</div>
		</div>
		<div class = "banner">
			<div id="banner_1">
				<a id="banner_text">В мрачной тьме далекого будущего есть лишь война...</a>
			</div>
			<div id="banner_2">
				<a href="#"><img src="images/banner_2.jpg" alt="" /></a>
			</div>
		</div>
		<div class ="info-wrapper">
			<div class="info">
				<?php foreach ($info as $data): ?>
					<div id="product">
						<a><img src="<?php echo $data ['image'] ?>" alt="" /></a>
						<h2 id="info_h"><?php echo $data['name'] ?></h2>
						<h3 id="info_h"><?php echo $data['author'] ?></h3>
						<a><?php echo $data['description'] ?></a>
						<h2><a href="#" id="buy">Заказать</a></h2>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
		<div class ="footer-wrapper">
			<div class="footer">

				<div id="footer-block-1">
					<h2 id="footer_h">Контактные данные</h2>
					<ul>
  						<li><a id="footer-text">Адрес: Москва, Пушкина 23</a></li>
  						<li><a id="footer-text"><Номер телефона: +77777777777</a></li>
  						<li><a id="footer-text">Электронная почта: BL@gmail.com</a></li>
					</ul>
				</div>
				<div id="footer-block-2">
					<h2 id="footer_h">Информация</h2>
					<a id="footer-text">Black Library создана любителями художественной литературы для любителей. Мы постоянно создаем новые и захватывающие произведения, чтобы наши читатели могли погрузиться в перепятии далекого будущего. Присоединяйтесь к нам и погрузитесь в миры, где реальность соприкасается с фантазией!</a>
				</div>
			</div>
		</div>
	</body>
</html>