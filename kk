```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cléopâtre et Marc Antoine | Projet 2INF4</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: Georgia, "Times New Roman", serif;
            background: #f4eee3;
            color: #29251e;
            line-height: 1.8;
        }

        header {
            background: #172b32;
            color: white;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .logo {
            color: #e6bd73;
            font-size: 23px;
            font-weight: bold;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-family: Arial, sans-serif;
        }

        nav a:hover {
            color: #e6bd73;
        }

        .hero {
            min-height: 600px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 40px 20px;
            color: white;

            background:
                linear-gradient(
                    rgba(12, 24, 29, 0.65),
                    rgba(12, 24, 29, 0.8)
                ),
                url("https://images.unsplash.com/photo-1568322445389-f64ac2515020?auto=format&fit=crop&w=1800&q=85");

            background-size: cover;
            background-position: center;
        }

        .hero-content {
            max-width: 850px;
        }

        .hero h1 {
            font-size: clamp(38px, 6vw, 68px);
            color: #f0cd8b;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            background: #d5ad65;
            color: #172b32;
            text-decoration: none;
            padding: 12px 28px;
            border-radius: 4px;
            font-family: Arial, sans-serif;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: white;
            transform: translateY(-3px);
        }

        .project-info {
            background: #e4d6bf;
            padding: 22px;
            text-align: center;
            font-family: Arial, sans-serif;
            border-bottom: 3px solid #c4a164;
        }

        .project-info strong {
            color: #172b32;
        }

        section {
            max-width: 1150px;
            margin: auto;
            padding: 75px 25px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-title h2 {
            font-size: 36px;
            color: #172b32;
        }

        .section-title p {
            color: #8b744c;
            font-family: Arial, sans-serif;
        }

        .intro {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            align-items: center;
        }

        .intro img {
            width: 100%;
            height: 350px;
            object-fit: cover;
            border-radius: 6px;
            box-shadow: 0 10px 25px #0002;
        }

        .intro h3 {
            font-size: 28px;
            color: #9a7136;
            margin-bottom: 15px;
        }

        .characters {
            background: #e9dfcf;
            max-width: none;
            padding-left: max(25px, calc((100% - 1100px) / 2));
            padding-right: max(25px, calc((100% - 1100px) / 2));
        }

        .character-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .character {
            background: #fffaf2;
            border-radius: 6px;
            overflow: hidden;
            box-shadow: 0 5px 18px #0001;
            transition: 0.3s;
        }

        .character:hover {
            transform: translateY(-7px);
        }

        .character img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .character-content {
            padding: 23px;
        }

        .character h3 {
            color: #9a7136;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .history-item {
            display: grid;
            grid-template-columns: 100px 1fr;
            gap: 25px;
            margin-bottom: 25px;
            align-items: start;
        }

        .year {
            background: #172b32;
            color: #f0cd8b;
            text-align: center;
            padding: 15px 5px;
            border-radius: 5px;
            font-weight: bold;
        }

        .history-content {
            border-left: 3px solid #c4a164;
            padding: 5px 20px 20px;
        }

        .history-content h3 {
            color: #9a7136;
            margin-bottom: 8px;
        }

        .quote {
            background: #172b32;
            color: white;
            text-align: center;
            padding: 55px 25px;
        }

        .quote h2 {
            color: #f0cd8b;
            margin-bottom: 15px;
        }

        .lessons {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(210px, 1fr));
            gap: 20px;
        }

        .lesson {
            padding: 28px 20px;
            background: white;
            border-top: 4px solid #c4a164;
            text-align: center;
            box-shadow: 0 5px 15px #0001;
        }

        .lesson .icon {
            font-size: 38px;
            margin-bottom: 10px;
        }

        .lesson h3 {
            color: #9a7136;
            margin-bottom: 10px;
        }

        footer {
            background: #101e23;
            color: white;
            padding: 35px 20px;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        footer h3 {
            color: #e6bd73;
            margin-bottom: 10px;
        }

        footer p {
            margin: 5px;
        }

        @media (max-width: 700px) {
            header {
                justify-content: center;
                text-align: center;
            }

            nav {
                text-align: center;
            }

            nav a {
                display: inline-block;
                margin: 6px;
                font-size: 14px;
            }

            .intro {
                grid-template-columns: 1fr;
            }

            .hero {
                min-height: 480px;
            }

            .history-item {
                grid-template-columns: 75px 1fr;
                gap: 12px;
            }

            .section-title h2 {
                font-size: 29px;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="logo">HISTOIRE & CIVILISATION</div>

        <nav>
            <a href="#accueil">Accueil</a>
            <a href="#histoire">Histoire</a>
            <a href="#personnages">Personnages</a>
            <a href="#chronologie">Chronologie</a>
            <a href="#lecons">Leçons</a>
        </nav>
    </header>

    <main>

        <div class="hero" id="accueil">
            <div class="hero-content">
                <h1>Cléopâtre & Marc Antoine</h1>

                <p>
                    Une histoire fascinante où l'amour,
                    le pouvoir et la guerre se rencontrent
                    dans le monde antique.
                </p>

                <a href="#histoire" class="btn">
                    Explorer leur histoire
                </a>
            </div>
        </div>

        <div class="project-info">
            <p>
                <strong>Projet réalisé par :</strong> Majed Jaloule
                &nbsp; | &nbsp;
                <strong>Classe :</strong> 2INF4
            </p>
        </div>

        <section id="histoire">
            <div class="section-title">
                <h2>Une histoire inoubliable</h2>
                <p>Entre l'Égypte et Rome</p>
            </div>

            <div class="intro">
                <div>
                    <h3>Un amour au cœur de l'Histoire</h3>

                    <p>
                        Cléopâtre VII, reine d'Égypte, rencontre
                        Marc Antoine, général romain, en 41 av. J.-C.
                    </p>

                    <br>

                    <p>
                        Leur relation devient à la fois personnelle
                        et politique. Ensemble, ils cherchent
                        à préserver leur influence face à Octavien,
                        leur puissant rival.
                    </p>

                    <br>

                    <p>
                        Mais la guerre, la défaite et la perte
                        de leur pouvoir conduisent leur histoire
                        vers une fin tragique.
                    </p>
                </div>

                <img
                    src="https://images.unsplash.com/photo-1603565816030-6b389eeb23cb?auto=format&fit=crop&w=1000&q=85"
                    alt="Monument historique de l'Égypte ancienne">
            </div>
        </section>

        <section class="characters" id="personnages">
            <div class="section-title">
                <h2>Les personnages</h2>
                <p>Trois figures majeures de cette histoire</p>
            </div>

            <div class="character-grid">

                <article class="character">
                    <img
                        src="https://commons.wikimedia.org/wiki/Special:FilePath/Cleopatra%20VII%20%28Hermitage%29.jpg"
                        alt="Représentation historique de Cléopâtre">

                    <div class="character-content">
                        <h3>Cléopâtre VII</h3>

                        <p>
                            Dernière souveraine active du royaume
                            ptolémaïque d'Égypte, elle cherche
                            à préserver l'indépendance de son pays.
                        </p>
                    </div>
                </article>

                <article class="character">
                    <img
                        src="https://commons.wikimedia.org/wiki/Special:FilePath/Marcus%20Antonius%20Louvre%20Ma1220.jpg"
                        alt="Buste antique de Marc Antoine">

                    <div class="character-content">
                        <h3>Marc Antoine</h3>

                        <p>
                            Général et homme politique romain,
                            il devient l'allié de Cléopâtre
                            et partage avec elle un destin tragique.
                        </p>
                    </div>
                </article>

                <article class="character">
                    <img
                        src="https://commons.wikimedia.org/wiki/Special:FilePath/Augustus%20Bevilacqua.jpg"
                        alt="Statue d'Auguste">

                    <div class="character-content">
                        <h3>Octavien</h3>

                        <p>
                            Rival de Marc Antoine, il remporte
                            la victoire et devient le premier
                            empereur romain sous le nom d'Auguste.
                        </p>
                    </div>
                </article>

            </div>
        </section>

        <section id="chronologie">
            <div class="section-title">
                <h2>La chronologie des événements</h2>
                <p>Les dates importantes de leur histoire</p>
            </div>

            <div class="history-item">
                <div class="year">41 av. J.-C.</div>

                <div class="history-content">
                    <h3>La rencontre</h3>
                    <p>
                        Cléopâtre rencontre Marc Antoine à Tarse.
                        Leur relation se développe dans un contexte
                        de rivalités politiques.
                    </p>
                </div>
            </div>

            <div class="history-item">
                <div class="year">40 av. J.-C.</div>

                <div class="history-content">
                    <h3>Une famille</h3>
                    <p>
                        Leur relation donne naissance à des enfants
                        et renforce leurs liens personnels et politiques.
                    </p>
                </div>
            </div>

            <div class="history-item">
                <div class="year">31 av. J.-C.</div>

                <div class="history-content">
                    <h3>La bataille d'Actium</h3>
                    <p>
                        Les forces d'Octavien remportent une victoire
                        décisive contre celles de Marc Antoine
                        et de Cléopâtre.
                    </p>
                </div>
            </div>

            <div class="history-item">
                <div class="year">30 av. J.-C.</div>

                <div class="history-content">
                    <h3>La fin d'une époque</h3>
                    <p>
                        Marc Antoine et Cléopâtre meurent.
                        L'Égypte passe sous domination romaine,
                        mettant fin au royaume ptolémaïque.
                    </p>
                </div>
            </div>
        </section>

        <div class="quote">
            <h2>Une histoire qui traverse les siècles</h2>

            <p>
                Leur destin reste l'un des récits les plus célèbres
                de l'Antiquité, à la croisée de l'amour,
                de l'ambition et du pouvoir.
            </p>
        </div>

        <section id="lecons">
            <div class="section-title">
                <h2>Les leçons à retenir</h2>
                <p>Ce que cette histoire nous apprend</p>
            </div>

            <div class="lessons">

                <div class="lesson">
                    <div class="icon">❤️</div>
                    <h3>L'amour</h3>
                    <p>
                        Les sentiments peuvent être confrontés
                        aux difficultés et aux circonstances.
                    </p>
                </div>

                <div class="lesson">
                    <div class="icon">🧠</div>
                    <h3>La sagesse</h3>
                    <p>
                        Il est important de réfléchir aux conséquences
                        de ses décisions.
                    </p>
                </div>

                <div class="lesson">
                    <div class="icon">👑</div>
                    <h3>Le pouvoir</h3>
                    <p>
                        La puissance et la richesse ne sont pas éternelles.
                    </p>
                </div>

                <div class="lesson">
                    <div class="icon">📜</div>
                    <h3>L'Histoire</h3>
                    <p>
                        Les décisions des dirigeants peuvent transformer
                        le destin de peuples entiers.
                    </p>
                </div>

            </div>
        </section>

    </main>

    <footer>
        <h3>Projet d'histoire</h3>

        <p>Réalisé par : Majed Jaloule</p>

        <p>Classe : 2INF4</p>

        <p>Thème : Cléopâtre et Marc Antoine</p>

        <p>© 2026 — Projet éducatif</p>
    </footer>

</body>
</html>
```
