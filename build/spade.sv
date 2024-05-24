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
    \std::cdc::unsafe::sync2[497]  sync2_0(.clk_i(\clk ), .in_i(\in ), .output__(_e_335));
    assign output__ = _e_335;
endmodule

module top (
        input clk_25mhz,
        output[3:0] gpdi_dp
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
    logic[3:0] \gpdi_dp_mut ;
    assign gpdi_dp = \gpdi_dp_mut ;
    (* src = "src/top.spade:20,50" *)
    logic[1:0] _e_622;
    logic \vga_clk ;
    logic \clk_shift ;
    logic _e_625;
    logic _e_626;
    (* src = "src/top.spade:22,18" *)
    reg \rst ;
    logic[14:0] _e_627;
    (* src = "src/top.spade:24,9" *)
    logic[14:0] \x_pixels ;
    logic[14:0] _e_629;
    (* src = "src/top.spade:25,9" *)
    logic[14:0] \y_pixels ;
    logic[10:0] _e_633;
    logic[10:0] _e_634;
    logic[10:0] _e_635;
    logic[10:0] _e_637;
    logic[10:0] _e_638;
    logic[10:0] _e_639;
    (* src = "src/top.spade:27,18" *)
    logic[95:0] \timing ;
    logic _e_644;
    (* src = "src/top.spade:38,21" *)
    logic[33:0] \vga_state ;
    (* src = "src/top.spade:39,50" *)
    logic[33:0] _e_653;
    logic \hsync ;
    logic \vsync ;
    logic \blank ;
    logic[30:0] \pixel ;
    logic[29:0] _e_658;
    logic[14:0] \x ;
    logic[14:0] \y ;
    logic _e_1148;
    logic _e_1150;
    logic _e_1151;
    logic _e_1152;
    logic _e_1153;
    (* src = "src/top.spade:43,14" *)
    logic[7:0] _e_662;
    (* src = "src/top.spade:43,24" *)
    logic[7:0] _e_664;
    (* src = "src/top.spade:43,37" *)
    logic _e_667;
    logic[7:0] _e_671;
    logic[7:0] _e_673;
    (* src = "src/top.spade:43,34" *)
    logic[7:0] _e_666;
    (* src = "src/top.spade:43,14" *)
    logic[23:0] _e_661;
    logic _e_1155;
    logic[7:0] _e_677;
    logic[7:0] _e_678;
    logic[7:0] _e_679;
    (* src = "src/top.spade:46,14" *)
    logic[23:0] _e_676;
    (* src = "src/top.spade:41,17" *)
    logic[23:0] \color ;
    (* src = "src/top.spade:50,15" *)
    logic[7:0] \dvi ;
    logic _e_694;
    (* src = "src/top.spade:62,40" *)
    logic[1:0] _e_695;
    (* src = "src/top.spade:62,9" *)
    logic _e_692;
    logic _e_699;
    (* src = "src/top.spade:63,40" *)
    logic[1:0] _e_700;
    (* src = "src/top.spade:63,9" *)
    logic _e_697;
    logic _e_704;
    (* src = "src/top.spade:64,40" *)
    logic[1:0] _e_705;
    (* src = "src/top.spade:64,9" *)
    logic _e_702;
    logic _e_709;
    (* src = "src/top.spade:65,40" *)
    logic[1:0] _e_710;
    (* src = "src/top.spade:65,9" *)
    logic _e_707;
    (* src = "src/top.spade:61,19" *)
    logic[3:0] _e_691;
    (* src = "src/top.spade:20,50" *)
    pll_480_800_60 pll_480_800_60_0(.clk_25mhz(\clk_25mhz ), .output__(_e_622));
    assign \vga_clk  = _e_622[1];
    assign \clk_shift  = _e_622[0];
    assign _e_625 = 1;
    assign _e_626 = 0;
    initial begin
        \rst  = 'b1;
    end
    always @(posedge \vga_clk ) begin
        \rst  <= _e_626;
    end
    assign _e_627 = 480;
    assign \x_pixels  = _e_627;
    assign _e_629 = 800;
    assign \y_pixels  = _e_629;
    assign _e_633 = 24;
    assign _e_634 = 48;
    assign _e_635 = 72;
    assign _e_637 = 3;
    assign _e_638 = 10;
    assign _e_639 = 18;
    assign \timing  = {\x_pixels , _e_633, _e_634, _e_635, \y_pixels , _e_637, _e_638, _e_639};
    assign _e_644 = 1;
    (* src = "src/top.spade:38,21" *)
    \vga::vga::vga_fsm  vga_fsm_0(.clk_i(\vga_clk ), .rst_i(\rst ), .clk_enable_i(_e_644), .timing_i(\timing ), .output__(\vga_state ));
    (* src = "src/top.spade:39,50" *)
    \vga::vga::vga_output  vga_output_0(.vga_state_i(\vga_state ), .output__(_e_653));
    assign \hsync  = _e_653[33];
    assign \vsync  = _e_653[32];
    assign \blank  = _e_653[31];
    assign \pixel  = _e_653[30:0];
    assign _e_658 = \pixel [29:0];
    assign \x  = _e_658[29:15];
    assign \y  = _e_658[14:0];
    assign _e_1148 = \pixel [30] == 1'd0;
    assign _e_1150 = 1;
    assign _e_1151 = 1;
    assign _e_1152 = _e_1150 && _e_1151;
    assign _e_1153 = _e_1148 && _e_1152;
    assign _e_662 = \x [7:0];
    assign _e_664 = \y [7:0];
    assign _e_667 = $signed(\x ) > $signed(\y );
    assign _e_671 = 127;
    assign _e_673 = 0;
    assign _e_666 = _e_667 ? _e_671 : _e_673;
    assign _e_661 = {_e_662, _e_664, _e_666};
    assign _e_1155 = \pixel [30] == 1'd1;
    assign _e_677 = 0;
    assign _e_678 = 0;
    assign _e_679 = 0;
    assign _e_676 = {_e_677, _e_678, _e_679};
    always_comb begin
        priority casez ({_e_1153, _e_1155})
            2'b1?: \color  = _e_661;
            2'b01: \color  = _e_676;
            2'b?: \color  = 'x;
        endcase
    end
    (* src = "src/top.spade:50,15" *)
    \hdmi::vga2dvid::vga2dvid  vga2dvid_0(.clk_pixel_i(\vga_clk ), .clk_shift_i(\clk_shift ), .rst_i(\rst ), .hsync_i(\hsync ), .vsync_i(\vsync ), .blank_i(\blank ), .color_i(\color ), .output__(\dvi ));
    assign _e_694 = 0;
    assign _e_695 = \dvi [3:2];
    (* src = "src/top.spade:62,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_0(.sclk_i(\clk_shift ), .rst_i(_e_694), .d_i(_e_695), .output__(_e_692));
    assign _e_699 = 0;
    assign _e_700 = \dvi [5:4];
    (* src = "src/top.spade:63,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_1(.sclk_i(\clk_shift ), .rst_i(_e_699), .d_i(_e_700), .output__(_e_697));
    assign _e_704 = 0;
    assign _e_705 = \dvi [7:6];
    (* src = "src/top.spade:64,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_2(.sclk_i(\clk_shift ), .rst_i(_e_704), .d_i(_e_705), .output__(_e_702));
    assign _e_709 = 0;
    assign _e_710 = \dvi [1:0];
    (* src = "src/top.spade:65,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_3(.sclk_i(\clk_shift ), .rst_i(_e_709), .d_i(_e_710), .output__(_e_707));
    assign _e_691 = {_e_707, _e_702, _e_697, _e_692};
    assign \gpdi_dp_mut  = _e_691;
endmodule

module \vga::vga::vga_fsm  (
        input clk_i,
        input rst_i,
        input clk_enable_i,
        input[95:0] timing_i,
        output[33:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "vga::vga::vga_fsm" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \vga::vga::vga_fsm );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \clk_enable ;
    assign \clk_enable  = clk_enable_i;
    logic[95:0] \timing ;
    assign \timing  = timing_i;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:28,9" *)
    logic[10:0] _e_717;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:29,9" *)
    logic[14:0] _e_719;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:30,9" *)
    logic[10:0] _e_721;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:31,9" *)
    logic[10:0] _e_723;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:24,29" *)
    logic[17:0] _e_727;
    logic \next_y ;
    logic[16:0] \x_state ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:38,9" *)
    logic[10:0] _e_732;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:39,9" *)
    logic[14:0] _e_734;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:40,9" *)
    logic[10:0] _e_736;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:41,9" *)
    logic[10:0] _e_738;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:34,24" *)
    logic[17:0] _e_742;
    logic \_ ;
    logic[16:0] \y_state ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:44,5" *)
    logic[33:0] _e_743;
    assign _e_717 = \timing [80:70];
    assign _e_719 = \timing [95:81];
    assign _e_721 = \timing [69:59];
    assign _e_723 = \timing [58:48];
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:24,29" *)
    \vga::vga::vga_partial_fsm  vga_partial_fsm_0(.clk_i(\clk ), .rst_i(\rst ), .next_state_i(\clk_enable ), .front_porch_i(_e_717), .active_i(_e_719), .sync_i(_e_721), .back_porch_i(_e_723), .output__(_e_727));
    assign \next_y  = _e_727[17];
    assign \x_state  = _e_727[16:0];
    assign _e_732 = \timing [32:22];
    assign _e_734 = \timing [47:33];
    assign _e_736 = \timing [21:11];
    assign _e_738 = \timing [10:0];
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:34,24" *)
    \vga::vga::vga_partial_fsm  vga_partial_fsm_1(.clk_i(\clk ), .rst_i(\rst ), .next_state_i(\next_y ), .front_porch_i(_e_732), .active_i(_e_734), .sync_i(_e_736), .back_porch_i(_e_738), .output__(_e_742));
    assign \_  = _e_742[17];
    assign \y_state  = _e_742[16:0];
    assign _e_743 = {\x_state , \y_state };
    assign output__ = _e_743;
endmodule

module \vga::vga::vga_frame_done  (
        input[33:0] state_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "vga::vga::vga_frame_done" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \vga::vga::vga_frame_done );
        end
    end
    `endif
    logic[33:0] \state ;
    assign \state  = state_i;
    logic[16:0] _e_750;
    logic[10:0] _e_749;
    logic[16:0] _e_752;
    logic[10:0] _e_751;
    logic _e_1158;
    logic[10:0] _e_1160;
    logic _e_1159;
    logic _e_1161;
    logic _e_1163;
    logic[10:0] _e_1165;
    logic _e_1164;
    logic _e_1166;
    logic _e_1167;
    logic _e_755;
    logic _e_1168;
    logic _e_757;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:49,5" *)
    logic _e_747;
    assign _e_750 = \state [33:17];
    assign _e_749 = _e_750[14:4];
    assign _e_752 = \state [16:0];
    assign _e_751 = _e_752[14:4];
    assign _e_1158 = _e_750[16:15] == 2'd2;
    assign _e_1160 = 0;
    assign _e_1159 = _e_749 == _e_1160;
    assign _e_1161 = _e_1158 && _e_1159;
    assign _e_1163 = _e_752[16:15] == 2'd2;
    assign _e_1165 = 0;
    assign _e_1164 = _e_751 == _e_1165;
    assign _e_1166 = _e_1163 && _e_1164;
    assign _e_1167 = _e_1161 && _e_1166;
    assign _e_755 = 1;
    assign _e_1168 = 1;
    assign _e_757 = 0;
    always_comb begin
        priority casez ({_e_1167, _e_1168})
            2'b1?: _e_747 = _e_755;
            2'b01: _e_747 = _e_757;
            2'b?: _e_747 = 'x;
        endcase
    end
    assign output__ = _e_747;
endmodule

module \vga::vga::vga_output  (
        input[33:0] vga_state_i,
        output[33:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "vga::vga::vga_output" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \vga::vga::vga_output );
        end
    end
    `endif
    logic[33:0] \vga_state ;
    assign \vga_state  = vga_state_i;
    logic[16:0] _e_762;
    logic[14:0] \x ;
    logic[16:0] _e_764;
    logic[14:0] \y ;
    logic _e_1170;
    logic _e_1172;
    logic _e_1173;
    logic _e_1174;
    logic _e_1176;
    logic _e_1177;
    logic _e_1178;
    logic _e_1179;
    logic _e_1180;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:71,90" *)
    logic[29:0] _e_767;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:71,84" *)
    logic[30:0] _e_766;
    logic _e_1181;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:72,14" *)
    logic[30:0] _e_771;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:70,17" *)
    logic[30:0] \pixel ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:75,23" *)
    logic[16:0] _e_774;
    logic[10:0] \_ ;
    logic _e_1183;
    logic _e_1184;
    logic _e_1185;
    logic _e_778;
    logic _e_1186;
    logic _e_780;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:75,17" *)
    logic \hsync ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:80,23" *)
    logic[16:0] _e_783;
    logic[10:0] __n1;
    logic _e_1188;
    logic _e_1189;
    logic _e_1190;
    logic _e_787;
    logic _e_1191;
    logic _e_789;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:80,17" *)
    logic \vsync ;
    logic[29:0] __n2;
    logic _e_1193;
    logic _e_1194;
    logic _e_1195;
    logic _e_795;
    logic _e_1197;
    logic _e_797;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:85,17" *)
    logic \blank ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:90,5" *)
    logic[33:0] _e_799;
    assign _e_762 = \vga_state [33:17];
    assign \x  = _e_762[14:0];
    assign _e_764 = \vga_state [16:0];
    assign \y  = _e_764[14:0];
    assign _e_1170 = 1;
    assign _e_1172 = _e_762[16:15] == 2'd1;
    assign _e_1173 = 1;
    assign _e_1174 = _e_1172 && _e_1173;
    assign _e_1176 = _e_764[16:15] == 2'd1;
    assign _e_1177 = 1;
    assign _e_1178 = _e_1176 && _e_1177;
    assign _e_1179 = _e_1170 && _e_1174;
    assign _e_1180 = _e_1179 && _e_1178;
    assign _e_767 = {\x , \y };
    assign _e_766 = {1'd0, _e_767};
    assign _e_1181 = 1;
    assign _e_771 = {1'd1, 30'bX};
    always_comb begin
        priority casez ({_e_1180, _e_1181})
            2'b1?: \pixel  = _e_766;
            2'b01: \pixel  = _e_771;
            2'b?: \pixel  = 'x;
        endcase
    end
    assign _e_774 = \vga_state [33:17];
    assign \_  = _e_774[14:4];
    assign _e_1183 = _e_774[16:15] == 2'd3;
    assign _e_1184 = 1;
    assign _e_1185 = _e_1183 && _e_1184;
    assign _e_778 = 1;
    assign _e_1186 = 1;
    assign _e_780 = 0;
    always_comb begin
        priority casez ({_e_1185, _e_1186})
            2'b1?: \hsync  = _e_778;
            2'b01: \hsync  = _e_780;
            2'b?: \hsync  = 'x;
        endcase
    end
    assign _e_783 = \vga_state [16:0];
    assign __n1 = _e_783[14:4];
    assign _e_1188 = _e_783[16:15] == 2'd3;
    assign _e_1189 = 1;
    assign _e_1190 = _e_1188 && _e_1189;
    assign _e_787 = 1;
    assign _e_1191 = 1;
    assign _e_789 = 0;
    always_comb begin
        priority casez ({_e_1190, _e_1191})
            2'b1?: \vsync  = _e_787;
            2'b01: \vsync  = _e_789;
            2'b?: \vsync  = 'x;
        endcase
    end
    assign __n2 = \pixel [29:0];
    assign _e_1193 = \pixel [30] == 1'd0;
    assign _e_1194 = 1;
    assign _e_1195 = _e_1193 && _e_1194;
    assign _e_795 = 0;
    assign _e_1197 = \pixel [30] == 1'd1;
    assign _e_797 = 1;
    always_comb begin
        priority casez ({_e_1195, _e_1197})
            2'b1?: \blank  = _e_795;
            2'b01: \blank  = _e_797;
            2'b?: \blank  = 'x;
        endcase
    end
    assign _e_799 = {\hsync , \vsync , \blank , \pixel };
    assign output__ = _e_799;
endmodule

module \vga::vga::vga_partial_fsm  (
        input clk_i,
        input rst_i,
        input next_state_i,
        input[10:0] front_porch_i,
        input[14:0] active_i,
        input[10:0] sync_i,
        input[10:0] back_porch_i,
        output[17:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "vga::vga::vga_partial_fsm" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \vga::vga::vga_partial_fsm );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \next_state ;
    assign \next_state  = next_state_i;
    logic[10:0] \front_porch ;
    assign \front_porch  = front_porch_i;
    logic[14:0] \active ;
    assign \active  = active_i;
    logic[10:0] \sync ;
    assign \sync  = sync_i;
    logic[10:0] \back_porch ;
    assign \back_porch  = back_porch_i;
    logic[14:0] _e_809;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:114,31" *)
    logic[16:0] _e_808;
    logic[10:0] \duration ;
    logic _e_1199;
    logic _e_1200;
    logic _e_1201;
    logic[10:0] _e_825;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:118,42" *)
    logic[11:0] _e_823;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:118,36" *)
    logic[10:0] _e_822;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:118,24" *)
    logic _e_820;
    logic[14:0] _e_828;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:119,25" *)
    logic[16:0] _e_827;
    logic[10:0] _e_834;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:122,58" *)
    logic[11:0] _e_832;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:122,52" *)
    logic[10:0] _e_831;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:122,25" *)
    logic[16:0] _e_830;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:118,21" *)
    logic[16:0] _e_819;
    logic[14:0] duration_n1;
    logic _e_1203;
    logic _e_1204;
    logic _e_1205;
    logic[14:0] _e_844;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:126,42" *)
    logic[15:0] _e_842;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:126,36" *)
    logic[14:0] _e_841;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:126,24" *)
    logic _e_839;
    logic[10:0] _e_847;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:127,25" *)
    logic[16:0] _e_846;
    logic[14:0] _e_853;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:130,55" *)
    logic[15:0] _e_851;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:130,49" *)
    logic[14:0] _e_850;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:130,25" *)
    logic[16:0] _e_849;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:126,21" *)
    logic[16:0] _e_838;
    logic[10:0] duration_n2;
    logic _e_1207;
    logic _e_1208;
    logic _e_1209;
    logic[10:0] _e_863;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:134,42" *)
    logic[11:0] _e_861;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:134,36" *)
    logic[10:0] _e_860;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:134,24" *)
    logic _e_858;
    logic[10:0] _e_866;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:135,25" *)
    logic[16:0] _e_865;
    logic[10:0] _e_872;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:138,59" *)
    logic[11:0] _e_870;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:138,53" *)
    logic[10:0] _e_869;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:138,25" *)
    logic[16:0] _e_868;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:134,21" *)
    logic[16:0] _e_857;
    logic[10:0] duration_n3;
    logic _e_1211;
    logic _e_1212;
    logic _e_1213;
    logic[10:0] _e_882;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:142,42" *)
    logic[11:0] _e_880;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:142,36" *)
    logic[10:0] _e_879;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:142,24" *)
    logic _e_877;
    logic[10:0] _e_885;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:143,25" *)
    logic[16:0] _e_884;
    logic[10:0] _e_891;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:146,53" *)
    logic[11:0] _e_889;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:146,47" *)
    logic[10:0] _e_888;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:146,25" *)
    logic[16:0] _e_887;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:142,21" *)
    logic[16:0] _e_876;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:116,13" *)
    logic[16:0] _e_814;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:115,9" *)
    logic[16:0] _e_811;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:114,14" *)
    reg[16:0] \state ;
    logic[10:0] duration_n4;
    logic _e_1215;
    logic _e_1216;
    logic _e_1217;
    logic[10:0] _e_905;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:158,34" *)
    logic[11:0] _e_903;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:158,28" *)
    logic[10:0] _e_902;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:158,16" *)
    logic _e_900;
    logic _e_909;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:158,13" *)
    logic _e_899;
    logic _e_1218;
    logic _e_911;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:156,21" *)
    logic \carry_out ;
    (* src = "build/libs/hdmi/build/libs/vga/src/vga.spade:168,6" *)
    logic[17:0] _e_913;
    assign _e_809 = 0;
    assign _e_808 = {2'd1, _e_809};
    assign \duration  = \state [14:4];
    assign _e_1199 = \state [16:15] == 2'd0;
    assign _e_1200 = 1;
    assign _e_1201 = _e_1199 && _e_1200;
    assign _e_825 = 1;
    assign _e_823 = $signed(\back_porch ) - $signed(_e_825);
    assign _e_822 = _e_823[10:0];
    assign _e_820 = \duration  == _e_822;
    assign _e_828 = 0;
    assign _e_827 = {2'd1, _e_828};
    assign _e_834 = 1;
    assign _e_832 = $signed(\duration ) + $signed(_e_834);
    assign _e_831 = _e_832[10:0];
    assign _e_830 = {2'd0, _e_831, 4'bX};
    assign _e_819 = _e_820 ? _e_827 : _e_830;
    assign duration_n1 = \state [14:0];
    assign _e_1203 = \state [16:15] == 2'd1;
    assign _e_1204 = 1;
    assign _e_1205 = _e_1203 && _e_1204;
    assign _e_844 = 1;
    assign _e_842 = $signed(\active ) - $signed(_e_844);
    assign _e_841 = _e_842[14:0];
    assign _e_839 = duration_n1 == _e_841;
    assign _e_847 = 0;
    assign _e_846 = {2'd2, _e_847, 4'bX};
    assign _e_853 = 1;
    assign _e_851 = $signed(duration_n1) + $signed(_e_853);
    assign _e_850 = _e_851[14:0];
    assign _e_849 = {2'd1, _e_850};
    assign _e_838 = _e_839 ? _e_846 : _e_849;
    assign duration_n2 = \state [14:4];
    assign _e_1207 = \state [16:15] == 2'd2;
    assign _e_1208 = 1;
    assign _e_1209 = _e_1207 && _e_1208;
    assign _e_863 = 1;
    assign _e_861 = $signed(\front_porch ) - $signed(_e_863);
    assign _e_860 = _e_861[10:0];
    assign _e_858 = duration_n2 == _e_860;
    assign _e_866 = 0;
    assign _e_865 = {2'd3, _e_866, 4'bX};
    assign _e_872 = 1;
    assign _e_870 = $signed(duration_n2) + $signed(_e_872);
    assign _e_869 = _e_870[10:0];
    assign _e_868 = {2'd2, _e_869, 4'bX};
    assign _e_857 = _e_858 ? _e_865 : _e_868;
    assign duration_n3 = \state [14:4];
    assign _e_1211 = \state [16:15] == 2'd3;
    assign _e_1212 = 1;
    assign _e_1213 = _e_1211 && _e_1212;
    assign _e_882 = 1;
    assign _e_880 = $signed(\sync ) - $signed(_e_882);
    assign _e_879 = _e_880[10:0];
    assign _e_877 = duration_n3 == _e_879;
    assign _e_885 = 0;
    assign _e_884 = {2'd0, _e_885, 4'bX};
    assign _e_891 = 1;
    assign _e_889 = $signed(duration_n3) + $signed(_e_891);
    assign _e_888 = _e_889[10:0];
    assign _e_887 = {2'd3, _e_888, 4'bX};
    assign _e_876 = _e_877 ? _e_884 : _e_887;
    always_comb begin
        priority casez ({_e_1201, _e_1205, _e_1209, _e_1213})
            4'b1???: _e_814 = _e_819;
            4'b01??: _e_814 = _e_838;
            4'b001?: _e_814 = _e_857;
            4'b0001: _e_814 = _e_876;
            4'b?: _e_814 = 'x;
        endcase
    end
    assign _e_811 = \next_state  ? _e_814 : \state ;
    always @(posedge \clk , posedge \rst ) begin
        if (\rst ) begin
            \state  <= _e_808;
        end
        else begin
            \state  <= _e_811;
        end
    end
    assign duration_n4 = \state [14:4];
    assign _e_1215 = \state [16:15] == 2'd3;
    assign _e_1216 = 1;
    assign _e_1217 = _e_1215 && _e_1216;
    assign _e_905 = 1;
    assign _e_903 = $signed(\sync ) - $signed(_e_905);
    assign _e_902 = _e_903[10:0];
    assign _e_900 = duration_n4 == _e_902;
    assign _e_909 = 0;
    assign _e_899 = _e_900 ? \next_state  : _e_909;
    assign _e_1218 = 1;
    assign _e_911 = 0;
    always_comb begin
        priority casez ({_e_1217, _e_1218})
            2'b1?: \carry_out  = _e_899;
            2'b01: \carry_out  = _e_911;
            2'b?: \carry_out  = 'x;
        endcase
    end
    assign _e_913 = {\carry_out , \state };
    assign output__ = _e_913;
endmodule

module \hdmi::ecp5stubs::oddrx1f  (
        input sclk_i,
        input rst_i,
        input[1:0] d_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "hdmi::ecp5stubs::oddrx1f" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \hdmi::ecp5stubs::oddrx1f );
        end
    end
    `endif
    logic \sclk ;
    assign \sclk  = sclk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[1:0] \d ;
    assign \d  = d_i;
    logic \o_mut ;
    logic[1:0] _e_923;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:22,14" *)
    logic[1:0] _e_921;
    logic[1:0] _e_924;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:22,14" *)
    logic _e_920;
    logic[1:0] _e_929;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:23,15" *)
    logic[1:0] _e_927;
    logic[1:0] _e_930;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:23,15" *)
    logic[1:0] _e_926;
    logic[1:0] _e_931;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:23,15" *)
    logic _e_925;
    logic _e_936;
    
    assign _e_923 = 1;
    assign _e_921 = \d  & _e_923;
    assign _e_924 = 1;
    assign _e_920 = _e_921 == _e_924;
    assign _e_929 = 1;
    assign _e_927 = \d  >> _e_929;
    assign _e_930 = 1;
    assign _e_926 = _e_927 & _e_930;
    assign _e_931 = 1;
    assign _e_925 = _e_926 == _e_931;
    (* src = "build/libs/hdmi/src/ecp5stubs.spade:21,13" *)
    ODDRX1F ODDRX1F_0(.SCLK(\sclk ), .RST(\rst ), .D0(_e_920), .D1(_e_925), .Q(\o_mut ));
    assign _e_936 = \o_mut ;
    assign output__ = _e_936;
endmodule

module \hdmi::main::main  (
        input clk_25mhz,
        output[3:0] gpdi_dp
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "hdmi::main::main" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \hdmi::main::main );
        end
    end
    `endif
    logic[3:0] \gpdi_dp_mut ;
    assign gpdi_dp = \gpdi_dp_mut ;
    (* src = "build/libs/hdmi/src/main.spade:19,50" *)
    logic[1:0] _e_943;
    logic \vga_clk ;
    logic \clk_shift ;
    logic _e_946;
    logic _e_947;
    (* src = "build/libs/hdmi/src/main.spade:21,18" *)
    reg \rst ;
    logic[14:0] _e_948;
    (* src = "build/libs/hdmi/src/main.spade:23,9" *)
    logic[14:0] \x_pixels ;
    logic[14:0] _e_950;
    (* src = "build/libs/hdmi/src/main.spade:24,9" *)
    logic[14:0] \y_pixels ;
    logic[10:0] _e_954;
    logic[10:0] _e_955;
    logic[10:0] _e_956;
    logic[10:0] _e_958;
    logic[10:0] _e_959;
    logic[10:0] _e_960;
    (* src = "build/libs/hdmi/src/main.spade:26,18" *)
    logic[95:0] \timing ;
    logic _e_965;
    (* src = "build/libs/hdmi/src/main.spade:37,21" *)
    logic[33:0] \vga_state ;
    (* src = "build/libs/hdmi/src/main.spade:38,50" *)
    logic[33:0] _e_974;
    logic \hsync ;
    logic \vsync ;
    logic \blank ;
    logic[30:0] \pixel ;
    logic[29:0] _e_979;
    logic[14:0] \x ;
    logic[14:0] \y ;
    logic _e_1220;
    logic _e_1222;
    logic _e_1223;
    logic _e_1224;
    logic _e_1225;
    (* src = "build/libs/hdmi/src/main.spade:42,14" *)
    logic[7:0] _e_983;
    (* src = "build/libs/hdmi/src/main.spade:42,24" *)
    logic[7:0] _e_985;
    (* src = "build/libs/hdmi/src/main.spade:42,37" *)
    logic _e_988;
    logic[7:0] _e_992;
    logic[7:0] _e_994;
    (* src = "build/libs/hdmi/src/main.spade:42,34" *)
    logic[7:0] _e_987;
    (* src = "build/libs/hdmi/src/main.spade:42,14" *)
    logic[23:0] _e_982;
    logic _e_1227;
    logic[7:0] _e_998;
    logic[7:0] _e_999;
    logic[7:0] _e_1000;
    (* src = "build/libs/hdmi/src/main.spade:45,14" *)
    logic[23:0] _e_997;
    (* src = "build/libs/hdmi/src/main.spade:40,17" *)
    logic[23:0] \color ;
    (* src = "build/libs/hdmi/src/main.spade:49,15" *)
    logic[7:0] \dvi ;
    logic _e_1015;
    (* src = "build/libs/hdmi/src/main.spade:61,40" *)
    logic[1:0] _e_1016;
    (* src = "build/libs/hdmi/src/main.spade:61,9" *)
    logic _e_1013;
    logic _e_1020;
    (* src = "build/libs/hdmi/src/main.spade:62,40" *)
    logic[1:0] _e_1021;
    (* src = "build/libs/hdmi/src/main.spade:62,9" *)
    logic _e_1018;
    logic _e_1025;
    (* src = "build/libs/hdmi/src/main.spade:63,40" *)
    logic[1:0] _e_1026;
    (* src = "build/libs/hdmi/src/main.spade:63,9" *)
    logic _e_1023;
    logic _e_1030;
    (* src = "build/libs/hdmi/src/main.spade:64,40" *)
    logic[1:0] _e_1031;
    (* src = "build/libs/hdmi/src/main.spade:64,9" *)
    logic _e_1028;
    (* src = "build/libs/hdmi/src/main.spade:60,19" *)
    logic[3:0] _e_1012;
    (* src = "build/libs/hdmi/src/main.spade:19,50" *)
    pll_480_800_60 pll_480_800_60_0(.clk_25mhz(\clk_25mhz ), .output__(_e_943));
    assign \vga_clk  = _e_943[1];
    assign \clk_shift  = _e_943[0];
    assign _e_946 = 1;
    assign _e_947 = 0;
    initial begin
        \rst  = 'b1;
    end
    always @(posedge \vga_clk ) begin
        \rst  <= _e_947;
    end
    assign _e_948 = 480;
    assign \x_pixels  = _e_948;
    assign _e_950 = 800;
    assign \y_pixels  = _e_950;
    assign _e_954 = 24;
    assign _e_955 = 48;
    assign _e_956 = 72;
    assign _e_958 = 3;
    assign _e_959 = 10;
    assign _e_960 = 18;
    assign \timing  = {\x_pixels , _e_954, _e_955, _e_956, \y_pixels , _e_958, _e_959, _e_960};
    assign _e_965 = 1;
    (* src = "build/libs/hdmi/src/main.spade:37,21" *)
    \vga::vga::vga_fsm  vga_fsm_0(.clk_i(\vga_clk ), .rst_i(\rst ), .clk_enable_i(_e_965), .timing_i(\timing ), .output__(\vga_state ));
    (* src = "build/libs/hdmi/src/main.spade:38,50" *)
    \vga::vga::vga_output  vga_output_0(.vga_state_i(\vga_state ), .output__(_e_974));
    assign \hsync  = _e_974[33];
    assign \vsync  = _e_974[32];
    assign \blank  = _e_974[31];
    assign \pixel  = _e_974[30:0];
    assign _e_979 = \pixel [29:0];
    assign \x  = _e_979[29:15];
    assign \y  = _e_979[14:0];
    assign _e_1220 = \pixel [30] == 1'd0;
    assign _e_1222 = 1;
    assign _e_1223 = 1;
    assign _e_1224 = _e_1222 && _e_1223;
    assign _e_1225 = _e_1220 && _e_1224;
    assign _e_983 = \x [7:0];
    assign _e_985 = \y [7:0];
    assign _e_988 = $signed(\x ) > $signed(\y );
    assign _e_992 = 127;
    assign _e_994 = 0;
    assign _e_987 = _e_988 ? _e_992 : _e_994;
    assign _e_982 = {_e_983, _e_985, _e_987};
    assign _e_1227 = \pixel [30] == 1'd1;
    assign _e_998 = 0;
    assign _e_999 = 0;
    assign _e_1000 = 0;
    assign _e_997 = {_e_998, _e_999, _e_1000};
    always_comb begin
        priority casez ({_e_1225, _e_1227})
            2'b1?: \color  = _e_982;
            2'b01: \color  = _e_997;
            2'b?: \color  = 'x;
        endcase
    end
    (* src = "build/libs/hdmi/src/main.spade:49,15" *)
    \hdmi::vga2dvid::vga2dvid  vga2dvid_0(.clk_pixel_i(\vga_clk ), .clk_shift_i(\clk_shift ), .rst_i(\rst ), .hsync_i(\hsync ), .vsync_i(\vsync ), .blank_i(\blank ), .color_i(\color ), .output__(\dvi ));
    assign _e_1015 = 0;
    assign _e_1016 = \dvi [3:2];
    (* src = "build/libs/hdmi/src/main.spade:61,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_0(.sclk_i(\clk_shift ), .rst_i(_e_1015), .d_i(_e_1016), .output__(_e_1013));
    assign _e_1020 = 0;
    assign _e_1021 = \dvi [5:4];
    (* src = "build/libs/hdmi/src/main.spade:62,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_1(.sclk_i(\clk_shift ), .rst_i(_e_1020), .d_i(_e_1021), .output__(_e_1018));
    assign _e_1025 = 0;
    assign _e_1026 = \dvi [7:6];
    (* src = "build/libs/hdmi/src/main.spade:63,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_2(.sclk_i(\clk_shift ), .rst_i(_e_1025), .d_i(_e_1026), .output__(_e_1023));
    assign _e_1030 = 0;
    assign _e_1031 = \dvi [1:0];
    (* src = "build/libs/hdmi/src/main.spade:64,9" *)
    \hdmi::ecp5stubs::oddrx1f  oddrx1f_3(.sclk_i(\clk_shift ), .rst_i(_e_1030), .d_i(_e_1031), .output__(_e_1028));
    assign _e_1012 = {_e_1028, _e_1023, _e_1018, _e_1013};
    assign \gpdi_dp_mut  = _e_1012;
endmodule

module \hdmi::vga2dvid::vga2dvid  (
        input clk_pixel_i,
        input clk_shift_i,
        input rst_i,
        input hsync_i,
        input vsync_i,
        input blank_i,
        input[23:0] color_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "hdmi::vga2dvid::vga2dvid" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \hdmi::vga2dvid::vga2dvid );
        end
    end
    `endif
    logic \clk_pixel ;
    assign \clk_pixel  = clk_pixel_i;
    logic \clk_shift ;
    assign \clk_shift  = clk_shift_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \hsync ;
    assign \hsync  = hsync_i;
    logic \vsync ;
    assign \vsync  = vsync_i;
    logic \blank ;
    assign \blank  = blank_i;
    logic[23:0] \color ;
    assign \color  = color_i;
    logic[1:0] _e_1034;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:23,9" *)
    logic[1:0] \one ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:24,39" *)
    logic _e_1039;
    logic _e_1042;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:24,29" *)
    logic \hsync_int ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:25,39" *)
    logic _e_1047;
    logic _e_1050;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:25,29" *)
    logic \vsync_int ;
    logic[1:0] _e_1052;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:27,9" *)
    logic[1:0] \c_red ;
    logic[1:0] _e_1054;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:28,9" *)
    logic[1:0] \c_green ;
    logic[1:0] \c_blue ;
    logic[7:0] \r ;
    logic[7:0] \g ;
    logic[7:0] \b ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:33,23" *)
    logic[9:0] \encoded_red ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:39,25" *)
    logic[9:0] \encoded_green ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:45,24" *)
    logic[9:0] \encoded_blue ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:52,38" *)
    logic[29:0] _e_1085;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:52,20" *)
    reg[29:0] \latched_pixels ;
    logic[9:0] _e_1089;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:55,9" *)
    logic[9:0] \shift_clock_initial ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:60,29" *)
    logic[1:0] \upper ;
    logic[9:0] _e_1102;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:61,34" *)
    logic[9:0] _e_1100;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:61,28" *)
    logic[7:0] \rest ;
    logic[9:0] _e_1104;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:56,20" *)
    reg[9:0] \shift_clock ;
    logic[9:0] _e_1116;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:66,40" *)
    logic[9:0] _e_1114;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:66,34" *)
    logic[1:0] \shift_comp ;
    logic[9:0] _e_1124;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:67,33" *)
    logic[9:0] _e_1122;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:67,27" *)
    logic[1:0] _e_1121;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:67,12" *)
    logic _e_1119;
    logic[9:0] _e_1131;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:71,14" *)
    logic[9:0] _e_1129;
    logic[9:0] _e_1134;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:71,30" *)
    logic[9:0] _e_1132;
    logic[9:0] _e_1137;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:71,48" *)
    logic[9:0] _e_1135;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:71,14" *)
    logic[29:0] _e_1128;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:67,9" *)
    logic[29:0] _e_1118;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:65,20" *)
    reg[29:0] _e_1110;
    logic[9:0] \shift_red ;
    logic[9:0] \shift_green ;
    logic[9:0] \shift_blue ;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:78,12" *)
    logic[1:0] _e_1139;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:79,12" *)
    logic[1:0] _e_1141;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:80,12" *)
    logic[1:0] _e_1143;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:81,16" *)
    logic[1:0] _e_1145;
    (* src = "build/libs/hdmi/src/vga2dvid.spade:77,5" *)
    logic[7:0] _e_1138;
    assign _e_1034 = 1;
    assign \one  = _e_1034;
    assign _e_1039 = \one [0:0];
    assign _e_1042 = 0;
    assign \hsync_int  = \hsync  ? _e_1039 : _e_1042;
    assign _e_1047 = \one [0:0];
    assign _e_1050 = 0;
    assign \vsync_int  = \vsync  ? _e_1047 : _e_1050;
    assign _e_1052 = 0;
    assign \c_red  = _e_1052;
    assign _e_1054 = 0;
    assign \c_green  = _e_1054;
    assign \c_blue  = {\vsync_int , \hsync_int };
    assign \r  = \color [23:16];
    assign \g  = \color [15:8];
    assign \b  = \color [7:0];
    (* src = "build/libs/hdmi/src/vga2dvid.spade:33,23" *)
    tmds_encoder_wrapper tmds_encoder_wrapper_0(.clk_i(\clk_pixel ), .data_i(\r ), .c_i(\c_red ), .blank_i(\blank ), .output__(\encoded_red ));
    (* src = "build/libs/hdmi/src/vga2dvid.spade:39,25" *)
    tmds_encoder_wrapper tmds_encoder_wrapper_1(.clk_i(\clk_pixel ), .data_i(\g ), .c_i(\c_green ), .blank_i(\blank ), .output__(\encoded_green ));
    (* src = "build/libs/hdmi/src/vga2dvid.spade:45,24" *)
    tmds_encoder_wrapper tmds_encoder_wrapper_2(.clk_i(\clk_pixel ), .data_i(\b ), .c_i(\c_blue ), .blank_i(\blank ), .output__(\encoded_blue ));
    assign _e_1085 = {\encoded_red , \encoded_green , \encoded_blue };
    always @(posedge \clk_pixel ) begin
        \latched_pixels  <= _e_1085;
    end
    assign _e_1089 = 31;
    assign \shift_clock_initial  = _e_1089;
    assign \upper  = \shift_clock [1:0];
    assign _e_1102 = 2;
    assign _e_1100 = \shift_clock  >> _e_1102;
    assign \rest  = _e_1100[7:0];
    assign _e_1104 = {\upper , \rest };
    always @(posedge \clk_shift , posedge \rst ) begin
        if (\rst ) begin
            \shift_clock  <= \shift_clock_initial ;
        end
        else begin
            \shift_clock  <= _e_1104;
        end
    end
    assign _e_1116 = 4;
    assign _e_1114 = \shift_clock  >> _e_1116;
    assign \shift_comp  = _e_1114[1:0];
    assign _e_1124 = 4;
    assign _e_1122 = \shift_clock_initial  >> _e_1124;
    assign _e_1121 = _e_1122[1:0];
    assign _e_1119 = \shift_comp  == _e_1121;
    assign _e_1131 = 2;
    assign _e_1129 = \shift_red  >> _e_1131;
    assign _e_1134 = 2;
    assign _e_1132 = \shift_green  >> _e_1134;
    assign _e_1137 = 2;
    assign _e_1135 = \shift_blue  >> _e_1137;
    assign _e_1128 = {_e_1129, _e_1132, _e_1135};
    assign _e_1118 = _e_1119 ? \latched_pixels  : _e_1128;
    always @(posedge \clk_shift ) begin
        _e_1110 <= _e_1118;
    end
    assign \shift_red  = _e_1110[29:20];
    assign \shift_green  = _e_1110[19:10];
    assign \shift_blue  = _e_1110[9:0];
    assign _e_1139 = \shift_red [1:0];
    assign _e_1141 = \shift_green [1:0];
    assign _e_1143 = \shift_blue [1:0];
    assign _e_1145 = \shift_clock [1:0];
    assign _e_1138 = {_e_1139, _e_1141, _e_1143, _e_1145};
    assign output__ = _e_1138;
endmodule

module \std::cdc::unsafe::sync2[497]  (
        input clk_i,
        input in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::unsafe::sync2[497]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::unsafe::sync2[497] );
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