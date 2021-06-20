insert into publisher(id,name,country)
values

	(1,'PHI','India'),
	(2,'Harper','USA'),
	(3,'GCP','USA'),
	(4,'Avery','USA'),
	(5,'Del Rey','UK'),
	(6,'Vintage','UK');
	
insert into books(id,title,publisher)
values
	(1,'The C Programming Language',(select id from publisher where name='PHI')),
	(2,'The Go Programming Language',(select id from publisher where name='PHI')),
	(3,'The UNIX Programming Environment',(select id from publisher where name='PHI')),
	(4,'Cryptonomicon',(select id from publisher where name='Harper')),
	(5,'Deep Work',(select id from publisher where name='GCP')),
	(6,'Atomic Habits',(select id from publisher where name='Avery')),
	(7,'The City and The City',(select id from publisher where name='Del Rey')),
	(8,'The Great War for Civilisation',(select id from publisher where name='Vintage'));
	

insert into subjects(id,name)
values

	(1,'C'),
	(2,'UNIX'), 
	(3,'Technology'),
	(4,'Go'),
	(5,'Science Fiction'),
	(6,'Productivity'),
	(7,'Psychology'),
	(8,'Politics'),
	(9,'History');
	
insert into books_subjects(book,subject)
values ((select id from books where title='The C Programming Language'),(select id from subjects where name='C, UNIX, Technology')), ((select id from books where title='The Go Programming Language'),(select id from subjects where name='Go, Technology')),((select id from books where title='The UNIX Programming Environment'),(select id from subjects where name='UNIX, Technology')),((select id from books where title='Cryptonomicon'),(select id from subjects where name='Technology, Science Fiction')),((select id from books where title='Deep Work'),(select id from subjects where name='Technology, Productivity')),((select id from books where title='Atomic Habits'),(select id from subjects where name='Productivity, Psychology')),((select id from books where title='The City and The City'),(select id from subjects where name='Science Fiction, Politics')),((select id from books where title='The Great War for Civilisation'),(select id from subjects where name='Politics, History'));
		
