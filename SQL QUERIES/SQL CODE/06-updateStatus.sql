-- Update the BookLoan status based on the current date

UPDATE public."BookLoan"
SET status = CASE 
WHEN return_date IS NULL AND CURRENT_DATE > due_date THEN 'overdue'
WHEN return_date IS NOT NULL THEN 'returned'
ELSE status
END;