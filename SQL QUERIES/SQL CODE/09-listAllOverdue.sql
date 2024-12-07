-- ALL instance of BookLoans with overdue status
SELECT * FROM public."BookLoan" WHERE status = 'overdue'

-- instances of Bookloans with overdue based on a User instance
SELECT * FROM public."BookLoan" WHERE status = 'overdue' AND user_id = 'f6ab8251-8675-480c-a5a2-9b49eb37c43c'