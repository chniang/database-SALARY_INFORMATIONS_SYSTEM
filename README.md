
# 🗂️ Système d'information sur la participation des salariés

Ce projet contient le script SQL de création d'une base de données pour un système d'information permettant de gérer la participation des employés aux projets d'une entreprise.

## 🎯 Objectif

Concevoir un schéma relationnel pour stocker et organiser les informations relatives :

- Aux employés
- Aux départements
- Aux projets
- Aux rôles joués par les employés dans les projets

## 🧱 Structure de la base de données

### 1. **Table `Departement`**

| Champ             | Type         | Contraintes             |
|------------------|--------------|--------------------------|
| Num_S            | INT          | Clé primaire             |
| Label            | VARCHAR(255) | NOT NULL                 |
| Nom_du_manager   | VARCHAR(255) | NOT NULL                 |

---

### 2. **Table `Employe`**

| Champ             | Type          | Contraintes                                |
|------------------|---------------|---------------------------------------------|
| Num_E            | INT           | Clé primaire                                |
| Nom              | VARCHAR(255)  | NOT NULL                                    |
| Position         | VARCHAR(255)  | NOT NULL                                    |
| Salaire          | DECIMAL(10,2) | NOT NULL                                    |
| Department_Num_S | INT           | Clé étrangère → Departement(Num_S)          |

---

### 3. **Table `Projet`**

| Champ             | Type         | Contraintes                                |
|------------------|--------------|---------------------------------------------|
| Num_P            | INT          | Clé primaire                                |
| Titre            | VARCHAR(255) | NOT NULL                                    |
| Date_de_debut    | DATE         | NOT NULL                                    |
| Date_fin         | DATE         | NOT NULL                                    |
| Department_Num_S | INT          | Clé étrangère → Departement(Num_S)          |

---

### 4. **Table `Employe_Projet`**

| Champ           | Type         | Contraintes                                 |
|----------------|--------------|----------------------------------------------|
| Employe_Num_E  | INT          | Clé étrangère → Employe(Num_E)               |
| Projet_Num_P   | INT          | Clé étrangère → Projet(Num_P)                |
| Role           | VARCHAR(255) | NOT NULL                                     |
| **Clé primaire** composée : (Employe_Num_E, Projet_Num_P)

---

## ▶️ Instructions pour l'exécution

1. Crée une base de données (ex : `gestion_participation`)
2. Ouvre ton terminal ou un outil comme MySQL Workbench
3. Exécute le script SQL :

👨‍💻 Auteur
Cheikh Niang
Étudiant en data science – Projet académique

📜 Licence
Ce projet est réalisé à des fins pédagogiques.


---









