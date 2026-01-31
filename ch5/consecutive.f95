! Write a method named consecutive that accepts three integers as parameters 
! and returns true if they are three consecutive numbers; that is, if the 
! numbers can be arranged into an order such that there is some integer k 
! such that the parameters' values are k, k+1, and k+2. Your method should 
! return false if the integers are not consecutive. Note that order is not 
! significant; your method should return the same result for the same three 
! integers passed in any order.

program ConsecutiveInts
    implicit none
    integer :: a, b, c
    logical :: areConsecutive
    
    write(*, '(A)', advance='no') 'int a: '
    read(*,*) a
    write(*, '(A)', advance='no') 'int b: '
    read(*,*) b
    write(*, '(A)', advance='no') 'int c: ' 
    read(*,*) c
   

    areConsecutive = consecutive(a, b, c)
    if (areConsecutive) then
        write(*, '(A)') 'consecutive!'
    else
        write(*, '(A)') 'not consecutive.'
    end if 

contains
function consecutive(a, b, c) result (isCon)
    integer, intent(in) :: a, b, c
    integer :: minNum, midNum, maxNum
    logical :: isCon

    minNum = min(a, min(b, c))
    maxNum = max(a, max(b, c))
    midNum = a + b + c - maxNum - minNum 
    write(*, '(A, I0)') 'min num: ', minNum
    write(*, '(A, I0)') 'mid num: ', midNum
    write(*, '(A, I0)') 'max num: ', maxNum
    isCon = (maxNum == midNum + 1) .and. (midNum == minNum + 1)

end function consecutive

end program ConsecutiveInts
