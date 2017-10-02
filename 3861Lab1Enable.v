module lab1(s1, s2, r1, r2, a1, a2, a3, a4);

input s1;
input s2;
input r1;
input r2;

output a1;
output a2;
output a3;
output a4;

and(a1, r1, s1);
and(a2, s2, r2);
or(a3, a1, a2);

not(a4, a3);


endmodule