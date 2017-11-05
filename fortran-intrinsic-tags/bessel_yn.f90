! FORTRAN INTRINSIC PROCEDURE
!    bessel_yn()
! 
! 
! DESCRIPTION
!    BESSEL_YN(N, X) computes the Bessel function of the second kind of
!    order N of X. This function is available under the name
!    BESYN as a GNU extension.  If N and X are arrays,
!    their ranks and shapes shall conform.
! 
!    BESSEL_YN(N1, N2, X) returns an array with the Bessel functions
!    of the first kind of the orders N1 to N2.
! 
! 
! STANDARD
!    Fortran 2008 and later, negative N is allowed as GNU extension
! 
! 
! CLASS
!    Elemental function, except for the transformational function
!    BESSEL_YN(N1, N2, X)
! 
! 
! PROTOTYPE

function bessel_yn(n, x)

function bessel_yn(n1, n2, x)

! 
! 
! ARGUMENTS
! 
!    N Shall be a scalar or an array of type  INTEGER . 
!    N1 Shall be a non-negative scalar of type  INTEGER. 
!    N2 Shall be a non-negative scalar of type  INTEGER. 
!    X Shall be a scalar or an array of type  REAL;
!    for BESSEL_YN(N1, N2, X) it shall be scalar.
! 
! 
! RETURN VALUE
!    The return value is a scalar of type REAL. It has the same
!    kind as X.
! 
! 
! NOTE
!    The transformational function uses a recurrence algorithm which might,
!    for some values of X, lead to different results than calls to
!    the elemental function.
! 
! 
! EXAMPLE
! 
!              program test_besyn
!                real(8) :: x = 1.0_8
!                x = bessel_yn(5,x)
!              end program test_besyn
! 
! SPECIFIC NAMES
! 
!    Name               Argument            Return type     Standard
!    DBESYN(N,X) INTEGER N REAL(8)  GNU extension
!    REAL(8) X 
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
