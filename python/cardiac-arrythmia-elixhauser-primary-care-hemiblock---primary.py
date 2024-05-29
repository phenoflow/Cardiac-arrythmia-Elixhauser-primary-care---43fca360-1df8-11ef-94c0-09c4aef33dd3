# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"3298.00","system":"readv2"},{"code":"G565000","system":"readv2"},{"code":"G565z00","system":"readv2"},{"code":"3299.00","system":"readv2"},{"code":"G562.00","system":"readv2"},{"code":"G561z00","system":"readv2"},{"code":"G560.00","system":"readv2"},{"code":"G566100","system":"readv2"},{"code":"G566.00","system":"readv2"},{"code":"G561400","system":"readv2"},{"code":"G561200","system":"readv2"},{"code":"329A.00","system":"readv2"},{"code":"G561000","system":"readv2"},{"code":"G564.00","system":"readv2"},{"code":"P6y5.00","system":"readv2"},{"code":"329..00","system":"readv2"},{"code":"Gyu5X00","system":"readv2"},{"code":"Gyu5U00","system":"readv2"},{"code":"G56..12","system":"readv2"},{"code":"P6y5200","system":"readv2"},{"code":"P6y5000","system":"readv2"},{"code":"G561311","system":"readv2"},{"code":"G566z00","system":"readv2"},{"code":"3295.00","system":"readv2"},{"code":"3296.00","system":"readv2"},{"code":"G561.00","system":"readv2"},{"code":"G565.00","system":"readv2"},{"code":"G562.11","system":"readv2"},{"code":"P6y5100","system":"readv2"},{"code":"G563.00","system":"readv2"},{"code":"G565300","system":"readv2"},{"code":"329Z.00","system":"readv2"},{"code":"Gyu5W00","system":"readv2"},{"code":"G562z00","system":"readv2"},{"code":"G561300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiac-arrythmia-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
