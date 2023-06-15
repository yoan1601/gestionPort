INSERT INTO prestations (description)
VALUES
    ('Stationnement'),
    ('Remorquage'),
    ('Cession eau'),
    ('Reparation');

INSERT INTO origines (description)
VALUES
    ('International'),
    ('National');



INSERT INTO types (description)
VALUES
    ('Petrolier'),
    ('Paquebot'),
    ('Marchandise'),
    ('Peche');



INSERT INTO quais (description)
VALUES
    ('Q1'),
    ('Q2'),
    ('Q3'),
    ('Q4');

-- Insertion des tarifs pour les navires internationaux (pavillon international)
INSERT INTO tarifs (idPrestation, idOrigine, idType, idQuai, debutTranche, finTranche, tarif)
VALUES
    --------------------------STATIONNEMENT - PETROLIER-------------------------------------
    --stationnement - international - petrolier - quai 1
    (1, 1, 1, 1, 0, 15, 500),
    (1, 1, 1, 1, 15, 30, 600),
    (1, 1, 1, 1, 30, 45, 700),
    (1, 1, 1, 1, 45, 60, 800),
    (1, 1, 1, 1, 60, 75, 500),
    (1, 1, 1, 1, 75, 90, 500),
    (1, 1, 1, 1, 90, 105, 600),
    (1, 1, 1, 1, 105, 120, 700),
    (1, 1, 1, 1, 120, 135, 800),
    (1, 1, 1, 1, 135, 150, 800),
    (1, 1, 1, 1, 150, 165, 800),
    (1, 1, 1, 1, 165, 180, 800),

    --stationnement - international - petrolier - quai 2
    (1, 1, 1, 2, 0, 15, 500),
    (1, 1, 1, 2, 15, 30, 600),
    (1, 1, 1, 2, 30, 45, 700),
    (1, 1, 1, 2, 45, 60, 800),
    (1, 1, 1, 2, 60, 75, 500),
    (1, 1, 1, 2, 75, 90, 500),
    (1, 1, 1, 2, 90, 105, 600),
    (1, 1, 1, 2, 105, 120, 700),
    (1, 1, 1, 2, 120, 135, 800),
    (1, 1, 1, 2, 135, 150, 800),
    (1, 1, 1, 2, 150, 165, 800),
    (1, 1, 1, 2, 165, 180, 800),

    --stationnement - international - petrolier - quai 3
    (1, 1, 1, 3, 0, 15, 500),
    (1, 1, 1, 3, 15, 30, 600),
    (1, 1, 1, 3, 30, 45, 700),
    (1, 1, 1, 3, 45, 60, 800),
    (1, 1, 1, 3, 60, 75, 500),
    (1, 1, 1, 3, 75, 90, 500),
    (1, 1, 1, 3, 90, 105, 600),
    (1, 1, 1, 3, 105, 120, 700),
    (1, 1, 1, 3, 120, 135, 800),
    (1, 1, 1, 3, 135, 150, 800),
    (1, 1, 1, 3, 150, 165, 800),
    (1, 1, 1, 3, 165, 180, 800),

    --stationnement - international - petrolier - quai 4
    (1, 1, 1, 4, 0, 15, 500),
    (1, 1, 1, 4, 15, 30, 600),
    (1, 1, 1, 4, 30, 45, 700),
    (1, 1, 1, 4, 45, 60, 800),
    (1, 1, 1, 4, 60, 75, 500),
    (1, 1, 1, 4, 75, 90, 500),
    (1, 1, 1, 4, 90, 105, 600),
    (1, 1, 1, 4, 105, 120, 700),
    (1, 1, 1, 4, 120, 135, 800),
    (1, 1, 1, 4, 135, 150, 800),
    (1, 1, 1, 4, 150, 165, 800),
    (1, 1, 1, 4, 165, 180, 800),

    --stationnement - national - petrolier - quai 1
    (1, 2, 1, 1, 0, 15, 5000),
    (1, 2, 1, 1, 15, 30, 6000),
    (1, 2, 1, 1, 30, 45, 7000),
    (1, 2, 1, 1, 45, 60, 8000),
    (1, 2, 1, 1, 60, 75, 5000),
    (1, 2, 1, 1, 75, 90, 5000),
    (1, 2, 1, 1, 90, 105, 6000),
    (1, 2, 1, 1, 105, 120, 7000),
    (1, 2, 1, 1, 120, 135, 8000),
    (1, 2, 1, 1, 135, 150, 8000),
    (1, 2, 1, 1, 150, 165, 8000),
    (1, 2, 1, 1, 165, 180, 8000),

    --stationnement - national - petrolier - quai 2
    (1, 2, 1, 2, 0, 15, 5000),
    (1, 2, 1, 2, 15, 30, 6000),
    (1, 2, 1, 2, 30, 45, 7000),
    (1, 2, 1, 2, 45, 60, 8000),
    (1, 2, 1, 2, 60, 75, 5000),
    (1, 2, 1, 2, 75, 90, 5000),
    (1, 2, 1, 2, 90, 105, 6000),
    (1, 2, 1, 2, 105, 120, 7000),
    (1, 2, 1, 2, 120, 135, 8000),
    (1, 2, 1, 2, 135, 150, 8000),
    (1, 2, 1, 2, 150, 165, 8000),
    (1, 2, 1, 2, 165, 180, 8000),

    --stationnement - national - petrolier - quai 3
    (1, 2, 1, 3, 0, 15, 5000),
    (1, 2, 1, 3, 15, 30, 6000),
    (1, 2, 1, 3, 30, 45, 7000),
    (1, 2, 1, 3, 45, 60, 8000),
    (1, 2, 1, 3, 60, 75, 5000),
    (1, 2, 1, 3, 75, 90, 5000),
    (1, 2, 1, 3, 90, 105, 6000),
    (1, 2, 1, 3, 105, 120, 7000),
    (1, 2, 1, 3, 120, 135, 8000),
    (1, 2, 1, 3, 135, 150, 8000),
    (1, 2, 1, 3, 150, 165, 8000),
    (1, 2, 1, 3, 165, 180, 8000),

    --stationnement - national - petrolier - quai 4
    (1, 2, 1, 4, 0, 15, 5000),
    (1, 2, 1, 4, 15, 30, 6000),
    (1, 2, 1, 4, 30, 45, 7000),
    (1, 2, 1, 4, 45, 60, 8000),
    (1, 2, 1, 4, 60, 75, 5000),
    (1, 2, 1, 4, 75, 90, 5000),
    (1, 2, 1, 4, 90, 105, 6000),
    (1, 2, 1, 4, 105, 120, 7000),
    (1, 2, 1, 4, 120, 135, 8000),
    (1, 2, 1, 4, 135, 150, 8000),
    (1, 2, 1, 4, 150, 165, 8000),
    (1, 2, 1, 4, 165, 180, 8000),

    --------------------------STATIONNEMENT - Paquebot-------------------------------------
    --stationnement - international - Paquebot - quai 1
    (1, 1, 2, 1, 0, 15, 1.2*500),
    (1, 1, 2, 1, 15, 30, 1.2*600),
    (1, 1, 2, 1, 30, 45, 1.2*700),
    (1, 1, 2, 1, 45, 60, 1.2*800),
    (1, 1, 2, 1, 60, 75, 1.2*500),
    (1, 1, 2, 1, 75, 90, 1.2*500),
    (1, 1, 2, 1, 90, 105, 1.2*600),
    (1, 1, 2, 1, 105, 120, 1.2*700),
    (1, 1, 2, 1, 120, 135, 1.2*800),
    (1, 1, 2, 1, 135, 150, 1.2*800),
    (1, 1, 2, 1, 150, 165, 1.2*800),
    (1, 1, 2, 1, 165, 180, 1.2*800),

    --stationnement - international - Paquebot - quai 2
    (1, 1, 2, 2, 0, 15, 1.2*500),
    (1, 1, 2, 2, 15, 30, 1.2*600),
    (1, 1, 2, 2, 30, 45, 1.2*700),
    (1, 1, 2, 2, 45, 60, 1.2*800),
    (1, 1, 2, 2, 60, 75, 1.2*500),
    (1, 1, 2, 2, 75, 90, 1.2*500),
    (1, 1, 2, 2, 90, 105, 1.2*600),
    (1, 1, 2, 2, 105, 120, 1.2*700),
    (1, 1, 2, 2, 120, 135, 1.2*800),
    (1, 1, 2, 2, 135, 150, 1.2*800),
    (1, 1, 2, 2, 150, 165, 1.2*800),
    (1, 1, 2, 2, 165, 180, 1.2*800),

    --stationnement - international - Paquebot - quai 3
    (1, 1, 2, 3, 0, 15, 1.2*500),
    (1, 1, 2, 3, 15, 30, 1.2*600),
    (1, 1, 2, 3, 30, 45, 1.2*700),
    (1, 1, 2, 3, 45, 60, 1.2*800),
    (1, 1, 2, 3, 60, 75, 1.2*500),
    (1, 1, 2, 3, 75, 90, 1.2*500),
    (1, 1, 2, 3, 90, 105, 1.2*600),
    (1, 1, 2, 3, 105, 120, 1.2*700),
    (1, 1, 2, 3, 120, 135, 1.2*800),
    (1, 1, 2, 3, 135, 150, 1.2*800),
    (1, 1, 2, 3, 150, 165, 1.2*800),
    (1, 1, 2, 3, 165, 180, 1.2*800),

    --stationnement - international - Paquebot - quai 4
    (1, 1, 2, 4, 0, 15, 1.2*500),
    (1, 1, 2, 4, 15, 30, 1.2*600),
    (1, 1, 2, 4, 30, 45, 1.2*700),
    (1, 1, 2, 4, 45, 60, 1.2*800),
    (1, 1, 2, 4, 60, 75, 1.2*500),
    (1, 1, 2, 4, 75, 90, 1.2*500),
    (1, 1, 2, 4, 90, 105, 1.2*600),
    (1, 1, 2, 4, 105, 120, 1.2*700),
    (1, 1, 2, 4, 120, 135, 1.2*800),
    (1, 1, 2, 4, 135, 150, 1.2*800),
    (1, 1, 2, 4, 150, 165, 1.2*800),
    (1, 1, 2, 4, 165, 180, 1.2*800),

    --stationnement - national - Paquebot - quai 1
    (1, 2, 2, 1, 0, 15, 1.2*5000),
    (1, 2, 2, 1, 15, 30, 1.2*6000),
    (1, 2, 2, 1, 30, 45, 1.2*7000),
    (1, 2, 2, 1, 45, 60, 1.2*8000),
    (1, 2, 2, 1, 60, 75, 1.2*5000),
    (1, 2, 2, 1, 75, 90, 1.2*5000),
    (1, 2, 2, 1, 90, 105, 1.2*6000),
    (1, 2, 2, 1, 105, 120, 1.2*7000),
    (1, 2, 2, 1, 120, 135, 1.2*8000),
    (1, 2, 2, 1, 135, 150, 1.2*8000),
    (1, 2, 2, 1, 150, 165, 1.2*8000),
    (1, 2, 2, 1, 165, 180, 1.2*8000),

    --stationnement - national - Paquebot - quai 2
    (1, 2, 2, 2, 0, 15, 1.2*5000),
    (1, 2, 2, 2, 15, 30, 1.2*6000),
    (1, 2, 2, 2, 30, 45, 1.2*7000),
    (1, 2, 2, 2, 45, 60, 1.2*8000),
    (1, 2, 2, 2, 60, 75, 1.2*5000),
    (1, 2, 2, 2, 75, 90, 1.2*5000),
    (1, 2, 2, 2, 90, 105, 1.2*6000),
    (1, 2, 2, 2, 105, 120, 1.2*7000),
    (1, 2, 2, 2, 120, 135, 1.2*8000),
    (1, 2, 2, 2, 135, 150, 1.2*8000),
    (1, 2, 2, 2, 150, 165, 1.2*8000),
    (1, 2, 2, 2, 165, 180, 1.2*8000),

    --stationnement - national - Paquebot - quai 3
    (1, 2, 2, 3, 0, 15, 1.2*5000),
    (1, 2, 2, 3, 15, 30, 1.2*6000),
    (1, 2, 2, 3, 30, 45, 1.2*7000),
    (1, 2, 2, 3, 45, 60, 1.2*8000),
    (1, 2, 2, 3, 60, 75, 1.2*5000),
    (1, 2, 2, 3, 75, 90, 1.2*5000),
    (1, 2, 2, 3, 90, 105, 1.2*6000),
    (1, 2, 2, 3, 105, 120, 1.2*7000),
    (1, 2, 2, 3, 120, 135, 1.2*8000),
    (1, 2, 2, 3, 135, 150, 1.2*8000),
    (1, 2, 2, 3, 150, 165, 1.2*8000),
    (1, 2, 2, 3, 165, 180, 1.2*8000),

    --stationnement - national - Paquebot - quai 4
    (1, 2, 2, 4, 0, 15, 1.2*5000),
    (1, 2, 2, 4, 15, 30, 1.2*6000),
    (1, 2, 2, 4, 30, 45, 1.2*7000),
    (1, 2, 2, 4, 45, 60, 1.2*8000),
    (1, 2, 2, 4, 60, 75, 1.2*5000),
    (1, 2, 2, 4, 75, 90, 1.2*5000),
    (1, 2, 2, 4, 90, 105, 1.2*6000),
    (1, 2, 2, 4, 105, 120, 1.2*7000),
    (1, 2, 2, 4, 120, 135, 1.2*8000),
    (1, 2, 2, 4, 135, 150, 1.2*8000),
    (1, 2, 2, 4, 150, 165, 1.2*8000),
    (1, 2, 2, 4, 165, 180, 1.2*8000),

    --------------------------STATIONNEMENT - Marchandise-------------------------------------
    --stationnement - international - Marchandise - quai 1
    (1, 1, 3, 1, 0, 15, 1.3*500),
    (1, 1, 3, 1, 15, 30, 1.3*600),
    (1, 1, 3, 1, 30, 45, 1.3*700),
    (1, 1, 3, 1, 45, 60, 1.3*800),
    (1, 1, 3, 1, 60, 75, 1.3*500),
    (1, 1, 3, 1, 75, 90, 1.3*500),
    (1, 1, 3, 1, 90, 105, 1.3*600),
    (1, 1, 3, 1, 105, 120, 1.3*700),
    (1, 1, 3, 1, 120, 135, 1.3*800),
    (1, 1, 3, 1, 135, 150, 1.3*800),
    (1, 1, 3, 1, 150, 165, 1.3*800),
    (1, 1, 3, 1, 165, 180, 1.3*800),

    --stationnement - international - Marchandise - quai 2
    (1, 1, 3, 2, 0, 15, 1.3*500),
    (1, 1, 3, 2, 15, 30, 1.3*600),
    (1, 1, 3, 2, 30, 45, 1.3*700),
    (1, 1, 3, 2, 45, 60, 1.3*800),
    (1, 1, 3, 2, 60, 75, 1.3*500),
    (1, 1, 3, 2, 75, 90, 1.3*500),
    (1, 1, 3, 2, 90, 105, 1.3*600),
    (1, 1, 3, 2, 105, 120, 1.3*700),
    (1, 1, 3, 2, 120, 135, 1.3*800),
    (1, 1, 3, 2, 135, 150, 1.3*800),
    (1, 1, 3, 2, 150, 165, 1.3*800),
    (1, 1, 3, 2, 165, 180, 1.3*800),

    --stationnement - international - Marchandise - quai 3
    (1, 1, 3, 3, 0, 15, 1.3*500),
    (1, 1, 3, 3, 15, 30, 1.3*600),
    (1, 1, 3, 3, 30, 45, 1.3*700),
    (1, 1, 3, 3, 45, 60, 1.3*800),
    (1, 1, 3, 3, 60, 75, 1.3*500),
    (1, 1, 3, 3, 75, 90, 1.3*500),
    (1, 1, 3, 3, 90, 105, 1.3*600),
    (1, 1, 3, 3, 105, 120, 1.3*700),
    (1, 1, 3, 3, 120, 135, 1.3*800),
    (1, 1, 3, 3, 135, 150, 1.3*800),
    (1, 1, 3, 3, 150, 165, 1.3*800),
    (1, 1, 3, 3, 165, 180, 1.3*800),

    --stationnement - international - Marchandise - quai 4
    (1, 1, 3, 4, 0, 15, 1.3*500),
    (1, 1, 3, 4, 15, 30, 1.3*600),
    (1, 1, 3, 4, 30, 45, 1.3*700),
    (1, 1, 3, 4, 45, 60, 1.3*800),
    (1, 1, 3, 4, 60, 75, 1.3*500),
    (1, 1, 3, 4, 75, 90, 1.3*500),
    (1, 1, 3, 4, 90, 105, 1.3*600),
    (1, 1, 3, 4, 105, 120, 1.3*700),
    (1, 1, 3, 4, 120, 135, 1.3*800),
    (1, 1, 3, 4, 135, 150, 1.3*800),
    (1, 1, 3, 4, 150, 165, 1.3*800),
    (1, 1, 3, 4, 165, 180, 1.3*800),

    --stationnement - national - Marchandise - quai 1
    (1, 2, 3, 1, 0, 15, 1.3*5000),
    (1, 2, 3, 1, 15, 30, 1.3*6000),
    (1, 2, 3, 1, 30, 45, 1.3*7000),
    (1, 2, 3, 1, 45, 60, 1.3*8000),
    (1, 2, 3, 1, 60, 75, 1.3*5000),
    (1, 2, 3, 1, 75, 90, 1.3*5000),
    (1, 2, 3, 1, 90, 105, 1.3*6000),
    (1, 2, 3, 1, 105, 120, 1.3*7000),
    (1, 2, 3, 1, 120, 135, 1.3*8000),
    (1, 2, 3, 1, 135, 150, 1.3*8000),
    (1, 2, 3, 1, 150, 165, 1.3*8000),
    (1, 2, 3, 1, 165, 180, 1.3*8000),

    --stationnement - national - Marchandise - quai 2
    (1, 2, 3, 2, 0, 15, 1.3*5000),
    (1, 2, 3, 2, 15, 30, 1.3*6000),
    (1, 2, 3, 2, 30, 45, 1.3*7000),
    (1, 2, 3, 2, 45, 60, 1.3*8000),
    (1, 2, 3, 2, 60, 75, 1.3*5000),
    (1, 2, 3, 2, 75, 90, 1.3*5000),
    (1, 2, 3, 2, 90, 105, 1.3*6000),
    (1, 2, 3, 2, 105, 120, 1.3*7000),
    (1, 2, 3, 2, 120, 135, 1.3*8000),
    (1, 2, 3, 2, 135, 150, 1.3*8000),
    (1, 2, 3, 2, 150, 165, 1.3*8000),
    (1, 2, 3, 2, 165, 180, 1.3*8000),

    --stationnement - national - Marchandise - quai 3
    (1, 2, 3, 3, 0, 15, 1.3*5000),
    (1, 2, 3, 3, 15, 30, 1.3*6000),
    (1, 2, 3, 3, 30, 45, 1.3*7000),
    (1, 2, 3, 3, 45, 60, 1.3*8000),
    (1, 2, 3, 3, 60, 75, 1.3*5000),
    (1, 2, 3, 3, 75, 90, 1.3*5000),
    (1, 2, 3, 3, 90, 105, 1.3*6000),
    (1, 2, 3, 3, 105, 120, 1.3*7000),
    (1, 2, 3, 3, 120, 135, 1.3*8000),
    (1, 2, 3, 3, 135, 150, 1.3*8000),
    (1, 2, 3, 3, 150, 165, 1.3*8000),
    (1, 2, 3, 3, 165, 180, 1.3*8000),

    --stationnement - national - Marchandise - quai 4
    (1, 2, 3, 4, 0, 15, 1.3*5000),
    (1, 2, 3, 4, 15, 30, 1.3*6000),
    (1, 2, 3, 4, 30, 45, 1.3*7000),
    (1, 2, 3, 4, 45, 60, 1.3*8000),
    (1, 2, 3, 4, 60, 75, 1.3*5000),
    (1, 2, 3, 4, 75, 90, 1.3*5000),
    (1, 2, 3, 4, 90, 105, 1.3*6000),
    (1, 2, 3, 4, 105, 120, 1.3*7000),
    (1, 2, 3, 4, 120, 135, 1.3*8000),
    (1, 2, 3, 4, 135, 150, 1.3*8000),
    (1, 2, 3, 4, 150, 165, 1.3*8000),
    (1, 2, 3, 4, 165, 180, 1.3*8000),

    --------------------------STATIONNEMENT - peche-------------------------------------
    --stationnement - international - peche - quai 1
    (1, 1, 4, 1, 0, 15, 1.4*500),
    (1, 1, 4, 1, 15, 30, 1.4*600),
    (1, 1, 4, 1, 30, 45, 1.4*700),
    (1, 1, 4, 1, 45, 60, 1.4*800),
    (1, 1, 4, 1, 60, 75, 1.4*500),
    (1, 1, 4, 1, 75, 90, 1.4*500),
    (1, 1, 4, 1, 90, 105, 1.4*600),
    (1, 1, 4, 1, 105, 120, 1.4*700),
    (1, 1, 4, 1, 120, 135, 1.4*800),
    (1, 1, 4, 1, 135, 150, 1.4*800),
    (1, 1, 4, 1, 150, 165, 1.4*800),
    (1, 1, 4, 1, 165, 180, 1.4*800),

    --stationnement - international - peche - quai 2
    (1, 1, 4, 2, 0, 15, 1.4*500),
    (1, 1, 4, 2, 15, 30, 1.4*600),
    (1, 1, 4, 2, 30, 45, 1.4*700),
    (1, 1, 4, 2, 45, 60, 1.4*800),
    (1, 1, 4, 2, 60, 75, 1.4*500),
    (1, 1, 4, 2, 75, 90, 1.4*500),
    (1, 1, 4, 2, 90, 105, 1.4*600),
    (1, 1, 4, 2, 105, 120, 1.4*700),
    (1, 1, 4, 2, 120, 135, 1.4*800),
    (1, 1, 4, 2, 135, 150, 1.4*800),
    (1, 1, 4, 2, 150, 165, 1.4*800),
    (1, 1, 4, 2, 165, 180, 1.4*800),

    --stationnement - international - peche - quai 3
    (1, 1, 4, 3, 0, 15, 1.4*500),
    (1, 1, 4, 3, 15, 30, 1.4*600),
    (1, 1, 4, 3, 30, 45, 1.4*700),
    (1, 1, 4, 3, 45, 60, 1.4*800),
    (1, 1, 4, 3, 60, 75, 1.4*500),
    (1, 1, 4, 3, 75, 90, 1.4*500),
    (1, 1, 4, 3, 90, 105, 1.4*600),
    (1, 1, 4, 3, 105, 120, 1.4*700),
    (1, 1, 4, 3, 120, 135, 1.4*800),
    (1, 1, 4, 3, 135, 150, 1.4*800),
    (1, 1, 4, 3, 150, 165, 1.4*800),
    (1, 1, 4, 3, 165, 180, 1.4*800),

    --stationnement - international - peche - quai 4
    (1, 1, 4, 4, 0, 15, 1.4*500),
    (1, 1, 4, 4, 15, 30, 1.4*600),
    (1, 1, 4, 4, 30, 45, 1.4*700),
    (1, 1, 4, 4, 45, 60, 1.4*800),
    (1, 1, 4, 4, 60, 75, 1.4*500),
    (1, 1, 4, 4, 75, 90, 1.4*500),
    (1, 1, 4, 4, 90, 105, 1.4*600),
    (1, 1, 4, 4, 105, 120, 1.4*700),
    (1, 1, 4, 4, 120, 135, 1.4*800),
    (1, 1, 4, 4, 135, 150, 1.4*800),
    (1, 1, 4, 4, 150, 165, 1.4*800),
    (1, 1, 4, 4, 165, 180, 1.4*800),

    --stationnement - national - peche - quai 1
    (1, 2, 4, 1, 0, 15, 1.4*5000),
    (1, 2, 4, 1, 15, 30, 1.4*6000),
    (1, 2, 4, 1, 30, 45, 1.4*7000),
    (1, 2, 4, 1, 45, 60, 1.4*8000),
    (1, 2, 4, 1, 60, 75, 1.4*5000),
    (1, 2, 4, 1, 75, 90, 1.4*5000),
    (1, 2, 4, 1, 90, 105, 1.4*6000),
    (1, 2, 4, 1, 105, 120, 1.4*7000),
    (1, 2, 4, 1, 120, 135, 1.4*8000),
    (1, 2, 4, 1, 135, 150, 1.4*8000),
    (1, 2, 4, 1, 150, 165, 1.4*8000),
    (1, 2, 4, 1, 165, 180, 1.4*8000),

    --stationnement - national - peche - quai 2
    (1, 2, 4, 2, 0, 15, 1.4*5000),
    (1, 2, 4, 2, 15, 30, 1.4*6000),
    (1, 2, 4, 2, 30, 45, 1.4*7000),
    (1, 2, 4, 2, 45, 60, 1.4*8000),
    (1, 2, 4, 2, 60, 75, 1.4*5000),
    (1, 2, 4, 2, 75, 90, 1.4*5000),
    (1, 2, 4, 2, 90, 105, 1.4*6000),
    (1, 2, 4, 2, 105, 120, 1.4*7000),
    (1, 2, 4, 2, 120, 135, 1.4*8000),
    (1, 2, 4, 2, 135, 150, 1.4*8000),
    (1, 2, 4, 2, 150, 165, 1.4*8000),
    (1, 2, 4, 2, 165, 180, 1.4*8000),

    --stationnement - national - peche - quai 3
    (1, 2, 4, 3, 0, 15, 1.4*5000),
    (1, 2, 4, 3, 15, 30, 1.4*6000),
    (1, 2, 4, 3, 30, 45, 1.4*7000),
    (1, 2, 4, 3, 45, 60, 1.4*8000),
    (1, 2, 4, 3, 60, 75, 1.4*5000),
    (1, 2, 4, 3, 75, 90, 1.4*5000),
    (1, 2, 4, 3, 90, 105, 1.4*6000),
    (1, 2, 4, 3, 105, 120, 1.4*7000),
    (1, 2, 4, 3, 120, 135, 1.4*8000),
    (1, 2, 4, 3, 135, 150, 1.4*8000),
    (1, 2, 4, 3, 150, 165, 1.4*8000),
    (1, 2, 4, 3, 165, 180, 1.4*8000),

    --stationnement - national - peche - quai 4
    (1, 2, 4, 4, 0, 15, 1.4*5000),
    (1, 2, 4, 4, 15, 30, 1.4*6000),
    (1, 2, 4, 4, 30, 45, 1.4*7000),
    (1, 2, 4, 4, 45, 60, 1.4*8000),
    (1, 2, 4, 4, 60, 75, 1.4*5000),
    (1, 2, 4, 4, 75, 90, 1.4*5000),
    (1, 2, 4, 4, 90, 105, 1.4*6000),
    (1, 2, 4, 4, 105, 120, 1.4*7000),
    (1, 2, 4, 4, 120, 135, 1.4*8000),
    (1, 2, 4, 4, 135, 150, 1.4*8000),
    (1, 2, 4, 4, 150, 165, 1.4*8000),
    (1, 2, 4, 4, 165, 180, 1.4*8000),

    

