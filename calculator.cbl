       identification division.
       program-id. Simple-Calculator.
       
       data division.
       working-storage section.
       01 val1 pic S9(8)V99.
       01 val2 pic S9(8)V99.
       01 sum1 pic S9(9)V99.
       01 sign1 pic A(20).

       
       procedure division.

       *> first, we accept two numbers from the user
       display "Please Enter Two Numbers".
       accept val1.
       accept val2.

       display "What kind of computation would you like to do?".
       display "(add / subtract / divide / multiply)".
       accept sign1.
       
       if sign1 = "add" then
              compute sum1 = val1 + val2
       end-if

       if sign1 = "subtract" then
              compute sum1 = val1 - val2
       end-if

       if sign1 = "divide" then
              compute sum1 = val1 / val2
       end-if

       if sign1 = "multiply" then
              compute sum1 = val1 * val2
       end-if

       display "Answer: " sum1.
              
       stop run.
       
       end program Simple-Calculator.