
--VÝEW DE TABLO OLUSTURMA ÝÞLEMÝ

--create view vwDoktorKurum as
--select d.Ad+''+d.Soyad as 'Doktor Adý Soyadý' ,k.KurumAd
--from tblDoktor d
--join tblKurum k on k.ID=d.KurumID


--VÝEW DE SEÇME SORGUSU
select * from vwDoktorKurum

--VÝEW DE LÝKE KULLANIMI
where KurumAd like 'a%'

--VÝEW DE SON KAYDEDÝLEN 5 DOKTORU GETÝRÝR
create view vwSonEklenen5Doktor as 
select top(5) from tblDoktor 
order by ID desc 


--
create view vwSonEklenen5DoktorKurum as 
select top(5) d.Ad+''+d.Soyad as 'Doktor Adý Soyadý' ,k.KurumAd
from tblDoktor d
join tblKurum k on k.ID=d.KurumID
order by d.ID desc 
select * from vwSonEklenen5Doktor

