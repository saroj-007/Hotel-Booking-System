create database hotel;

use hotel;

create table Customer(
					 CustomerID int primary key auto_increment,
                     Fullname varchar(55) not null,
                     Address varchar(55) not null,
                     CustomerType varchar(55) not null,
                     PhoneNumber varchar(55) not null,
                     Gender varchar(55) not null,
                     Email varchar(55) not null,
                     Password varchar(55) not null,
                     CardNumber varchar(55)
                     );
                     

create table RoomInfo(
                 RoomID int primary key auto_increment,
                 RoomType varchar(55) not null,
                 RoomNo varchar(55) not null,
                 RoomPrice int not null,
                 RoomStatus varchar(55) not null
                 );
                
insert into RoomInfo(RoomType, RoomNo, RoomPrice, RoomStatus) values
("Single",  203, 2000, "Vacant"),
 ("Double",  208, 3000, "Occupied"),               
 ("Twin",  206, 4000, "Vacant"),                    
 ("Double",  302, 3000, "Vacant"),                    
 ("Twin",  306, 4000, "Occupied"),                    
 ("Single",  310, 2000, "Vacant"),                    
 ("Twin",  404, 4000, "Vacant"),          
 ("Double",  407, 3000, "Vacant"), 
 ("Single",  405, 2000, "Occupied");
 
 
 create table Booking(
                     BookingID int primary key auto_increment,
                     CustomerID int not null,
                     RoomID int,
                     ArrivalDate varchar(55) not null,
                     DepartureDate varchar(55) not null,
                     RoomType varchar(55) not null,
                     Status varchar(55) not null default "Pending",
                     foreign key(CustomerID) references Customer(CustomerID),
                     foreign key(RoomID) references RoomInfo(RoomID)
                     );
  
  create table Service(
                       ServiceID int primary key auto_increment,
                       BookingID int not null,
                       ServiceType varchar(55) not null,
                       Quantity int not null,
                       Rate decimal(10,2) not null,
                       Total decimal(10,2),
                       foreign key (BookingID) references Booking(BookingID)
                       );
  
create table Receipt(
                     ReceiptID int primary key auto_increment,
                     BookingID int not null,
                     Amount decimal(10,2) not null,
                     ServiceCharge decimal(10,2) not null,
                     VATCharge decimal(10,2) not null,
                     PaymentStatus varchar(55) default "Unclear",
                     GrandTotal decimal(10,2) not null,
                     foreign key (BookingID) references Booking(BookingID)
                     );
 
  
  select * from Customer;
  select * from RoomInfo;
  select * from Booking;
  select * from Service;
 
  select * from Receipt;
  

  





                    
  
  

  
 
  
  
  
  