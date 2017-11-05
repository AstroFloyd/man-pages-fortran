! FORTRAN INTRINSIC PROCEDURE
!    system_clock()
! 
! 
! DESCRIPTION
!    Determines the COUNT of a processor clock since an unspecified
!    time in the past modulo COUNT_MAX, COUNT_RATE determines
!    the number of clock ticks per second.  If the platform supports a
!    monotonic clock, that clock is used and can, depending on the platform
!    clock implementation, provide up to nanosecond resolution.  If a
!    monotonic clock is not available, the implementation falls back to a
!    realtime clock.
! 
!    COUNT_RATE is system dependent and can vary depending on the kind of
!    the arguments. For kind=4 arguments (and smaller integer kinds),
!    COUNT represents milliseconds, while for kind=8 arguments (and
!    larger integer kinds), COUNT typically represents micro- or
!    nanoseconds depending on resolution of the underlying platform clock. 
!    COUNT_MAX usually equals HUGE(COUNT_MAX). Note that the
!    millisecond resolution of the kind=4 version implies that the
!    COUNT will wrap around in roughly 25 days. In order to avoid issues
!    with the wrap around and for more precise timing, please use the
!    kind=8 version.
! 
!    If there is no clock, or querying the clock fails, COUNT is set
!    to -HUGE(COUNT), and COUNT_RATE and COUNT_MAX are
!    set to zero.
! 
!    When running on a platform using the GNU C library (glibc) version
!    2.16 or older, or a derivative thereof, the high resolution monotonic
!    clock is available only when linking with the rt library.  This
!    can be done explicitly by adding the -lrt flag when linking the
!    application, but is also done implicitly when using OpenMP.
! 
!    On the Windows platform, the version with kind=4 arguments uses
!    the GetTickCount function, whereas the kind=8 version
!    uses QueryPerformanceCounter and
!    QueryPerformanceCounterFrequency. For more information, and
!    potential caveats, please see the platform documentation.
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

subroutine system_clock([count, count_rate, count_max])

! 
! 
! ARGUMENTS
! 
!    COUNT      (Optional) shall be a scalar of type
!    INTEGER with INTENT(OUT). 
!    COUNT_RATE (Optional) shall be a scalar of type
!    INTEGER or REAL, with INTENT(OUT). 
!    COUNT_MAX  (Optional) shall be a scalar of type
!    INTEGER with INTENT(OUT).
! 
! 
! EXAMPLE
! 
!              PROGRAM test_system_clock
!                INTEGER :: count, count_rate, count_max
!                CALL SYSTEM_CLOCK(count, count_rate, count_max)
!                WRITE(*,*) count, count_rate, count_max
!              END PROGRAM
! 
! SEE ALSO
!    DATE_AND_TIME, CPU_TIME
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
