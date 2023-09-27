CREATE TABLE public.users (
      id_user int4 NOT NULL,
      first_name varchar NULL,
      surename varchar NULL,
      phone varchar NULL,
      email_address varchar NULL,
      CONSTRAINT users_pk PRIMARY KEY (id_user)
);

CREATE TABLE public.tasks (
      id_task int4 NOT NULL,
      title varchar NULL,
      description varchar NULL,
      status varchar NULL,
      due_date date NULL,
      updated_date date NULL,
      id_user int4 NULL,
      CONSTRAINT tasks_pk PRIMARY KEY (id_task),
      CONSTRAINT tasks_fk FOREIGN KEY (id_user) REFERENCES public.users(id_user)
);

insert into public.users(id_user, first_name, surename, phone, email_address)
values (1, 'Pete', 'Glass', '123456', 'pete@gmail.com');

insert into public.users(id_user, first_name, surename, phone, email_address)
values (2, 'Mike', 'Hannigan', '+1 234 56', 'mike@gmail.com');

insert into public.users(id_user, first_name, surename, phone, email_address)
values (3, 'Jenifer', 'Anington', '001 23 5', 'jen@gmail.com');

insert into public.tasks(id_task, title, description, status, due_date, id_user)
values (1, 'DB scripts', 'Prepare scripts', 'INITIAL', '2023-09-29', 1);

insert into public.tasks(id_task, title, description, status, due_date, id_user)
values (2, 'Entities', 'Prepare entities', 'INITIAL', '2023-09-30', 1);

insert into public.tasks(id_task, title, description, status, due_date, id_user)
values (3, 'Repositories', 'Prepare repositories', 'INITIAL', '2023-09-30', 1);
