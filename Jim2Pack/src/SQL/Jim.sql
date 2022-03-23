Create table Jim(
	ID varchar(20) NOT NULL,
	name varchar(20) NOT NULL UNIQUE,
	item varchar(10000),
	FOREIGN KEY (ID) REFERENCES USER(ID),
	PRIMARY KEY (ID,name)
);

Drop table Jim;