-- Подписка на публикацию книг с master
CREATE SUBSCRIPTION sub_books 
CONNECTION 'host=postgres-master dbname=book_store user=admin password=password' 
PUBLICATION pub_books;