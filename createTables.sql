CREATE TABLE person (
	Name varchar(25) NOT NULL,
	Address varchar(25) NOT NULL,
	County varchar(25) NOT NULL,
	FacebookUsername varchar(25),
	Email varchar(25) NOT NULL,
	PhoneNum Integer(10) NOT NULL,
	MonthlyGrossIncome Integer NOT NULL,
	NumInHousehold Integer NOT NULL,
	ReceiveFoodStamp BIT NOT NULL,
	CONSTRAINT PRIMARY KEY (Email)
);

CREATE TABLE provider (
    ProviderName varchar(25) NOT NULL,
    FedFunded BIT NOT NULL,
    CONSTRAINT PRIMARY KEY (ProviderName)
);

CREATE TABLE event (
    Location varchar(25) NOT NULL,
    Provider varchar(25) NOT NULL,
    Date Date NOT NULL,
    CONSTRAINT PRIMARY KEY (Location, Date, Provider),
    CONSTRAINT FOREIGN KEY (Provider) REFERENCES provider(ProviderName)
);

CREATE TABLE attendance (
    PersonEmail varchar(25) NOT NULL,
    EventLocation varchar(25) NOT NULL,
    EventProvider varchar(25) NOT NULL,
    EventDate Date NOT NULL,
    CONSTRAINT PRIMARY KEY (PersonEmail, EventLocation, EventProvider, EventDate),
    CONSTRAINT FOREIGN KEY (PersonEmail) REFERENCES person(Email),
    CONSTRAINT FOREIGN KEY (EventLocation, EventDate, EventProvider) REFERENCES event(Location, Date, Provider)
   
);


