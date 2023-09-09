create or replace function delet(u_id int)
returns boolean
language plpgsql
as
$$
begin
if (select exists(select * from users where id=u_id)) then
delete from users where id=u_id;
return true;
else
raise warning 'false';
return false;
end if;
end;
$$;
