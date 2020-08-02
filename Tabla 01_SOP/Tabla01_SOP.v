//Nicole Prem 18337//
module SOP_01 ();

wire out1, out2, out3, out4, out5, out6, out7, out8, out9;
reg A, B, C;

not NotA (out1, A);
not NotB (out2, B);
not NotC (out3, C);

and And1(out4, out1, out2, out3);
and And2(out5, out1, B, out3);
and And3(out6, A, out2, out3);
and And4(out7, A, out2, C);
and And5(out8, A, B, C);

or Or1(out9, out4, out5, out6, out7, out8);

initial begin

$monitor("Time%d: A=%b B=%b C=%b out1=%b out2=%b out3=%b out4=%b out5=%b out6=%b out7=%b out8=%b out9=%b");

A=0; B=0; C=0; //1

#1 C=1; //2
#1 B=1; C=0; //3
#1 C=1; //4
#1 A=1; B=0; C=0; //5
#1 C=1; //6
#1 C=0; B=1; //7
#1 C=1; //8
#1 $finish;

end

initial
        begin
            $dumpfile("Tabla01_SOP_tb.vcd"); 
            $dumpvars(0, SOP_01); 
        end

endmodule 

