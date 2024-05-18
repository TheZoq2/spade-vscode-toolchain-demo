module \std::conv::bit_to_bool  (
        input b_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::bit_to_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::bit_to_bool );
        end
    end
    `endif
    logic \b ;
    assign \b  = b_i;
    logic _e_1;
    assign _e_1 = \b ;
    assign output__ = _e_1;
endmodule

module \std::conv::unsafe::clock_to_bool  (
        input c_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::unsafe::clock_to_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::unsafe::clock_to_bool );
        end
    end
    `endif
    logic \c ;
    assign \c  = c_i;
    logic _e_22;
    assign _e_22 = \c ;
    assign output__ = _e_22;
endmodule

module \std::conv::unsafe::bool_to_clock  (
        input c_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::unsafe::bool_to_clock" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::unsafe::bool_to_clock );
        end
    end
    `endif
    logic \c ;
    assign \c  = c_i;
    logic _e_25;
    assign _e_25 = \c ;
    assign output__ = _e_25;
endmodule

module \std::io::rising_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::rising_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::rising_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:3,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:4,14" *)
    logic _e_33;
    (* src = "<compiler dir>/stdlib/io.spade:4,5" *)
    logic _e_31;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_33 = !\sync2 ;
    assign _e_31 = \sync1  && _e_33;
    assign output__ = _e_31;
endmodule

module \std::io::falling_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::falling_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::falling_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:9,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:10,14" *)
    logic _e_41;
    (* src = "<compiler dir>/stdlib/io.spade:10,5" *)
    logic _e_39;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_41 = !\sync1 ;
    assign _e_39 = \sync2  && _e_41;
    assign output__ = _e_39;
endmodule

module \std::cdc::sync2_bool  (
        input clk_i,
        input in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync2_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync2_bool );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:38,5" *)
    logic _e_335;
    (* src = "<compiler dir>/stdlib/cdc.spade:38,5" *)
    \std::cdc::unsafe::sync2[335]  sync2_0(.clk_i(\clk ), .in_i(\in ), .output__(_e_335));
    assign output__ = _e_335;
endmodule

module top (
        input clk,
        output led
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "top" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, top);
        end
    end
    `endif
    logic \led_mut ;
    assign led = \led_mut ;
    logic _e_620;
    logic _e_621;
    (* src = "top.spade:6,14" *)
    reg \rst ;
    logic[25:0] _e_625;
    logic[25:0] _e_629;
    (* src = "top.spade:8,48" *)
    logic _e_627;
    logic[25:0] _e_631;
    logic[25:0] _e_636;
    (* src = "top.spade:8,84" *)
    logic[26:0] _e_634;
    (* src = "top.spade:8,78" *)
    logic[25:0] _e_633;
    (* src = "top.spade:8,45" *)
    logic[25:0] _e_626;
    (* src = "top.spade:8,14" *)
    reg[25:0] \count ;
    logic[25:0] _e_641;
    logic[25:0] _e_642;
    (* src = "top.spade:10,23" *)
    logic[25:0] _e_640;
    (* src = "top.spade:10,15" *)
    logic _e_638;
    assign _e_620 = 1;
    assign _e_621 = 0;
    initial begin
        \rst  = 'b1;
    end
    always @(posedge \clk ) begin
        \rst  <= _e_621;
    end
    assign _e_625 = 0;
    assign _e_629 = 25000000;
    assign _e_627 = \count  == _e_629;
    assign _e_631 = 0;
    assign _e_636 = 1;
    assign _e_634 = $signed(\count ) + $signed(_e_636);
    assign _e_633 = _e_634[25:0];
    assign _e_626 = _e_627 ? _e_631 : _e_633;
    always @(posedge \clk , posedge \rst ) begin
        if (\rst ) begin
            \count  <= _e_625;
        end
        else begin
            \count  <= _e_626;
        end
    end
    assign _e_641 = 12500000;
    assign _e_642 = 1;
    assign _e_640 = _e_641 >> _e_642;
    assign _e_638 = $signed(\count ) < $signed(_e_640);
    assign \led_mut  = _e_638;
endmodule

module \std::cdc::unsafe::sync2[335]  (
        input clk_i,
        input in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::unsafe::sync2[335]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::unsafe::sync2[335] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:20,18" *)
    reg \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:21,18" *)
    reg \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \in ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule