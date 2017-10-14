insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp,DateFoodReceived)
    values ("realJB@gmail.com","normalDude360",1236547890,"Joe Blow","123 Sesame St.", "Avery",5,1,"2017-10-14");

insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp,DateFoodReceived)
    values ("littleLass@gmail.com","lassieA9416",9271834752,"Lassie Awesome","911 NASCAR Dr.", "Sullivan",3,1,"2017-8-29");

insert into person 
    (Email,FacebookUsername,PhoneNum,Name,Address,County,NumInHousehold,ReceiveFoodStamp)
    values ("cakeEater@gmail.com","pastryLover3",2349991037,"Hungry Howie","Drury Ln.", "Boone",2,0);



select * from person;

select Name, ReceiveFoodStamp, DateFoodReceived from person;

select Name, DateFoodReceived from person where ReceiveFoodStamp = 1;

select Name, Email, FacebookUsername, PhoneNum from person where DateFoodReceived < (CURDATE() - INTERVAL 30 DAY);



