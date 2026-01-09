! Write a method called sphereVolume that accepts a radius (a real number) as 
! a parameter and returns the volume of a sphere with that radius.

program TestSphereVolume
    implicit none
    real :: radius, v

    write(*, '(A)', advance='no') 'enter radius: '
    read (*,*) radius
    v = sphereVolume(radius)
    write(*,'(A, F0.2)', advance='no') 'volume is: ', v
    write(*,*)
contains

function sphereVolume(radius) result (volume)
    real, intent(in) :: radius
    real :: volume
    real, parameter :: PI = acos(-1.0)
    volume = (4./3.)*PI*(radius**3)
end function sphereVolume

end program TestSphereVolume
