drop TABLE sinh_vien
CREATE TABLE sinh_vien(
  ma int identity,
  ho_ten nvarchar(50),
  sdt char(15),
  dia_chi text,
  gioi_tinh bit,
  ngay_sinh date,
  PRIMARY key(ma)
  )
  
 INSERT INTO sinh_vien(ho_ten,sdt,dia_chi,gioi_tinh,ngay_sinh)
 VALUES (N'Dũng','0123456789','hcm',1,'2003-02-17'),
 		('Huy','021389719','qb',1,'2007-02-02'),
        ('Thi','023981331','na',0,'2005-09-29'),
        (N'Huệ','068732684','hcm',0,'2001-05-14'),
        (N'Khôi','91823897','hn',1,'2009-08-29')

SELECT * FROM sinh_vien

UPDATE sinh_vien
set ho_ten = N'Tuấn'
WHERE ma = 2

DELETE FROM sinh_vien
WHERE ma > 3 and gioi_tinh = 1

SELECT *,MONTH(ngay_sinh) AS Month FROM sinh_vien
where month(ngay_sinh) = 1

SELECT * FROM sinh_vien
WHERE (ho_ten in ('Anh','Minh',N'Đức') and gioi_tinh = 1) or year(ngay_sinh) < 2007

SELECT *,year(GETDATE()) - year(ngay_sinh) as tuoi FROM sinh_vien
WHERE year(GETDATE()) - year(ngay_sinh) > 18

SELECT top 3 * FROM sinh_vien
ORDER by ma DESC

SELECT * FROM sinh_vien
WHERE ho_ten LIKE N'%t%'

ALTER TABLE sinh_vien
add CONSTRAINT kiem_tra_ngay_sinh check (ngay_sinh < getdate())


