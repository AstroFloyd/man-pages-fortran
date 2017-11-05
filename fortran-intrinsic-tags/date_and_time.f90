! FORTRAN INTRINSIC PROCEDURE
!    date_and_time()
! 
! 
! DESCRIPTION
!    DATE_AND_TIME(DATE, TIME, ZONE, VALUES) gets the corresponding date and
!    time information from the real-time system clock.  DATE is
!    INTENT(OUT) and has form ccyymmdd.  TIME is INTENT(OUT) and
!    has form hhmmss.sss.  ZONE is INTENT(OUT) and has form (+-)hhmm,
!    representing the difference with respect to Coordinated Universal Time (UTC). 
!    Unavailable time and date parameters return blanks.
! 
!    VALUES is INTENT(OUT) and provides the following:
! 
!    VALUE(1): The year
!    VALUE(2): The month
!    VALUE(3): The day of the month
!    VALUE(4): Time difference with UTC in minutes
!    VALUE(5): The hour of the day
!    VALUE(6): The minutes of the hour
!    VALUE(7): The seconds of the minute
!    VALUE(8): The milliseconds of the second
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine date_and_time([date, time, zone, values])

! 
! 
! ARGUMENTS
! 
!    DATE  (Optional) The type shall be CHARACTER(LEN=8)
!    or larger, and of default kind. 
!    TIME  (Optional) The type shall be CHARACTER(LEN=10)
!    or larger, and of default kind. 
!    ZONE  (Optional) The type shall be CHARACTER(LEN=5)
!    or larger, and of default kind. 
!    VALUES(Optional) The type shall be INTEGER(8).
! 
! 
! RETURN VALUE
!    None
! 
! 
! EXAMPLE
! 
!              program test_time_and_date
!                  character(8)  :: date
!                  character(10) :: time
!                  character(5)  :: zone
!                  integer,dimension(8) :: values
!                  ! using keyword arguments
!                  call date_and_time(date,time,zone,values)
!                  call date_and_time(DATE=date,ZONE=zone)
!                  call date_and_time(TIME=time)
!                  call date_and_time(VALUES=values)
!                  print '(a,2x,a,2x,a)', date, time, zone
!                  print '(8i5)', values
!              end program test_time_and_date
! 
! SEE ALSO
!    CPU_TIME, SYSTEM_CLOCK
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
