! FORTRAN INTRINSIC PROCEDURE
!    ttynam()
! 
! 
! DESCRIPTION
!    Get the name of a terminal device. For more information,
!    see ttyname(3).
! 
!    This intrinsic is provided in both subroutine and function forms;
!    however, only one form can be used in any given program unit.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine, function
! 
! 
! PROTOTYPE

subroutine ttynam(unit, name)

!    NAME = TTYNAM(UNIT)
! 
! 
! ARGUMENTS
! 
!    UNIT Shall be a scalar INTEGER. 
!    NAME Shall be of type CHARACTER.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_ttynam
!                INTEGER :: unit
!                DO unit = 1, 10
!                  IF (isatty(unit=unit)) write(*,*) ttynam(unit)
!                END DO
!              END PROGRAM
! 
! SEE ALSO
!    ISATTY
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
