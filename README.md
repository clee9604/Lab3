First part of the lab3 I use
a.	grep -v: invert result
b.	use grep -v “words” shows all lines except the lines include words in “ ”.

a.	Sed ‘s/ /g’ replace words 
b.	sed ‘s/HETATM/ATOM/g’ 4HKD.pdb command change HETATM to ATOM and print the result
c.	sed ‘s/MSE/MST /g’ 4HKD.pdb command change MSE to MST and print the result

a.	I create file name ATOM with contain only ATOM lines so make it easy
i.	If find in 4HKD.pdb directly then need (grep “ATOM” |) select field ATOM only
b.	awk ‘BEGIN{max = 0} {if($7 > 0 + max) max = $7} END {print max}’ ATOM : awk command that find max column number 7 in file name ATOM(grep “ATOM” |awk ‘BEGIN{max = 0} {if($7 > 0 + max) max = $7} END {print max}’)

a.	grep “HETATM’ : find field name with HETATM 
b.	awk ‘total += $7} END {print total/NR}’ 4HKD.pdb : find mean value in grep field (grep "HETATM" | awk 'total += $7} END {print total/NR}' 4HKD.pdb)

a.	This is same thing as I did on number 2
b.	Using sed ‘s/…/g’ change name HOH to WAT (sed 's/HOH/WAT/g')

a.	Grep “ATOM” : find field ATOM
b.	Sort -nk11: sort by number column11 (grep 'ATOM" |sort -nk11)

Second part of the lab3
a.	Create file name lab2data.txt for sample out(nano lab2data.txt)
b.	Create program name string2knuts.sh for execute file(nano string2knuts.sh)
c.	I am not an authorized person to execute file so I gave myself to authorization of execute(chmod +rx string2knuts.sh)

a.	Same as first one, I gave execute authorization to myself(chmod +rx knuts2string.sh)
a.	Result of the execute file is same as original file. But we don’t save this time

a.	Using cat command read the data file by bash file then add first column numbers(cat lab2data.txt | ./string2knuts.sh | awk 'BEGIN {sum = 0} {sum +=$0} END {print sum}')
b.	Using cat command as well but this time print format of data file as how many knuts, gallons and secles we have(cat lab2data.txt | ./string2knuts.sh | awk 'BEGIN {sum = 0} {sum +=$0} END {print sum}| string2knuts.sh')

