module gl2_half_sub_unit(a,b,d,borrow); input a,b; output d,borrow; wire na; xor x1(d,a,b); not n1(na,a); and a1(borrow,na,b); endmodule
