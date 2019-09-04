CREATE TABLE people (
    peo_id        integer,
    peo_name      varchar(80),
    CONSTRAINT pk_people PRIMARY KEY (peo_id)
);

CREATE TABLE relations (
    rel_peo_1     integer,
    rel_peo_2     integer,
    rel_weight    integer NOT NULL,
    CONSTRAINT pk_rel PRIMARY KEY (rel_peo_1, rel_peo_2),
    CONSTRAINT sk_rel1 FOREIGN KEY (rel_peo_1)
        REFERENCES people(peo_id),
    CONSTRAINT sk_rel2 FOREIGN KEY (rel_peo_2)
        REFERENCES people(peo_id)
);

