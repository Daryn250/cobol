       identification division.
       program-id. testing.
       author Daryn Grover.
       installation infamoose.
       date-written 2026-4-30.
       date-compiled 2026-4-30.
       *> my first program written in cobol

       environment division.
       configuration section.
       source-computer.

       data division.
       working-storage section.
       01 WS-VAR PIC X(50) value "Hello World!".*> Alphanumeric String
       01 numone pic 9(2) value 5.
       01 numtwo pic 9(2) value 10.
       01 sumone pic 9(3).
       procedure division.
       
       display WS-VAR.
       compute sumone rounded = numone + numtwo
       display sumone
       stop run.

       end program testing.