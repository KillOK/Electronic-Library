# Creation of users table

CREATE TABLE `electronic_library`.`users` (
  `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

	# Creation of genre table
    
CREATE TABLE `electronic_library`.`genres` (
  `genre_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE INDEX `genre_id_UNIQUE` (`genre_id` ASC),
  UNIQUE INDEX `genre_name_UNIQUE` (`genre_name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

	# Creation of authors table
    
CREATE TABLE `electronic_library`.`authors` (
  `author_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(50) NOT NULL,
  `years_of_life` VARCHAR(50) NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE INDEX `author_id_UNIQUE` (`author_id` ASC),
  UNIQUE INDEX `author_name_UNIQUE` (`author_name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
	
    #Creation of books table
    
CREATE TABLE `electronic_library`.`books` (
  `book_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE INDEX `book_id_UNIQUE` (`book_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

	# Creation of book_author table (Складений ключ для унікальності звязку автор-книга)
    
CREATE TABLE `electronic_library`.`book_author` (
  `book_id` INT UNSIGNED,
  `author_id` INT UNSIGNED,
  UNIQUEauthors (`book_id`, `author_id`),
  FOREIGN KEY (`book_id`) REFERENCES `books`(`book_id`) 
  ON UPDATE CASCADE
  #ON DELETE CASCADE	#Якщо потрыбно видаляти поле при видаленні данних з батьківської таблиці.
  ON DELETE SET NULL,
  FOREIGN KEY (`author_id`) REFERENCES `authors`(`author_id`) 
  ON UPDATE CASCADE
  ON DELETE SET NULL) 
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;





