-- Tabel Pelanggan
CREATE TABLE pelanggan(
    id INT(11) PRIMARY KEY NOT NULL,
    pelanggan_nama VARCHAR(50),
    pelanggan_alamat VARCHAR(100),
    pelanggan_telepon BIGINT(15),
    pelanggan_jk_id INT(11),
    FOREIGN KEY (pelanggan_jk_id) REFERENCES pelanggan_jenis_kelamin(id)
);

-- Menampilkan kolom pada tabel pelanggan
DESC pelanggan;

-- Menambahkan data-data di tabel pelanggan
INSERT INTO pelanggan(id, pelanggan_nama, pelanggan_alamat, pelanggan_telepon, pelanggan_jk_id) VALUES
(1, 'Farel', 'Jl. Sentosa', 08123456789, 1),
(2, 'Haikal', 'Jl. Abadi', 08876543212, 1),
(3, 'Menda', 'Jl. Sulit', 08747112748, 2),
(4, 'Dimas', 'Jl. Hidrolik', 082233445566, 1),
(5, 'Sakinah', 'Jl. Suntik', 082345689001, 2),
(6, 'Anri', 'Jl. Tampan', 087867679898, 1),
(7, 'Aldo', 'Jl. Jauh', 084573628790, 1),
(8, 'Marlina', 'Jl. Kesempatan', 087681906481, 2),
(9, 'July', 'Jl. Tupai', 087645367291, 2),
(10, 'Isiani', 'Jl. Depan', 083109828904, 2);

-- Menampilkan seluruh data di dalam tabel pelanggan
SELECT*FROM pelanggan;

-- Mengubah data pelanggan
UPDATE pelanggan
SET pelanggan_alamat = 'Jl. Sentosa'
WHERE id = 1;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Tabel Jenis Kelamin Pelanggan
CREATE TABLE pelanggan_jenis_kelamin(
    id INT(11) PRIMARY KEY NOT NULL,
    pelanggan_jk ENUM ('laki-laki', 'perempuan')
);

DESC pelanggan_jenis_kelamin;

INSERT INTO pelanggan_jenis_kelamin (id, pelanggan_jk) VALUES
(1, 'laki-laki'),
(2, 'perempuan');

SELECT*FROM pelanggan_jenis_kelamin;

