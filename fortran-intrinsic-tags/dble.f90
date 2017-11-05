! FORTRAN INTRINSIC PROCEDURE
!    dble()
! 
! 
! DESCRIPTION
!    DBLE(A) Converts A to double precision real type.
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

function dble(a)

! 
! 
! ARGUMENTS
! 
!    A The type shall be INTEGER, REAL,
!    or COMPLEX.
! 
! 
! RETURN VALUE
!    The return value is of type double precision real.
! 
! 
! EXAMPLE
! 
!              program test_dble
!                  real    :: x = 2.18
!                  integer :: i = 5
!                  complex :: z = (2.3,1.14)
!                  print *, dble(x), dble(i), dble(z)
!              end program test_dble
! 
! SEE ALSO
!    REAL
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
