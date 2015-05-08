CREATE OR REPLACE procedure
myproc(d_p in varchar2, i_p in number) as
begin
  insert into ptab (mydata, myid) values (d_p, i_p);
end;
/
