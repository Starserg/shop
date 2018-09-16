create table history (id bigint not null auto_increment, address varchar(255), date date, number integer, price integer, product_id bigint, user_id bigint, primary key (id)) engine=InnoDB;
create table product (id bigint not null auto_increment, img_url varchar(255), description varchar(255), name varchar(255), price integer, primary key (id)) engine=InnoDB;
create table user (id bigint not null auto_increment, activated bit not null, activation_code varchar(255), email varchar(255), name varchar(255), nickname varchar(255), password varchar(255), primary key (id)) engine=InnoDB;
create table user_role (user_id bigint not null, roles varchar(255)) engine=InnoDB;
alter table history add constraint FKk7kr6qqrnq1owjvmy7pk1tak6 foreign key (product_id) references product (id);
alter table history add constraint FKn4gjyu69m6xa5f3bot571imbe foreign key (user_id) references user (id);
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id);