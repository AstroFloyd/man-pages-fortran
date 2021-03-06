! FORTRAN INTRINSIC PROCEDURE
!    system()
! 
! 
! DESCRIPTION
!    Passes the command COMMAND to a shell (see system(3)). If
!    argument STATUS is present, it contains the value returned by
!    system(3), which is presumably 0 if the shell command succeeded. 
!    Note that which shell is used to invoke the command is system-dependent
!    and environment-dependent.
! 
!    This intrinsic is provided in both subroutine and function forms;
!    however, only one form can be used in any given program unit.
! 
!    Note that the system function need not be thread-safe. It is
!    the responsibility of the user to ensure that system is not
!    called concurrently.
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

subroutine system(command  [, status])

!    STATUS = SYSTEM(COMMAND)
! 
! 
! ARGUMENTS
! 
!    COMMAND Shall be of default CHARACTER type. 
!    STATUS  (Optional) Shall be of default INTEGER type.
! 
! 
! SEE ALSO
!    EXECUTE_COMMAND_LINE, which is part of the Fortran 2008 standard
!    and should considered in new code for future portability. 
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
