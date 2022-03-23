CREATE TABLE User(
	ID varchar(20) PRIMARY KEY,
	Password varchar(1000) NOT NULL,
	Name varchar(20)
);

delete from User where ID = 'gunhee1250';
Insert Into User Values('hanghjj',HEX(AES_ENCRYPT('hangh0','J2P')),'한건희');

select * from user;
DROP TABLE User;