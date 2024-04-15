**Problèmes et Solutions liés aux Données Manquantes :**

1. **Exercice :** Considérez une table PostgreSQL nommée `customer_info` avec les colonnes `customer_id`, `name`, `age`, et `email`. Créez un scénario où des données manquantes pourraient apparaître dans chaque colonne. Ensuite, écrivez des requêtes SQL pour :
   - Identifier le nombre de valeurs manquantes dans chaque colonne.
   - Mettre en œuvre différentes stratégies pour gérer les données manquantes (par exemple, en utilisant `COALESCE`, des instructions `CASE`, ou la fonction `NULLIF`) et discuter des avantages et des inconvénients de chaque approche.


```sql
CREATE TABLE customer_info (
    customer_id INT,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
```

**Logique à 3 Valeurs (SQL) :**

2. **Exercice :** Étant donné une table PostgreSQL nommée `orders` avec les colonnes `order_id`, `customer_id`, `order_date`, et `status`, écrivez des requêtes SQL pour :
   - Récupérer toutes les commandes passées par des clients dont le statut est soit 'actif', 'inactif', ou inconnu.
   - Mettre en œuvre une requête en utilisant des instructions `CASE` pour catégoriser les commandes en fonction de leur statut comme 'actif', 'inactif', ou 'inconnu'.
  

```sql
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);
```

**Logique à 4 Valeurs :**

3. **Exercice :** Étendez l'exercice précédent avec la table `orders` pour inclure un nouveau statut appelé 'en attente'. Écrivez des requêtes SQL pour gérer ce statut supplémentaire en considérant la logique à 4 valeurs.


```sql
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);
```

**Décomposition Projet-Joint :**

4. **Exercice :** Étant donné deux tables PostgreSQL `employees` et `departments` avec les colonnes appropriées, effectuez une décomposition projet-joint en :
   - Créant deux tables distinctes, l'une contenant seulement `employee_id` et `employee_name`, et une autre contenant seulement `department_id` et `department_name`.
   - Mettez en œuvre des requêtes SQL pour joindre ces tables décomposées afin de récupérer les données d'origine.
  

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    -- Autres colonnes...
);

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(100),
    -- Autres colonnes...
);
```

**Décomposition Restructuration-Union :**

5. **Exercice :** Supposons que vous avez une table PostgreSQL nommée `sales_data` avec les colonnes `product_id`, `region`, `year`, `quarter`, et `sales_amount`. Effectuez une décomposition restructuration-union en :
   - Créant deux tables distinctes, l'une contenant `product_id`, `region`, `year`, et `sales_amount`, et une autre contenant `product_id`, `region`, `quarter`, et `sales_amount`.
   - Mettez en œuvre des requêtes SQL pour effectuer des opérations UNION afin de récupérer les données d'origine.


```sql
CREATE TABLE sales_data (
    product_id INT,
    region VARCHAR(50),
    year INT,
    quarter INT,
    sales_amount NUMERIC(10, 2)
);
```
