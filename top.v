module top(
    input [7:0]sw,
    output [5:0]led
);

    light a_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
        );
        
    adder b_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
        );
        
    wire con;
        
    full_adder c_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(con)
        );
        
    full_adder d_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(con),
        .Y(led[4]),
        .Cout(led[5])
        );
    
    endmodule