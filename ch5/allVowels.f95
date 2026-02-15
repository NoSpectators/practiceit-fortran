! Write a method named isAllVowels that returns whether a String consists 
! entirely of vowels (a, e, i, o, or u, case-insensitively). If every
! character of the String is a vowel, your method should return true. If any
! character of the String is a non-vowel, your method should return false.
! Your method should return true if passed the empty string, since it does 
! not contain any non-vowel characters.

program AllVowels
    implicit none
    character(len=100) :: s
    logical :: allV

    write(*, '(A)', advance='no') 'Enter a string: '
    read(*,'(A)') s
    allV = isAllVowels(s)
    if (allV) then
        write(*, '(A)') 'all vowels!'
    else 
        write(*, '(A)') 'does not contain all vowels.'
    end if 

contains
logical function isAllVowels(s) result (r)
    character(len=*), intent(in) :: s
    character(len=10) :: vowels
    integer :: i, j
    logical :: currentCharMatch
    
    vowels = "aeiouAEIOU"
    r = .true.

    do i = 1, len_trim(s)
        currentCharMatch = .false.
        do j = 1, len(vowels)
            if (s(i:i) == vowels(j:j)) then
                currentCharMatch = .true. ! current char has a match. break out of inner loop, go to outer loop
                exit ! move on to next letter in outer loop
            end if
        end do    
        if (.not. currentCharMatch) then
            r = .false.
            return ! exit program. found a non-vowel
        end if
    end do
end function isAllVowels

end program AllVowels
