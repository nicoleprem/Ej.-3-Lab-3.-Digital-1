//Nicole Prem 18337
module POS_03();

wire out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14; //salidas
reg A, B, C, D; //inputs

not NotA (out1, A); //compuertas not
not NotB (out2, B);
not NotC (out3, C);
not NotD (out4, D);

or Or1 (out5, A, out2, C, D); //1
or Or2 (out6, A, out2, C, out4); //2
or Or3 (out7, A, out2, out3, D); //3
or Or4 (out8, A, out2, out3, out4); //4
or Or5 (out9, out1, B, C, out4); //5
or Or6 (out10, out1, B, out3, out4); //6
or Or7 (out11, out1, out2, C, D); //7
or Or8 (out12, out1, out2, C, out4); //8
or Or9 (out13, out1, out2, out3, out4); //9

and And1 (out14, out5, out6, out7, out8, out9, out10, out11, out12, out13);

initial begin

$monitor("Time%d: A=%b B=%b C=%b D=%b out1=%b out2=%b out3=%b out4=%b out5=%b out6=%b out7=%b out8=%b out9=%b out10=%b out11=%b out12=%b out13=%b out14=%b");

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
#1 $finish;

end

initial
        begin
            $dumpfile("Tabla03_POS_tb.vcd"); 
            $dumpvars(0, POS_03); 
        end

endmodule 

