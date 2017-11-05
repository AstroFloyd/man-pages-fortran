! FORTRAN INTRINSIC PROCEDURE
!    dcmplx()
! 
! 
! DESCRIPTION
!    DCMPLX(X [,Y]) returns a double complex number where X is
!    converted to the real component.  If Y is present it is converted to the
!    imaginary component.  If Y is not present then the imaginary component is
!    set to 0.0.  If X is complex then Y must not be present.
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

function dcmplx(x  [, y])

! 
! 
! ARGUMENTS
! 
!    X The type may be INTEGER, REAL,
!    or COMPLEX. 
!    Y (Optional if X is not COMPLEX.) May be
!    INTEGER or REAL.
! 
! 
! RETURN VALUE
!    The return value is of type COMPLEX(8)
! 
! 
! EXAMPLE
! 
!              program test_dcmplx
!                  integer :: i = 42
!                  real :: x = 3.14
!                  complex :: z
!                  z = cmplx(i, x)
!                  print *, dcmplx(i)
!                  print *, dcmplx(x)
!                  print *, dcmplx(z)
!                  print *, dcmplx(x,i)
!              end program test_dcmplx
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
