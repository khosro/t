

-- https://www.w3schools.com/SQL/func_sqlserver_rand.asp



-- Return a random decimal number (no seed value - so it returns a completely random number >= 0 and <1):
 SELECT RAND(); 

 -- Return a random decimal number (with seed value of 6):
  SELECT RAND(6); 

-- Return a random decimal number >= 5 and <10:
SELECT RAND()*(10-5)+5; 



-- Return a random number >= 5 and <=10:
SELECT FLOOR(RAND()*(10-5+1)+5); 