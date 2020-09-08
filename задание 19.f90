program task19

   implicit none

   real :: A, T, n
   integer :: i
  print *, 'Task 19'
   print *, 'Enter amount of money'
   read *,A
   print *, 'Enter percent per year'
   read *,T
   print *, 'Enter amount of years'
   read *,n
do i=1,n
A=A+A*(T/100)
 end do
   print *, 'The answer is ', A
   pause
end program task19
