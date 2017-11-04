entity add is
port(c1,c2,c3: in BIT;
  p2,p1: out BIT);
end add;
architecture struct of add is
component
  add1 port(b1,b2: in BIT; c1,s1: out BIT);
end component;
signal t1,t2,t3: BIT;
begin
  circ1: add1 port map(c1,c2, t1,t2);
  circ2: add1 port map(t2,c3, t3,p1);
  p2 <= t1 or t3;
end struct;
