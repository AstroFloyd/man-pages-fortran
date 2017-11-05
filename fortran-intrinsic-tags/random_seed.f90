! FORTRAN INTRINSIC PROCEDURE
!    random_seed()
! 
! 
! DESCRIPTION
!    Restarts or queries the state of the pseudorandom number generator used by
!    RANDOM_NUMBER.
! 
!    If RANDOM_SEED is called without arguments, it is initialized
!    to a default state. The example below shows how to initialize the
!    random seed with a varying seed in order to ensure a different random
!    number sequence for each invocation of the program. Note that setting
!    any of the seed values to zero should be avoided as it can result in
!    poor quality random numbers being generated.
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

subroutine random_seed([size, put, get])

! 
! 
! ARGUMENTS
! 
!    SIZE (Optional) Shall be a scalar and of type default
!    INTEGER, with INTENT(OUT). It specifies the minimum size
!    of the arrays used with the PUT and GET arguments. 
!    PUT  (Optional) Shall be an array of type default
!    INTEGER and rank one. It is INTENT(IN) and the size of
!    the array must be larger than or equal to the number returned by the
!    SIZE argument. 
!    GET  (Optional) Shall be an array of type default
!    INTEGER and rank one. It is INTENT(OUT) and the size
!    of the array must be larger than or equal to the number returned by
!    the SIZE argument.
! 
! 
! EXAMPLE
! 
!              subroutine init_random_seed()
!                use iso_fortran_env, only: int64
!                implicit none
!                integer, allocatable :: seed(:)
!                integer :: i, n, un, istat, dt(8), pid
!                integer(int64) :: t
! 
!                call random_seed(size = n)
!                allocate(seed(n))
!                ! First try if the OS provides a random number generator
!                open(newunit=un, file="/dev/urandom", access="stream", &
!                     form="unformatted", action="read", status="old", iostat=istat)
!                if (istat == 0) then
!                   read(un) seed
!                   close(un)
!                else
!                   ! Fallback to XOR:ing the current time and pid. The PID is
!                   ! useful in case one launches multiple instances of the same
!                   ! program in parallel.
!                   call system_clock(t)
!                   if (t == 0) then
!                      call date_and_time(values=dt)
!                      t = (dt(1) - 1970) * 365_int64 * 24 * 60 * 60 * 1000 &
!                           + dt(2) * 31_int64 * 24 * 60 * 60 * 1000 &
!                           + dt(3) * 24_int64 * 60 * 60 * 1000 &
!                           + dt(5) * 60 * 60 * 1000 &
!                           + dt(6) * 60 * 1000 + dt(7) * 1000 &
!                           + dt(8)
!                   end if
!                   pid = getpid()
!                   t = ieor(t, int(pid, kind(t)))
!                   do i = 1, n
!                      seed(i) = lcg(t)
!                   end do
!                end if
!                call random_seed(put=seed)
!              contains
!                ! This simple PRNG might not be good enough for real work, but is
!                ! sufficient for seeding a better PRNG.
!                function lcg(s)
!                  integer :: lcg
!                  integer(int64) :: s
!                  if (s == 0) then
!                     s = 104729
!                  else
!                     s = mod(s, 4294967296_int64)
!                  end if
!                  s = mod(s * 279470273_int64, 4294967291_int64)
!                  lcg = int(mod(s, int(huge(0), int64)), kind(0))
!                end function lcg
!              end subroutine init_random_seed
! 
! SEE ALSO
!    RANDOM_NUMBER
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
