select title from (books inner join books_subjects on books.id = books_subjects.book) inner join subjects on subjects.id = books_subjects.subject where subjects.name in ('Technology','Politics');
