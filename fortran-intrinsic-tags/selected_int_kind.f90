! FORTRAN INTRINSIC PROCEDURE
!    selected_int_kind()
! 
! 
! DESCRIPTION
!    SELECTED_INT_KIND(R) return the kind value of the smallest integer
!    type that can represent all values ranging from -10^R (exclusive)
!    to 10^R (exclusive). If there is no integer kind that accommodates
!    this range, SELECTED_INT_KIND returns -1.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function selected_int_kind(r)

! 
! 
! ARGUMENTS
! 
!    R Shall be a scalar and of type INTEGER.
! 
! 
! EXAMPLE
! 
!              program large_integers
!                integer,parameter :: k5 = selected_int_kind(5)
!                integer,parameter :: k15 = selected_int_kind(15)
!                integer(kind=k5) :: i5
!                integer(kind=k15) :: i15
! 
!                print *, huge(i5), huge(i15)
! 
!                ! The following inequalities are always true
!                print *, huge(i5) >= 10_k5**5-1
!                print *, huge(i15) >= 10_k15**15-1
!              end program large_integers
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
