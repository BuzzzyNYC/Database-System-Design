# Data Warehousing Design for a Web Application 

## Abstract

Political parties do a lot of voter outreach and organization at the town and county level. Typically these efforts are managed by local political organizations. These organizations are volunteer driven, so one of their most important tasks is to recruit and manage volunteers, as well as donations. Typically they organize volunteers and donations by campaigns, for example, a campaign for a candidate running for mayor, or state representative, or Congressperson. 
On a given campaign, they organize volunteers by tasks canvassing on a particular day, making calls as part of a phonebank, or helping with a fundrais er, for example. Political organizations rely onvolunteer management software that is tailored to political campaigns. Examples include NationBuilder, or Reach.
For example, here is the main page for Reach:

<img width="550" alt="Screen Shot 2022-01-03 at 20 29 16" src="https://user-images.githubusercontent.com/87792252/147997800-cf946fc8-4911-4374-9c3c-b06ad0ee05c2.png">

https://www.reach.vote/

And here is the site for NationBuilder:

<img width="546" alt="Screen Shot 2022-01-03 at 20 29 47" src="https://user-images.githubusercontent.com/87792252/147997831-4f78d344-8e76-4168-9b55-80b3b04357d7.png">

https://nationbuilder.com/software_for_political_campaigns

## Goals & Database Design Requirements

* This project is to design and implement the database that could drive this type of application. This database manages a voter list for the local area. Voter registration lists are public data, and can be requested in various ways depending on the state. Many states require a hefty fee, or (as New York does) allows access only to political campaigns. However, Ohio makes these lists freely downloadable. For this project, I will be using a list of voter registrations for Cuyahoga County which includes Cleveland, to use for the voter data. 

Registrations by all Ohio counties can be downloaded, and find a description of the fields in the download file at https://www6.ohiosos.gov/ords/f?p=VOTERFTP:HOME

* The database also keep track of contacts, which are people who have signed up to help the local party. They may be people who want to donate, or who want to volunteer to help a campaign, or who have just expressed interest. A contact may or may not be a local registered voter. A contact will have an id, a voter id if he or she is registered, a last name, a first name, a note explaining their i nterest, a cellphone, a homephone, an email address, party affiliation which may be “None”, and optionally, contact info on social media such as Twitter, Facebook, Instagram, etc. Contacts can have tags zero or more indicating roles, past actions, and so on. Tags are usually created by the site administrator. From NationBuilder’s documentation:

<img width="723" alt="Screen Shot 2022-01-03 at 20 34 21" src="https://user-images.githubusercontent.com/87792252/147998095-806a5a3b-cb81-4b86-a5f9-24170983f29a.png">

* All outreach to contacts should be logged. A log record will contain the identity of the contact, the date and time, the method of contact, and the status. Methods may be phone call, in person visit, email, text message, and other ways to connect with a person. The status is the result of the outreach attempt: answered, bad information, left information, meaningful interaction, not interested, no answer, send information, and other.

* Since the local party is likely to be supporting several campaigns at one time, it also needs to keep track of each campaign. A campaign will have an candidate, who will be in the contact list, the position (Senate, mayor, st ate representative, school board trustee, etc), the election type (primary or general) a nd the date of the election. 

* Political organizations hold a lot of events. Events may be fundraisers, or simple “meet and greets” or rallies, or ice cream socials, or other types of events. The events need to be recorded in the database. An event has a na me, an id, a starting date and time, an ending date and time, a location name, a location address, a capacity, an event contact, and an associated campaign. In addition, events need volunteers. Volunteers will be drawn from the contact list (by outreach as mentioned above) above). Contacts may end up volunteering at many events, one event, or no events at all. A volunteer for an event will sign up for a start time and an end time at the event. Events also have attendees, also drawn from the contact list (and if someone who is not on the contact list attends an event, they are put on the list right away!). When a contact RSVP s for an event, he or she will also note the number of guests.

* All political campaigns need donations, so those must be recorded. A donation refers to the contact who made the donation, the date and time of the donation, the amount, the campaign that the donation is intended for, and optionally, the event at which the donation was made.

* Finally, campaigns also run phonebanks. In a phonebank, volunteers (again pulled from the contact list) call voters for various reasons to ask for donations, to encourage them
to vote, to poll them, and so on. A phonebank will have an id, a reason, an optional message field to hold a message for volu nteers to read, a date, and an associated campaign. Each phonebank will contain multiple phonebank records, which consists of a voter id, and optionally, the volunteer who is assigned to call that voter. Us ually, the list
of voters to call is divided up am ong the volunteers for the phonebank so that each volunteer is assigned to many voters.

## Steps of Approach

### Stage 1: The ER Diagram

<img width="915" alt="Screen Shot 2022-01-03 at 20 43 24" src="https://user-images.githubusercontent.com/87792252/147998711-0b9983f5-9d17-4454-8ba1-2d2845ed23a2.png">

This ER model has all primary keys specified, as well as relationships with cardinality and participation constraints. A set of tables with a brief description for each attributes is also generated, please refer to the Static Files folder.

### Stage 2: Building Database on MySQL Workbench and Data Querying for Test

* A complete set of tables and data of 50,000 records in MySQL Workbench. 

* Working queries to produce the reports and testing. 

## References
Project details and requirements are provided from Professor Bonnie K. MacKellar; Department of Computer Science, Mathematics and Science. The Lesley H. and William L. Collins College of Professional Studies; St. John's University.


