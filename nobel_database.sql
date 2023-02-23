CREATE DATABASE nobel;

USE nobel;

CREATE TABLE dijazottak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    nemzetiseg VARCHAR(255) NOT NULL,
    szuletesi_datum DATE NOT NULL
);

CREATE TABLE dijazasok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evszam INT NOT NULL,
    tipus VARCHAR(255) NOT NULL,
    dijazott_id INT NOT NULL,
    FOREIGN KEY (dijazott_id) REFERENCES dijazottak(id)
);
INSERT INTO dijazottak (nev, nemzetiseg, szuletesi_datum)
VALUES
    ('Marie Curie', 'francia', '1867-11-07'),
    ('Albert Einstein', 'német', '1879-03-14'),
    ('Niels Bohr', 'dán', '1885-10-07'),
    ('Winston Churchill', 'angol', '1874-11-30'),
    ('Ernest Hemingway', 'amerikai', '1899-07-21'),
    ('Martin Luther King Jr.', 'amerikai', '1929-01-15'),
    ('Mother Teresa', 'albán', '1910-08-26'),
    ('Nelson Mandela', 'dél-afrikai', '1918-07-18'),
    ('Malala Yousafzai', 'pakisztáni', '1997-07-12');

INSERT INTO dijazasok (evszam, tipus, dijazott_id)
VALUES
    (1903, 'Fiziológiai vagy Orvosi díj', 1),
    (1911, 'Kémiai díj', 1),
    (1921, 'Fizikai díj', 2),
    (1922, 'Kémiai díj', 3),
    (1953, 'Irodalmi díj', 4),
    (1964, 'Béke Nobel-díj', 6),
    (1979, 'Béke Nobel-díj', 7),
    (1993, 'Béke Nobel-díj', 8),
    (2014, 'Béke Nobel-díj', 9);