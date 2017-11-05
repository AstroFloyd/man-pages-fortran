! FORTRAN INTRINSIC PROCEDURE
!    gmtime()
! 
! 
! DESCRIPTION
!    Given a system time value TIME (as provided by the TIME8
!    intrinsic), fills VALUES with values extracted from it appropriate
!    to the UTC time zone (Universal Coordinated Time, also known in some
!    countries as GMT, Greenwich Mean Time), using gmtime(3).
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

subroutine gmtime(time, values)

! 
! 
! ARGUMENTS
! 
!    TIME   An INTEGER scalar expression
!    corresponding to a system time, with INTENT(IN). 
!    VALUES A default INTEGER array with 9 elements,
!    with INTENT(OUT).
! 
! 
! RETURN VALUE
!    The elements of VALUES are assigned as follows:
!      *  Seconds after the minute, range 0\-59 or 0\-61 to allow for leap
!    seconds
!      *  Minutes after the hour, range 0\-59
!      *  Hours past midnight, range 0\-23
!      *  Day of month, range 0\-31
!      *  Number of months since January, range 0\-12
!      *  Years since 1900
!      *  Number of days since Sunday, range 0\-6
!      *  Days since January 1
!      *  Daylight savings indicator: positive if daylight savings is in
!    effect, zero if not, and negative if the information is not available.
! 
! 
! SEE ALSO
!    CTIME, LTIME, TIME, TIME8
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
