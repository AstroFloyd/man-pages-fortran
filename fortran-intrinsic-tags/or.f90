! FORTRAN INTRINSIC PROCEDURE
!    or()
! 
! 
! DESCRIPTION
!    Bitwise logical OR.
! 
!    This intrinsic routine is provided for backwards compatibility with
!    GNU Fortran 77.  For integer arguments, programmers should consider
!    the use of the IOR intrinsic defined by the Fortran standard.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Function
! 
! 
! PROTOTYPE

function or(i, j)

! 
! 
! ARGUMENTS
! 
!    I The type shall be either a scalar INTEGER
!    type or a scalar LOGICAL type. 
!    J The type shall be the same as the type of J.
! 
! 
! RETURN VALUE
!    The return type is either a scalar INTEGER or a scalar
!    LOGICAL.  If the kind type parameters differ, then the
!    smaller kind type is implicitly converted to larger kind, and the
!    return has the larger kind.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_or
!                LOGICAL :: T = .TRUE., F = .FALSE.
!                INTEGER :: a, b
!                DATA a / Z'F' /, b / Z'3' /
! 
!                WRITE (*,*) OR(T, T), OR(T, F), OR(F, T), OR(F, F)
!                WRITE (*,*) OR(a, b)
!              END PROGRAM
! 
! SEE ALSO
!    Fortran 95 elemental function: IOR
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
