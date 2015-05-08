CREATE OR REPLACE package body PHPHOL.fetchperfpkg as
  procedure selbulk(p1 out arrtype) is
  begin
   select  mycol bulk collect
     into  p1
     from  bigtab;
  end selbulk;
end fetchperfpkg;
/
