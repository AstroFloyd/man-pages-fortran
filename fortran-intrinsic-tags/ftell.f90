! FORTRAN INTRINSIC PROCEDURE
!    ftell()
! 
! 
! DESCRIPTION
!    Retrieves the current position within an open file.
! 
!    This intrinsic is provided in both subroutine and function forms; however,
!    only one form can be used in any given program unit.
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

subroutine ftell(unit, offset)

!    OFFSET = FTELL(UNIT)
! 
! 
! ARGUMENTS
! 
!    OFFSET  Shall of type INTEGER. 
!    UNIT    Shall of type INTEGER.
! 
! 
! RETURN VALUE
!    In either syntax, OFFSET is set to the current offset of unit
!    number UNIT, or to -1 if the unit is not currently open.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_ftell
!                INTEGER :: i
!                OPEN(10, FILE="temp.dat")
!                CALL ftell(10,i)
!                WRITE(*,*) i
!              END PROGRAM
! 
! SEE ALSO
!    FSEEK
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
