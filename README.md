create table  suppliers
(
supplierid int primary key ,
supname varchar(30),
Contactname varchar(30),
addres varchar(30),
postal int
)

create table products(
prodid int primary key,
prodname varchar(30),
supplierid int foreign key references suppliers(supplierid),
Catid int,
unit int,
Price money
)


insert into suppliers values (1,'Kola','Kolani','TPT',517108),(2,'Manohar','Manu','Nlr', 829189),(3,'Mohini','Moahn','TPT',517398), (4,'Ramya','Ragini','US',101987),
(5,'Kiravani','Kilani','ATP',517345);

insert into products values (1, 'Soap', 1,1,10,20), (2, 'Brush', 1,1,20,30),(3, 'Bucket', 2,1,10,100),(4, 'Cleaner', 2,2,100,200),(5, 'WM', 3,2,10,300);
