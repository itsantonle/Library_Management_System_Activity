-- if doing frontend to backend to DB, the UUID 
--will be generated using an external library such as uuid (v4)
-- uuid is generated using uuidgenerator.net

INSERT INTO public."User" (user_id, full_name, membership_date, email_address) 
VALUES('f6ab8251-8675-480c-a5a2-9b49eb37c43c', 'Mary Example', '2024-10-01', 'mary@example.com')