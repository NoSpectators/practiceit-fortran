! Write a static method named collapseSpaces that accepts a Scanner 
! representing a file as a parameter and writes that file's text to the 
! console, with multiple spaces or tabs reduced to single spaces between 
! words that appear on the same line. Each word is to appear on the same line 
! in output as it appears in the file. Notice that lines can be blank.

program Spaces
    implicit none
    character(len=40) :: filename
    
    write(*, '(A)', advance='no') 'Enter filename: '
    read(*, '(A)') filename

    call collapseSpaces(trim(filename))

contains

subroutine collapseSpaces(fName)
    character(len=*), intent(in) :: fName
    integer :: unit, ios, i, ierr 
    character(len=200) :: line
    character(len=100) :: words(200)  ! array of 200 words
    logical :: first_word


    unit=10
    open(unit=unit, file=trim(fName), status="old", action="read", iostat=ios)
   
    if (ios /= 0) then 
        print*, "Error: Could not open file.", trim(fName)
        return
    end if 

    do
        read(unit, '(A)', iostat=ios) line
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        
        ! read line into an array
        words = "" 
        read(line, *, iostat=i) words
       
        ! print out corrected line with only one space
        first_word = .true. 
        do i = 1, size(words)
            if (len_trim(words(i)) > 0) then   
                if (.not. first_word) write(*, '(A)', advance='no') ' ' 
                
                write(*, '(A)', advance='no') trim(words(i))
                first_word = .false.
            end if 
        end do
        write(*,*)
    end do
    close(unit)
end subroutine collapseSpaces
    
end program Spaces
