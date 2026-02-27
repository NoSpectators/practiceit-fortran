! Write a method named showTwos that shows the factors of 2 in a given integer.

program Twos
    implicit none
    integer :: inputNum
    write(*, '(A)', advance='no') 'enter integer:'
    read(*,*) inputNum
    call showTwos(inputNum)

contains

subroutine showTwos(n) 
    integer, intent(in) :: n
    integer :: i, val
    integer :: total     
    
    val = n
    total = 0   
   
    write(*, '(A)', advance='no') 'Factors of 2: '

    do while (mod(val, 2) == 0 .and. val /= 0)  
        write(*, '(I0, A, I0, A, I0, A)', advance='no') val, '/2 = ', val/2, ' '
        val = val/2
        total = total + 1
    end do
    write(*,*)
    write(*,'(A, I0)') 'total factors of 2: ', total
end subroutine showTwos

end program Twos
