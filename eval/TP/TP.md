1) **Optimisation des requêtes**

    Formulez en SQL et en algèbre relationnelle (sous forme d'arbre le plus optimal) les requêtes suivantes sur le schéma de la BD de la pépinière PleinDeFoin.

   ```
   a) Clients dont le noTéléphone commence par (123).
   ```

   ```
   b) noCommande et dateCommande des Commandes du Client #10, avec noCommande > 5.
   ```

   ```
   c) noArticle et description des Articles, avec prixUnitaire entre $10 et $20.
   ```
   
   ```
   d) noClient, noTéléphone et noCommande des Commandes du 4/06/2000.
   ```
   
   ```
   e) noArticles commandés au moins une fois par le Client #10 après le 01/06/2000.
   ```
   ```
   f) noLivraisons correspondant aux Commandes du Client #10.
   ```
   
   ```
   g) noCommandes des Commandes placées à la même date que la Commande #2.
   ```
   
   ```
   h) noLivraisons faites à la même date qu'une des Commandes correspondant à la Livraison.
   ```

   ```
   i) Liste des noCommande avec les noLivraisons associées, incluant les noCommandes sans livraison.
   ```
   
   ```
   j) noClient et nomClient des Clients sans Commande en mars 2000.
   ```

   ```
   k) noCommandes sans l'Article #10.
   ```

   ```
   l) Articles dont la description commence par la lettre « C ».
   ```

   ```
   m) Clients avec noTéléphone non NULL.
   ```
   
   ```
   n) Articles avec prix supérieur à la moyenne.
   ```

   ```
   o) Montant total de la Commande #1 avant et après la taxe de 15%.
   ```
  
3) **Gestion des données manquantes**

   Implémentez les quatre scénarios et évaluez la performance théorique et réelle pour chacune des 15 requêtes de la partie 1.

   a) **Scenario 1** : 
   ```
   Fusionner les tables Commande et LignesCommande
   ```

   b) **Scenario 2** : 
   ```
   Créer une table adresse contenant idAdresse, numRue, nomRue, codePostal, ville et pays**
   ```

   c) **Scenario 3** : 
   ```
   Supprimer aléatoirement quelques attributs manquants dans la table DetailLivraison**
   ```

   d) **Scenario 4** : 
   ```
   Scenario 1 + Supprimer aléatoirement des données dans la table nouvellement créée
   ```
