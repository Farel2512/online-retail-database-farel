-- Tabel pemesanan
CREATE TABLE pemesanan(
    id INT(11) PRIMARY KEY NOT NULL,
    pemesanan_jumlah INT(11),
    pemesanan_tanggal DATE,
    barang_id INT(11),
    pelanggan_id INT(11),
    FOREIGN KEY (barang_id) REFERENCES barang(id),
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id)
);

DESC pemesanan;

INSERT INTO pemesanan (id, pemesanan_jumlah, pemesanan_tanggal, barang_id, pelanggan_id) VALUES
(1, 3, '2023-11-08', 5, 2),
(2, 2, '2023-11-08', 4, 2),
(3, 1, '2023-11-08', 7, 1),
(4, 1, '2023-11-09', 7, 3),
(5, 2, '2023-11-09', 7, 2),
(6, 2, '2023-11-10', 8, 3),
(7, 4, '2023-11-10', 6, 1),
(8, 1, '2023-11-11', 7, 4),
(9, 3, '2023-11-11', 1, 3),
(10, 1, '2023-11-12', 4, 1),
(11, 2, '2023-11-12', 6, 4);

SELECT*FROM pemesanan;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Tabel Metode Pembayaran
CREATE TABLE metode_pembayaran (
    id INT(11) PRIMARY KEY NOT NULL,
    pembayaran_metode ENUM('Tunai', 'Kartu Kredit')
);

DESC metode_pembayaran;

INSERT INTO metode_pembayaran (id, pembayaran_metode) VALUES
(1, 'Tunai'),
(2, 'Kartu Kredit');

SELECT*FROM metode_pembayaran;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Tabel Transaksi
CREATE TABLE transaksi (
    id INT(11) PRIMARY KEY NOT NULL,
    transaksi_tanggal DATE,
    transaksi_status ENUM('Lunas', 'Belum Lunas'),
    transaksi_total DECIMAL(10,2),
    pelanggan_id INT(11),
    kasir_id INT(11),
    metode_pembayaran_id INT(11),
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id),
    FOREIGN KEY (kasir_id) REFERENCES kasir(id),
    FOREIGN KEY (metode_pembayaran_id) REFERENCES metode_pembayaran(id)
);

DESC transaksi;

INSERT INTO transaksi (id, transaksi_tanggal, transaksi_status, transaksi_total, pelanggan_id, kasir_id, metode_pembayaran_id) VALUES
(1, '2023-11-09', 'Lunas', 97000.00, 2, 1, 1),
(2, '2023-11-11', 'Lunas', 20500.00, 3, 2, 1),
(3, '2023-11-12', 'Lunas', 42000.00, 1, 4, 1),
(4, '2023-11-12', 'Lunas', 10000.00, 4, 3, 1);

SELECT*FROM transaksi;