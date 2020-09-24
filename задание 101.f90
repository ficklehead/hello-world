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
y1=0
imax=((xk-x0)/h+(0.5))+1
 do i=1,imax
  x=x0+(i-1)*h
  if ((x .le. 1) .and. (x .ge. (-1))) then
    u=(-0.5)
    s=(-0.5)
    do n=1,nmax
    if (abs(u)>e*abs(s)) then
    u=(u*2*x*x)/(n*(1-2*n))
    s=s+u
    else
    y=s
    go to 36
    end if
    end do
     else
     print *,"error"


        n=0
         y=1
          exit
        end if
  36      d=y-y1
        y1=y
     print*,"|",i,"|",x,"|",n,"|",y,"|",d

        end do
    
    





pause
end program task101
