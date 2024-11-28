CREATE TABLE bibliotheque_projet.livre (
    id_livre INT PRIMARY KEY,
    titre VARCHAR(255),
    auteur VARCHAR(255),
    genre VARCHAR(100),
    annee_publication YEAR,
    etat VARCHAR(50)
);

CREATE TABLE bibliotheque_projet.membre (
    id_membre INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255),
    telephone VARCHAR(20),
    mail VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE bibliotheque_projet.emprunt (
    id_emprunt INT PRIMARY KEY,
    id_membre INT,
    id_livre INT,
    date_emprunt DATE,
    date_retour DATE,
    date_retour_reel DATE,
    amende DECIMAL(10, 2),
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre),
    FOREIGN KEY (id_livre) REFERENCES livre(id_livre)
);