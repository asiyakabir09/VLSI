module st2_half_add_leaf(a,b,s,c); input a,b; output s,c; xor x1(s,a,b); and a1(c,a,b); endmodule
module st2_full_adder_from_half_units(a,b,cin,s,cout); input a,b,cin; output s,cout; wire w1,w2,w3; st2_half_add_leaf h1(a,b,w1,w2); st2_half_add_leaf h2(w1,cin,s,w3); or o1(cout,w2,w3); endmodule
