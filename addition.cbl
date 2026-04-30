       identification division.
       program-id. input-and-output.

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 numone pic 9(8).
       01 numtwo pic 9(8).
       01 summ pic 9(9). *> broken on purpose.

       01 display-num pic ZZZZZZZZ9.
       01 display-num-final pic X(9).
      
       procedure division.
       display "Please input a number".
       accept numone.
       display "Please input a second number".
       accept numtwo.
       compute summ = numone + numtwo.

       move summ to display-num. *> replace leading 0's with spaces
      
       move function trim(display-num leading) to display-num-final. *> remove leading spaces


       display "The sum is: " display-num-final
       
       stop run.

       end program input-and-output.