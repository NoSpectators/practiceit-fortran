! Write a complete program in named FightSong that generates the
! following three figures of output. Use static methods to show structure and
! eliminate redundancy in your solution.
! Go, team, go!
! You can do it.
!
! Go, team, go!
! You can do it.
! You're the best,
! In the West.
! Go, team, go!
! You can do it.
!
! Go, team, go!
! You can do it.
! You're the best,
! In the West.
! Go, team, go!
! You can do it.
!
! Go, team, go!
! You can do it.

program fightSong
    implicit none
    call go()
    call printSpace()
    call go()
    call best()
    call go()
    call printSpace()
    call go()
    call best()
    call go()
    call printSpace()
    call go()
end program fightSong

subroutine go
    write(*,*) "Go, team, go!"
    write(*,*) "You can do it."
end subroutine go

subroutine printSpace
    write(*,*)
end subroutine printSpace

subroutine best
    write(*,*) "You're the best,"
    write(*,*) "In the West."
end subroutine best
