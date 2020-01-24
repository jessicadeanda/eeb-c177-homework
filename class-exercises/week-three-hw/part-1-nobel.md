Part 1

1. Number of winners for each Nobel prize: 
   The following commands were completed in eebc177student@eebc177student-VirtualBox:~/Developer/repos/eeb-c177-homework/class-exercises/week-three-hw$

Chemistry: 181 
cut -d "," -f 3 nobel.csv | grep -w chemistry | wc -l

Economics: 81
cut -d "," -f 3 nobel.csv | grep -w economics | wc -l

Literature: 114
cut -d "," -f 3 nobel.csv | grep -w literature | wc -l

Medicine: 216
cut -d "," -f 3 nobel.csv | grep -w medicine | wc -l

Peace: 133
cut -d "," -f 3 nobel.csv | grep -w peace | wc -l

Physics: 210
cut -d "," -f 3 nobel.csv | grep -w physics | wc -l


2. Winners of multiple Nobel prizes: 

cut -d "," -f 5-6 nobel.csv | sort | uniq -d
"Office of the United Nations High Commissioner for Refugees (UNHCR)",NA
"Marie","Curie
"Linus Carl","Pauling"
"John","Bardeen"
"Frederick","Sanger"
"Comité international de la Croix Rouge (International Committee of the Red Cross)",NA


3. Most common surnames among the winners:

cut -d "," -f 6 nobel.csv | sort | uniq -d
"Anderson"
"Bardeen"
"Bloch"
"Bohr"
"Bragg"
"Brown"
"Buck"
"Chamberlain"
"Curie
"Fischer"
"Frank"
"Friedman"
"Hall"
"Henderson"
"Hess"
"Hodgkin"
"Hoffmann"
"Jensen"
"Kendall"
"Kornberg"
"Krebs"
"Lee"
"Lewis"
"Marshall"
"Mistral"
"Moser"
"Mott"
"Müller"
"Murad"
"Myrdal"
NA
"Pauling"
"Porter"
"Richards"
"Richardson"
"Sanger"
"Siegbahn"
"Simon"
"Smith"
"Thomson"
"Tinbergen"
"Wiesel"
"Williams"
"Wilson"


4. Year in which most nobel prizes were awarded:

cut -d "," -f 2 nobel.csv | sort | uniq -cd | sort -n
15 2001
