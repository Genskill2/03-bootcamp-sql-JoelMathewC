delete from books_subjects where subject in (select id from subjects where name like 'History');
delete from subjects where name like 'History';
