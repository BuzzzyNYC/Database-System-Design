-- 1. Return all voters, sorted by lname, then fname
select *
from voter1
order by last_name, first_name;

-- 2. Return the number of voters registered as Democrats, who registered after 2016
select count(*)
from voter1
where party_affil = 'D' and reg_date > '2016-12-01'; 

-- 3. Return the call list for a particular volunteer who is assisting with a particular phonebank.
-- given a volunteer id and phonebank id, it should return the voter names and phone numbers that 
-- the volunteer should call. 
select contact.Fname, contact.Lname, contact.Cellphone
from contact, phonebank_record
where contact.Voter_id = phonebank_record.Voter_id and phonebank_record.Volunteer_id = '2';

-- 4. Return the number of times a particular contact has been sent email messages.
select count(*) as 'Number of contacts have been sent e-messages' 
from log_record
where Method = 'Text';

-- 5. Return the donation totals for every contact who has made a donation. It should display the contact name
-- and the donation total
select contact.Fname as 'First Name', contact.Lname as 'Last Name', donation.Amount as 'Total Donation($)'
from donation, contact
where donation.Contact_id = contact.Contact_Id;

-- 6. Return a list of all events held for a particular candidate (user would enter a candidate name and election date,
-- and would see the list of events)
select event.Event_name as 'Event Name', event.Campaign_name as 'Campaign Name'
from campaign, event, contact
where campaign.Candidate_id = contact.Contact_Id and campaign.Candidate_id = 4;

-- 7. For a given contact, return information on all campaigns in which he or she has been a candidate. A user would enter 
-- the contact name, and get a list of positions run for, and election date.
select contact.Lname as 'Last Name' , campaign.Campaign_name as 'Candidate for campaign'
from contact, campaign
where campaign.Candidate_id = contact.Contact_Id and campaign.Candidate_id = 4;

-- 8. Return the name, residential address, and email for all contacts who are registered as Republicans and who vote in
-- Congressional district 11.
select voter1.first_name as 'First Name', 
voter1.last_name as 'Last Name',
contact.Email as 'Email',
voter1.res_addr1 as 'Res. Address', voter1.res_city as 'Res. City',
voter1.res_state as 'Res. State', voter1.res_zip as 'Res. Zip'
from voter1, contact
where contact.Voter_id = voter1.sos_voterid and voter1.party_affil = 'R' and voter1.congressional_district = 11;

-- 9. A query that would be useful for a political campaign. Return the volunteer name who volunteers to call a 
-- voter, return voter's name and their party affiliation. I think this query is useful because it helps keep track 
-- of the task of a volunteer and which voter they are contacting with.
select contact.Lname, contact.Fname, Event_volunteer.Task, contact.Email, voter1.first_name, voter1.last_name, voter1.party_affil
from contact, Event_volunteer, voter1
where contact.Contact_id = Event_volunteer.Contact_id and 
contact.Voter_id = voter1.sos_voterid and contact.Contact_Id = 3;

-- 10. Another query that would be useful for a political campaign. Return the counts of voters whose party affiliation is Democrat, and Republic
-- This query is useful because it gives the total of voters when entering their party affiliation
select count(*) as 'Total Democrat voters'
from voter1
where voter1.party_affil = 'D';



