
--V�EW DE TABLO OLUSTURMA ��LEM�

--create view vwDoktorKurum as
--select d.Ad+''+d.Soyad as 'Doktor Ad� Soyad�' ,k.KurumAd
--from tblDoktor d
--join tblKurum k on k.ID=d.KurumID


--V�EW DE SE�ME SORGUSU
select * from vwDoktorKurum

--V�EW DE L�KE KULLANIMI
where KurumAd like 'a%'

--V�EW DE SON KAYDED�LEN 5 DOKTORU GET�R�R
create view vwSonEklenen5Doktor as 
select top(5) from tblDoktor 
order by ID desc 


--
create view vwSonEklenen5DoktorKurum as 
select top(5) d.Ad+''+d.Soyad as 'Doktor Ad� Soyad�' ,k.KurumAd
from tblDoktor d
join tblKurum k on k.ID=d.KurumID
order by d.ID desc 
select * from vwSonEklenen5Doktor

