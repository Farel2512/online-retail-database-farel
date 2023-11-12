-- Membuat Database Online Retail
CREATE DATABASE online_retail_database;

-- Menampilkan Databases
SHOW DATABASES;

-- Memilih Database Yang Digunakan
USE online_retail_database;

-- Menampilkan tabel-tabel yang ada di dalam Database
SHOW TABLES;

-- Menghapus tabel
DROP TABLE pelanggan;
DROP TABLE barang;
DROP TABLE kasir;

-- Menghapus DATABASE
DROP DATABASE online_retail_database;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- 1. 1 pelanggan membeli 3 barang yang berbeda.
SELECT
    pelanggan.pelanggan_nama,
    barang.barang_nama
FROM
    pemesanan pemesanan
JOIN
    pelanggan pelanggan ON pemesanan.pelanggan_id = pelanggan.id
JOIN
    barang barang ON pemesanan.barang_id = barang.id
WHERE
    pemesanan.pelanggan_id IN (
        SELECT
            pelanggan_id
        FROM
            pemesanan
        GROUP BY
            pelanggan_id
        HAVING
            COUNT(DISTINCT barang_id) = 3
    )
ORDER BY
    pelanggan.pelanggan_nama ASC, barang.barang_nama ASC;

-- 2. Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT
    barang.barang_nama,
    COUNT(pemesanan.barang_id) AS jumlah_pembelian
FROM
    pemesanan pemesanan
JOIN
    barang barang ON pemesanan.barang_id = barang.id
GROUP BY
    pemesanan.barang_id, barang.barang_nama
ORDER BY
    jumlah_pembelian DESC
LIMIT 3;

-- 3. Melihat Kategori barang yang paling banyak barangnya.
SELECT
    kategori_barang.barang_kategori,
    COUNT(barang.id) AS jumlah_barang
FROM
    kategori_barang kategori_barang
JOIN
    barang barang ON kategori_barang.id = barang.barang_kategori_id
GROUP BY
    kategori_barang.id, kategori_barang.barang_kategori
ORDER BY
    jumlah_barang DESC
LIMIT 1;

-- 4. Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT
    AVG(transaksi_total) AS rata_rata_nominal
FROM
    transaksi
WHERE
    transaksi_tanggal BETWEEN '2023-11-01' AND '2023-11-30';

