module alu(A,B,sel,c,out1,out2);
  input [3:0] A;
  input [3:0] B;
  input [3:0] sel;
  output reg c;
  output reg [3:0] out1;
  output reg [3:0] out2;
  
 
  reg [7:0] value;
    always @(*)
      begin
        case(sel)
        4'b0000: begin
           value = A+B ;
           out1 = value[3:0];
           out2 = 4'b0;
           c=value[4];
        end
        4'b0001: begin
            out1 = A-B ;
            out2=4'b0;
            c=1'b0;
        end
        4'b0010: begin
            value = A*B;
            out2 = value[7:4];
            out1 = value[3:0];
            c=1'b0;
        end
        4'b0011: begin
            out1 = A/B;
            out2 = A%B;
            c=1'b0;
        end
        4'b0100: begin
           out1 = {A[2:0],A[3]};
           out2=4'b0;
           c=1'b0;
        end
         4'b0101: begin
           out1 = {A[0],A[3:1]};
           out2=4'b0;
           c=1'b0;
         end
         4'b0110: begin
            out1 = A<<1;
            out2=4'b0;
            c=1'b0;
         end
         4'b0111: begin
            out1 = A>>1; 
            out2=4'b0;
            c=1'b0;
         end
          4'b1000: begin
            out1 = A&B;
            out2=4'b0;
            c=1'b0;
          end
          4'b1001: begin
            out1 = A|B;
            out2=4'b0;
            c=1'b0;
          end
          4'b1010: begin
            out1 = ~(A) ;
            out2=4'b0;
            c=1'b0;
          end
          4'b1011: begin
            out1 = ~(A|B);
            out2=4'b0;
            c=1'b0;
          end
          4'b1100: begin
            out1 = A^B;
            out2=4'b0;
            c=1'b0;
          end
          4'b1101: begin
            out1 = ~(A&B);
            out2=4'b0;
            c=1'b0;
          end
          4'b1110: begin
            out1 = (A>B)?4'd1:4'd0 ;
            out2=4'b0;
            c=1'b0;
          end
          4'b1111: begin
            out1 = (A==B)?4'd1:4'd0 ;
            out2=4'b0; 
            c=1'b0;
          end
          default: out1 = A + B ; 
        endcase
    end
endmodule