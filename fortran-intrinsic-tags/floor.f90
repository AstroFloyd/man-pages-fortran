! FORTRAN INTRINSIC PROCEDURE
!    floor()
! 
! 
! DESCRIPTION
!    FLOOR(A) returns the greatest integer less than or equal to X.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function floor(a  [, kind])

! 
! 
! ARGUMENTS
! 
!    A The type shall be REAL. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER(KIND) if KIND is present
!    and of default-kind INTEGER otherwise.
! 
! 
! EXAMPLE
! 
!              program test_floor
!                  real :: x = 63.29
!                  real :: y = -63.59
!                  print *, floor(x) ! returns 63
!                  print *, floor(y) ! returns -64
!              end program test_floor
! 
! SEE ALSO
!    CEILING, NINT
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
