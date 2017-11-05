! FORTRAN INTRINSIC PROCEDURE
!    getarg()
! 
! 
! DESCRIPTION
!    Retrieve the POS-th argument that was passed on the
!    command line when the containing program was invoked.
! 
!    This intrinsic routine is provided for backwards compatibility with
!    GNU Fortran 77.  In new code, programmers should consider the use of
!    the GET_COMMAND_ARGUMENT intrinsic defined by the Fortran 2003
!    standard.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine getarg(pos, value)

! 
! 
! ARGUMENTS
! 
!    POS   Shall be of type INTEGER and not wider than
!    the default integer kind; POS \geq 0
!    VALUE Shall be of type CHARACTER and of default
!    kind. 
!    VALUE Shall be of type CHARACTER.
! 
! 
! RETURN VALUE
!    After GETARG returns, the VALUE argument holds the
!    POSth command line argument. If VALUE can not hold the
!    argument, it is truncated to fit the length of VALUE. If there are
!    less than POS arguments specified at the command line, VALUE
!    will be filled with blanks. If POS = 0, VALUE is set
!    to the name of the program (on systems that support this feature).
! 
! 
! EXAMPLE
! 
!              PROGRAM test_getarg
!                INTEGER :: i
!                CHARACTER(len=32) :: arg
! 
!                DO i = 1, iargc()
!                  CALL getarg(i, arg)
!                  WRITE (*,*) arg
!                END DO
!              END PROGRAM
! 
! SEE ALSO
!    GNU Fortran 77 compatibility function: IARGC
! 
!    Fortran 2003 functions and subroutines: GET_COMMAND,
!    GET_COMMAND_ARGUMENT, COMMAND_ARGUMENT_COUNT
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
