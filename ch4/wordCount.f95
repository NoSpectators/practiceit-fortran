! Write a method called wordCount that accepts a String as its parameter and 
! returns the number of words in the String. A word is a sequence of one or 
! more nonspace characters.

program TestWordCount
    implicit none
    character(len=100) :: str
    integer :: numWords 
    write(*, '(A)', advance='no') 'enter a string: '
    read(*,'(A)') str
    numWords = wordCount(trim(str))
    write(*, '(A, I0)') 'Word count: ', numWords

contains
function wordCount(str) result (total)
    character(len=*), intent(in) :: str
    integer :: total
    integer :: i 
    logical :: inWord
    
    total = 0
    inWord = .false. ! keep track if we are "inside" a word
    
    do i = 1, len(str)
        ! if character is not a space  
        if (str(i:i) /= ' ' ) then 
            ! if not in a word, we are in a new word 
            if (.not. inWord) then 
                total = total + 1
                inWord = .true.
            end if
        ! if character is not a space
        else
            inWord = .false.
        end if 
    end do 

end function wordCount
    
end program TestWordCount
