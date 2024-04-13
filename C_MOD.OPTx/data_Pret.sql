DO
$$
DECLARE
  i integer;
  random_date DATE;
BEGIN
  FOR i IN 1..525000 LOOP
    random_date := CURRENT_DATE - CAST(random() * 365 AS INTEGER);
    INSERT INTO Pret (datePret, idMembre, idExemplaire) VALUES (random_date, floor(random() * (SELECT MAX(idMembre) FROM Membre)) + 1, i);
  END LOOP;
END;
$$ LANGUAGE plpgsql;
