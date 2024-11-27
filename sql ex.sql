SELECT
  book.title AS book_title,
  adap.title AS adap_title,
  book.publish_year,
  adap.release_year
FROM book
JOIN adap
  ON book.id = adap.book_id
WHERE adap.release_year - book.publish_year <= 4
  AND book.rating < adap.rating;


