
The following columns have been derived:
column_position|column_name|column_meaning
---|---|---
1|license_no|
2|last_name|
3|first_name|
4|middle_name|
5|suffix|
6|pp_address1|
7|pp_address2|
8|pp_city|
9|pp_state|
10|pp_zip|
11|pp_language_office|
12|pp_language_practitioner|
13|pp_percent_location|
14|pp_days_seen|
15|self_spec_code|
16|medicaid|
17|medicaid_new|
18|medicare|
19|medicare_provider|
20|medicare_new|
21|latitude|
22|longitude|
23|count_pp_language_office|
24|count_pp_language_practitioner|
25|count_pp_days_seen|
26|count_self_spec_code|

##Caveats

* some practitioners are seen, in the words of the Beatles, "8 days a week."  This is because 'None' is one of their entires in addition to every day of the week
* some language entries mistakenly used the names of the languages rather than the codes - this has not been accounted for
* the column pp_percent_location is original, and probably more useful than count_pp_days_seen which is derived
