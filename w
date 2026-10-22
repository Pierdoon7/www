<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProGlue - Профессиональные клеи</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
        }

        header {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 20px 0;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        nav a {
            color: white;
            margin-left: 30px;
            text-decoration: none;
            transition: opacity 0.3s;
        }

        nav a:hover {
            opacity: 0.8;
        }

        .hero {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 100px 20px;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
            opacity: 0.95;
        }

        .btn {
            display: inline-block;
            padding: 12px 40px;
            background: #ff6b6b;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background 0.3s;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #ff5252;
        }

        .filters {
            display: flex;
            gap: 15px;
            margin: 40px 0;
            flex-wrap: wrap;
            justify-content: center;
        }

        .filter-btn {
            padding: 10px 20px;
            border: 2px solid #667eea;
            background: white;
            color: #667eea;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background: #667eea;
            color: white;
        }

        .catalog {
            padding: 60px 20px;
        }

        .section-title {
            font-size: 36px;
            text-align: center;
            margin-bottom: 50px;
            color: #1e3c72;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
            margin-bottom: 60px;
        }

        .product-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        }

        .product-image {
            width: 100%;
            height: 250px;
            background: linear-gradient(135deg, #e0e0e0 0%, #f5f5f5 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 14px;
            color: #999;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .product-info {
            padding: 20px;
        }

        .product-name {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #1e3c72;
        }

        .product-description {
            font-size: 14px;
            color: #666;
            margin-bottom: 15px;
            height: 40px;
            overflow: hidden;
        }

        .product-specs {
            font-size: 12px;
            color: #999;
            margin-bottom: 15px;
            line-height: 1.5;
        }

        .product-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-size: 24px;
            font-weight: bold;
            color: #ff6b6b;
        }

        .btn-add {
            padding: 8px 16px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            transition: background 0.3s;
        }

        .btn-add:hover {
            background: #5568d3;
        }

        .features {
            background: #f8f9fa;
            padding: 60px 20px;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .feature-item {
            text-align: center;
        }

        .feature-icon {
            font-size: 48px;
            margin-bottom: 15px;
        }

        .feature-item h3 {
            margin-bottom: 10px;
            color: #1e3c72;
        }

        .feature-item p {
            color: #666;
            font-size: 14px;
        }

        footer {
            background: #1e3c72;
            color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 30px;
        }

        .footer-column h4 {
            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;
            color: #ccc;
            text-decoration: none;
            margin-bottom: 8px;
            font-size: 14px;
            transition: color 0.3s;
        }

        .footer-column a:hover {
            color: white;
        }

        .cart-icon {
            position: relative;
            cursor: pointer;
            font-size: 20px;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #ff6b6b;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 32px;
            }

            nav {
                display: none;
            }

            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">ProGlue</a>
                <nav>
                    <a href="#catalog">Каталог</a>
                    <a href="#about">О нас</a>
                    <a href="#contacts">Контакты</a>
                </nav>
                <div class="cart-icon" onclick="showCart()">
                    🛒
                    <span class="cart-count" id="cart-count">0</span>
                </div>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Профессиональные клеи для любых задач</h1>
            <p>Высокое качество, надежность, быстрое высыхание</p>
            <button class="btn" onclick="document.getElementById('catalog').scrollIntoView({behavior: 'smooth'})">
                Смотреть каталог
            </button>
        </div>
    </section>

    <section class="features">
        <div class="container">
            <h2 class="section-title">Почему выбирают нас</h2>
            <div class="features-grid">
                <div class="feature-item">
                    <div class="feature-icon">✓</div>
                    <h3>Качество</h3>
                    <p>Проверенные производители, сертификация ISO</p>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">⚡</div>
                    <h3>Быстрая доставка</h3>
                    <p>Доставим в течение 1-3 дней по России</p>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">💰</div>
                    <h3>Выгодные цены</h3>
                    <p>Оптовые скидки и спецпредложения</p>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">🤝</div>
                    <h3>Поддержка</h3>
                    <p>Консультация специалистов 24/7</p>
                </div>
            </div>
        </div>
    </section>

    <section class="catalog" id="catalog">
        <div class="container">
            <h2 class="section-title">Каталог продуктов</h2>
            
            <div class="filters">
                <button class="filter-btn active" onclick="filterProducts('all')">Все</button>
                <button class="filter-btn" onclick="filterProducts('universal')">Универсальные</button>
                <button class="filter-btn" onclick="filterProducts('wood')">По дереву</button>
                <button class="filter-btn" onclick="filterProducts('metal')">По металлу</button>
                <button class="filter-btn" onclick="filterProducts('ceramic')">По керамике</button>
            </div>

            <div class="products-grid" id="products-grid">
                <!-- Продукты загружаются сюда -->
            </div>
        </div>
    </section>

    <section class="features" id="about">
        <div class="container">
            <h2 class="section-title">О нашей компании</h2>
            <p style="text-align: center; font-size: 16px; color: #666; max-width: 800px; margin: 0 auto;">
                ProGlue — лидер на рынке клеевых составов с 15-летним опытом. 
                Мы поставляем профессиональные клеи для строительства, производства и бытового использования. 
                Наша цель — обеспечить наших клиентов лучшими материалами по справедливым ценам.
            </p>
        </div>
    </section>

    <footer id="contacts">
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h4>О компании</h4>
                    <a href="#">О нас</a>
                    <a href="#">Наши преимущества</a>
                    <a href="#">Новости</a>
                </div>
                <div class="footer-column">
                    <h4>Поддержка</h4>
                    <a href="#">Доставка и оплата</a>
                    <a href="#">Возврат товара</a>
                    <a href="#">FAQ</a>
                </div>
                <div class="footer-column">
                    <h4>Контакты</h4>
                    <a href="tel:+79991234567">+7 (999) 123-45-67</a>
                    <a href="mailto:info@poglue.ru">info@poglue.ru</a>
                    <a href="#">Москва, ул. Примерная, 123</a>
                </div>
            </div>
            <p>&copy; 2024 ProGlue. Все права защищены.</p>
        </div>
    </footer>

    <script>
        // Пример данных продуктов — замените на свои!
        const products = [
            {
                id: 1,
                name: "Универсальный клей ПВА",
                category: "universal",
                price: "150",
                image: "путь/к/вашему/изображению1.jpg",
                description: "Экологичный клей на основе ПВА",
                specs: "Объем: 500 мл\nВремя высыхания: 24 ч"
            },
            {
                id: 2,
                name: "Монтажный клей для дерева",
                category: "wood",
                price: "280",
                image: "путь/к/вашему/изображению2.jpg",
                description: "Профессиональный клей для деревянных конструкций",
                specs: "Объем: 750 мл\nВремя высыхания: 12 ч"
            },
            {
                id: 3,
                name: "Эпоксидный клей",
                category: "metal",
                price: "420",
                image: "путь/к/вашему/изображению3.jpg",
                description: "Двухкомпонентный эпоксидный клей",
                specs: "Объем: 250 мл\nВремя высыхания: 6 ч"
            },
            {
                id: 4,
                name: "Клей для керамики и плитки",
                category: "ceramic",
                price: "350",
                image: "путь/к/вашему/изображению4.jpg",
                description: "Специализированный клей для облицовки",
                specs: "Объем: 1 л\nВремя высыхания: 48 ч"
            },
            {
                id: 5,
                name: "Силиконовый герметик",
                category: "universal",
                
