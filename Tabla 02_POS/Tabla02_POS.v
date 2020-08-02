//Nicole Prem 18337
module POS_02();

wire out1, out2, out3, out4, out5, out6, out7, out8, out9; //salidas
reg A, B, C; //inputs

not NotA (out1, A); //compuertas not
not NotB (out2, B);
not NotC (out3, C);

or Or1(out4, A, B, C); //1
or Or2(out5, A, out2, C); //2
or Or3(out6, A, out2, out3); //3
or Or4(out7, out1, B, C); //4
or Or5(out8, out1, B, out3); //5

and And1(out9, out4, out5, out6, out7, out8);

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
            $dumpfile("Tabla02_POS_tb.vcd"); 
            $dumpvars(0, POS_02); 
        end

endmodule 
