! FORTRAN INTRINSIC PROCEDURE
!    gamma()
! 
! 
! DESCRIPTION
!    GAMMA(X) computes Gamma (\Gamma) of X. For positive,
!    integer values of X the Gamma function simplifies to the factorial
!    function \Gamma(x)=(x-1)!.
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
!    X = GAMMA(X)
! 
! 
! ARGUMENTS
! 
!    X Shall be of type REAL and neither zero
!    nor a negative integer.
! 
! 
! RETURN VALUE
!    The return value is of type REAL of the same kind as X.
! 
! 
! EXAMPLE
! 
!              program test_gamma
!                real :: x = 1.0
!                x = gamma(x) ! returns 1.0
!              end program test_gamma
! 
! SPECIFIC NAMES
! 
!    Name             Argument         Return type       Standard
!    GAMMA(X)  REAL(4) X REAL(4)    GNU Extension
!    DGAMMA(X) REAL(8) X REAL(8)    GNU Extension
! 
! 
! SEE ALSO
!    Logarithm of the Gamma function: LOG_GAMMA
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
