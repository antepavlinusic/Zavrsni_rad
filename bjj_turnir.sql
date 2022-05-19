# linija koja počne s hash (shift + 3) je komentar
# Ovo je SQL skripta
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Zavrsni_rad\bjj_turnir.sql

drop database if exists bjj_turnir;
create database bjj_turnir default character set utf8mb4;
use bjj_turnir;

create table turnir(
    sifra int not null primary key auto_increment,
    naziv int not null,
    datumpocetka datetime not null,
    datumzavrsetka datetime not null,
    ulica varchar(50),
    brojulice varchar(5),
    grad varchar(50)
); 

create table trener(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50),
    oib char(11),
    tim int not null
);


create table tim(
    sifra int not null primary key auto_increment,
    naziv varchar(50)
);

create table prijava(
    sifra int not null primary key auto_increment,
    turnir int not null,
    tim int not null
);

create table kategorija(
    sifra int not null primary key auto_increment,
    kilaza int,
    pojas varchar(50),
    spol varchar(50)
);

create table natjecatelj(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(50),
    kategorija int,
    tim int
);

alter table prijava add foreign key (turnir) references turnir(sifra);
alter table prijava add foreign key (tim) references tim(sifra);

alter table natjecatelj add foreign key (tim) references tim(sifra);
alter table trener add foreign key (tim) references tim(sifra);

alter table natjecatelj add foreign key (kategorija) references kategorija(sifra);

