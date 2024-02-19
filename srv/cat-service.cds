using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books as projection on my.Books;

     entity BooksWithAuthor as projection on my.Books{
        Books.title as name,
        Books.authorID as authorID,
        authorDet : association to one my.author on authorDet.authorID = $self.authorID
     };
     
     entity author as projection on my.author;
}

