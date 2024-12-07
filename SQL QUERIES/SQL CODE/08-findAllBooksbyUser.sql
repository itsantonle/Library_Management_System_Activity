-- Find all instances of Book that is borrowed by a specific User instance
-- specific uuid is given 

SELECT * FROM public."Book"
JOIN public."BookLoan" on public."Book".isbn = public."BookLoan".book_isbn
WHERE public."BookLoan".user_id = 'f6ab8251-8675-480c-a5a2-9b49eb37c43c'