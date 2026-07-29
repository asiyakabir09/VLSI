module st2_half_sub_leaf(a,b,d,borrow); input a,b; output d,borrow; wire na; xor x1(d,a,b); not n1(na,a); and a1(borrow,na,b); endmodule
module st2_full_subtractor_from_half_units(a,b,bin,d,bout); input a,b,bin; output d,bout; wire w1,w2,w3; st2_half_sub_leaf h1(a,b,w1,w2); st2_half_sub_leaf h2(w1,bin,d,w3); or o1(bout,w2,w3); endmodule
