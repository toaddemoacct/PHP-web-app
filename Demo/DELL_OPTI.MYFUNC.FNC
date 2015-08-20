CREATE OR REPLACE FUNCTION DELL_OPTI.myfunc (d_p IN VARCHAR2, i_p IN NUMBER)
   RETURN NUMBER
AS
BEGIN
   INSERT INTO phphol.ptab(mydata, myid)
        VALUES (d_p, i_p);

   RETURN (i_p * 3);
END;
/
