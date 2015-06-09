CREATE OR REPLACE TRIGGER DELL_DEV.OW_ORDER_TRIGGER
    after INSERT ON DELL_DEV.OW_ORDERS
    for each row
begin
    return;
end;
/
