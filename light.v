module light(
    input upstairs, downstairs,
    output stair_light
);

    assign stair_light = upstairs ^ downstairs;

endmodule