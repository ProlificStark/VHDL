entity main is
end main;

architecture struct of main is

constant MATRIX_SIZE : natural := 10; -- ??????????? ???????
type TWO_DEMENSION is array (natural range <>, natural range <>) of integer; -- ????????? ??????
type ant_arr is array (natural range 0 to 1) of integer; -- ??????? ??????? ? ???????
type ant_near_arr is array (natural range 0 to 7, natural range 0 to 1) of integer; -- ???????? 8 ????????? ???????? ??.

signal ant : ant_arr;

begin
  m1: process(ant)
    variable matrix : TWO_DEMENSION(0 to MATRIX_SIZE-1+2, 0 to MATRIX_SIZE-1+2); -- +2 ??? ??????
    variable max_fer : integer; -- ???????????? ????? ????????, ?????????? ?????? ? ant_near
    variable ant_near : ant_near_arr; -- ???????? ??????
    begin
      
      --????????????? ???????, ??????? ??????? = -1
      matrix := (
        0 => (others => -1),
        1 => (1=>1,2=>2,3=>2,4=>1,5=>1,6=>0,7=>0,8=>1,9=>2,10=>2,others => -1),
        2 => (1=>0,2=>0,3=>0,4=>2,5=>0,6=>1,7=>0,8=>0,9=>0,10=>2,others => -1),
        3 => (1=>0,2=>0,3=>0,4=>0,5=>3,6=>0,7=>1,8=>0,9=>0,10=>2,others => -1),
        4 => (1=>0,2=>0,3=>0,4=>3,5=>0,6=>0,7=>0,8=>1,9=>0,10=>2,others => -1),
        5 => (1=>0,2=>0,3=>0,4=>3,5=>0,6=>0,7=>1,8=>0,9=>0,10=>2,others => -1),
        6 => (1=>0,2=>0,3=>0,4=>0,5=>3,6=>0,7=>0,8=>1,9=>0,10=>2,others => -1),
        7 => (1=>0,2=>0,3=>0,4=>2,5=>4,6=>1,7=>0,8=>1,9=>0,10=>2,others => -1),
        8 => (1=>0,2=>0,3=>1,4=>0,5=>1,6=>5,7=>1,8=>0,9=>1,10=>2,others => -1),
        9 => (1=>0,2=>0,3=>1,4=>0,5=>1,6=>2,7=>6,8=>6,9=>6,10=>3,others => -1),
        10=> (1=>0,2=>0,3=>0,4=>2,5=>2,6=>2,7=>3,8=>3,9=>3,10=>10,others => -1),
        11=> (others => -1)
      );
      
      ant <= (0=>1,1=>1); -- ??????? ???????: 1 ??????, 1 ???????
      -- [10,10] - ??????????
      
      l1: loop
        exit l1 when (ant(0) = MATRIX_SIZE and ant(1) = MATRIX_SIZE); -- ????? ???????? ???????????
                 
        ant_near := (
          0 => (0=>ant(0)+1,1=>ant(1)+1),
          1 => (0=>ant(0)+1,1=>ant(1)  ),
          2 => (0=>ant(0),  1=>ant(1)+1),
          3 => (0=>ant(0)+1,1=>ant(1)-1),
          4 => (0=>ant(0)-1,1=>ant(1)+1),
          5 => (0=>ant(0),  1=>ant(1)-1),
          6 => (0=>ant(0)+1,1=>ant(1)  ),
          7 => (0=>ant(0)-1,1=>ant(1)-1)
        );
        
        max_fer := 0; -- ??????, ? ??????? ?????????? ?????????? ????????
        
        ll1: for i in 1 to 7 loop -- ??????? ???????? ??????, ?????????? ???, ? ??????? ?????? ????????
          if(matrix(ant_near(i,0),ant_near(i,1)) > matrix(ant_near(max_fer,0),ant_near(max_fer,1))) then 
            max_fer := i;
          end if;
        end loop ll1;
        
        ant <= (0=>ant_near(max_fer,0), 1=>ant_near(max_fer,1)); -- ??????? ?? ????. ??????
        --wait for 100 ns;
        
      end loop l1;
      
  end process;    

  
end struct;

