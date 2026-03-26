! Write a method named flipLines that accepts as its parameter a filename for 
! an input file and that writes to the console the same file's contents with 
! successive pairs of lines reversed in order.

program Lines
    implicit none
    character(len=50) :: fname
    write(*, '(A)', advance='no') 'Enter filename: '
    read(*,'(A)') fname
    call flipLines(fname)

contains

subroutine flipLines(fname) 
    character(len=*), intent(in) :: fname
    integer :: unit, ios, i 
    character(len=200) :: line1, line2
    

    unit=10 

    open(unit=unit, file=trim(fname), status="old", action="read", iostat=ios)

    if (ios /= 0) then 
        print*, "Error: Could not open file.", trim(fname)
        return
    end if 

    
    do
        read(unit, '(A)', iostat=ios) line1
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        
        read(unit, '(A)', iostat=ios) line2
        if (ios /= 0) then 
            !odd number of lines - print last one as is
            write(*, '(A)') trim(line1)
            exit
        end if
        
        ! print flipped
        write(*, '(A)') trim(line2)
        write(*, '(A)') trim(line1)
         
    end do
    close(unit)
end subroutine flipLines

end program Lines
