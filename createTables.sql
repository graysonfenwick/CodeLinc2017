CREATE TABLE person (
	Name varchar(25) NOT NULL,
	Address varchar(25) NOT NULL,
	County varchar(25) NOT NULL,
	FacebookUsername varchar(25),
	Email varchar(25) NOT NULL,
	PhoneNum Integer(10) NOT NULL,
	MonthlyGrossIncome Integer NOT NULL,
	NumInHousehold Integer NOT NULL,
	ReceiveFoodStamp BIT NOT NULL
	DateFoodReceived Date,
	CONSTRAINT PRIMARY KEY(Email)
);