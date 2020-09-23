program task88
implicit none
real:: x,x0,xk,dx,y,y0,yk,dy,a,a2,a3
print*,"Enter a (a>0):"
read*,a
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
a2=a*a
a3=a2*a

do y=yk,y0,(-dy)
do x=x0,xk,dx
if ((y>(abs(x))) .and. (y<(a3/(x*x+a2))))  then
write(*,"(1a,$)") "+"
else
write(*,"(1a,$)") "-"
end if
end do
write(*,*)
end do
pause
end program task88
