! FORTRAN INTRINSIC PROCEDURE
!    iargc()
! 
! 
! DESCRIPTION
!    IARGC returns the number of arguments passed on the
!    command line when the containing program was invoked.
! 
!    This intrinsic routine is provided for backwards compatibility with
!    GNU Fortran 77.  In new code, programmers should consider the use of
!    the COMMAND_ARGUMENT_COUNT intrinsic defined by the Fortran 2003
!    standard.
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

function iargc()

! 
! 
! ARGUMENTS
!    None.
! 
! 
! RETURN VALUE
!    The number of command line arguments, type INTEGER(4).
! 
! 
! EXAMPLE
!    See GETARG
! 
! 
! SEE ALSO
!    GNU Fortran 77 compatibility subroutine: GETARG
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
