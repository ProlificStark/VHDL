Library IEEE;
Use IEEE.std_logic_1164.all;

package package1 is

	constant MATRIX_SIZE: natural := 10 + 2;

	type ant_arr is array (natural range 0 to 1) of integer range 0 to MATRIX_SIZE - 1;
	type ant_near_arr is array (natural range 0 to 7) of ant_arr;
	type pheromone_arr is array (natural range 0 to MATRIX_SIZE - 1, natural range 0 to MATRIX_SIZE - 1) of integer range -1 to 32767;
	type eat_arr is array (natural range 0 to MATRIX_SIZE - 1 - 2) of std_logic_vector(0 to MATRIX_SIZE - 1 - 2);

	function random(prev_num: integer) return integer;

end package1;

package body package1 is

	function random(prev_num: integer) return integer is
	variable result: integer range 0 to 2147483647;
	begin
		result := ((5**13)*(prev_num)) mod 2147483647;
		return result;
	end random;

end package body package1;
