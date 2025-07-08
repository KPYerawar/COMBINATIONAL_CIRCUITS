module tb;
    reg clk = 0;
    reg rst;
    reg pop;
    reg push;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    stack_pointer uut (
        .clk(clk),
        .rst(rst),
        .pop(pop),
        .push(push),
        .data_in(data_in),
        .data_out(data_out)
    );
    
    always #10 clk = ~clk;

    initial begin 
        rst = 1;
        push = 0;
        pop = 0;
        #20;

        rst = 0;

        push = 1;
        pop = 0;
        repeat (10) begin 
            data_in = $random % 16;
            #20;
        end

        push = 0;
        pop = 1;
        repeat (5) begin 
            #20;
        end

        $finish;
    end
endmodule
