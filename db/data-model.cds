namespace my.bookshop;

entity Books {
  key bookID : UUID;
  key title  : String;
  stock  : Integer;
  authorID : Integer;
  authorDetails : association to one author on authorDetails.authorID = $self.authorID;
}

entity author{
  key authorID : Integer;
  authorName : String;
  totalBooks : Integer;
}
