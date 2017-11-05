! FORTRAN INTRINSIC PROCEDURE
!    cpu_time()
! 
! 
! DESCRIPTION
!    Returns a REAL value representing the elapsed CPU time in
!    seconds.  This is useful for testing segments of code to determine
!    execution time.
! 
!    If a time source is available, time will be reported with microsecond
!    resolution. If no time source is available, TIME is set to
!    -1.0.
! 
!    Note that TIME may contain a, system dependent, arbitrary offset
!    and may not start with 0.0. For CPU_TIME, the absolute
!    value is meaningless, only differences between subsequent calls to
!    this subroutine, as shown in the example below, should be used.
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

subroutine cpu_time(time)

! 
! 
! ARGUMENTS
! 
!    TIME The type shall be REAL with INTENT(OUT).
! 
! 
! RETURN VALUE
!    None
! 
! 
! EXAMPLE
! 
!              program test_cpu_time
!                  real :: start, finish
!                  call cpu_time(start)
!                      ! put code to test here
!                  call cpu_time(finish)
!                  print '("Time = ",f6.3," seconds.")',finish-start
!              end program test_cpu_time
! 
! SEE ALSO
!    SYSTEM_CLOCK, DATE_AND_TIME
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
