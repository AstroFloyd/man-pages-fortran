! FORTRAN INTRINSIC PROCEDURE
!    getlog()
! 
! 
! DESCRIPTION
!    Gets the username under which the program is running.
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

subroutine getlog(c)

! 
! 
! ARGUMENTS
! 
!    C Shall be of type CHARACTER and of default kind.
! 
! 
! RETURN VALUE
!    Stores the current user name in LOGIN.  (On systems where POSIX
!    functions geteuid and getpwuid are not available, and
!    the getlogin function is not implemented either, this will
!    return a blank string.)
! 
! 
! EXAMPLE
! 
!              PROGRAM TEST_GETLOG
!                CHARACTER(32) :: login
!                CALL GETLOG(login)
!                WRITE(*,*) login
!              END PROGRAM
! 
! SEE ALSO
!    GETUID
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
