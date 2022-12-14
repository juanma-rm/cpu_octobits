library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

package utils_pkg is

    constant data_width_c : integer	:= 8;
    constant nb_regs_c    : integer	:= 8;
    type register_map_t is (regA, regB, acc, status, pc, mar, mdr, cir, gpr_base);
    
    type alu_op_t is (alu_add, alu_sub, alu_not, alu_or, alu_and, alu_nor, alu_nand, alu_xor);
    type status_flag_t is record
        zero     : std_logic;
        carry    : std_logic;
        sign_neg : std_logic;
        overflow : std_logic;
        unused   : std_logic_vector(data_width_c - 1 - 4 downto 0);
    end record;

    pure function log2_ceil( i : positive ) return natural; 

end package;

package body utils_pkg is

    pure function log2_ceil( i : positive ) return natural is
        variable ret_val : integer;
	begin
        ret_val := integer(ceil(ieee.math_real.log2(real(i))));
		return ret_val;
	end function;

end utils_pkg;