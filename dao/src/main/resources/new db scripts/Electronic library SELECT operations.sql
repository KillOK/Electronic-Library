#SELECT books.book_name, authors.author_name FROM books INNER JOIN authors ON books.book_id = authors.author_id;
#SELECT books.book_name, authors.author_name FROM books cross JOIN authors;
#SELECT books.book_name, book_author.author_id FROM books natural JOIN book_author;
#SELECT books.book_name, authors.author_name FROM books left JOIN authors ON books.book_id = authors.author_id;
#SELECT authors.author_name,books.book_name  FROM books left JOIN authors ON authors.author_id = books.book_id; 	
#SELECT authors.author_name,books.book_name  FROM books right JOIN authors ON authors.author_id = books.book_id;		# NOT CORRECT

	# ref https://www.youtube.com/watch?v=R7iBKeTiayY&list=PLDywto_IU4_4RU0sKfID6OY-np6uGmhlf&index=14
    
