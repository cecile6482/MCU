# Requêtes SQL
 

## Les titres et dates de sorties des films du plus récent au plus ancien

La requête : 

```sql
SELECT
    title,
    release_date
FROM
    `movies`
ORDER BY
    release_date
DESC
```

## Les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique

La requête :

```sql
SELECT
    first_name,
    last_name,
    (YEAR(NOW()) - YEAR(date_of_birth)) AS age
    FROM
        `actors`
    WHERE
        YEAR(date_of_birth) < 1992
    ORDER BY
        last_name,
        first_name 
        ASC
````

## La liste des acteurs pour un film donné

La requête : 

```sql
SELECT
    movies.title,
    actors.first_name,
    actors.last_name
FROM
    movies_actors
INNER JOIN actors ON movies_actors.ID_actor = actors.actor_ID
INNER JOIN movies ON movies_actors.iD_movie = movies.movie_ID
WHERE
    movies.title = "Captain America: Civil War"
```

## La liste des films pour un acteur donné

La requête :

```sql
SELECT
    movies.title,
    actors.first_name,
    actors.last_name
FROM
    movies_actors
INNER JOIN movies ON movies_actors.iD_movie = movies.movie_ID
INNER JOIN actors ON movies_actors.ID_actor = actors.actor_ID
WHERE
    actors.last_name = "Evans"
```



# Bonus

## Ajouter un film

```sql
INSERT INTO `movies` (`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_date`) VALUES (NULL, 'Nom du film ', '2011-05-06', '01:52:00', 'Nom du réalisateur', '2022-05-14', '2022-05-14');
```

## Ajouter un acteur 

```sql
INSERT INTO `actors` (`actor_ID`, `last_name`, `first_name`, `date_of_birth`, `creation_date`, `update_date`) VALUES (NULL, 'Nom', 'Prenom', '1965-04-04', '2022-05-14', '2022-05-14');
````

## Modifier un film

```sql
UPDATE movies SET title = 'Avengers' WHERE movie_ID = 6;
```

## Supprimer un acteur 

```sql
DELETE FROM actors WHERE actor_ID = 10
````

## Afficher les 3 derniers acteurs ajoutés

```sql
SELECT * FROM `actors` ORDER BY actor_ID DESC LIMIT 3;
````