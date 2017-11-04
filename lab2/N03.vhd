entity NO3 is 
port(A,B,C: in BIT; 
  Y: out BIT); 
end NO3; 
architecture NO3_arch of NO3 is 
begin 
  Y <= (not(A or B or C)) after 4 ns; 
end NO3_arch;
