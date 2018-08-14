create database Premiere_Company;
use Premiere_Company;
create table Part
	(Part_Num char(4) primary key,
    Description char(15),
    On_Hand char(2) NOT NULL,
    Class char(2),
    Warehouse char(1),
    Price decimal(7,2) );

DESC Part;

INSERT INTO Part
VALUES
('AT94', 'Iron', '50', 'HW', '3', '24.95');

INSERT INTO Part
VALUES
('BV06', 'Home Gym', '45', 'SG', '2' , '794.95');

INSERT INTO Part
VALUES
('CD52', 'Microwave Oven', '32', 'AP', '1', '165.00');

INSERT INTO Part
VALUES
('DL71', 'Cordless Drill', '21', 'HW', '3', '129.95');

INSERT INTO Part
VALUES
('DR93', 'Gas Range', '8', 'AP', '2', '495.00');

INSERT INTO Part
VALUES
('DW11', 'Washer', '12', 'AP', '3', '399.99');

INSERT INTO Part
VALUES
('FD21', 'Stand Mixer', '22', 'HW', '3', '159.95');

INSERT INTO Part
VALUES
('KL62', 'Dryer', '12', 'AP', '1', '349.95');

INSERT INTO Part
VALUES
('KT03', 'Dishwasher', '8', 'AP', '3', '595.00');

INSERT INTO Part
VALUES
('KV29', 'Treadmill', '9', 'SG', '2', '1390.00');

select * from Part;

select Description
	from Part
    where Price <= 400;
    
Select *
	from Part
    where Class = 'HW' and Warehouse = '3';

select Description
	from Part
    where Warehouse <> '3';

select
	Part_Num,
    Description,
    (Price * On_Hand) as Inventory
    from Part
    where (Price * On_Hand) > '7,500';

select Description
	from Part
    where Description regexp '^.o';

select *, concat(Part_Num, ' - ', Description) as New_Thing
	from Part;

select Part_Num, (Price * On_Hand) as Inventory, round(Price * On_Hand) as Rounded_Inventory
	from Part
	order by Part_Num;

select count(distinct(Class)) as Class_Count
	from Part;

select sum(On_Hand * Price)
	from Part;
desc part;
select Part_Num, Description, Price
	from Part
    where Price = (select max(Price)
					from Part);
                    

select Warehouse, count(Warehouse) as On_Hand_Count
	from Part
    group by Warehouse desc;