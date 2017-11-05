! FORTRAN INTRINSIC PROCEDURE
!    get_command()
! 
! 
! DESCRIPTION
!    Retrieve the entire command line that was used to invoke the program.
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

subroutine get_command([command, length, status])

! 
! 
! ARGUMENTS
! 
!    COMMAND (Optional) shall be of type CHARACTER and
!    of default kind. 
!    LENGTH (Optional) Shall be of type INTEGER and of
!    default kind. 
!    STATUS (Optional) Shall be of type INTEGER and of
!    default kind.
! 
! 
! RETURN VALUE
!    If COMMAND is present, stores the entire command line that was used
!    to invoke the program in COMMAND. If LENGTH is present, it is
!    assigned the length of the command line. If STATUS is present, it
!    is assigned 0 upon success of the command, -1 if COMMAND is too
!    short to store the command line, or a positive value in case of an error.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_get_command
!                CHARACTER(len=255) :: cmd
!                CALL get_command(cmd)
!                WRITE (*,*) TRIM(cmd)
!              END PROGRAM
! 
! SEE ALSO
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
