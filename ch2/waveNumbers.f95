! Write DO loops to produce the following output, with each line 40
! characters wide:
!
! ----------------------------------------
! _-^-_-^-_-^-_-^-_-^-_-^-_-^-_-^-_-^-_-^-
! 1122334455667788990011223344556677889900
! ----------------------------------------


program WaveNumbers
    implicit none
    call hyphens()
    call waves()
    call twosNums()
    call hyphens()
end program WaveNumbers

subroutine hyphens
    implicit none
    integer :: i 
    do i = 1, 40
        write(*, '(A)', advance='no') "-"
    enddo
    write(*,*) !newline
end subroutine hyphens

subroutine waves
    implicit none
    integer :: i
    do i = 1, 10
        write(*, '(A)', advance='no') "_-^-"
    enddo
    write(*,*) !newline
end subroutine waves

subroutine twosNums
    implicit none
    integer :: i, j, k
    ! two of the same patterns form the entire row 
    do i = 1, 2 
        do j = 1, 10 
            do k = 1, 2
               write(*, '(I1)', advance='no') mod(j, 10) !modulus 
            enddo
        enddo
    enddo
    write(*,*)
end subroutine twosNums
