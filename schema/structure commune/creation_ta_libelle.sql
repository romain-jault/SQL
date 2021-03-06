/*
La table TA_LIBELLE regroupe tous les états ou actions regroupés dans une famille elle-même située dans la tabe ta_famille.

*/
-- 1. Création de la table
CREATE TABLE G_GEO.TA_LIBELLE(
	objectid NUMBER(38,0) GENERATED BY DEFAULT AS IDENTITY,
	fid_libelle_long NUMBER(38,0)
);

-- 2. Création des commentaires
COMMENT ON TABLE G_GEO.TA_LIBELLE IS 'Table listant les libelles utilisé afin d''établir une hiérarchie.';
COMMENT ON COLUMN G_GEO.TA_LIBELLE.objectid IS 'Identifiant de chaque libellé.';
COMMENT ON COLUMN G_GEO.TA_LIBELLE.fid_libelle_long IS 'Clé étrangère vers la table TA_LIBELLE_LONG';

-- 3. Création de la clé primaire
ALTER TABLE G_GEO.TA_LIBELLE
ADD CONSTRAINT TA_LIBELLE_PK 
PRIMARY KEY("OBJECTID")
USING INDEX TABLESPACE "G_ADT_INDX";

-- 4. Création de l'index de la clé étrangère
CREATE INDEX TA_LIBELLE_FID_LIBELLE_LONG_IDX ON TA_LIBELLE(fid_libelle_long)
TABLESPACE G_ADT_INDX;

-- 5. Affectation du droit de sélection sur les objets de la table aux administrateurs
GRANT SELECT ON G_GEO.TA_LIBELLE TO G_ADMIN_SIG;