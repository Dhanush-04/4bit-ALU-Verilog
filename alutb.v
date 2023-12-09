module alu_tb;
  reg [3:0] A, B, sel;
  wire c;
  wire [3:0] out1, out2;
  
  alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .c(c),
    .out1(out1),
    .out2(out2)
  );
  
  initial begin
    // Initialize inputs
    A = 4'b1011;
    B = 4'b0101;
    sel = 4'b0000;
    
    // Display initial values
    $display("A = %b, B = %b, sel = %b", A, B, sel);
    $monitor("Result: c = %b, out1 = %b, out2 = %b", c, out1, out2);
    
    // Wait for a few simulation cycles
    #5;
    
    // Test addition
    sel = 4'b0000;
    #5;
    
    // Test subtraction
    sel = 4'b0001;
    #5;
    
    // Test multiplication
    sel = 4'b0010;
    #5;
    
    // Test division
    sel = 4'b0011;
    #5;
    
    // Test concatenation 1
    sel = 4'b0100;
    #5;
    
    // Test concatenation 2
    sel = 4'b0101;
    #5;
    
    // Test left shift
    sel = 4'b0110;
    #5;
    
    // Test right shift
    sel = 4'b0111;
    #5;
    
    // Test bitwise AND
    sel = 4'b1000;
    #5;
    
    // Test bitwise OR
    sel = 4'b1001;
    #5;
    
    // Test bitwise negation 1
    sel = 4'b1010;
    #5;
    
    // Test bitwise negation 2
    sel = 4'b1011;
    #5;
    
    // Test bitwise XOR
    sel = 4'b1100;
    #5;
    
    // Test bitwise NAND
    sel = 4'b1101;
    #5;
    
    // Test comparison
    sel = 4'b1110;
    #5;
    
    // Test equality check
    sel = 4'b1111;
    #5;
    
    $finish;
  end
  initial begin
   $dumpfile("dump.vcd"); 
   $dumpvars; 
 end
endmodule
