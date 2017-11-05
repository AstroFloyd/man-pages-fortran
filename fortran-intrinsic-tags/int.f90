! FORTRAN INTRINSIC PROCEDURE
!    int()
! 
! 
! DESCRIPTION
!    Convert to integer type
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

function int(a  [, kind))

! 
! 
! ARGUMENTS
! 
!    A    Shall be of type INTEGER,
!    REAL, or COMPLEX. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    These functions return a INTEGER variable or array under
!    the following rules:
! 
! 
!    (A) If A is of type INTEGER, INT(A) = A
! 
!    (B) If A is of type REAL and |A| < 1, INT(A)
!    equals 0. If |A| \geq 1, then INT(A) is the integer
!    whose magnitude is the largest integer that does not exceed the magnitude
!    of A and whose sign is the same as the sign of A. 
! 
!    (C) If A is of type COMPLEX, rule B is applied to the real part of A. 
! 
! 
! EXAMPLE
! 
!              program test_int
!                integer :: i = 42
!                complex :: z = (-3.7, 1.0)
!                print *, int(i)
!                print *, int(z), int(z,8)
!              end program
! 
! SPECIFIC NAMES
! 
!    Name            Argument          Return type       Standard
!    INT(A)   REAL(4) A  INTEGER    Fortran 77 and later
!    IFIX(A)  REAL(4) A  INTEGER    Fortran 77 and later
!    IDINT(A) REAL(8) A  INTEGER    Fortran 77 and later
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
