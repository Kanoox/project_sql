INSERT INTO bibliotheque_projet.livre (id_livre, titre, auteur, genre, annee_publication, etat)
VALUES
(1, 'Le Seigneur des Anneaux', 'J.R.R. Tolkien', 'Fantasy', 1954, 'Disponible'),
(2, '1984', 'George Orwell', 'Dystopie', 1949, 'Emprunté'),
(3, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 'Conte', 1943, 'Disponible'),
(4, "Harry Potter à l\'école des sorciers", 'J.K. Rowling', 'Fantasy', 1997, 'Disponible'),
(5, 'La Peste', 'Albert Camus', 'Philosophie', 1947, 'Emprunté'),
(6, 'La Mère', 'Pearl Buck', 'Roman', 1947, 'Disponible');

INSERT INTO bibliotheque_projet.membre (id_membre, nom, prenom, adresse, telephone, mail, password)
VALUES
(1, 'Dupont', 'Marie', '123 Rue Principale, Paris', '0123456789', 'marie.dupont@example.com', 'password123'),
(2, 'Martin', 'Pierre', '45 Avenue des Champs, Lyon', '0987654321', 'pierre.martin@example.com', 'securepass'),
(3, 'Durand', 'Luc', '78 Boulevard Saint-Michel, Marseille', '0678123456', 'luc.durand@example.com', 'mypassword'),
(4, 'Bernard', 'Julie', '21 Place du Capitole, Toulouse', '0555123456', 'julie.bernard@example.com', 'julie1234'),
(5, 'Petit', 'Jacques', '90 Rue Nationale, Lille', '0321456789', 'jacques.petit@example.com', 'jacquespass');

INSERT INTO bibliotheque_projet.emprunt (id_emprunt, id_membre, id_livre, date_emprunt, date_retour, date_retour_reel, amende)
VALUES
(1, 1, 2, '2023-11-01', '2023-11-15', NULL, NULL),
(2, 2, 5, '2023-11-05', '2023-11-19', '2023-11-20', 2.50),
(3, 3, 1, '2023-10-25', '2023-11-08', '2023-11-08', 0.00),
(4, 4, 3, '2023-11-10', '2023-11-24', NULL, NULL),
(5, 5, 4, '2023-11-12', '2023-11-26', NULL, NULL);
