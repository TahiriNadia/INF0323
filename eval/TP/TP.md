
# TP : Optimisation, Conception Relationnelle Avancée et Données Manquantes

## Thème 1 – Optimisation des requêtes

### Objectifs
- Comprendre les techniques d’optimisation basées sur les arbres d’expression
- Appliquer les heuristiques d’optimisation de requêtes
- Évaluer le coût d’exécution à l’aide de modèles réalistes
- Interpréter les plans d’exécution SQL

---

### 📘 Partie A – Analyse syntaxique et sémantique

1. Soit la requête SQL suivante :  
   ```sql
   SELECT nom FROM Employe WHERE age > 40 AND departement = 'RH';
   ```  
   Dessine l’arbre d’expression relationnelle correspondant.

2. Transforme cet arbre selon les heuristiques classiques (projection avant sélection, etc.).

3. Décris l’impact de ces transformations sur la complexité du traitement de la requête.

---

### 📗 Partie B – Calculs de coût (avec disques SSD)

4. Une requête accède à un fichier de 2500 blocs séquentiellement. Calcule le temps total estimé en supposant un disque SSD (voir paramètres ci-dessous).

5. Même question, mais en supposant que 20 % des blocs sont lus aléatoirement, chacun impliquant un positionnement.

6. Compare deux plans d’exécution :  
   - Plan A : lecture séquentielle de 3000 blocs  
   - Plan B : accès aléatoire à 600 blocs avec un index

7. Pour quel nombre de blocs aléatoires le plan B devient-il moins performant que le plan A ?

---

#### 📊 Paramètres des disques SSD (2025)

| Paramètre        | Valeur       |
|------------------|--------------|
| TailleBloc       | 4 Ko         |
| TauxTransVrac    | 1 000 Mo/s   |
| TempsPosDébut    | 0,05 ms      |
| TempsESBloc      | 0,1 ms       |

---

### 📕 Partie C – Plans d’exécution SQL

8. Exécute une requête complexe (JOIN + WHERE + GROUP BY) et affiche le plan d’exécution. Interprète-le.

9. Identifie les étapes coûteuses dans le plan d’exécution.

10. Propose des index ou des reformulations pour réduire le coût.

11. Que se passe-t-il si l’on force l’optimiseur à utiliser un plan sous-optimal ? Explique et illustre.

12. Compare les coûts estimés avec `EXPLAIN` et les temps mesurés réellement.

---

## Thème 2 – Conception relationnelle avancée

### Objectifs
- Identifier les formes normales avancées
- Analyser les dépendances fonctionnelles et multivaluées
- Appliquer les théories de la décomposition sans perte

---

### 📘 Partie A – Dépendances et normalisation

13. Soit un schéma `R(A, B, C, D)` avec les dépendances suivantes :  
    `A → B`, `B → C`, `A → D`.  
    Est-ce que `R` est en 3NF ? en BCNF ? Justifie.

14. Donne une décomposition de `R` en BCNF sans perte.

15. Même question pour un schéma violant la 5NF (avec dépendances de jointure).

16. Donne un exemple concret où la 5NF est nécessaire.

---

### 📗 Partie B – Inférence et algorithmes

17. Donne l’algorithme de fermeture d’un ensemble d’attributs.

18. Soit un ensemble de dépendances fonctionnelles `F`. Calcule la fermeture de `{A}`.

19. Utilise l’algorithme de synthèse pour produire un schéma minimal en 3NF.

20. Implémente un algorithme d’inférence automatique des formes normales dans un langage de ton choix (pseudo-code ou Python).

---

## Thème 3 – Données manquantes et solutions

### Objectifs
- Modéliser les données manquantes avec les logiques à plusieurs valeurs
- Appliquer les solutions de décomposition project-join ou restructuration-union
- Étudier le comportement des SGBD face aux nulls

---

### 📘 Partie A – Logiques multivaluées

21. Décris la logique à 3 valeurs utilisée par SQL (vrai, faux, inconnu).

22. Compare avec la logique de Priest et celle de Belnap (faible).

23. Donne une table de vérité pour `A OR B` avec les 4 valeurs de Belnap.

24. Interprète le comportement d’un `WHERE` avec des `NULL` dans SQL :  
    ```sql
    SELECT * FROM T WHERE age > 30 AND ville = 'Paris';
    ```

25. Quelles erreurs logiques peuvent survenir dans les conditions complexes avec des `NULL` ?

---

### 📗 Partie B – Décompositions

26. Soit une relation contenant des `NULL` dans certains attributs. Donne une méthode pour la décomposer en projection + jointure.

27. Fais de même avec une restructuration basée sur l’union.

28. Implémente un exemple simple en SQL avec des `NULL`, puis applique une décomposition sans perte.

---

### 📙 Partie C – Applications avancées

29. Décris les implications des données manquantes sur les jointures, les agrégats et les index.

30. Propose une stratégie combinant logique à 3 valeurs et vues matérialisées pour minimiser l’impact des `NULL` sur les requêtes analytiques.

---

💡 *Fin du TP — Assure-toi de justifier toutes tes réponses et de vérifier tes calculs. Pour les exercices SQL, teste les requêtes dans un environnement PostgreSQL ou SQLite avec données simulées.*
