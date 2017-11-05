! FORTRAN INTRINSIC PROCEDURE
!    cmplx()
! 
! 
! DESCRIPTION
!    CMPLX(X  [, Y  [, KIND]]) returns a complex number where X is converted to
!    the real component.  If Y is present it is converted to the imaginary
!    component.  If Y is not present then the imaginary component is set to
!    0.0.  If X is complex then Y must not be present.
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

function cmplx(x  [, y  [, kind]])

! 
! 
! ARGUMENTS
! 
!    X The type may be INTEGER, REAL,
!    or COMPLEX. 
!    Y (Optional; only allowed if X is not
!    COMPLEX.)  May be INTEGER or REAL. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of COMPLEX type, with a kind equal to
!    KIND if it is specified.  If KIND is not specified, the
!    result is of the default COMPLEX kind, regardless of the kinds of
!    X and Y.
! 
! 
! EXAMPLE
! 
!              program test_cmplx
!                  integer :: i = 42
!                  real :: x = 3.14
!                  complex :: z
!                  z = cmplx(i, x)
!                  print *, z, cmplx(x)
!              end program test_cmplx
! 
! SEE ALSO
!    COMPLEX
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
