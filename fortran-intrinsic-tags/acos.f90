! FORTRAN INTRINSIC PROCEDURE
!    acos()
! 
! 
! DESCRIPTION
!    ACOS(X) computes the arccosine of X (inverse of COS(X)).
! 
! 
! STANDARD
!    Fortran 77 and later, for a complex argument Fortran 2008 or later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function acos(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall either be REAL with a magnitude that is
!    less than or equal to one - or the type shall be COMPLEX.
! 
! 
! RETURN VALUE
!    The return value is of the same type and kind as X. 
!    The real part of the result is in radians and lies in the range
!    0 <=q Re acos(x) <=q PI.
! 
! 
! EXAMPLE
! 
!              program test_acos
!                real(8) :: x = 0.866_8
!                x = acos(x)
!              end program test_acos
! 
! SPECIFIC NAMES
! 
!    Name            Argument         Return type     Standard
!    ACOS(X)  REAL(4) X REAL(4)  Fortran 77 and later
!    DACOS(X) REAL(8) X REAL(8)  Fortran 77 and later
! 
! 
! SEE ALSO
!    Inverse function: COS
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
