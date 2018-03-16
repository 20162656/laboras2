library ieee;
use ieee.std_logic_1164.all;
 
entity muxx is
  port (
    i_sel    : in  std_logic;
    i_bit1    : in  std_logic;
    i_bit0    : in  std_logic;
    o_mux : out std_logic
    );
end muxx;
 
architecture rtl of muxx is
signal tarpinis1_gate : std_logic;
signal tarpinis2_gate : std_logic;
begin
  tarpinis1_gate <= not i_sel and i_bit1;
  tarpinis2_gate <= i_sel and i_bit0;
  o_mux <= tarpinis1_gate or tarpinis2_gate;
end rtl;
