CREATE TABLE CompReg (
    ReqID int NOT NULL AUTO_INCREMENT,
    FromPerson varchar(255) NOT NULL,
    Query text,
    PRIMARY KEY (ReqID)
);

show columns from TransferDetails;

CREATE TABLE TransferDetails (
    TransferID int NOT NULL AUTO_INCREMENT,
    Benificiary varchar(25) NOT NULL,
    Amount double,
    PRIMARY KEY (TransferID)
);

CREATE TABLE LastTransfer (
    TransferID int primary key,
    Benificiary varchar(25) NOT NULL,
    Amount double
);

select * from cust;



update cust set accholname="P Shete" where mno="8975929343";

select accholname from cust where upi="8975929343";

drop table TransferDetails;

alter table TransferDetails AUTO_INCREMENT=7012;

ALTER TABLE CompReg AUTO_INCREMENT=1750;

select * from CompReg;

truncate table CompReg;

drop table CompReg;

select MNO,IMEI from cust where mno="0000000000";

select Amount from cust where mno="8796661660";

alter table cust modify pass int;
select upi from cust;
update cust set aadharno="919237044981" where mno="8796661660";

select vpa from cust where upi='8796661660';

alter table cust add VPA varchar(30);

select accno,ifsc,amount from cust where mno="8796661660";

select accholname from cust where accno="915010052387029" and ifsc="UTIB0000073";

update cust set vpa="akshay.shete@axisbank" where mno="8796661660";

CREATE TABLE CUST(MNO VARCHAR(10) PRIMARY KEY,PASS VARCHAR(4), IMEI VARCHAR(6), BANKNAME VARCHAR(30), ACCNO VARCHAR(20), BRANCH VARCHAR(20), AMOUNT DOUBLE,AADHARNO VARCHAR(12), UPI VARCHAR(10),IFSC VARCHAR(11), ACCHOLNAME VARCHAR(30));

insert into cust values("9970029884","7777","123456","HDFC Bank","915010052387029","Bund Garden",7000.0,"","9970029884","","S.Apshinge");

select amount from cust where Mno='8975929343';
update cust set amount="10000" where Mno="8796661660";

select * from cust;
insert into cust values("9970029884","5555","123456","1700103018503","VIdyanagar",8000.0,"","9970029884","","S.Apshinge","null");

update cust set pass="1234" where mno="8796661660";
select IFSC from cust where mno="8796661660";
update cust set ifsc="UTIB0000073" where mno="8796661660";
insert into cust values("9970029884","1234","123456","HDFC Bank","915010052387029","Bund Garden",7000.0,"","","","Apshinge");

insert into cust values("8975929343","1234","111111","Axis Bank","915010052387029","Bund Garden",7000.0,"","","","Akshay Shete","");
update cust set upi="8975929343" where mno="8975929343";

show columns from cust;

select cvv,dbno from cust where mno="8796661660";

select * from cust;

DROP TABLE CUST;


CREATE TABLE CUST(MNO VARCHAR(10) PRIMARY KEY, PASS INT(4), IMEI VARCHAR(6), BANKNAME VARCHAR(30), ACCNO VARCHAR(20) UNIQUE, BRANCH VARCHAR(20), AMOUNT DOUBLE, AADHARNO VARCHAR(12) UNIQUE, UPI VARCHAR(10) UNIQUE, IFSC VARCHAR(11), ACCHOLNAME VARCHAR(30), VPA VARCHAR(30) UNIQUE,dbno varchar(6),cvv int,flat int);

INSERT INTO CUST VALUES("8796661660","0000","","Axis Bank","915010052387029","Bund Garden",10000.0,"919237044981","8796661660","UTIB0000073","Akshay Shete","akshay.shete@axisbank","123456",881,0);
INSERT INTO CUST VALUES("8975929343","0000","","Axis Bank","915010052387030","Bund Garden",10000.0,"","","UTIB0000073","Akshay Shete","","123456",881,0);
INSERT INTO CUST VALUES("9545729912","0000","","HDFC Bank","75452368","Kalyani Nagar",20000.0,"919237044982","9545729912","HDFC0123758","Priyanka Apshinge","priya.apshinge@hdfc","123456",881,0);
INSERT INTO CUST VALUES("8975929343","0000","","Axis Bank","","Bund Garden",10000.0,"","","UTIB0000073","Akshay Shete","","123456",881);
insert into cust values("9970029884","1111","","HDFC Bank","1452314252325","Pune",100.0,"","","","Shete","","123456",881);

delete from cust where mno="8796661660";
SELECT * FROM CUST;

select * from cust where mno="9545729912";

alter table cust add cvv int;
alter table cust add flag int;
update cust set dbno="123456" and cvv="881" where mno="8796661660";


alter table cust add constraint unique(vpa);

delete from cust where mno="8796661660";

alter table cust add constraint unique(UPI);

delete from cust where mno="8975929343";