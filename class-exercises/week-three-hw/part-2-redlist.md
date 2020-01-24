Part 2

1. Number of occurrences for each category:

  EX:  cut -d "," -f10 European_Red_List.csv | grep -w EX | wc -l   Answer: 29
  RE:  cut -d "," -f10 European_Red_List.csv | grep -w RE | wc -l   Answer: 8
  CR:  cut -d "," -f10 European_Red_List.csv | grep -w CR | wc -l   Answer: 464
  EN:  cut -d "," -f10 European_Red_List.csv | grep -w EN | wc -l   Answer: 687
  VU:  cut -d "," -f10 European_Red_List.csv | grep -w VU | wc -l   Answer: 885
  NT:  cut -d "," -f10 European_Red_List.csv | grep -w NT | wc -l   Answer: 964
  LC:  cut -d "," -f10 European_Red_List.csv | grep -w LC | wc -l   Answer: 5805
  DD:  cut -d "," -f10 European_Red_List.csv | grep -w DD | wc -l   Answer: 2409
  NA:  cut -d "," -f10 European_Red_List.csv | grep -w NA | wc -l   Answer: 411

2. Number of occurrences for each category for AVES only (better way to do it):

grep -w AVES European_Red_List.csv | cut -d "," -f 10 | sort | uniq -c | sort -n
      2 EX
      4 RE
     10 CR
     18 EN
     32 NT
     39 VU
    428 LC

3. Number of EX, RE, or CR Bird species:

grep -w Birds European_Red_List.csv | cut -d "," -f 10 | sort | uniq -c | sort -n
      2 EX
      4 RE
     10 CR
     16 Total
