! FORTRAN INTRINSIC PROCEDURE
!    nint()
! 
! 
! DESCRIPTION
!    NINT(A) rounds its argument to the nearest whole number.
! 
! 
! STANDARD
!    Fortran 77 and later, with KIND argument Fortran 90 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function nint(a  [, kind])

! 
! 
! ARGUMENTS
! 
!    A    The type of the argument shall be REAL. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    Returns A with the fractional portion of its magnitude eliminated by
!    rounding to the nearest whole number and with its sign preserved,
!    converted to an INTEGER of the default kind.
! 
! 
! EXAMPLE
! 
!              program test_nint
!                real(4) x4
!                real(8) x8
!                x4 = 1.234E0_4
!                x8 = 4.321_8
!                print *, nint(x4), idnint(x8)
!              end program test_nint
! 
! SPECIFIC NAMES
! 
!    Name             Argument           Return Type     Standard
!    NINT(A)   REAL(4) A   INTEGER Fortran 95 and later
!    IDNINT(A) REAL(8) A   INTEGER Fortran 95 and later
! 
! 
! SEE ALSO
!    CEILING, FLOOR
! 
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
