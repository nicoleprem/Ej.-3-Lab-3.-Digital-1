//Nicole Prem 18337
module SOP_04();

wire out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12; //salidas
reg A, B, C, D; //inputs

not NotA (out1, A); //compuertas not
not NotB (out2, B);
not NotC (out3, C);
not NotD (out4, D);

and And1 (out5, out1, out2, out3, out4); //1
and And2 (out6, out1, out2, C, out4); //2
and And3 (out7, out1, out2, C, D); //3
and And4 (out8, out1, B, C, out4); //4
and And5 (out9, out1, B, C, D); //5
and And6 (out10, A, out2, out3, out4); //6
and And7 (out11, A, out2, C, out4); //7

or Or1 (out12, out5, out6, out7, out8, out9, out10, out11);

initial begin

$monitor("Time%d: A=%b B=%b C=%b D=%b out1=%b out2=%b out3=%b out4=%b out5=%b out6=%b out7=%b out8=%b out9=%b out10=%b out11=%b out12=%b");

A=0; B=0; C=0; D=0; //1

#1 D=1; //2
#1 C=1; D=0; //3
#1 D=1; //4
#1 B=1; C=0; D=0; //5
#1 D=1; //6
#1 C=1; D=0; //7
#1 D=1; //8
#1 A=1; B=0; C=0; D=0; //9
#1 D=1; //10
#1 C=1; D=0; //11
#1 D=1; //12
#1 B=1; C=0; D=0; //13
#1 D=1; //14
#1 C=1; D=0; //15
#1 D=1; //16

end

initial
        begin
            $dumpfile("Tabla04_SOP_tb.vcd"); 
            $dumpvars(0, SOP_04); 
        end

endmodule 