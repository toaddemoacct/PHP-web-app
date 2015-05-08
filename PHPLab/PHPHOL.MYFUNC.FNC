CREATE OR REPLACE FUNCTION PHPHOL.myfunc (d_p IN VARCHAR2, i_p IN NUMBER)
   RETURN NUMBER
AS
BEGIN
   INSERT INTO ptab(mydata, myid)
        VALUES (d_p, i_p);

   RETURN (i_p * 2);
END;
/
