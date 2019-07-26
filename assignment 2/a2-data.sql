-- Data prepared by Derrick Wai, dwai@ualberta.ca
-- Published on Feb 4, 2017
-- Meme DLC Pack
-- 2017/02/04 Reduced email and hashtag length to be within character limits
-- 2017/02/07 Re-ordered insert tweet statements to address foreign key constraint errors because some tweets referenced tweets which were not yet inserted

insert into users values (1,'Ryan Nugent-Hopkins','rnh@nhl.com','Edmonton',-7);
insert into users values (2,'Jordan Eberle','jeb@nhl.com','Edmonton',-7);
insert into users values (3,'Davood Rafiei','dr@UAwiter.com','Edmonton',-7);
insert into users values (4,'john doe','jdoe@gmail.com','Toronto',-5);
insert into users values (6,'John Doe','jdoe2@gmail.com','Edmonton',-7);
insert into users values (14,'Jaden Smith','jaden@twtr.com','Malibu',-8);
insert into users values (15,'Kevin Chan','kc168@gmail.com','Edmonton',-7);
insert into users values (22,'Don Iveson','di@doniveson.ca','Edmonton',-7);
insert into users values (25,'Jim Wu','djjim@gmail.com','Calgary',-7);
insert into users values (29,'George Bush','gbush@twtr.com','Washington',-5);
insert into users values (41,'Derrick Wai','dwai@uab.ca','Edmonton',-7);
insert into users values (67,'Taylor Swift','tswift@twtr.com','Nashville',-6);
insert into users values (77,'Joffrey Lupul','jlu@nhl.com','Toronto',-5);
insert into users values (83,'Nicolas Cage','ncage@twtr.com','Sacramento',-7);
insert into users values (99,'Donald Trump','potus@whths.gov','Washington',-5);

insert into follows values (2,1,'01-SEP-2015');
insert into follows values (3,1,'26-AUG-2016');
insert into follows values (6,1,'28-AUG-2015');
insert into follows values (77,1,'05-JUN-2014');
insert into follows values (1,2,'17-SEP-2016');
insert into follows values (3,2,'10-JAN-2015');
insert into follows values (6,2,'02-SEP-2016');
insert into follows values (77,2,'16-OCT-2016');
insert into follows values (15,3,'17-MAR-2015');
insert into follows values (41,3,'15-JUL-2016');
insert into follows values (3,4,'10-OCT-2016');
insert into follows values (15,4,'28-MAR-2016');
insert into follows values (22,4,'20-APR-2015');
insert into follows values (25,4,'01-JUN-2016');
insert into follows values (29,4,'17-SEP-2016');
insert into follows values (41,4,'05-AUG-2015');
insert into follows values (3,14,'06-FEB-2016');
-- insert into follows values (4,14,'15-MAY-2016');
insert into follows values (6,14,'17-DEC-2016');
insert into follows values (15,14,'17-AUG-2016');
insert into follows values (25,14,'26-MAY-2015');
insert into follows values (29,14,'10-FEB-2014');
insert into follows values (15,25,'15-DEC-2016');
insert into follows values (41,25,'28-DEC-2016');
insert into follows values (1,67,'03-JUN-2016');
insert into follows values (2,67,'24-MAY-2016');
insert into follows values (4,67,'16-JUN-2016');
insert into follows values (6,67,'11-MAY-2016');
insert into follows values (14,67,'07-MAR-2016');
insert into follows values (15,67,'13-FEB-2016');
insert into follows values (77,67,'21-MAR-2016');
insert into follows values (83,67,'31-JAN-2016');
insert into follows values (1,77,'17-DEC-2016');
insert into follows values (2,77,'30-DEC-2016');
insert into follows values (4,77,'26-OCT-2016');
insert into follows values (1,83,'30-SEP-2016');
insert into follows values (2,83,'07-JUL-2016');
insert into follows values (3,83,'11-DEC-2016');
insert into follows values (4,83,'15-AUG-2016');
insert into follows values (6,83,'23-SEP-2016');
insert into follows values (14,83,'19-APR-2016');
insert into follows values (15,83,'08-SEP-2016');
insert into follows values (22,83,'26-FEB-2016');
insert into follows values (67,83,'10-OCT-2016');
insert into follows values (99,83,'28-AUG-2016');
insert into follows values (14,99,'07-MAR-2016');
insert into follows values (29,99,'25-JAN-2016');
insert into follows values (67,99,'18-JAN-2016');
insert into follows values (83,99,'22-APR-2016');

insert into tweets values (25,'25-JUL-2016','hey girl, feel my sweater, know what it''s made of? boyfriend material',null,null);
insert into tweets values (25,'25-NOV-2016','bout to drop the hottest mixtape of 2016!!!! its gonna be lit #jimsonfire',null,null);
insert into tweets values (67,'29-JAN-2016','The music video for Bad Blood is out now! #tswift',null,null);
insert into tweets values (67,'18-NOV-2014','We''re breaking up? Time to make another million bucks! #tswift',null,null);
insert into tweets values (77,'14-FEB-2016','Roses are red chocolate is brown expected nothing and still feel down #rosesRred',null,null);
insert into tweets values (29,'15-FEB-2016','Roses are red I love my wife she was the biggest mistake of my life #rosesRred',77,'14-FEB-2016');
insert into tweets values (99,'09-JUL-2016','WE MUST MAKE #AMERICA GREAT AGAIN!',null,null);
insert into tweets values (29,'13-JUL-2016','Roses are red rice is plain please vote me into office again #america #rosesRred',99,'09-JUL-2016');
insert into tweets values (99,'15-DEC-2016','Can''t stump the #trump! #america',null,null);
insert into tweets values (29,'16-DEC-2016','#America, this is not what we meant when we said orange is the new black..',99,'15-DEC-2016');
insert into tweets values (99,'17-DEC-2016','Dont talk to me or my son or my grandson ever again #trump',29,'16-DEC-2016');

insert into tweets values (1,'01-JUL-2014','Roses are red, politics are gory, I fear my cat is a Tory #rosesRred', null, null);
insert into tweets values (1,'01-JAN-2017','Looking for a good book to read. Just finished lone #survivor', null, null);
insert into tweets values (2,'12-JAN-2017','#Edmonton #Oilers had a good game last night.',null,null);
insert into tweets values (3,'03-DEC-2016','Thanks to all the TA''s that made teaching CMPUT 291 possible #UoA #edmonton',null,null);
insert into tweets values (4,'19-MAR-2016','Shoutout to all the average joes out there!',null,null);
insert into tweets values (4,'30-JAN-2016','Super confused about the music video for Taylor''s new song #tswift',67,'29-JAN-2016 ');
insert into tweets values (4,'22-JAN-2016','Good effort against the #Edmonton #Oilers last night #Toronto Maple #Leafs',null,null);
insert into tweets values (6,'15-FEB-2016','First tweet! Hello world! Hello #Edmonton!',null,null);
insert into tweets values (6,'29-NOV-2016','Anyone else in #edmonton excited for Jim Wu''s new mixtape? #jimsonfire',25,'25-NOV-2016');
insert into tweets values (14,'11-MAY-2016','Most Trees Are Blue #juvenile #philosophy',null,null);
insert into tweets values (14,'28-MAY-2016','How Can Mirrors Be Real If Our Eyes Arent Real #juvenile #philosophy',null,null);
insert into tweets values (14,'04-SEP-2016','Either I Lie To You Or We Cry Together #juvenile #philosophy',null,null);
insert into tweets values (14,'20-NOV-2016','When I Die. Then You Will Realize #juvenile #philosophy',null,null);
insert into tweets values (15,'28-MAY-2016','Glad that today''s youth have Jaden to spread #juvenile #philosophy',14,'28-MAY-2016');
insert into tweets values (22,'27-MAR-2015','Hope everyone in #edmonton is enjoying the Tallus Dome as much as I am!',null,null);
insert into tweets values (22,'03-MAY-2016','My apologies #edmonton, the Metro line has been delayed to 2018',null,null);
insert into tweets values (41,'24-JUL-2016','Roses are red deer eat flowers creating this database took 10 hours #rosesRred',null,null);
insert into tweets values (83,'14-FEB-2014','Tell me I''m your national treasure',null,null);
insert into tweets values (83,'16-DEC-2016','Now that government shut down I''m gonna steal the declaration of independence',99,'15-DEC-2016');


insert into hashtags values ('survivor');
insert into hashtags values ('oilers');
insert into hashtags values ('edmonton');
insert into hashtags values ('trump');
insert into hashtags values ('juvenile');
insert into hashtags values ('philosophy');
insert into hashtags values ('jimsonfire');
insert into hashtags values ('rosesRred');
insert into hashtags values ('leafs');
insert into hashtags values ('toronto');
insert into hashtags values ('UoA');
insert into hashtags values ('america');
insert into hashtags values ('tswift');

insert into mentions values (1,'01-JUL-2014', 'rosesRred');
insert into mentions values (1,'01-JAN-2017', 'survivor');
insert into mentions values (2,'12-JAN-2017', 'edmonton');
insert into mentions values (2,'12-JAN-2017', 'oilers');
insert into mentions values (3,'03-DEC-2016', 'edmonton');
insert into mentions values (3,'03-DEC-2016', 'UoA');
insert into mentions values (4,'30-JAN-2016', 'tswift');
insert into mentions values (4,'22-JAN-2016', 'edmonton');
insert into mentions values (4,'22-JAN-2016', 'oilers');
insert into mentions values (4,'22-JAN-2016', 'toronto');
insert into mentions values (4,'22-JAN-2016', 'leafs');
insert into mentions values (6,'15-FEB-2016', 'edmonton');
insert into mentions values (6,'29-NOV-2016', 'edmonton');
insert into mentions values (6,'29-NOV-2016', 'jimsonfire');
insert into mentions values (14,'11-MAY-2016', 'juvenile');
insert into mentions values (14,'11-MAY-2016', 'philosophy');
insert into mentions values (14,'28-MAY-2016', 'juvenile');
insert into mentions values (14,'28-MAY-2016', 'philosophy');
insert into mentions values (14,'04-SEP-2016', 'juvenile');
insert into mentions values (14,'04-SEP-2016', 'philosophy');
insert into mentions values (14,'20-NOV-2016', 'juvenile');
insert into mentions values (14,'20-NOV-2016', 'philosophy');
insert into mentions values (15,'28-MAY-2016', 'juvenile');
insert into mentions values (15,'28-MAY-2016', 'philosophy');
insert into mentions values (22,'27-MAR-2015', 'edmonton');
insert into mentions values (22,'03-MAY-2016', 'edmonton');
insert into mentions values (25,'25-NOV-2016', 'jimsonfire');
insert into mentions values (29,'15-FEB-2016', 'rosesRred');
insert into mentions values (29,'13-JUL-2016', 'america');
insert into mentions values (29,'13-JUL-2016', 'rosesRred');
insert into mentions values (29,'16-DEC-2016', 'america');
insert into mentions values (41,'24-JUL-2016', 'rosesRred');
insert into mentions values (67,'29-JAN-2016', 'tswift');
insert into mentions values (67,'18-NOV-2014', 'tswift');
insert into mentions values (77,'14-FEB-2016', 'rosesRred');
insert into mentions values (99,'09-JUL-2016', 'america');
insert into mentions values (99,'15-DEC-2016', 'trump');
insert into mentions values (99,'15-DEC-2016', 'america');
insert into mentions values (99,'17-DEC-2016', 'trump');


insert into retweets values (1,2,'12-JAN-2017','12-JAN-2017');
insert into retweets values (6,2,'12-JAN-2017','14-JAN-2017');
insert into retweets values (41,3,'03-DEC-2016','04-DEC-2016');
insert into retweets values (6,4,'19-MAR-2016','21-MAR-2016');
insert into retweets values (1,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (2,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (3,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (6,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (15,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (41,4,'22-JAN-2016','22-JAN-2016');
insert into retweets values (15,14,'11-MAY-2016','11-MAY-2016');
insert into retweets values (15,14,'28-MAY-2016','28-MAY-2016');
insert into retweets values (15,14,'04-SEP-2016','04-SEP-2016');
insert into retweets values (15,14,'20-NOV-2016','20-NOV-2016');
insert into retweets values (25,14,'11-MAY-2016','11-MAY-2016');
insert into retweets values (25,14,'28-MAY-2016','28-MAY-2016');
insert into retweets values (29,14,'11-MAY-2016','11-MAY-2016');
insert into retweets values (29,14,'28-MAY-2016','28-MAY-2016');
insert into retweets values (29,14,'04-SEP-2016','04-SEP-2016');
insert into retweets values (29,14,'20-NOV-2016','20-NOV-2016');
insert into retweets values (67,14,'28-MAY-2016','28-MAY-2016');
insert into retweets values (99,14,'28-MAY-2016','28-MAY-2016');
insert into retweets values (15,25,'25-NOV-2016','25-NOV-2016');
insert into retweets values (1,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (2,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (3,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (4,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (6,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (14,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (15,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (22,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (25,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (29,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (41,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (67,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (77,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (83,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (99,41,'24-JUL-2016','24-JUL-2016');
insert into retweets values (1,67,'29-JAN-2016','29-JAN-2016');
insert into retweets values (2,67,'29-JAN-2016','29-JAN-2016');
insert into retweets values (4,67,'29-JAN-2016','29-JAN-2016');
insert into retweets values (15,67,'29-JAN-2016','29-JAN-2016');
insert into retweets values (1,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (2,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (3,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (4,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (6,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (14,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (15,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (22,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (25,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (29,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (67,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (77,83,'14-FEB-2014','14-FEB-2014');
insert into retweets values (3,99,'17-DEC-2016','17-DEC-2014');
insert into retweets values (14,99,'17-DEC-2016','17-DEC-2014');
insert into retweets values (67,99,'17-DEC-2016','17-DEC-2014');

insert into lists values ('american',4);
insert into lists values ('canadian',4);
insert into lists values ('celebrity',4);
insert into lists values ('music',15);
insert into lists values ('nhl players',3);
insert into lists values ('politics',22);

insert into includes values ('american',14);
insert into includes values ('american',29);
insert into includes values ('american',67);
insert into includes values ('american',83);
insert into includes values ('american',99);
insert into includes values ('canadian',1);
insert into includes values ('canadian',2);
insert into includes values ('canadian',3);
insert into includes values ('canadian',4);
insert into includes values ('canadian',6);
insert into includes values ('canadian',15);
insert into includes values ('canadian',22);
insert into includes values ('canadian',25);
insert into includes values ('canadian',41);
insert into includes values ('canadian',77);
insert into includes values ('celebrity',1);
insert into includes values ('celebrity',2);
insert into includes values ('celebrity',14);
insert into includes values ('celebrity',29);
insert into includes values ('celebrity',67);
insert into includes values ('celebrity',77);
insert into includes values ('celebrity',83);
insert into includes values ('celebrity',99);
insert into includes values ('music',14);
insert into includes values ('music',25);
insert into includes values ('music',67);
insert into includes values ('nhl players',1);
insert into includes values ('nhl players',2);
insert into includes values ('nhl players',77);
insert into includes values ('politics',22);
insert into includes values ('politics',29);
insert into includes values ('politics',99);