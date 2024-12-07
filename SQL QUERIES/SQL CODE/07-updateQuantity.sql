BEGIN;
-- transaction block to update the book quantity based on the BookLoan status
UPDATE public."Book"
SET quantity_available = quantity_available - borrowed_count
FROM (
	SELECT book_isbn, COUNT(*) AS borrowed_count
	FROM public."BookLoan"
	WHERE status IN ('borrowed', 'overdue')
	GROUP BY book_isbn
) AS borrowed_books

WHERE public."Book".isbn = borrowed_books.book_isbn;

ROLLBACK;
-- change ROLLBACK to COMMIT 
-- I only put rollback because I was scared if it doesn't work