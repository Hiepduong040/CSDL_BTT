Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

/*==============CÂU TRUY VẤN==================*/
/* Câu 1 */
SELECT MaSV, HoSV, TenSV, HocBong
FROM DMSV
ORDER BY MaSV ASC;

/* Câu 2 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, Phai, NgaySinh
FROM DMSV
ORDER BY CASE
             WHEN Phai = 'Nam' THEN 1
             WHEN Phai = 'Nữ' THEN 2
          END;

/* Câu 3 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, NgaySinh, HocBong
FROM DMSV
ORDER BY NgaySinh ASC, HocBong DESC;

/* Câu 4 */
SELECT MaMH, TenMH, SoTiet
FROM DMMH
WHERE TenMH LIKE 'T%'
ORDER BY TenMH;

/* Câu 5 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, NgaySinh, Phai
FROM DMSV
WHERE RIGHT(TenSV, 1) = 'I';

/* Câu 6 */
SELECT MaKhoa, TenKhoa
FROM DMKhoa
WHERE SUBSTRING(TenKhoa, 2, 1) = 'N';

/* Câu 7 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen
FROM DMSV
WHERE HoSV LIKE '%Thị%';

/* Câu 8 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, MaKhoa, HocBong
FROM DMSV
WHERE HocBong > 100000
ORDER BY MaKhoa DESC;

/* Câu 9 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, MaKhoa, NoiSinh, HocBong
FROM DMSV
WHERE HocBong >= 150000 AND NoiSinh = 'Hà Nội';

/* Câu 10 */
SELECT MaSV, MaKhoa, Phai
FROM DMSV
WHERE MaKhoa IN ('AV', 'VL');

/* Câu 11 */
SELECT MaSV, NgaySinh, NoiSinh, HocBong
FROM DMSV
WHERE NgaySinh BETWEEN '1991-01-01' AND '1992-06-05';

/* 12 */
SELECT MaSV, NgaySinh, Phai, MaKhoa
FROM DMSV
WHERE HocBong BETWEEN 80000 AND 150000;

/* 13 */
SELECT MaMH, TenMH, SoTiet
FROM DMMH
WHERE SoTiet > 30 AND SoTiet < 45;

/* 14 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, TenKhoa, Phai
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
WHERE Phai = 'Nam' AND (DMKhoa.MaKhoa = 'AV' OR DMKhoa.MaKhoa = 'TH');

/* 15 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen
FROM DMSV
WHERE Phai = 'Nữ' AND TenSV LIKE '%N%';

/* 16 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, NoiSinh, NgaySinh
FROM DMSV
WHERE NoiSinh = 'Hà Nội' AND MONTH(NgaySinh) = 2;

/* 17 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS Tuoi, HocBong
FROM DMSV
WHERE TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) > 20;

/* 18 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS Tuoi, TenKhoa
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
WHERE TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) BETWEEN 20 AND 25;

/* 19 */
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, Phai, NgaySinh
FROM DMSV
WHERE YEAR(NgaySinh) = 1990 AND MONTH(NgaySinh) BETWEEN 3 AND 5;

/* 20 */
SELECT MaSV, Phai, MaKhoa, 
       CASE 
           WHEN HocBong > 500000 THEN 'Học bổng cao'
           ELSE 'Mức trung bình'
       END AS MucHocBong
FROM DMSV;

/* 21 */
SELECT COUNT(*) AS TongSoSinhVien
FROM DMSV;

/* 22 */
SELECT COUNT(*) AS TongSinhVien, 
       SUM(CASE WHEN Phai = 'Nữ' THEN 1 ELSE 0 END) AS TongSinhVienNu
FROM DMSV;

/* 23 */
SELECT MaKhoa, COUNT(*) AS TongSinhVien
FROM DMSV
GROUP BY MaKhoa;

/* 24 */
SELECT MaMH, COUNT(DISTINCT MaSV) AS SoLuongSinhVien
FROM KetQua
GROUP BY MaMH;

/* 25 */
SELECT MaSV, COUNT(DISTINCT MaMH) AS SoMonHocDaHoc
FROM KetQua
GROUP BY MaSV;

/* 26 */
SELECT DMKhoa.MaKhoa, SUM(DMSV.HocBong) AS TongHocBong
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
GROUP BY DMKhoa.MaKhoa;

/* 27 */
SELECT DMKhoa.MaKhoa, MAX(DMSV.HocBong) AS HocBongCaoNhat
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
GROUP BY DMKhoa.MaKhoa;

/* 28 */
SELECT DMKhoa.MaKhoa, 
       SUM(CASE WHEN Phai = 'Nam' THEN 1 ELSE 0 END) AS TongNam,
       SUM(CASE WHEN Phai = 'Nữ' THEN 1 ELSE 0 END) AS TongNu
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
GROUP BY DMKhoa.MaKhoa;

/* 29 */
SELECT TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS Tuoi, COUNT(*) AS SoLuongSinhVien
FROM DMSV
GROUP BY Tuoi;

/* 30 */
SELECT YEAR(NgaySinh) AS NamSinh, COUNT(*) AS SoSinhVien
FROM DMSV
GROUP BY YEAR(NgaySinh)
HAVING COUNT(*) = 2;

/* 31 */
SELECT NoiSinh, COUNT(*) AS SoLuongSinhVien
FROM DMSV
GROUP BY NoiSinh
HAVING COUNT(*) > 2;

/* 32 */
SELECT MaMH, COUNT(DISTINCT MaSV) AS SoLuongSinhVienThi
FROM KetQua
GROUP BY MaMH
HAVING COUNT(DISTINCT MaSV) > 3;

/* 33 */
SELECT MaSV, COUNT(*) AS SoLanThiLai
FROM KetQua
GROUP BY MaSV
HAVING COUNT(*) > 2;

/* 34 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, AVG(Diem) AS DiemTrungBinhLan1
FROM KetQua
JOIN DMSV ON KetQua.MaSV = DMSV.MaSV
WHERE LanThi = 1
GROUP BY MaSV
HAVING DiemTrungBinhLan1 > 7.0 AND Phai = 'Nam';

/* 35 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, COUNT(*) AS SoMonThiLai
FROM KetQua
WHERE LanThi = 1 AND Diem < 5
GROUP BY MaSV
HAVING SoMonThiLai > 2;

/* 36 */
SELECT DMKhoa.MaKhoa, COUNT(*) AS SoLuongSinhVienNam
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
WHERE Phai = 'Nam'
GROUP BY DMKhoa.MaKhoa
HAVING COUNT(*) > 2;

/* 37 */
SELECT DMKhoa.MaKhoa, COUNT(*) AS SoLuongSinhVienHocBong
FROM DMSV
JOIN DMKhoa ON DMSV.MaKhoa = DMKhoa.MaKhoa
WHERE HocBong BETWEEN 200000 AND 300000
GROUP BY DMKhoa.MaKhoa
HAVING COUNT(*) = 2;

/* 38 */
SELECT MaMH, 
       SUM(CASE WHEN Diem >= 5 THEN 1 ELSE 0 END) AS SoSinhVienDau,
       SUM(CASE WHEN Diem < 5 THEN 1 ELSE 0 END) AS SoSinhVienRot
FROM KetQua
WHERE LanThi = 1
GROUP BY MaMH;

/* 39 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, MAX(HocBong) AS HocBongCaoNhat
FROM DMSV
GROUP BY MaSV
ORDER BY HocBongCaoNhat DESC
LIMIT 1;

/* 40 */
SELECT MaSV, CONCAT(HoSV, ' ', TenSV) AS HoTen, MAX(Diem) AS DiemCaoNhat
FROM KetQua
JOIN DMMH ON KetQua.MaMH = DMMH.MaMH
WHERE DMMH.TenMH = 'Cơ Sở Dữ Liệu' AND LanThi = 1
GROUP BY MaSV
ORDER BY DiemCaoNhat DESC
LIMIT 1;
