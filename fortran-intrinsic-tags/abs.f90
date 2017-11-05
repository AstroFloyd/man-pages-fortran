! FORTRAN INTRINSIC PROCEDURE
!    abs()
! 
! 
! DESCRIPTION
!    ABS(A) computes the absolute value of A.
! 
! 
! STANDARD
!    Fortran 77 and later, has overloads that are GNU extensions
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function abs(a)

! 
! 
! ARGUMENTS
! 
!    A The type of the argument shall be an INTEGER,
!    REAL, or COMPLEX.
! 
! 
! RETURN VALUE
!    The return value is of the same type and
!    kind as the argument except the return value is REAL for a
!    COMPLEX argument.
! 
! 
! EXAMPLE
! 
!              program test_abs
!                integer :: i = -1
!                real :: x = -1.e0
!                complex :: z = (-1.e0,0.e0)
!                i = abs(i)
!                x = abs(x)
!                x = abs(z)
!              end program test_abs
! 
! SPECIFIC NAMES
! 
!    Name            Argument            Return type       Standard
!    ABS(A)   REAL(4) A    REAL(4)    Fortran 77 and later
!    CABS(A)  COMPLEX(4) A REAL(4)    Fortran 77 and later
!    DABS(A)  REAL(8) A    REAL(8)    Fortran 77 and later
!    IABS(A)  INTEGER(4) A INTEGER(4) Fortran 77 and later
!    ZABS(A)  COMPLEX(8) A COMPLEX(8) GNU extension
!    CDABS(A) COMPLEX(8) A COMPLEX(8) GNU extension
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
