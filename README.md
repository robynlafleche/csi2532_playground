# csi2532_playground

## Lab5
![Resultats](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire5/laboratoire5/Resultat.png "Resultat")

## schema.sql
```sql
CREATE TABLE courses(
  course_name varchar(255),
  semester varchar(255),
  professor_name varchar(255)
);
```

## seed.sql
```sql
INSERT INTO courses(course_name, semester, professor_name)
VALUES('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A'),
('CSI2532', 'W-2020', 'A');
```

## 20220226210400-ajout-id.sql
```sql
ALTER TABLE courses
ADD id serial;
```

## 20220226212600-ajout-PK.sql
```sql
ALTER TABLE courses
ADD PRIMARY KEY(id);
```

## 20220226213000-table-migrations.sql
```sql
CREATE TABLE migrations(
  nom_migration varchar(255),
  temps_migration varchar(255)
)
```

## 20220226214000-split-semester.sql
```sql
SELECT course_name,
split_part(semester, '-', 1) session,
split_part(semester, '-', 2) annee,
* FROM courses;
```
