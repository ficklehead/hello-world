program task135
implicit none
real(8):: x,x0,xk,dx,y,y0,yk,dy,l
print*,"Enter x0:"
read*,x0
print*,"Enter xk:"
read*,xk
print*,"Enter dx:"
read*,dx
print*,"Enter y0:"
read*,y0
print*,"Enter yk:"
read*,yk
print*,"Enter dy:"
read*,dy


do y=yk,y0,(-dy)
do x=x0,xk,dx
       l=x*x-3*x+2
if (y==(2**(l)))  then
write(*,"(1a,$)") "*"
else if ((y==0) .and. (x .ne. 0)) then
 write(*,"(1a,$)") "-"
 else if ((y .ne. 0) .and. (x==0)) then
  write(*,"(1a,$)") "|"
 else if ((y==0) .and. (x == 0)) then
 write(*,"(1a,$)") "+"
else
write(*,"(1a,$)") "0"
end if
end do
write(*,*)
end do
pause
end program task135
