-- Exercise 1

CREATE TABLE Book(
  Bookid int,
  Bookname varchar(20),
  Authorid int,
  Amount Numeric(7,2),
  Rating int,
  Booktype varchar,
  PRIMARY KEY(Bookid),
  FOREIGN KEY (Authorid) REFERENCES Author(Authorid)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT rating_constraint CHECK (Rating >= 1 AND Rating <= 10),
  CONSTRAINT amount_constraint CHECK (Amount > 0),
  CONSTRAINT booktype_constraint CHECK (Booktype IN ('Fictionadulte', 'Non-fiction-adulte', 'Fiction-jeunesse',
  'Non-fictionjeunesse'))
);

-- Exercise 2

CREATE TABLE Author(
  Authorid int,
  Authorname varchar(20),
  PRIMARY KEY (Authorid)
);

CREATE ASSERTION limite
CHECK (
  (SELECT COUNT(*) FROM Author A) + (SELECT COUNT(*) FROM BOOK B) < 10000
);

-- Exercise 3

CREATE TRIGGER check_book_rating
  BEFORE UPDATE ON Book
  FOR EACH ROW
  EXECUTE PROCEDURE check_book_rating();

-- Exercise 4

ALTER TABLE Author
  ADD author_sum_rating int DEFAULT 0;

CREATE TRIGGER get_total_author_sum_rating
  AFTER INSERT ON Author
  FOR EACH ROW
  WHEN (pg_trigger_depth() = 0)
  EXECUTE PROCEDURE get_total_author_sum_rating_function();

CREATE OR REPLACE FUNCTION get_total_author_sum_rating_function()
  RETURNS trigger AS $get_total_author_sum_rating$
  BEGIN

    INSERT INTO Author SELECT author_sum_rating, sum(author_sum_rating);
    RETURN NULL;

  END;
  $get_total_author_sum_rating$ LANGUAGE plpgsql;
