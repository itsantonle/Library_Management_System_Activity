BEGIN;


CREATE TABLE IF NOT EXISTS public."Book"
(
    isbn character varying(13) COLLATE pg_catalog."default" NOT NULL,
    title text COLLATE pg_catalog."default" NOT NULL,
    quantity_available integer NOT NULL,
    published_year date NOT NULL,
    genre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    author character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Book_pkey" PRIMARY KEY (isbn)
);

CREATE TABLE IF NOT EXISTS public."BookLoan"
(
    loan_date date NOT NULL,
    return_date date,
    status text COLLATE pg_catalog."default" NOT NULL,
    user_id uuid NOT NULL,
    book_isbn character varying(13) COLLATE pg_catalog."default" NOT NULL,
    due_date date NOT NULL,
    CONSTRAINT user_book_id PRIMARY KEY (user_id, book_isbn)
);

CREATE TABLE IF NOT EXISTS public."User"
(
    user_id uuid NOT NULL,
    full_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    membership_date date NOT NULL,
    email_address character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "User_pkey" PRIMARY KEY (user_id)
);

ALTER TABLE IF EXISTS public."BookLoan"
    ADD CONSTRAINT book_isbn FOREIGN KEY (book_isbn)
    REFERENCES public."Book" (isbn) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."BookLoan"
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES public."User" (user_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;