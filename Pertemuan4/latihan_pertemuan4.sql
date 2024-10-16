USE pertemuan4
SELECT * FROM mahasiswa
WHERE tahun_masuk BETWEEN 2019 AND 2020 
ORDER BY tahun_masuk, mahasiswa_id  ASC; 

SELECT * FROM mahasiswa 
WHERE jurusan IN  ('teknik informatika') AND alamat LIKE 'jl. Merdeka%';

SELECT COUNT (nama_mahasiswa) AS jumlah_total_mahasiswa_infromatika FROM mahasiswa
WHERE jurusan IN ('Teknik Informatika')

SELECT TOP (5) * FROM dpp_mahasiswa
ORDER BY jumlah_pembayaran DESC;

SELECT DISTINCT dosen_pengajar FROM jadwal_mata_kuliah;

SELECT COUNT (nama_mata_kuliah)AS matkuL_senin FROM jadwal_mata_kuliah
WHERE hari IN ('senin');

SELECT  * FROM jadwal_mata_kuliah
WHERE kode_mata_kuliah IN ('TI101', 'SI201' , 'TS301');

SELECT * FROM mahasiswa
WHERE tahun_masuk BETWEEN 2018 AND 2020 
AND jurusan LIKE ('Teknik Informatika') AND  alamat LIKE 'JL. sudirman%';


SELECT nama_mata_kuliah, dosen_pengajar  FROM jadwal_mata_kuliah
WHERE dosen_pengajar LIKE 'ang%' 
ORDER BY nama_mata_kuliah ASC;

SELECT * FROM dpp_mahasiswa
WHERE mahasiswa_id IN (

	SELECT mahasiswa_id 
	FROM dpp_mahasiswa 
	WHERE status_pembayaran IN ('Lunas')
	);



