! FORTRAN INTRINSIC PROCEDURE
!    sin()
! 
! 
! DESCRIPTION
!    SIN(X) computes the sine of X.
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

function sin(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL or
!    COMPLEX.
! 
! 
! RETURN VALUE
!    The return value has same type and kind as X.
! 
! 
! EXAMPLE
! 
!              program test_sin
!                real :: x = 0.0
!                x = sin(x)
!              end program test_sin
! 
! SPECIFIC NAMES
! 
!    Name            Argument             Return type       Standard
!    SIN(X)   REAL(4) X     REAL(4)    f77, gnu
!    DSIN(X)  REAL(8) X     REAL(8)    f95, gnu
!    CSIN(X)  COMPLEX(4) X  COMPLEX(4) f95, gnu
!    ZSIN(X)  COMPLEX(8) X  COMPLEX(8) f95, gnu
!    CDSIN(X) COMPLEX(8) X  COMPLEX(8) f95, gnu
! 
! 
! SEE ALSO
!    ASIN
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
