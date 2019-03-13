use strict;
use warnings;

use Calc;

while(1){
   print "Do you want to use [basic] or [long] or [factorial] calculator or [exit]?\n\n";
   my $type = <STDIN>;
   chomp($type);

   if($type eq 'basic'){
      print "Type in 2 numbers and an operator and I'll print the results\n\n";

      print "First number: ";
      my $first = <STDIN>;
      chomp($first);

      print "The operator: ";
      my $oper = <STDIN>;
      chomp($oper);
      
      print "Second number: ";
      my $other = <STDIN>;
      chomp($other);
      
      print "Result of $first $oper $other = ",basic($first, $oper, $other), "\n\n";
   }elsif($type eq 'long'){
      long();
   }elsif($type eq 'factorial'){
      print "Type a number and I'll print the results\n\n";
      my $fac_num = <STDIN>;
      chomp($fac_num);
      print "The result is: ",fac($fac_num),"\n";
   }elsif($type eq 'exit'){
      print "I hope I am helpful today\n\n";
      last;
   }else{
      print "Sorry! I am still learing that request.\n\n";
   }
}