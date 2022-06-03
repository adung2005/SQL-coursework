  ALTER TABLE sinh_vien
  DROP CONSTRAINT CHK_diem_lan_2
  drop TABLE sinh_vien
  CREATE TABLE sinh_vien(
  ma int identity,
  ten nvarchar(50) not null,
  diem_lan_1 int,
  diem_lan_2 int,
  PRIMARY key(ma)
  )
  ALTER TABLE sinh_vien
  ADD CONSTRAINT CHK_diem CHECK(
  diem_lan_1 <= 10 AND
  diem_lan_1 >= 0 AND
  diem_lan_2 <= 10 AND
  diem_lan_2 >= 0
  )
  ALTER TABLE sinh_vien
  ADD CONSTRAINT df_diem_lan_1 
  default 5 for diem_lan_1
  ALTER TABLE sinh_vien
  ADD CONSTRAINT CHK_diem_lan_2 CHECK(diem_lan_2 is null or diem_lan_1 < 5)
  ALTER table sinh_vien
  add CONSTRAINT CHK_ten check(len(ten) >= 2)

  INSERT INTO sinh_vien(ten,diem_lan_1,diem_lan_2)
  VALUES
  (N'Dũng',4,7),
  (N'Huy',7,null),
  (N'Khôi',2,null),
  (N'Thi',8,null),
  (N'Huệ',1,null)
  SELECT * from sinh_vien
  WHERE diem_lan_1 > 5 OR diem_lan_2 > 5
  SELECT * FROM sinh_vien
  WHERE diem_lan_1 >= 5 AND diem_lan_2 >= 5 
  SELECT * FROM sinh_vien
  WHERE diem_lan_1 < 5 AND diem_lan_2 < 5
  SELECT COUNT(*) as so_ban_qua_mon FROM sinh_vien
  WHERE diem_lan_2 >= 5
  SELECT COUNT(*) FROM sinh_vien
  WHERE diem_lan_1 < 5 and diem_lan_2 is null