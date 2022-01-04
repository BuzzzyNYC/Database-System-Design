# Designing a Data Warehousing for a Web Application 

## Abstract

Political parties do a lot of voter outreach and organization at the town and county level. Typically these efforts are managed by local political organizations. These organizations are volunteer driven, so one of their most important tasks is to recruit and manage volunteers, as well as donations. Typically they organize volunteers and donations by campaigns, for example, a campaign for a candidate running for mayor, or state representative, or Congressperson. 
On a given campaign, they organize volunteers by tasks canvassing on a particular day, making calls as part of a phonebank, or helping with a fundrais er, for example. Political organizations rely onvolunteer management software that is tailored to political campaigns. Examples include NationBuilder, or Reach.
For example, here is the main page for Reach:

<img width="550" alt="Screen Shot 2022-01-03 at 20 29 16" src="https://user-images.githubusercontent.com/87792252/147997800-cf946fc8-4911-4374-9c3c-b06ad0ee05c2.png">

https://www.reach.vote/

And here is the site for NationBuilder:

<img width="546" alt="Screen Shot 2022-01-03 at 20 29 47" src="https://user-images.githubusercontent.com/87792252/147997831-4f78d344-8e76-4168-9b55-80b3b04357d7.png">

https://nationbuilder.com/software_for_political_campaigns

## Goals

* This project is to design and implement the database that could drive this type of application. This database manages a voter list for the local area. Voter registration lists are public data, and can be requested in various ways depending on the state. Many states require a hefty fee, or (as New York does) allows access only to political campaigns. However, Ohio makes these lists freely downloadable. For this project, I will be using a list of voter registrations for Cuyahoga County which includes Cleveland, to use for the voter data. 

Registrations by all Ohio counties can be downloaded, and find a description of the fields in the download file at https://www6.ohiosos.gov/ords/f?p=VOTERFTP:HOME

* The database also keep track of contacts, which are people who have signed up to help the local party. They may be people who want to donate, or who want to volunteer to help a campaign, or who have just expressed interest. A contact may or may not be a local registered voter. A contact will have an id, a voter id if he or she is registered, a last name, a first name, a note explaining their i nterest, a cellphone, a homephone, an email address, party affiliation which may be “None”, and optionally, contact info on social media such as Twitter, Facebook, Instagram, etc. Contacts can have tags zero or more indicating roles, past actions, and so on. Tags are usually created by the site administrator. From NationBuilder’s documentation:

<img width="723" alt="Screen Shot 2022-01-03 at 20 34 21" src="https://user-images.githubusercontent.com/87792252/147998095-806a5a3b-cb81-4b86-a5f9-24170983f29a.png">





