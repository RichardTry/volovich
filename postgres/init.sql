create table commands (
    id serial primary key,
    command text,
    result text,
    timestamp timestamp default now()
);

insert into commands (command, result) values ('select * from users;', 'Error');
