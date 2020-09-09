program task23
   real:: y, d, n, g, m, i, j
   print *, "Enter year: "
   read *, y
   if (y<1900)       then
        print *, "ERROR"
   else
         print *, "Enter month: "
        read *, m
        if(m>12 .or. m<0) then
             print *, "ERROR"
        else
             m=m+13
              print *, "Enter day: "
             read *, d
             If (d<0 .or. d>31) then
                  print *, "ERROR"
             else
                  if (m==14 .or. m==15) then
                       g=y-1
                  else
                       g=y
                  end if
             end if
        end if
   end if
   i= int(365.25*g)
   j=int(30.56*m)
   n= i- 694066 + j + d
   print *, "The answer is: ", n
pause
end program task23
