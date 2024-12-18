-- 1. Update alamat mahasiswa dengan NIM '123456' menjadi 'Jl. Raya No.5'
UPDATE Mahasiswa
SET Alamat = 'Jl. Raya No.5'
WHERE NIM = '123456';

-- 2. Tampilkan NIM, nama, dan jurusan dari mahasiswa yang memiliki jurusan Teknik Informatika
SELECT M.NIM, M.Nama, M.Jurusan, MK.DosenPengajar
FROM Mahasiswa M
JOIN MataKuliah MK ON M.NIM = MK.NIM
WHERE M.Jurusan = 'Teknik Informatika';

-- 3. Tampilkan 5 mahasiswa dengan umur termuda
SELECT Nama, Umur
FROM Mahasiswa
ORDER BY Umur ASC
LIMIT 5;

-- 4. Tampilkan mahasiswa dengan nilai mata kuliah > 70
SELECT M.Nama, MK.MataKuliah, MK.Nilai, MK.DosenPengajar
FROM Mahasiswa M
JOIN MataKuliah MK ON M.NIM = MK.NIM
WHERE MK.Nilai > 70;
