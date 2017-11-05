! FORTRAN INTRINSIC PROCEDURE
!    atan2()
! 
! 
! DESCRIPTION
!    ATAN2(Y, X) computes the principal value of the argument
!    function of the complex number X + i Y. This function can
!    be used to transform from Cartesian into polar coordinates and
!    allows to determine the angle in the correct quadrant.
! 
! 
! STANDARD
!    Fortran 77 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function atan2(y, x)

! 
! 
! ARGUMENTS
! 
!    Y The type shall be REAL. 
!    X The type and kind type parameter shall be the same as Y. 
!    If Y is zero, then X must be nonzero.
! 
! 
! RETURN VALUE
!    The return value has the same type and kind type parameter as Y. It
!    is the principal value of the complex number X + i Y.  If X
!    is nonzero, then it lies in the range -PI <= atan (x) <=q PI. 
!    The sign is positive if Y is positive.  If Y is zero, then
!    the return value is zero if X is strictly positive, PI if
!    X is negative and Y is positive zero (or the processor does
!    not handle signed zeros), and -PI if X is negative and
!    Y is negative zero.  Finally, if X is zero, then the
!    magnitude of the result is PI/2.
! 
! 
! EXAMPLE
! 
!              program test_atan2
!                real(4) :: x = 1.e0_4, y = 0.5e0_4
!                x = atan2(y,x)
!              end program test_atan2
! 
! SPECIFIC NAMES
! 
!    Name                Argument            Return type    Standard
!    ATAN2(X, Y)  REAL(4) X, Y REAL(4) Fortran 77 and later
!    DATAN2(X, Y) REAL(8) X, Y REAL(8) Fortran 77 and later
! 
! 
! AUTHOR
!    This information was taken from the GFortran documentation (https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/) and converted to a manpage by AstroFloyd (http://astrofloyd.org).
! 
!      
! COPYRIGHT      
!      Copyright (C) 1999-2015 Free Software Foundation, Inc.
!      
!      Permission is granted to copy, distribute and/or modify this document
!      under the terms of the GNU Free Documentation License, Version 1.3 or
!      any later version published by the Free Software Foundation; with the
!      Invariant Sections being Funding Free Software
!      Texts being (a) (see below), and with the Back-Cover Texts being (b)
!      (see below).  A copy of the license is included in the section entitled
!      GNU Free Documentation License''.
!      
!      (a) The FSF
!      
!           A GNU Manual
!      
!      (b) The FSF
!      
!           You have freedom to copy and modify this GNU Manual, like GNU
!           software.  Copies published by the Free Software Foundation raise
!           funds for GNU development.
!      
