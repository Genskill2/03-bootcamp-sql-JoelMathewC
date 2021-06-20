CREATE TABLE publisher(
id int PRIMARY KEY,
name text not null,
country text not null);

create table books(
id int primary key,
title text not null,
publisher int,
foreign key (publisher)
references publisher(id)
);

create table subjects(
id int primary key,
name text not null
);

create table books_subjects(

book int,
subject int,
foreign key(book)
references books(id),

foreign key(subject)
references subjects(id)
);
