|Synthetic Instruction|Native Instructions|Effect|
|---------------------|-------------------|------|
|bne $t0, $t1, else|bne $8, $9, 8 [else-0x00400058]| if (Rs != Rt) PC←label|
|j far| j 0x0043a900 [far]  | PC←jlabel
|jr $ra| jr $31  | PC←Rs|