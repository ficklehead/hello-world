program task18
integer:: k,n, j
print *, "Enter amount of balls: "
read *, k

print *, "Enter amount of sportsmen: "
read *, n
if (n>k) then
print *, "ERROR, k>=n"
else
    j= mod(k,n)
        print *, "The answer is: ", j
        end if
pause
end program task18
