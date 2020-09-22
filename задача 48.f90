program task48
implicit none
real:: n, y , k,m , e , x
print*,"Enter E:"
read*,e
print*, "Enter amount of steps:"
read*,x
n=1
m=0
do while (n .ne. x)
k=n+1
y=0
do while (k .ne. (2*n+1))
   y=y+1/k
   k=k+1
 end do
 if ((y-m) .le. e) exit
    m=y
   n=n+1
    end do
    If ((n-1)<x) then
    print*, "Y:", y
     print *, "N: ", (n-1)
    else
   print *, "Y:", y
   end if
   



pause
end program task48
