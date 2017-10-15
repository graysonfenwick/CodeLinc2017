insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp,MonthlyGrossIncome)
    values ("realJB@gmail.com","normalDude360",1236547890,"Joe Blow","123 Sesame St.", "Avery",5,1,2500);

insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp,MonthlyGrossIncome)
    values ("littleLass@gmail.com","lassieA9416",9271834752,"Lassie Awesome","911 NASCAR Dr.", "Sullivan",3,1,3000);

insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp,MonthlyGrossIncome)
    values ("cakeEater@gmail.com","pastryLover3",2349991037,"Hungry Howie","Drury Ln.", "Boone",2,0,4000);

insert into provider
    (ProviderName, FedFunded)
    values ("provider1", 1);

insert into provider
    (ProviderName, FedFunded)
    values ("provider2", 1);

insert into provider
    (ProviderName, FedFunded)
    values ("provider3", 0);

insert into event
    (Location, Date, Provider)
    values ("123 Sesame St.", "2017-10-13", "Provider1");

insert into event
    (Location, Date, Provider)
    values ("Broadway Way", "2017-7-29", "Provider1");

insert into event
    (Location, Date, Provider)
    values ("Food Dr.", "2017-10-8", "Provider2");

insert into event
    (Location, Date, Provider)
    values ("Artichoke Ave.", "2017-10-6", "Provider3");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("realJB@gmail.com", "123 Sesame St.", "2017-10-13", "Provider1");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("littleLass@gmail.com", "Artichoke Ave.", "2017-10-6", "Provider3");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("cakeEater@gmail.com", "Broadway Way", "2017-7-29", "Provider1");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("cakeEater@gmail.com", "Food Dr.", "2017-10-8", "Provider2");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("cakeEater@gmail.com", "Artichoke Ave.", "2017-10-6", "Provider3");

insert into attendance
    (PersonEmail, EventLocation, EventDate, EventProvider)
    values ("cakeEater@gmail.com", "123 Sesame St.", "2017-10-13", "Provider1");


select PersonEmail, EventLocation, EventProvider, FedFunded ,EventDate 
    from person, provider, event, attendance 
    where Email = PersonEmail and EventLocation = Location and EventProvider = Provider and EventDate = Date and EventProvider = ProviderName;

select EventLocation, EventProvider, FedFunded ,EventDate 
    from person, provider, event, attendance 
    where PersonEmail = "cakeEater@gmail.com" and Email = PersonEmail and EventLocation = Location and EventProvider = Provider and EventDate = Date and EventProvider = ProviderName;

select EventLocation, EventProvider, FedFunded ,EventDate 
    from person, provider, event, attendance 
    where PersonEmail = "cakeEater@gmail.com" and EventDate >= (CurDate() - INTERVAL 30 DAY) and Email = PersonEmail and EventLocation = Location and EventProvider = Provider and EventDate = Date and EventProvider = ProviderName
    ORDER BY EventDate DESC;

select Location, Provider, FedFunded, Date
    from event, provider
    where Provider = ProviderName and Date >= (CurDate() - INTERVAL 30 DAY)
    ORDER BY Date DESC;



