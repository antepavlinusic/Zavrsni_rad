# linija koja počne s hash (shift + 3) je komentar
# Ovo je SQL skripta
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Zavrsni_rad\bjj_turnir.sql

drop database if exists bjj_turnir;
create database bjj_turnir default character set utf8mb4;
use bjj_turnir;

create table turnir(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
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
    naziv varchar(50) not null,
    kilaza varchar(50),
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

insert into turnir (sifra, naziv, datumpocetka, datumzavrsetka, ulica, brojulice, grad)
values (null, 'Osijek-open', '2022-05-22/14:00:00', '2022-05-24', 'Vukovarska', '17', 'Osijek' );
insert into turnir (sifra, naziv, datumpocetka, datumzavrsetka, ulica, brojulice, grad)
values (null, 'ZagrebBJJ', '2022-07-22/14:30:00', '2022-07-24', 'Ilica', '174', 'Zagreb' );
insert into turnir (sifra, naziv, datumpocetka, datumzavrsetka, ulica, brojulice, grad)
values (null, 'BJJ Prvenstvo Hrvatske', '2022-08-26/11:00:00', '2022-09-02', 'Trg Krešimira Ćosića', '11', 'Zagreb' );

insert into tim (sifra, naziv)
values (null, 'BJJ Imperium Osijek');

insert into tim (sifra, naziv)
values (null, 'Checkmate Zadar');

insert into tim (sifra, naziv)
values (null, 'BJJ Matside Split');

insert into tim (sifra, naziv)
values (null, 'Prime BJJ Osijek');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Ante', 'Pavlinušić', 'ante.pavlinusic@gmail.com', null, '1');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Ivan', 'Farago', 'ivan.farago92@gmail.com', null, '1');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Marko', 'Torić', 'm.toric@gmail.com', null, '1');


insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Alen', 'Alenković', 'alen.a1991@gmail.com', null, '2');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Matej', 'Ivković', 'mate.ivko88@gmail.com', null, '2');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Filip', 'Krpan', 'f.krpan@gmail.com', null, '2');


insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Matija', 'Jakim', 'matija.jakim@gmail.com', null, '3');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Marijan', 'Martinović', 'marijan.marty@gmail.com', null, '3');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Mihael', 'Bandovar', 'mihael.bandovar@gmail.com', null, '3');


insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Vedran', 'Budetić', 'v.budetic@gmail.com', null, '4');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Lovro', 'Pušić', 'l.pausic@gmail.com', null, '4');

insert into trener (sifra, ime, prezime, email, oib, tim)
values (null, 'Andrej', 'Bek', 'a.back@gmail.com', null, '4');

#Muški Laka kategorija

insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'Laka', '-76kg', 'bijeli', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'Laka', '-76kg', 'plavi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'Laka', '-76kg', 'ljubičasti', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'Laka', '-76kg', 'smeđi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'Laka', '-76kg', 'crni', 'muško');
 
#Muški srednja kategorija

insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'srednja', '-82.3kg', 'bijeli', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'srednja', '-82.3kg', 'plavi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'srednja', '-82.3kg', 'ljubičasti', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'srednja', '-82.3kg', 'smeđi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'srednja', '-82.3kg', 'crni', 'muško');

#Muški poluteška kategorija

insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'poluteška', '-88.3kg', 'bijeli', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'poluteška', '-88.3kg', 'plavi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'poluteška', '-88.3kg', 'ljubičasti', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'poluteška', '-88.3kg', 'smeđi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'poluteška', '-88.3kg', 'crni', 'muško');

#Muški teška kategorija

insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'teška', '-94kg', 'bijeli', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'teška', '-94kg', 'plavi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'teška', '-94kg', 'ljubičasti', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'teška', '-94kg', 'smeđi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'teška', '-94kg', 'crni', 'muško');

#Muški superteška kategorija

insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'superteška', '+94kg', 'bijeli', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'superteška', '+94kg', 'plavi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'superteška', '+94kg', 'ljubičasti', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'superteška', '+94kg', 'smeđi', 'muško');
insert into kategorija (sifra,naziv,kilaza,pojas,spol)
values (null,'superteška', '+94kg', 'crni', 'muško');