#va-doc-data


Data originally from the [Virginia Department of Health Professions](www.dhp.virginia.gov/downloads/profiledata.asp).

## main_out
The following columns are available in the main_out table:

column_name|column_meaning|whether_derived
---|---|---
license_no|
last_name|
first_name|
middle_name|
suffix|
address1|primary office address info
address2|further primary office address info like suite number
city|
state|
zip|
language_office|languages spoken in primary office
language_practitioner|languages spoken by practitioner
percent_location|percent of time practitioner seen in primary address
days_seen|days practitioner seen in primary address
self_spec_code|specialties engaged in by practitioner
medicaid|"1 = Participates in Virginia Medicare Program"
medicaid_new|"1 = Accepts new Medicare patients"
medicare|"1= Is a Medicare participating provider"
medicare_provider|"1 = Is a Medicare Non-participating provider"
medicare_new|"1 = Is accepting new Medicare patients"
latitude||1
longitude||1
count_language_office|count of languages spoken in primary office|1
count_language_practitioner|count of languages spoken by practitioner|1
count_days_seen|count of pp_days_seen|1
count_self_spec_code|count of specialties engaged in by practitioner|1
concat_address|concatenation of all address components except for address2 which is not useful for geocoders|1

###Caveats

* pp_percent_location has values over 100 - this should not happen
* pp_percent_location is sometimes 0, which is nonsensical
* when percent location is added for each license_no across main_out and secondary_out, ~3000 practitioners claim a total percent location that is not equal to 100, and of those ~700 claim a percent location above 100
  * NB: this was queried before I realized practitioners can have more than two officies recorded - could explain much of the totals that are below 100 - but not totals above 100, some of which I may have missed due to this misunderstanding
* when practitioner language is accounted for in both main_out and secondary_out, there are ~1000 practitioners who supposedly speak different languages depending on which office they are working in
* in both the main and secondary tables some practitioners are seen, in the words of the Beatles, "8 days a week."  This is because 'None' is one of their entires in addition to every day of the week
* some language entries mistakenly used the names of the languages rather than the codes - this has not been accounted for
* the column pp_percent_location is original, and probably more useful than count_pp_days_seen which is derived
* ~1500 unique addresses are not so far geocoded here for main_out - these are often references to a city, a PO box, or a university healthcare system


## secondary_out

The following columns are available in the secondary_out table:

column_name|column_meaning|whether_derived
---|---|---
prac_loc_id|identifier for the practitioner location - this is needed because some practitioners have more than one "secondary" office|1
license_no|
address1|secondary office address info|1 (from cleaning)
address2|further secondary office address info like suite number|1 (from cleaning)
city||1 (from cleaning)
state||1 (from cleaning)
zip|
language_office|languages spoken in secondary office
percent_location|percent of time practitioner seen in secondary address
days_seen|days practitioner seen in secondary address
latitude||1
longitude||1
count_language_office|count of languages spoken in secondary office|1
count_days_seen|count of pp_days_seen|1
concat_address|concatenation of all address components except for address2 which is not useful for geocoders|1


###Caveats

* lic_status and status_lic are identical
* practioners can have many offices - secondary_out just catalogs all their non-primary offices


##TODO

* check if count_pp_days_seen works with pp_percent_location between primary and secondary addresses
