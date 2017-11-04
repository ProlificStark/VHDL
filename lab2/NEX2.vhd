entity NEX2 is 
port(A, B: in BIT; 
  Y: out BIT); 
end NEX2; 

architecture NEX2_arch of NEX2 is 
begin 
  Y <= ((A and B) or ((not A) and (not B))) after 5 ns;
end NEX2_arch;