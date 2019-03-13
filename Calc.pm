package Calc;
use strict;
use warnings;

use Exporter qw(import);
 
our @EXPORT = qw(basic fac long);

sub basic{
   my $str = eval "$_[0] $_[1] $_[2]";
   return $str;
}

sub long{
   my $oper = '+';
   my $current = 0;
   my $first = 'true';

   print "Type a number followed by an operator [+,=,*,/] and end with [=]\n\n";

   while($oper ne '='){
      if($first eq 'true'){
         print "Number: ";
         my $num1 = <STDIN>;
         chomp($num1);
         $current = $num1;
         $first = 'false';
      }

      print "Operator: ";
      $oper = <STDIN>;
      chomp($oper);

      if($oper eq '='){
         last;
      }else{
         print "Number: ";
         my $num2 = <STDIN>;
         chomp($num2);
         if($oper eq '+'){
            $current = $current + $num2;
         }elsif($oper eq '-'){
            $current = $current - $num2;
         }elsif($oper eq '*'){
            $current = $current * $num2;
         }elsif($oper eq '/'){
            $current = $current / $num2;
         }
      }
   };

   print "the total is: $current\n\n";
}

sub fac{
   my($x) = $_[0];
   if ($x == 0 || $x == 1){
      return 1;
   }
   else{
      return $x*fac($x-1);
   }
}