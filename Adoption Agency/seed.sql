DROP DATABASE IF EXISTS adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE available pets

(id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
species TEXT NOT NULL,
photo_url TEXT,
age INT,
notes TEXT,
available BOOLEAN NOT NULL DEFAULT TRUE );

INSERT INFO pets
(name, species, age, notes, photo_url, available)
VALUES
('Daisy', 'dog', 'https://www.what-dog.net/Images/faces2/scroll001.jpg', 2, 'Sweet and Loving', 't'),
('Spike', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 3, 'Nosey and Pokey', 't'),
('Dr.Strange', 'cat', 'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg', null, null, 't')
('Mr.Magoo', 'cat', null, null, null, 't');