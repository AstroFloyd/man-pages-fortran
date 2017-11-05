! FORTRAN INTRINSIC PROCEDURE
!    trim()
! 
! 
! DESCRIPTION
!    Removes trailing blank characters of a string.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function trim(string)

! 
! 
! ARGUMENTS
! 
!    STRING Shall be a scalar of type CHARACTER.
! 
! 
! RETURN VALUE
!    A scalar of type CHARACTER which length is that of STRING
!    less the number of trailing blanks.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_trim
!                CHARACTER(len=10), PARAMETER :: s = "GFORTRAN  "
!                WRITE(*,*) LEN(s), LEN(TRIM(s))  ! "10 8", with/without trailing blanks
!              END PROGRAM
! 
! SEE ALSO
!    ADJUSTL, ADJUSTR
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
