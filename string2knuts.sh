#!/bin/bash
awk '{
sign = "";
if (substr($0,1,1) == "-")
        {sign = "-"};
gsub("-", "", $0);
split($0, gck, "/");

#print gck[1], gck[2], gck[3];
knuts = (gck[1]*23 + gck[2])*17 + gck[3];
if(sign == "-")
       {knuts = -knuts};
print knuts;
}'
