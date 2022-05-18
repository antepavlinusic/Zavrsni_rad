# linija koja počne s hash (shift + 3) je komentar
# Ovo je SQL skripta
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Zavrsni_rad\bjj_turnir.sql

drop database if exists bjj_turnir;
create table bjj_turnir default character set utf8mb4;
use bjj_turnir;

create table turnir(
    sifra int not null primary key auto_increment,
    naziv int not null,
    vrijemepocetka datetime,
    datumpocetka datetime not null,
    datumzavrsetka datetime not null,
    ulica varchar(50),
    brojulice varchar(5),
    grad varchar(50),
); 
