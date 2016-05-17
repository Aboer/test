use 5.010;                                                            
sub greet{                                                            
  state @previous;                                              
  $current=$_[0];                                               
  if(not @previous){print "Hi $current! You're the first one!\n";
}                                                                     
  else{print "Hi $current! @previous are also here!\n"}         
   push @previous,$current;                                      
}                                                                     
&greet("Ningbo");                                                     
&greet("Hua");                                                        
&greet("Paul");                                                       
