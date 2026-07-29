module gl2_compare1_unit(a,b,gt,eq,lt); input a,b; output gt,eq,lt; wire na,nb; not n1(na,a); not n2(nb,b); and a1(gt,a,nb); xnor x1(eq,a,b); and a2(lt,na,b); endmodule
