entity test is
end test;

architecture Behavior of test is
component full_scheme_2
  generic (N : NATURAL :=4);
  port(c1,a1: in BIT;
    c2,c3,mc2,mc1: in BIT_VECTOR(0 to N-1);
    p2,mp2: out BIT;
    mp1: out BIT_VECTOR(0 to N-1));
end component;

constant N: natural := 4;
signal c1,a1,p2,mp2: BIT;
signal c2,c3,mc2,mc1,mp1: BIT_VECTOR(0 to (N-1));
begin
  p1 : full_scheme_2 port map (c1,a1,c2,c3,mc2,mc1,p2,mp2,mp1);
  
  c1 <= 
    '0',
    '1' after 200 ns;
    
  a1 <=
    '0',
    '1' after 100 ns,
    '0' after 200 ns,
    '1' after 300 ns;
    
  c2 <= 
    "1100",
    "1101" after 100 ns,
    "1110" after 200 ns,
    "1111" after 300 ns;
  
  c3 <= 
    "1100",
    "1101" after 100 ns,
    "1110" after 200 ns,
    "1111" after 300 ns;
  
  mc2 <= 
    "1100",
    "1101" after 100 ns,
    "1110" after 200 ns,
    "1111" after 300 ns;
    
  mc1 <= 
    "1100",
    "1101" after 100 ns,
    "1110" after 200 ns,
    "1111" after 300 ns;
    
end Behavior;
