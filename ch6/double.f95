! Write a method named doubleSpace that accepts a Scanner for an input file 
! and a PrintStream for an output file as its parameters, writing into the
! output file a double-spaced version of the text in the input file.

program DoubleSpaces
    implicit none
    character(len=30) :: fileName
    
    write(*,'(A)', advance='no') 'Enter filename: '
    read(*,'(A)') fileName

    call doubleSpace(fileName)

contains
subroutine doubleSpace(fname) 
    character(len=*), intent(in) :: fname
    integer :: unit, outUnit, ios, i, ierr 
    character(len=200) :: line
    

    unit=10 
    outUnit=20

    open(unit=unit, file=trim(fname), status="old", action="read", iostat=ios)

    if (ios /= 0) then 
        print*, "Error: Could not open file.", trim(fname)
        return
    end if 

    
    ! open output file once
    open(outUnit, file="double-spaced.txt", status="replace", action="write")
    do
        read(unit, '(A)', iostat=ios) line
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        if (len_trim(line) == 0) then
            cycle
        else
            !write(*, '(A)') line
            !write(*,*)
            write(outUnit, '(A)') trim(line)
            write(outUnit, '(A)') "" ! blank line
        end if
        
        !write(*,*)
    end do
    close(unit)
    close(outUnit)
end subroutine doubleSpace

end program DoubleSpaces
