	# Books filling

#INSERT INTO `electronic_library`.`books` (`book_name`) VALUES ('Jungle book');
#INSERT INTO `electronic_library`.`books` (`book_name`) VALUES ('Dracula');
#INSERT INTO `electronic_library`.`books` (`book_id`,`book_name`) VALUES (3, 'Robin hood');
#INSERT INTO `electronic_library`.`books` (`book_id`,`book_name`) VALUES (NULL, 'Moby deek');

	# Authors filling

#INSERT INTO `electronic_library`.`authors` (`author_name`, `years_of_life`) VALUES ('Joseph Rudyard Kipling', '1886—1932  ');
#INSERT INTO `electronic_library`.`authors` (`author_name`, `years_of_life`) VALUES ('Bram Stoker', '8 November 1847 – 20 April 1912');
#INSERT INTO `electronic_library`.`authors` (`author_name`) VALUES ('English Folklore');
#INSERT INTO `electronic_library`.`authors` (`author_name`, `years_of_life`) VALUES ('Herman Melville', '1 августа 1819 — 28 сентября 1891 ');

	# Book_author filling
    
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('1', '1');
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('2', '2');
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('3', '3');
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('4', '4');

	# DB TEST
    
#delete from books where book_id=3;
#SELECT * FROM books;
#SELECT * FROM book_author;
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('2', '2');	# RESULT: ERROR, BECAUSE FIELDS COMBINATION IS UNIQE
#UPDATE `electronic_library`.`book_author` SET `book_id`=3 where author_id=3 ;

	# For left join testing
#INSERT INTO `electronic_library`.`books` (`book_name`) VALUES ('Слово о полку Ігоревім');
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES ('5', null);
#INSERT INTO `electronic_library`.`book_author` (`book_id`, `author_id`) VALUES (null, 4);
#delete from book_author where author_id=4;		#for deleting previous table but dont work( look lower row
#delete from book_author where book_id is null and author_id=4; #but this works




