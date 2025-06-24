for $author in distinct-values(doc("book.xml")//book/author)
let $count := count(doc("book.xml")//book[author = $author])
return concat($author, ":" , $count)