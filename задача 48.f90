program task48
real:: n, y , k,m , e
e=0.00000001
n=1
m=0
do while (m-y .ne. (-1))
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
   print *, "answer: ", (n-1)



pause
end program task48
