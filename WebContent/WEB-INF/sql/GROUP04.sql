SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Comment
ORDER BY boardId DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.*, count(c.id) FROM Board b LEFT JOIN Comment c ON b.id = c.boardId
GROUP BY b.id
ORDER BY b.id DESC;

SELECT b.id boardId, 
       b.title title,
       m.name name,
       count(c.id) numberOfComment,
       b.inserted 
FROM Board b 
JOIN Member m 
ON b.memberId = m.id 
LEFT JOIN Comment c
ON b.id = c.boardId
GROUP BY b.id
ORDER BY numberOfComment DESC ;

SELECT * FROM Board;
SELECT * FROM Member;
SELECT * FROM Comment;

SELECT m.*, count(b.id)
FROM Member m JOIN Board b ON m.id = b.memberId
WHERE m.id = 'may';

SELECT m.*, count(DISTINCT b.id), count(DISTINCT c.id)
FROM Member m LEFT JOIN Board b ON m.id = b.memberId
LEFT JOIN Comment c ON m.id = c.memberId
WHERE m.id = 'mezzang';


SELECT count(*) FROM Board;