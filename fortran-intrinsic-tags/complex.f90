! FORTRAN INTRINSIC PROCEDURE
!    complex()
! 
! 
! DESCRIPTION
!    COMPLEX(X, Y) returns a complex number where X is converted
!    to the real component and Y is converted to the imaginary
!    component.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function complex(x, y)

! 
! 
! ARGUMENTS
! 
!    X The type may be INTEGER or REAL. 
!    Y The type may be INTEGER or REAL.
! 
! 
! RETURN VALUE
!    If X and Y are both of INTEGER type, then the return
!    value is of default COMPLEX type.
! 
!    If X and Y are of REAL type, or one is of REAL
!    type and one is of INTEGER type, then the return value is of
!    COMPLEX type with a kind equal to that of the REAL
!    argument with the highest precision.
! 
! 
! EXAMPLE
! 
!              program test_complex
!                  integer :: i = 42
!                  real :: x = 3.14
!                  print *, complex(i, x)
!              end program test_complex
! 
! SEE ALSO
!    CMPLX
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
