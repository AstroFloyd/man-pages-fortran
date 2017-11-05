! FORTRAN INTRINSIC PROCEDURE
!    get_command_argument()
! 
! 
! DESCRIPTION
!    Retrieve the NUMBER-th argument that was passed on the
!    command line when the containing program was invoked.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine get_command_argument(number  [, value, length, status])

! 
! 
! ARGUMENTS
! 
!    NUMBER Shall be a scalar of type INTEGER and of
!    default kind, NUMBER \geq 0
!    VALUE  (Optional) Shall be a scalar of type CHARACTER
!    and of default kind. 
!    LENGTH (Optional) Shall be a scalar of type INTEGER
!    and of default kind. 
!    STATUS (Optional) Shall be a scalar of type INTEGER
!    and of default kind.
! 
! 
! RETURN VALUE
!    After GET_COMMAND_ARGUMENT returns, the VALUE argument holds the
!    NUMBER-th command line argument. If VALUE can not hold the argument, it is
!    truncated to fit the length of VALUE. If there are less than NUMBER
!    arguments specified at the command line, VALUE will be filled with blanks. 
!    If NUMBER = 0, VALUE is set to the name of the program (on
!    systems that support this feature). The LENGTH argument contains the
!    length of the NUMBER-th command line argument. If the argument retrieval
!    fails, STATUS is a positive number; if VALUE contains a truncated
!    command line argument, STATUS is -1; and otherwise the STATUS is
!    zero.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_get_command_argument
!                INTEGER :: i
!                CHARACTER(len=32) :: arg
! 
!                i = 0
!                DO
!                  CALL get_command_argument(i, arg)
!                  IF (LEN_TRIM(arg) == 0) EXIT
! 
!                  WRITE (*,*) TRIM(arg)
!                  i = i+1
!                END DO
!              END PROGRAM
! 
! SEE ALSO
!    GET_COMMAND, COMMAND_ARGUMENT_COUNT
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
