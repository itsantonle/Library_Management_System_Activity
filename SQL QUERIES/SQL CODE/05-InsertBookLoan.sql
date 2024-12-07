-- assumes the default value is 'borrowed for status'

INSERT INTO public."BookLoan" (loan_date, return_date, status, user_id, book_isbn, due_date)
VALUES
('2022-01-02', NULL, 'borrowed', 'f6ab8251-8675-480c-a5a2-9b49eb37c43c', '9781678625160','2022-01-09'),
-- due book
('2024-12-07', NULL, 'borrowed', 'f6ab8251-8675-480c-a5a2-9b49eb37c43c', '9787184338310','2024-12-14'),
-- borrowed but not returned book
('2024-12-03', '2024-12-04', 'returned','f6ab8251-8675-480c-a5a2-9b49eb37c43c', '9780215010469', '2024-12-10'),
-- borrowed and returned book
