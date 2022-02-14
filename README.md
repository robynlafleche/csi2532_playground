# csi2532_playground

## Lab3
Voici les diagrammes ER pour chacune des questions du laboratoire

## Question 1
![Diagram 1](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question1.png "Question 1")

## Question 2
![Diagram 2](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question2.png "Question 2")

## Question 3
![Diagram 3](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question3.png "Question 3")

## Question 4
![Diagram 4](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question4.png "Question 4")

## Question 5
![Diagram 5](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question5.png "Question 5")

## Question 6
![Diagram 6](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire3/laboratoire3/Question6.png "Question 6")


## Lab4

#### Diagramme de relation pour les questions 1, 3, 5, et 6 et le code sql

Avec les diagrammes ER ci-dessus, modèlez un diagramme relationnel pour les systèmes.

## Question 1 
![Diagram 1](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire4/laboratoire4/Question1.png "Question1")

```sql
CREATE TABLE professeurs (
    ssn int,
    PRIMARY KEY (ssn)
);

CREATE TABLE cours (
    courseid int,
    PRIMARY KEY (courseid)
);

CREATE TABLE teaches (
    semester int,
    ssn int,
    courseid int,
    PRIMARY KEY (ssn, courseid),
    FOREIGN KEY (ssn) REFERENCES professeurs,
    FOREIGN KEY (courseid) REFERENCES cours
);
```

## Question 3
![Diagram 3](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire4/laboratoire4/Question3.png "Question3")

```sql
CREATE TABLE professor (
    ssn int,
    PRIMARY KEY (ssn)
);

CREATE TABLE course (
    courseid int,
    PRIMARY KEY (courseid)
);

CREATE TABLE teaches (
    semesterid int,
    ssn int NOT NULL,
    courseid int NOT NULL,
    PRIMARY KEY (ssn, courseid),
    FOREIGN KEY (ssn) REFERENCES professor,
    FOREIGN KEY (courseid) REFERENCES course
);
```

## Question 5 
![Diagram 5](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire4/laboratoire4/Question5.png "Question5")

```sql
CREATE TABLE professor (
    ssn int,
    PRIMARY KEY (ssn)
);

CREATE TABLE course (
    courseid int,
    PRIMARY KEY (courseid)
);

CREATE TABLE teaches (
    semesterid int,
    ssn int,
    courseid int,
    PRIMARY KEY (ssn, courseid),
    FOREIGN KEY (ssn) REFERENCES professor,
    FOREIGN KEY (courseid) REFERENCES course
);
```

## Question 6
![Diagram 6](https://github.com/robynlafleche/csi2532_playground/tree/laboratoire4/laboratoire4/Question6.png "Question6")

```sql
CREATE TABLE professor (
    ssn int,
    PRIMARY KEY (ssn)
);

CREATE TABLE group (
    groupid int,
    PRIMARY KEY (groupid)
);

CREATE TABLE member_of (
    ssn int,
    groupid int,
    FOREIGN KEY (ssn) REFERENCES professor,
    FOREIGN KEY (groupid) REFERENCES group
);

CREATE TABLE course (
    courseid int,
    PRIMARY KEY (courseid)
);

CREATE TABLE teaches (
    semesterid int,
    ssn int,
    courseid int,
    PRIMARY KEY (ssn, courseid),
    FOREIGN KEY (ssn) REFERENCES professor,
    FOREIGN KEY (courseid) REFERENCES course
);
```
