/*
Team Daru test database
*/
CREATE DATABASE test default CHARACTER SET UTF8;
use test;


/* TABLE 'clients' */
DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients (
  clientId varchar(20) NOT NULL,
  clientLastName varchar(20) NOT NULL,
  clientFirstName varchar(20) NOT NULL,
  phone varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  postalCode varchar(15) NOT NULL,
  PRIMARY KEY (clientId)
  );
/* TABLE 'clients' data */
INSERT INTO clients(clientId,clientLastName, clientFirstName,phone,address, city, state, country,postalCode) values 
('C-001','Doe','Jane', '+1 650 219 4782','dj@gmail.ca','100 Main Street','Ottawa', 'Ontario','CA', '94080'),
('C-002','Sloan','Ed', '+1 650 219 4782','se@gmail.ca','123 Main Street','Calgary', 'Alberta','CA', '94080'),
('C-003','Pope','Stanley', '+1 650 219 4782','ps@gmail.ca','340 Main Street','Toronto', 'Ontario','CA', '94080'),
('C-004','Stafford','Eric', '+1 650 219 4782','segmail.ca','200 Main Street','Vancouver', 'British Columbia','CA', '94080'),
('C-005','Kim','Tracy', '+1 650 219 4782','kt@gmail.ca','460 Main Street','Vancouver', 'British Columbia','CA', '94080'),
('C-006','Vaughn','Glenda', '+1 650 219 4782','vg@gmail.ca','780 Main Street','Victoria', 'British Columbia','CA', '94080'),
('C-007','Stafford','Dawn', '+1 650 219 4782','sd@gmail.ca','175 Main Street','Toronto', 'Ontario','CA', '94080'),
('C-008','Cox','Krystal', '+1 650 219 4782','ck@gmail.ca','125 Main Street','Calgary', 'Alberta','CA', '94080'),
('C-009','Addie','Mary', '+1 650 219 4782','am@gmail.ca','186 Main Street','Montreal', 'Quebec','CA', '94080'),
('C-010','Reed','Sara', '+1 650 219 4782','rs@gmail.ca','96 Main Street','Montreal', 'Quebec','CA', '94080'),
('C-011','Cole','Allen', '+1 650 219 4782','ca@gmail.ca','99 Main Street','Montreal', 'Quebec','CA', '94080');




/* TABLE 'products' */
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
  productId varchar(15) NOT NULL,
  productName varchar(70) NOT NULL,
  productDescription text NOT NULL,
  unitPrice decimal(10,2) NOT NULL,
  PRIMARY KEY (productId)
);
/* TABLE 'products' data */
INSERT INTO products(productId,productName,productDescription,unitPrice) VALUES
('P-1001','product01','This is product01','1000.00'),
('P-1002','product02','This is product02','530.00'),
('P-1003','product03','This is product03','1200.00'),
('P-1004','product04','This is product04','1520.00'),
('P-1005','product05','This is product05','1040.00'),
('P-1006','product06','This is product06','1200.00'),
('P-1007','product07','This is product07','3000.00'),
('P-1008','product08','This is product08','2000.00'),
('P-1009','product09','This is product09','1230.00'),
('P-1010','product10','This is product10','900.00'),
('P-1011','product11','This is product11','1200.00'),
('P-1012','product12','This is product12','800.00'),
('P-1013','product13','This is product13','250.00'),
('P-1014','product14','This is product14','3000.00'),
('P-1015','product15','This is product15','5000.00'),
('P-1016','product16','This is product16','1000.00');




/* TABLE 'businesses' */
DROP TABLE IF EXISTS businesses;
CREATE TABLE businesses (
  businessId varchar(20) NOT NULL,
  businessName varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  phone varchar(50) NOT NULL,
  vATNumber varchar(50) NOT NULL,
  PRIMARY KEY (businessId)
);
/* TABLE 'businesses' data*/
INSERT INTO businesses(businessId,businessName,city,phone,VATnumber) VALUES
('B-001','business01', 'Toronto','+1 650 219 1234','GB 855349007'),
('B-002','business02', 'Vancouver','+1 650 234 4733','GB 851239007'),
('B-003','business03', 'Montreal','+1 650 532 2782','GB 855349347'),
('B-004','business04', 'Vancouver','+1 650 755 9782','GB 775349007'),
('B-005','business05', 'Montreal','+1 650 219 1782','GB 673349007'),
('B-006','business06', 'Toronto','+1 650 239 4702','GB 355349007');




/* TABLE 'TaxRates' */
DROP TABLE IF EXISTS TaxRates;
CREATE TABLE TaxRates (
  taxRateId varchar(20) NOT NULL,
  state varchar(50) NOT NULL,
  taxRate decimal(10,5) NOT NULL,
  PRIMARY KEY (taxRateId)
 ); 
 /* TABLE 'TaxRates' data */
INSERT INTO TaxRates(taxRateId,state,taxRate) VALUES
('T-01','Alberta','0.05'),
('T-02','British Columbia','0.12'),
('T-03','Manitoba','0.12'),
('T-04','New Brunswick','0.15'),
('T-05','Newfoundland and Labrador','0.15'),
('T-06','Northwest Territories','0.05'),
('T-07','Nova Scotia','0.15'),
('T-08','Nunavut','0.05'),
('T-09','Ontario','0.13'),
('T-10','Prince Edward Island','0.15'),
('T-11','Quebec','0.14975'),
('T-12','Saskatchewan','0.11'),
('T-13','Yukon','0.05');




/* TABLE 'CardTypes' */
DROP TABLE IF EXISTS CardTypes;
CREATE TABLE CardTypes (
  CardTypeId varchar(20) NOT NULL,
  CardType varchar(50) NOT NULL,
  PRIMARY KEY (CardTypeId)
 ); 
 /* TABLE 'CardType' data */
INSERT INTO CardTypes(CardTypeId,CardType) VALUES
('CT-01', 'visa'),
('CT-02', 'master'),
('CT-03', 'american express'),
('CT-04', 'interac');




/* TABLE 'PaymentMethod' */
DROP TABLE IF EXISTS PaymentMethod;
CREATE TABLE PaymentMethod (
  PaymentMethodId varchar(20) NOT NULL,
  clientId varchar(20) NOT NULL,
  cardTypeId varchar(20) NOT NULL,
  cardNumber varchar(20) NOT NULL,
  securityCode varchar(10) NOT NULL,
  cardHolderName varchar(50) NOT NULL,
  expireDate date NOT NULL,
  PRIMARY KEY (PaymentMethodId),
  KEY clientId (clientId),
  KEY CardTypeId (CardTypeId),
  CONSTRAINT paymentmethod_fk_1 FOREIGN KEY (clientId) REFERENCES clients (clientId),
  CONSTRAINT paymentmethod_fk_2 FOREIGN KEY (cardTypeId) REFERENCES CardTypes (cardTypeId)
 ); 
 /* TABLE 'PaymentMethod' data */
INSERT INTO PaymentMethod(PaymentMethodId,clientId,cardTypeId,cardNumber,securityCode,cardHolderName,expireDate) VALUES
('PM-001', 'C-002', 'CT-02', '1234432112344321', '123', 'John Smith', '2025-03-21'),
('PM-002', 'C-004', 'CT-03', '2345543223455432', '234', 'Tim Lee', '2028-05-23'),
('PM-003', 'C-006', 'CT-01', '7654323452345234', '567', 'Jay Brandon', '2025-02-17'),
('PM-004', 'C-008', 'CT-01', '9283417293479182', '123', 'Sarah Timothy', '2025-12-21'),
('PM-005', 'C-010', 'CT-01', '1127041234672347', '234', 'Sarah Reed', '2026-07-23'),
('PM-006', 'C-001', 'CT-02', '3241972937492239', '567', 'Jane Doe', '2026-12-26'),
('PM-007', 'C-003', 'CT-02', '3672384128343242', '134', 'Stanley Pope', '2027-11-05'),
('PM-008', 'C-005', 'CT-03', '7582345167145333', '163', 'Tracy Kim', '2021-03-01'),
('PM-009', 'C-007', 'CT-04', '3325235222535663', '754', 'Dawn Stafford', '2022-02-21'),
('PM-010', 'C-009', 'CT-01', '1234123425364366', '355', 'Mary Addie', '2028-07-21'),
('PM-011', 'C-011', 'CT-02', '1000237412763478', '664', 'Allen Cole', '2027-09-21');




/* TABLE 'Receipts' */
DROP TABLE IF EXISTS Receipts;
CREATE TABLE Receipts (
  receiptId varchar(20) NOT NULL,
  clientId varchar(20) NOT NULL,
  businessId varchar(20) NOT NULL,
  paymentMethodId varchar(20) NOT NULL,
  taxRateId varchar(10) NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (receiptId),
  KEY clientId (clientId),
  KEY businessId (businessId),
  KEY paymentMethodId (paymentMethodId),
  KEY taxRateId (taxRateId),
  CONSTRAINT receipt_fk_1 FOREIGN KEY (clientId) REFERENCES clients (clientId),
  CONSTRAINT receipt_fk_2 FOREIGN KEY (businessId) REFERENCES Businesses (businessId),
  CONSTRAINT receipt_fk_3 FOREIGN KEY (paymentMethodId) REFERENCES PaymentMethod (paymentMethodId),
  CONSTRAINT receipt_fk_4 FOREIGN KEY (taxRateId) REFERENCES TaxRates (TaxRateId)
 ); 
 /* TABLE 'PaymentMethod' data */
INSERT INTO Receipts(receiptId,clientId,businessId,paymentMethodId,taxRateId,date) VALUES
('R-10001','C-002','B-003','PM-001','T-01','2020-06-30'),
('R-10002','C-003','B-006','PM-003','T-09','2020-06-30'),
('R-10003','C-004','B-004','PM-002','T-02','2020-06-30'),
('R-10004','C-005','B-002','PM-008','T-02','2020-07-01'),
('R-10005','C-006','B-001','PM-003','T-02','2020-07-01'),
('R-10006','C-007','B-005','PM-009','T-02','2020-07-01');




/* TABLE 'OrderItems' */
DROP TABLE IF EXISTS OrderItems;
CREATE TABLE OrderItems (
  receiptId varchar(20) NOT NULL,
  productId varchar(20) NOT NULL,
  salePrice decimal(10,2) NOT NULL,
  quantity int NOT NULL,
  KEY receiptId (receiptId),
  KEY productId (productId),
  CONSTRAINT orderitem_fk_1 FOREIGN KEY (receiptId) REFERENCES receipts (receiptId),
  CONSTRAINT orderitem_fk_2 FOREIGN KEY (productId) REFERENCES products (productId),
  CONSTRAINT orderitem_pk PRIMARY KEY (receiptId, productId)
 ); 
 /* TABLE 'OrderItems' data */
INSERT INTO OrderItems(receiptId,productId,salePrice,quantity) VALUES
('R-10001','P-1002','730.00', '2'),
('R-10001','P-1005','1240.00', '1'),
('R-10002','P-1006','1400.00', '2'),
('R-10002','P-1011','1400.00', '3'),
('R-10002','P-1016','1200.00', '1'),
('R-10003','P-1001','1200.00', '1'),
('R-10004','P-1004','1720.00', '5'),
('R-10005','P-1009','1430.00', '2'),
('R-10006','P-1013','450.00', '1'),
('R-10006','P-1014','3200.00', '1');
