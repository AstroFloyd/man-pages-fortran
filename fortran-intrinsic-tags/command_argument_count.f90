! FORTRAN INTRINSIC PROCEDURE
!    command_argument_count()
! 
! 
! DESCRIPTION
!    COMMAND_ARGUMENT_COUNT returns the number of arguments passed on the
!    command line when the containing program was invoked.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function command_argument_count()

! 
! 
! ARGUMENTS
! 
!    None
! 
! 
! RETURN VALUE
!    The return value is an INTEGER of default kind.
! 
! 
! EXAMPLE
! 
!              program test_command_argument_count
!                  integer :: count
!                  count = command_argument_count()
!                  print *, count
!              end program test_command_argument_count
! 
! SEE ALSO
!    GET_COMMAND, GET_COMMAND_ARGUMENT
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
