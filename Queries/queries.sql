-- Analytical Queries for Library Management System

-- 1. Display all books with publisher and branch
SELECT b.BookID, b.Title, b.Author, b.Genre, p.PublisherName, lb.BranchName, b.Published_Year, b.Total_Copies
FROM Books b
LEFT JOIN Publishers p ON b.PublisherID = p.PublisherID
LEFT JOIN Library_Branch lb ON b.BranchID = lb.BranchID;;

-- 2. Count total books
SELECT COUNT(*) AS Total_Books FROM Books;;

-- 3. Total books per genre
SELECT Genre, SUM(Total_Copies) AS Total_Copies FROM Books GROUP BY Genre;;

-- 4. Books available in each branch
SELECT lb.BranchName, COUNT(b.BookID) AS Num_Books FROM Books b JOIN Library_Branch lb ON b.BranchID = lb.BranchID GROUP BY lb.BranchName;;

-- 5. Top 3 most borrowed books
SELECT b.Title, COUNT(br.RecordID) AS Borrow_Count FROM Borrow_Records br JOIN Books b ON br.BookID = b.BookID GROUP BY b.Title ORDER BY Borrow_Count DESC LIMIT 3;;

-- 6. Members who borrowed more than 1 book
SELECT m.MemberName, COUNT(br.RecordID) AS Borrowed FROM Members m JOIN Borrow_Records br ON m.MemberID = br.MemberID GROUP BY m.MemberName HAVING COUNT(br.RecordID) > 1;;

-- 7. Total books per publisher
SELECT p.PublisherName, COUNT(b.BookID) AS Num_Books FROM Publishers p LEFT JOIN Books b ON p.PublisherID = b.PublisherID GROUP BY p.PublisherName;;

-- 8. Books not yet borrowed
SELECT b.Title FROM Books b LEFT JOIN Borrow_Records br ON b.BookID = br.BookID WHERE br.RecordID IS NULL;;

-- 9. Most active members (by borrow count)
SELECT m.MemberName, COUNT(br.RecordID) AS BorrowCount FROM Members m JOIN Borrow_Records br ON m.MemberID = br.MemberID GROUP BY m.MemberName ORDER BY BorrowCount DESC LIMIT 5;;

-- 10. Books borrowed in last 30 days
SELECT b.Title, m.MemberName, br.Borrow_Date FROM Borrow_Records br JOIN Books b ON br.BookID = b.BookID JOIN Members m ON br.MemberID = m.MemberID WHERE br.Borrow_Date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);;

-- 11. Publishers and number of books
SELECT p.PublisherName, COUNT(b.BookID) AS NumBooks FROM Publishers p JOIN Books b ON p.PublisherID = b.PublisherID GROUP BY p.PublisherName;;

-- 12. Recent borrow record
SELECT * FROM Borrow_Records ORDER BY Borrow_Date DESC LIMIT 1;;
