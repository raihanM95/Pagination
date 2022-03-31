DECLARE @PageNo AS INT;
DECLARE @ItemPerPage AS INT;
SET @PageNo = 0;
SET @ItemPerPage = 10;
SELECT Id,
       Name
FROM [dbo].[Product]
ORDER BY Id OFFSET (@PageNo * @ItemPerPage) ROWS FETCH NEXT (@ItemPerPage) ROWS ONLY;