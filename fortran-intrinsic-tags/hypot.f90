! FORTRAN INTRINSIC PROCEDURE
!    hypot()
! 
! 
! DESCRIPTION
!    HYPOT(X,Y) is the Euclidean distance function. It is equal to
!    \sqrtX^2 + Y^2, without undue underflow or overflow.
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

function hypot(x, y)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL. 
!    Y The type and kind type parameter shall be the same as
!    X.
! 
! 
! RETURN VALUE
!    The return value has the same type and kind type parameter as X.
! 
! 
! EXAMPLE
! 
!              program test_hypot
!                real(4) :: x = 1.e0_4, y = 0.5e0_4
!                x = hypot(x,y)
!              end program test_hypot
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
