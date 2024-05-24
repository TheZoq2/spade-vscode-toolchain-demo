#pragma once
#include <string>
#include <sstream>
#include <bitset>
#if __has_include(<Vtop.h>)
#include <Vtop.h>
class top_spade_t;
class top_spade_t_i;
top_spade_t_i* init_top_spade_t_i(top_spade_t& t);

class top_spade_t {
    public:
        top_spade_t(std::string spade_state, std::string spade_top, Vtop* top)
            : s_ext(spade::setup_spade(spade_top, spade_state))
            , top(top)
            , i(init_top_spade_t_i(*this))
            
        {
        }
        top_spade_t_i* i;
        
        rust::Box<spade::SimulationExt> s_ext;
        Vtop* top;
        std::string output_string_fn() {
        }
};
class top_spade_t_i_clk_25mhz {
    public:
        top_spade_t_i_clk_25mhz(top_spade_t& parent)
            : parent(parent)
        {}
        top_spade_t_i_clk_25mhz& operator=(std::string const& val) {
            auto value = parent.s_ext->port_value("clk_25mhz", val);
            parent.top->clk_25mhz = value->as_u64();
            return *this;
        }
    private:
        top_spade_t& parent;
};
class top_spade_t_i {
    public:
        top_spade_t_i(top_spade_t& parent)
            : parent(parent)
            , clk_25mhz(parent)
        {}
        top_spade_t_i_clk_25mhz clk_25mhz;
    private:
        top_spade_t& parent;
};
top_spade_t_i* init_top_spade_t_i(top_spade_t& t) {
    return new top_spade_t_i(t);
}

#endif