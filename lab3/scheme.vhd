entity scheme is
port(a1,b1,mc2,mc1,c1,c2,c3: in BIT;
p2,p1,mp2,mp1: out BIT);
end scheme;

architecture str of scheme is
------------------------------
component add
  port(c1,c2,c3: in BIT;
  p2,p1: out BIT);
end component;
------------------------------
component mult 
  port(a1,b1,mc2,mc1: in BIT;
  mp2, mp1: out BIT);
end component;

begin 
  circ1: add port map(c1,c2,c3,p2,p1);
  circ2: mult port map(a1,b1,mc2,mc1,mp2,mp1);
end str;