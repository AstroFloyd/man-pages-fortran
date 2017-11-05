! FORTRAN INTRINSIC PROCEDURE
!    mclock8()
! 
! 
! DESCRIPTION
!    Returns the number of clock ticks since the start of the process, based
!    on the function clock(3) in the C standard library.
! 
!    Warning: this intrinsic does not increase the range of the timing
!    values over that returned by clock(3). On a system with a 32-bit
!    clock(3), MCLOCK8 will return a 32-bit value, even though
!    it is converted to a 64-bit INTEGER(8) value. That means
!    overflows of the 32-bit value can still occur. Therefore, the values
!    returned by this intrinsic might be or become negative or numerically
!    less than previous values during a single run of the compiled program.
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

function mclock8()

! 
! 
! RETURN VALUE
!    The return value is a scalar of type INTEGER(8), equal to the
!    number of clock ticks since the start of the process, or -1 if
!    the system does not support clock(3).
! 
! 
! SEE ALSO
!    CTIME, GMTIME, LTIME, MCLOCK, TIME8
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
