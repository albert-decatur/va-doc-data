#va-doc-data

Data originally from the [Virginia Department of Health Professions](www.dhp.virginia.gov/downloads/profiledata.asp).

The following columns are available in the main_out table:

column_name|column_meaning|whether_derived
---|---|---
license_no|
last_name|
first_name|
middle_name|
suffix|
pp_address1|primary office address info
pp_address2|further primary office address info like suite number
pp_city|
pp_state|
pp_zip|
pp_language_office|languages spoken in office
pp_language_practitioner|languages spoken by practitioner
pp_percent_location|
pp_days_seen|
self_spec_code|specialties engaged in by practitioner
medicaid|"1 = Participates in Virginia Medicare Program"
medicaid_new|"1 = Accepts new Medicare patients"
medicare|"1= Is a Medicare participating provider"
medicare_provider|"1 = Is a Medicare Non-participating provider"
medicare_new|"1 = Is accepting new Medicare patients"
latitude||1
longitude||1
count_pp_language_office|count of languages spoken in office|1
count_pp_language_practitioner|count of languages spoken by practitioner|1
count_pp_days_seen|count of pp_days_seen|1
count_self_spec_code|count of specialties engaged in by practitioner|1
concat_address|concatenation of all address components except for pp_address2 which is not useful for geocoders|1

##Caveats

* some practitioners are seen, in the words of the Beatles, "8 days a week."  This is because 'None' is one of their entires in addition to every day of the week
* some language entries mistakenly used the names of the languages rather than the codes - this has not been accounted for
* the column pp_percent_location is original, and probably more useful than count_pp_days_seen which is derived
