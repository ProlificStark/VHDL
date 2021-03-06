entity test_scheme is
end test_scheme;

architecture behavior of test_scheme is
component scheme
port(x4,x3,x2,x1: in BIT;
  y1,y3: inout BIT;
  y2,y4: out BIT);
end component;

signal x4,x3,x2,x1 : BIT;
signal y4,y3,y2,y1 : BIT;

begin

p1 : scheme port map (x1=>x1,x2=>x2,x3=>x3,x4=>x4,y1=>y1,y2=>y2,y3=>y3,y4=>y4);

x4 <= '0',
  '1' after 200 ns,
  '0' after 400 ns;
  
x3 <= 
  '0',
  '1' after 100 ns,
  '0' after 200 ns,
  '1' after 300 ns,
  '0' after 400 ns;
  
x2 <= 
  '0',
  '1' after 50 ns,
  '0' after 100 ns,
  '1' after 150 ns,
  '0' after 200 ns,
  '1' after 250 ns,
  '0' after 300 ns,
  '1' after 350 ns,
  '0' after 400 ns;
  
x1 <= 
  '0',
  '1' after 25 ns,
  '0' after 50 ns,
  '1' after 75 ns,
  '0' after 100 ns,
  '1' after 125 ns,
  '0' after 150 ns,
  '1' after 175 ns,
  '0' after 200 ns,
  '1' after 225 ns,
  '0' after 250 ns,
  '1' after 275 ns,
  '0' after 300 ns,
  '1' after 325 ns,
  '0' after 350 ns,
  '1' after 375 ns,
  '0' after 400 ns;

end behavior;