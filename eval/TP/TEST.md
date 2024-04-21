### Test : Gestion de Base de Données

#### Durée : 2 heures

---

#### Section A : Optimisation des requêtes (C_MOD.OPTx) - 45 minutes

1. **Indexation** (15 minutes)
   - Quelle affirmation concernant l'indexation dans les bases de données est vraie ?
     - A) Les index accélèrent la récupération des données mais ralentissent la modification des données.
     - B) Les index sont uniquement utiles pour les petites tables.
     - C) Les index n'ont aucun impact sur les performances des requêtes.
     - D) Les index sont principalement utilisés pour l'insertion de données.

2. **Arbres d’expression** (15 minutes)
   - En partant de l'expression : (A ET B) OU (C ET D), dessinez l'arbre d'expression, où A, B, C et D sont des tables.

3. **Permutations euristiques** (15 minutes)
   - Vrai ou faux : Les permutations euristiques garantissent toujours le plan d'exécution de requête optimal.

4. **Réduction, extension et fonctions de coût** (20 minutes)
   - Envisagez une requête avec plusieurs jointures et agrégats. Comment réduiriez-vous le temps d'exécution de cette requête ?

5. **Utilisation des plans d’exécution en SQL** (20 minutes)
   - À partir d'une requête SQL complexe, analysez le plan d'exécution et identifiez les goulets d'étranglement potentiels. Comment optimiseriez-vous cette requête ?

---

#### Section B : Approfondissement de la conception relationnelle (C_MOD_CO3x) - 35 minutes

6. **1FN** (10 minutes)
   - Laquelle des affirmations suivantes décrit le mieux la Première Forme Normale (1NF) ?
     - A) Chaque ligne dans une table doit avoir un identifiant unique.
     - B) Tous les attributs dans une relation doivent être atomiques.
     - C) Il ne devrait y avoir aucun groupement répété dans une table.
     - D) La redondance des données doit être éliminée.

7. **FNBC** (15 minutes)
   - Expliquez la préservation des dépendances fonctionnelles dans la Forme Normale de Boyce-Codd (FNBC) avec un exemple.

8. **5FN** (10 minutes)
   - Quand la Cinquième Forme Normale (5NF) est-elle préférée à la Forme Normale de Boyce-Codd (FNBC) dans la conception de bases de données ? Fournissez un scénario.

9. **Inférence directe d’un schéma relationnel à partir des dépendances fonctionnelles** (20 minutes)
   - À partir d'un ensemble de dépendances fonctionnelles, déduisez le schéma relationnel.

---

#### Section C : Problématique des données manquantes et solutions (C_MOD_CO4x) - 40 minutes

10. **Logiques à 3 valeurs (de Priest, Belnap faible, SQL)** (15 minutes)
    - Expliquez le concept de logique à trois valeurs dans les bases de données. Fournissez un exemple où elle est utile.

11. **Logique à 4 valeurs** (10 minutes)
    - Vrai ou faux : La logique à quatre valeurs peut gérer toutes les combinaisons possibles de données manquantes.

12. **Décomposition de projet-jointure** (15 minutes)
    - Discutez du processus de décomposition en projection-join pour gérer efficacement les données manquantes.

13. **Décomposition de restruction-union** (20 minutes)
    - Dans un scénario avec des opérations de restructuration et d'union de données, expliquez comment vous géreriez les données manquantes en utilisant des techniques de décomposition.

---

#### Section D : Application Pratique - Requêtes SQL - 30 minutes

14. Écrivez une requête SQL et algèbre relationnel pour récupérer les noms de tous les employés ayant un salaire supérieur à 50 000 $.
Schéma relationnel pour les employés :

   ```plaintext
   Table : Employés
   --------------------------------------
   | ID_Employé | Nom     | Salaire     |
   --------------------------------------
   | 1          | Jean    | 60000       |
   | 2          | Marie   | 48000       |
   | 3          | Pierre  | 70000       |
   | ...        | ...     | ...         |
   --------------------------------------
   ```

15. Considérez une table de base de données "Commandes" avec les colonnes (ID_Commande, ID_Client, Date_Commande, Montant_Total). Écrivez une requête SQL et algèbre relationnel pour trouver le montant total des commandes passées par chaque client.
Schéma relationnel pour les commandes :

   ```plaintext
   Table : Commandes
   -----------------------------------------------------------
   | ID_Commande | ID_Client | Date_Commande | Montant_Total |
   -----------------------------------------------------------
   | 1           | 101       | 2024-04-01    | 1500          |
   | 2           | 102       | 2024-04-02    | 2500          |
   | 3           | 101       | 2024-04-03    | 1800          |
   | ...         | ...       | ...           | ...           |
   -----------------------------------------------------------
   ```
   
16. Écrivez une requête SQLet algèbre relationnel  pour compter le nombre d'employés dans chaque service.
Schéma relationnel pour les services :

   ```plaintext
   Table : Services
   ---------------------------------------
   | ID_Service | Nom_Service | Employés |
   ---------------------------------------
   | 1          | Ventes      | 20       |
   | 2          | RH          | 15       |
   | 3          | IT          | 25       |
   | ...        | ...         | ...      |
   ---------------------------------------
   ```
   
---

#### Section E : Question de Dissertation - 10 minutes

17. Discutez de l'importance de l'optimisation des requêtes dans les systèmes de gestion de base de données en mettant en lien les objectifs de développememnt durable. Fournissez des exemples de techniques utilisées pour l'optimisation des requêtes et leur impact sur les performances des bases de données.

