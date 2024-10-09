USE kelas_d; 
SELECT 
    c.custid, 
    c.companyname, 
    o.orderid, 
    o.orderdate 
FROM 
    Sales.Customers c
INNER JOIN 
    Sales.Orders o ON c.custid = o.custid;

-- Masalah pada kode tersebut ada pada metode join pada tabel
-- customer dan order, dan alias tidak sesuai dengan tabel yang
-- ada di join