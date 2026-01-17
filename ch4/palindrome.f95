! Write a method called printPalindrome that accepts a Scanner for the 
! console as a parameter, and prompts the user to enter one or more words and 
! prints whether the entered String is a palindrome. For an added challenge, 
! make the code case-insensitive.

program TestPalindrome
    implicit none
    integer :: numWords, i 
    character(len=100) :: word

    write(*, '(A)', advance='no') 'enter num words: '
    read(*,*) numWords

    do i = 1, numWords
        write(*, '(A)', advance='no') 'enter word: '
        read(*,*) word
        call printPalindrome(word)
    end do 

contains
subroutine printPalindrome(word) 
    character(len=*), intent(in) :: word
    character(len=100) :: reversedWord
    integer :: i, length
    
    length = len_trim(word)
    reversedWord = ""

    do i = 1, length
        !each character in reversedWord is the last letter of word at index i
        ! note: word(i:i) is a substring, even if only 1 character
        reversedWord(i:i) = word(length-i+1:length-i+1)
    enddo
    
    if (word(1:length) == reversedWord(1:length)) then
        write(*, '(A)') 'It is a palindrome!'
    else
        write(*, '(A)') 'Not a palidrome.'
    end if 

end subroutine printPalindrome

end program TestPalindrome
