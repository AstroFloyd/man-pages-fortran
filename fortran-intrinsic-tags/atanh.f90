! FORTRAN INTRINSIC PROCEDURE
!    atanh()
! 
! 
! DESCRIPTION
!    ATANH(X) computes the inverse hyperbolic tangent of X.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function atanh(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL or COMPLEX.
! 
! 
! RETURN VALUE
!    The return value has same type and kind as X. If X is
!    complex, the imaginary part of the result is in radians and lies between
!    -PI/2 <=q Im atanh(x) <=q PI/2.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_atanh
!                REAL, DIMENSION(3) :: x = (/ -1.0, 0.0, 1.0 /)
!                WRITE (*,*) ATANH(x)
!              END PROGRAM
! 
! SPECIFIC NAMES
! 
!    Name             Argument          Return type       Standard
!    DATANH(X) REAL(8) X  REAL(8)    GNU extension
! 
! 
! SEE ALSO
!    Inverse function: TANH
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
