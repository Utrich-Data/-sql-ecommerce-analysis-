
-- Insertion des clients
INSERT INTO clients (nom, email, ville, pays, date_inscription, segment) VALUES
('Kouame Aya', 'aya.kouame@gmail.com', 'Douala', 'Cameroun', '2024-01-15', 'Premium
('Mbarga Paul', 'p.mbarga@yahoo.fr', 'Yaoundé', 'Cameroun', '2024-02-03', 'Standar
('Diallo Aminata', 'aminata.d@outlook.com', 'Douala', 'Cameroun', '2024-01-28', 'Premium
('Nkemdirim Chidi', 'chidi.n@gmail.com', 'Bafoussam','Cameroun', '2024-03-10', 'Standar
('Fofana Mariama', 'mariama.f@gmail.com', 'Douala', 'Cameroun', '2024-02-14', 'VIP'),
('Bello Issa', 'issa.bello@gmail.com', 'Garoua', 'Cameroun', '2024-04-05', 'Standar
('Nguesso Clara', 'clara.ng@gmail.com', 'Douala', 'Cameroun', '2024-01-20', 'Premium
('Tamba Oumar', 'oumar.t@gmail.com', 'Yaoundé', 'Cameroun', '2024-05-18', 'Standar
('Kone Seydou', 'seydou.k@gmail.com', 'Douala', 'Cameroun', '2024-03-22', 'Standar
('Abena Grace', 'grace.abena@gmail.com', 'Kribi', 'Cameroun', '2024-06-01', 'Standar
('Manga Bertrand', 'b.manga@gmail.com', 'Douala', 'Cameroun', '2024-04-11', 'Premium
('Zongo Fatou', 'fatou.z@gmail.com', 'Yaoundé', 'Cameroun', '2024-02-28', 'VIP'),
('Essomba Jean', 'jean.essomba@gmail.com', 'Ebolowa', 'Cameroun', '2024-07-14', 'Standar
('Njoya Arouna', 'arouna.njoya@gmail.com', 'Ngaoundéré','Cameroun','2024-05-30', 'Standar
('Owono Patricia', 'patricia.o@gmail.com', 'Douala', 'Cameroun', '2024-08-08', 'Premium
('Simo Christian', 'christian.s@gmail.com', 'Bafoussam','Cameroun', '2024-03-17', 'Standar
('Tchoumba Marie', 'marie.t@gmail.com', 'Douala', 'Cameroun', '2024-09-02', 'Standar
('Kamdem Herve', 'herve.k@gmail.com', 'Yaoundé', 'Cameroun', '2024-10-15', 'Standar
('Bikele Sophie', 'sophie.b@gmail.com', 'Douala', 'Cameroun', '2024-11-20', 'VIP'),
('Ateba Rodrigue', 'rodrigue.a@gmail.com', 'Douala', 'Cameroun', '2024-12-01', 'Standar);


INSERT INTO produits (nom_produit, categorie, prix_unitaire, stock, fournisseur) VALUES
('Smartphone Samsung A14', 'Electronique', 85000, 45, 'Samsung CM'),
('Laptop Lenovo IdeaPad', 'Electronique', 320000, 12, 'Lenovo Africa'),
('Casque Bluetooth JBL', 'Electronique', 25000, 80, 'JBL Cameroun'),
('T-shirt Coton Premium', 'Vetements', 8500, 200, 'TextilCM'),
('Jean Slim Homme', 'Vetements', 15000, 150, 'FashionAfrica'),
('Robe Wax Femme', 'Vetements', 18000, 120, 'WaxDesign'),
('Chaussures Running Nike', 'Chaussures', 45000, 60, 'Nike CM'),
('Sandales Cuir', 'Chaussures', 12000, 90, 'LeatherCraft'),
('Sac à dos 30L', 'Accessoires', 22000, 70, 'BagWorld'),
('Montre Casio Digitale', 'Accessoires', 18500, 40, 'Casio CM'),
('Powerbank 20000mAh', 'Electronique', 15000, 55, 'Anker Africa'),
('Ecouteurs sans fil', 'Electronique', 12000, 95, 'Xiaomi CM'),
('Lunettes de soleil', 'Accessoires', 9500, 110, 'StyleCM'),
('Ceinture Cuir Homme', 'Accessoires', 7000, 140, 'LeatherCraft'),
('Tablette Huawei MatePad', 'Electronique', 185000, 20, 'Huawei CM');


INSERT INTO commandes (client_id, date_commande, statut, ville_livraison, total_commande) VALUES
(1, '2024-01-20', 'livree', 'Douala', 110000),
(2, '2024-02-10', 'livree', 'Yaoundé', 23500),
(3, '2024-02-15', 'livree', 'Douala', 320000),
(1, '2024-03-05', 'livree', 'Douala', 85000),
(5, '2024-03-12', 'livree', 'Douala', 45000),
(4, '2024-03-20', 'annulee', 'Bafoussam', 15000),
(7, '2024-04-02', 'livree', 'Douala', 97000),
(6, '2024-04-18', 'livree', 'Garoua', 30000),
(3, '2024-04-25', 'livree', 'Douala', 52000),
(11, '2024-05-08', 'livree', 'Douala', 25000),
(5, '2024-05-20', 'en_transit','Douala', 185000),
(12, '2024-05-28', 'livree', 'Yaoundé', 18000),
(8, '2024-06-10', 'livree', 'Yaoundé', 60000),
(2, '2024-06-22', 'annulee', 'Yaoundé', 22000),
(15, '2024-07-05', 'livree', 'Douala', 45000),
(9, '2024-07-19', 'livree', 'Douala', 12000),
(12, '2024-08-03', 'livree', 'Yaoundé', 85000),
(1, '2024-08-15', 'livree', 'Douala', 18500),
(19, '2024-09-10', 'livree', 'Douala', 105000),
(5, '2024-09-25', 'livree', 'Douala', 33000),
(16, '2024-10-08', 'livree', 'Bafoussam', 27500),
(20, '2024-10-20', 'en_transit','Douala', 50000),
(12, '2024-11-05', 'livree', 'Yaoundé', 21000),
(1, '2024-11-18', 'livree', 'Douala', 320000),
(19, '2024-12-10', 'livree', 'Douala', 72000),



INSERT INTO details_commande (commande_id, produit_id, quantite, prix_vente, remise) VALUES
(1, 1, 1, 85000, 0.00), -- Commande 1 : Samsung A14
(1, 3, 1, 25000, 0.00), -- Commande 1 : Casque JBL
(2, 4, 2, 8500, 0.10), -- Commande 2 : 2 T-shirts -10%
(3, 2, 1,320000, 0.00), -- Commande 3 : Laptop Lenovo
(4, 1, 1, 85000, 0.00), -- Commande 4 : Samsung A14
(5, 7, 1, 45000, 0.00), -- Commande 5 : Nike Running
(7, 11, 2, 15000, 0.05), -- Commande 7 : 2 Powerbanks -5%
(7, 9, 1, 22000, 0.00), -- Commande 7 : Sac à dos
(8, 8, 2, 12000, 0.00), -- Commande 8 : 2 Sandales
(9, 5, 2, 15000, 0.05), -- Commande 9 : 2 Jeans -5%
(10, 12, 1, 12000, 0.00), -- Commande 10 : Ecouteurs
(11, 15, 1,185000, 0.00); -- Commande 11 : Tablette Huawei
-- Continuez pour les commandes 12 à 25...
