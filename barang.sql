-- Tabel barang
CREATE TABLE barang(
    id INT(11) PRIMARY KEY NOT NULL,
    barang_nama VARCHAR(50),
    barang_harga DECIMAL(10,2),
    barang_stok INT(11),
    barang_kategori_id INT(11),
    barang_satuan_id INT(11),
    FOREIGN KEY (barang_kategori_id) REFERENCES kategori_barang(id),
    FOREIGN KEY (barang_satuan_id) REFERENCES satuan_barang(id)
);

-- Menampilkan kolom barang
DESC barang;

-- Menambahkan data-data di kolom tabel barang
INSERT INTO barang (id, barang_nama, barang_harga, barang_stok, barang_kategori_id, barang_satuan_id) VALUES
(1, 'Saro Snack', 1500.00, 20, 1, 1),
(2, 'Senter', 15000.00, 10, 3, 2),
(3, 'Teh Cangkir', 1000.00, 5, 2, 3),
(4, 'Beras 2kg', 30000.00, 10, 5, 5),
(5, 'Gula 1kg', 7000.00, 3, 5, 1),
(6, 'Kecap Bangga', 1000.00, 40, 5, 4),
(7, 'Saus Sambal BCA Botol', 8000.00, 1, 5, 1),
(8, 'Sendok', 4000.00, 2, 4, 1),
(9, 'Sapu Sakti', 10000.00, 10, 4, 2),
(10, 'Smash Pel', 5000.00, 2, 4, 3);

-- Menampilkan seluruh data tabel barang
SELECT*FROM barang;

-- Cara Mengubah data barang
UPDATE barang
SET barang_nama = 'Teh Cangkir'
WHERE id = 3;

-- Cara menghapus salah satu data barang
DELETE FROM barang
WHERE id = 11;

-- Cara menghapus semua data pada tabel barang
DELETE FROM barang;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Tabel kategori barang
CREATE TABLE kategori_barang(
    id INT(11) PRIMARY KEY NOT NULL,
    barang_kategori VARCHAR(20)
);

DESC kategori_barang;

INSERT INTO kategori_barang(id, barang_kategori) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Elektronik'),
(4, 'Rumah Tangga'),
(5, 'Bahan Pokok');

SELECT*FROM kategori_barang;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Tabel satuan barang
CREATE TABLE satuan_barang(
    id INT(11) PRIMARY KEY NOT NULL,
    barang_satuan VARCHAR(20)
);

DESC satuan_barang;

INSERT INTO satuan_barang(id, barang_satuan) VALUES
(1, 'pcs'),
(2, 'unit'),
(3, 'dus'),
(4, 'sct'),
(5, 'goni');

SELECT*FROM satuan_barang;