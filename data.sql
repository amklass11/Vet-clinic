/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
 id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100) NOT NULL,
date_of_birth DATE NULL,
escape_attempts INT NOT NULL,
neutered BOOLEAN NOT NULL,
weight_kg DECIMAL NOT NULL,
PRIMARY KEY(id)/* Populate database with sample data. */

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
('Agumon','2020-02-03','0','True','10.23'),
('Gabumon','2018-11-15','2','True','8.00'),
('Pikachu','2021-01-07','1','False','15.04'),
('Devimon','2017-05-12','5','True','11.00');

-- Insert extra data
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
('Charmander','2020-02-08','0','False','-11.00'),
('Plantmon','2021-11-15','2','True','-5.70'),
('Squirtle','1993-04-02','3','False','-12.13'),
('Angemon','2005-06-12','1','True','-45.00'),
('Boarmon','2005-06-07','7','True','20.40'),
('Blossom','1998-10-13','3','True','17.00'),
('Ditto','2022-05-14','4','True','22.00');
);

ALTER TABLE animals
ADD species TEXT;