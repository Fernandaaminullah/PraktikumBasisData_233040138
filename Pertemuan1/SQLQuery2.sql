create table mahasiswa (
	Id INT primary key identity(1, 1),
	NPM INT,
	Nama Varchar(50),
	kelas Varchar(3),
	Jurusan Varchar(50),
	Fakultas Varchar(50),
)
INSERT INTO mahasiswa 
VALUES ('233040138','Fernanda Aminullah salim','IFD','Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040113','Muhammad Yafi Nasrulloh','IFD','Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040135','Raihan Azzani Helmawan','IFD','Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040166','Muhammad Akmal Alghifari','IFD','Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040126','Azhar mutaqin','IFD','Informatika','Teknik')

SELECT * FROM mahasiswa
WHERE nama LIKE '%lim%';



