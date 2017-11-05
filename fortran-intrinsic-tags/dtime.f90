! FORTRAN INTRINSIC PROCEDURE
!    dtime()
! 
! 
! DESCRIPTION
!    DTIME(VALUES, TIME) initially returns the number of seconds of runtime
!    since the start of the process's execution in TIME.  VALUES
!    returns the user and system components of this time in VALUES(1) and
!    VALUES(2) respectively. TIME is equal to VALUES(1) +
!    VALUES(2).
! 
!    Subsequent invocations of DTIME return values accumulated since the
!    previous invocation.
! 
!    On some systems, the underlying timings are represented using types with
!    sufficiently small limits that overflows (wrap around) are possible, such as
!    32-bit types. Therefore, the values returned by this intrinsic might be, or
!    become, negative, or numerically less than previous values, during a single
!    run of the compiled program.
! 
!    Please note, that this implementation is thread safe if used within OpenMP
!    directives, i.e., its state will be consistent while called from multiple
!    threads. However, if DTIME is called from multiple threads, the result
!    is still the time since the last invocation. This may not give the intended
!    results. If possible, use CPU_TIME instead.
! 
!    This intrinsic is provided in both subroutine and function forms; however,
!    only one form can be used in any given program unit.
! 
!    VALUES and TIME are INTENT(OUT) and provide the following:
! 
!    VALUES(1): User time in seconds. 
!    VALUES(2): System time in seconds. 
!    TIME: Run time since start in seconds.
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

subroutine dtime(values, time)
. 
!    TIME = DTIME(VALUES), (not recommended).
! 
! 
! ARGUMENTS
! 
!    VALUESThe type shall be REAL(4), DIMENSION(2). 
!    TIMEThe type shall be REAL(4).
! 
! 
! RETURN VALUE
!    Elapsed time in seconds since the last invocation or since the start of program
!    execution if not called before.
! 
! 
! EXAMPLE
! 
!              program test_dtime
!                  integer(8) :: i, j
!                  real, dimension(2) :: tarray
!                  real :: result
!                  call dtime(tarray, result)
!                  print *, result
!                  print *, tarray(1)
!                  print *, tarray(2)
!                  do i=1,100000000    ! Just a delay
!                      j = i * i - i
!                  end do
!                  call dtime(tarray, result)
!                  print *, result
!                  print *, tarray(1)
!                  print *, tarray(2)
!              end program test_dtime
! 
! SEE ALSO
!    CPU_TIME
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
