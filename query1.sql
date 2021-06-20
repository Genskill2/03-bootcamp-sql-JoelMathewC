select title from books where (select name from publisher where id = publisher) = 'PHI';
