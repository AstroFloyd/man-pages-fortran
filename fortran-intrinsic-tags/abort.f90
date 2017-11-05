! FORTRAN INTRINSIC PROCEDURE
!    abort()
! 
! 
! DESCRIPTION
!    ABORT causes immediate termination of the program.  On operating
!    systems that support a core dump, ABORT will produce a core dump. 
!    It will also print a backtrace, unless -fno-backtrace is given.
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

subroutine abort

! 
! 
! RETURN VALUE
!    Does not return.
! 
! 
! EXAMPLE
! 
!              program test_abort
!                integer :: i = 1, j = 2
!                if (i /= j) call abort
!              end program test_abort
! 
! SEE ALSO
!    EXIT, KILL, BACKTRACE
! 
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
