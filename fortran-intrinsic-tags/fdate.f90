! FORTRAN INTRINSIC PROCEDURE
!    fdate()
! 
! 
! DESCRIPTION
!    FDATE(DATE) returns the current date (using the same format as
!    CTIME) in DATE. It is equivalent to CALL CTIME(DATE,
!    TIME()).
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

subroutine fdate(date)
. 
!    DATE = FDATE().
! 
! 
! ARGUMENTS
! 
!    DATEThe type shall be of type CHARACTER of the
!    default kind. It is an INTENT(OUT) argument.  If the length of
!    this variable is too short for the date and time string to fit
!    completely, it will be blank on procedure return.
! 
! 
! RETURN VALUE
!    The current date and time as a string.
! 
! 
! EXAMPLE
! 
!              program test_fdate
!                  integer(8) :: i, j
!                  character(len=30) :: date
!                  call fdate(date)
!                  print *, 'Program started on ', date
!                  do i = 1, 100000000 ! Just a delay
!                      j = i * i - i
!                  end do
!                  call fdate(date)
!                  print *, 'Program ended on ', date
!              end program test_fdate
! 
! SEE ALSO
!    DATE_AND_TIME, CTIME
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
