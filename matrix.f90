program matrix
implicit none
integer:: n, i, j, ierr, q, c, x, m
integer, allocatable:: A(:,:)
print *, "������ ࠧ��� ���ᨢ�: "
read *, n
 x=n*n
 i=n
 j=n
 q=n
  c=n-2
   allocate(A(n,n), stat=ierr)
    if(ierr .ne. 0) then
  write(*,*) "ERROR"
  end if

 do while (x .ne. 0)

       do while (x .ne. (q*q-q+1-1))
           A(i,j)=x
           x=x-1
            if (x==(q*q-q+1-1)) exit
           i=i-1
      end do

     if (x==0)  exit
         j=j-1
         
      do while (x .ne. (q*q-q-c-1))
          A(i,j)=x
          x=x-1
          if (x==(q*q-q-c-1)) exit
          j=j-1
      end do

         i=i+1
   if (x==0)  exit
    q=q-1
    c=c-1
    
     do while (x .ne. (q*q-q+1-1))
        A(i,j)=x
        x=x-1
        if (x==(q*q-q+1-1)) exit
        i=i+1
     end do

         j=j+1
    if (x==0)  exit

   do while (x .ne. (q*q-q-c-1))
       A(i,j)=x
       x=x-1
       if (x==(q*q-q-c-1)) exit
       j=j+1
   end do

   i=i-1
  if (x==0)  exit
   q=q-1
   c=c-1
         end do

          do i=1,n
          write(*,*)(A(i,j),j=1,n)
          end do
   pause
   end program matrix

       
