-- ============================================
-- yayashop E-Commerce — Création des tables
-- Auteur : Utrich TCHAMBE | Date : 2026
-- ============================================

CREATE TABLE IF NOT EXISTS clients (
client_id INTEGER PRIMARY KEY AUTOINCREMENT,
nom TEXT NOT NULL,
email TEXT UNIQUE,
ville TEXT,
pays TEXT DEFAULT 'Cameroun',
date_inscription DATE,
segment TEXT
);


CREATE TABLE IF NOT EXISTS produits (
produit_id INTEGER PRIMARY KEY AUTOINCREMENT,
nom_produit TEXT NOT NULL,
categorie TEXT,
prix_unitaire REAL NOT NULL,
stock INTEGER DEFAULT 0,
fournisseur TEXT
);


CREATE TABLE IF NOT EXISTS commandes (
commande_id INTEGER PRIMARY KEY AUTOINCREMENT,
client_id INTEGER,
date_commande DATE NOT NULL,
statut TEXT DEFAULT 'en_attente',
ville_livraison TEXT,
total_commande REAL,
FOREIGN KEY (client_id) REFERENCES clients(client_id)
);


CREATE TABLE IF NOT EXISTS details_commande (
detail_id INTEGER PRIMARY KEY AUTOINCREMENT,
commande_id INTEGER,
produit_id INTEGER,
quantite INTEGER NOT NULL,
prix_vente REAL NOT NULL,
remise REAL DEFAULT 0.0,
FOREIGN KEY (commande_id) REFERENCES commandes(commande_id),
FOREIGN KEY (produit_id) REFERENCES produits(produit_id)
)