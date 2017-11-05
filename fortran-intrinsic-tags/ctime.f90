! FORTRAN INTRINSIC PROCEDURE
!    ctime()
! 
! 
! DESCRIPTION
!    CTIME converts a system time value, such as returned by
!    TIME8, to a string. The output will be of the form 'Sat
!    Aug 19 18:13:14 1995'.
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

subroutine ctime(time, result)
. 

function ctime(time)
.
! 
! 
! ARGUMENTS
! 
!    TIME    The type shall be of type INTEGER. 
!    RESULT  The type shall be of type CHARACTER and
!    of default kind. It is an INTENT(OUT) argument. If the length
!    of this variable is too short for the time and date string to fit
!    completely, it will be blank on procedure return.
! 
! 
! RETURN VALUE
!    The converted date and time as a string.
! 
! 
! EXAMPLE
! 
!              program test_ctime
!                  integer(8) :: i
!                  character(len=30) :: date
!                  i = time8()
! 
!                  ! Do something, main part of the program
! 
!                  call ctime(i,date)
!                  print *, 'Program was started on ', date
!              end program test_ctime
! 
! SEE ALSO
!    DATE_AND_TIME, GMTIME, LTIME, TIME, TIME8
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
