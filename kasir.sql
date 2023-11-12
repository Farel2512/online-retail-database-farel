-- Kasir
CREATE TABLE kasir(
    id INT(11) PRIMARY KEY NOT NULL,
    kasir_nama VARCHAR(50),
    kasir_jadwal ENUM('07.00-15.00', '15.01-23.59')
);
DESC kasir;

INSERT INTO kasir(id, kasir_nama, kasir_jadwal) VALUES
(1, 'Fajar', '07.00-15.00'),
(2, 'Rini', '07.00-15.00'),
(3, 'Sigit', '15.01-23.59'),
(4, 'Kiara', '15.01-23.59');

SELECT*FROM kasir;