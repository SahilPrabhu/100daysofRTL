module full_adder (
    input logic a,      // First input
    input logic b,      // Second input
    input logic cin,    // Carry-in input
    output logic sum,   // Sum output
    output logic cout   // Carry-out output
);

    // Combinational logic for full adder
    always_comb begin
        sum  = a ^ b ^ cin;            // XOR for sum
        cout = (a & b) | (b & cin) | (cin & a); // Carry-out logic
    end

endmodule
