program task101
implicit none
real:: x0,xk,h,u,s,x,i,n,d,y,y1,e, nmax,imax
print*, "Enter x0:"
read*,x0
print*, "Enter xk:"
read*,xk
print*, "Enter h:"
read*,h
print*, "Enter e:"
read*,e
print*, "Enter N max:"
read*,nmax

imax=((xk-x0)/h+(0.5))+1
 do i=1,imax
  x=x0+(i-1)*h
  y1=sin(x)**2

  if ((x > 1) .or. (x < (-1))) then
        print *,"error"
        n=0
         y=1
          exit
     else
     u=x*x
    s=x*x
    do n=2,nmax
    if (abs(u) .le. e*abs(s)) then
    y=s
    go to 36
    else
      u=(u*2*x*x)/(n*(1-2*n))
    s=s+u
    end if
    end do
        end if
     36  d=y-y1
     write(*,"(1a,$)") "|"
     write(*,"(F5.0,$)")i
     write(*,"(1a,$)")"|"
      write(*,"(F10.5,$)")x
     write(*,"(1a,$)")"|"
     write(*,"(F10.0,$)")n
     write(*,"(1a,$)")"|"
     write(*,"(F10.5,$)")y
     write(*,"(1a,$)")"|"
      write(*,"(1pe7.0)") d
     write(*,*)

        end do
pause
end program task101
