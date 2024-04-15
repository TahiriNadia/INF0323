DO
$do$
DECLARE
   i integer;
BEGIN
   FOR i IN 1..5000 LOOP
      INSERT INTO Client (noClient, nomClient, noTelephone)
      VALUES (i, 'Client ' || substring(md5(random()::text) from 1 for 10), '(123)' || (random()*1000000000)::integer);

      INSERT INTO Article (noArticle, description, prixUnitaire, quantiteEnStock)
      VALUES (i, 'Article ' || substring(md5(random()::text) from 1 for 10), (random()*100)::numeric(10,2), (random()*100)::integer);

      INSERT INTO Commande (noCommande, dateCommande, noClient)
      VALUES (i, current_date - (i::integer % 365) * interval '1 day', i);

      INSERT INTO LigneCommande (noCommande, noArticle, quantite)
      VALUES (i, i, (random()*10)::integer + 1);

      INSERT INTO Livraison (noLivraison, dateLivraison)
      VALUES (i, current_date - (i::integer % 365) * interval '1 day');

      INSERT INTO DetailLivraison (noLivraison, noCommande, noArticle, quantiteLivree)
      VALUES (i, i, i, (random()*10)::integer + 1);
   END LOOP;
END
$do$;
