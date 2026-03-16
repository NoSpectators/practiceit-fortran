! Write a method named countCoins that accepts as its parameter a filename 
! whose data represents a person's money grouped into stacks of 
! coins. Your method should add up the cash values of all the coins and print 
! the total money at the end. 

! The input consists of a series of pairs of tokens, where each pair begins with an 
! integer and is followed by the type of coin, which will be either "pennies"
! (1 cent each), "nickels" (5 cents each), "dimes" (10 cents each), or "quarters" (25 cents each), 
! case-insensitively. A given coin might appear more than once on the same line.

program coins
    implicit none
    character(len=40) :: filename
    
    write(*, '(A)', advance='no') 'Enter filename: '
    read(*, '(A)') filename
    call countCoins(filename)

contains

subroutine countCoins(fname)
    character(len=*), intent(in) :: fname
    integer :: unit, ios, i, ierr 
    character(len=200) :: line

    integer  :: totalCents
    character(len=10) :: coinType
    integer :: coinAmount
    
    totalCents = 0
    
    unit=10
    open(unit=unit, file=trim(fname), status="old", action="read", iostat=ios)
   
    if (ios /= 0) then 
        print*, "Error: Could not open file.", trim(fname)
        return
    end if 
   
    do
        read(unit, '(A)', iostat=ios) line
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        
        read(line, *) coinAmount, coinType 
        write(*, '(I0 A A)') coinAmount, ' ', trim(coinType) 
    
        if (coinType == "quarters") then
            totalCents = totalCents + 25 * coinAmount 
        else if (coinType == "dimes") then 
            totalCents = totalCents + 10 * coinAmount
        else if (coinType == "nickels") then
            totalCents = totalCents + 5 * coinAmount
        else if (coinType == "pennies") then
            totalCents = totalCents + 1 * coinAmount
        end if 
    end do
    write(*, '(A I0)') 'total cents: ', totalCents 
    write(*, '(A F0.2)') 'total money: $', real(totalCents) / 100. 
end subroutine countCoins

end program coins
