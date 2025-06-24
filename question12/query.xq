for $b in doc("book.xml")//book
order by xs:decimal($b/price)
return $b/title


