insert into user (id, nickname, email, name, password, activated)
    values (1, 'admin', 'admin@admin.com', 'admin', '$2a$08$.xpDSWdFsK8y2cAT51.MWu27HKCJaC5K2imIw8e4c2/PeaFV1zktq', true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');