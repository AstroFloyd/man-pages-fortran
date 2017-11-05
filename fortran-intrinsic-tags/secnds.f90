! FORTRAN INTRINSIC PROCEDURE
!    secnds()
! 
! 
! DESCRIPTION
!    SECNDS(X) gets the time in seconds from the real-time system clock. 
!    X is a reference time, also in seconds. If this is zero, the time in
!    seconds from midnight is returned. This function is non-standard and its
!    use is discouraged.
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
!    RESULT = SECNDS (X)
! 
! 
! ARGUMENTS
! 
!    T     Shall be of type REAL(4). 
!    X     Shall be of type REAL(4).
! 
! 
! RETURN VALUE
!    None
! 
! 
! EXAMPLE
! 
!              program test_secnds
!                  integer :: i
!                  real(4) :: t1, t2
!                  print *, secnds (0.0)   ! seconds since midnight
!                  t1 = secnds (0.0)       ! reference time
!                  do i = 1, 10000000      ! do something
!                  end do
!                  t2 = secnds (t1)        ! elapsed time
!                  print *, "Something took ", t2, " seconds."
!              end program test_secnds
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
