! FORTRAN INTRINSIC PROCEDURE
!    itime()
! 
! 
! DESCRIPTION
!    IDATE(VALUES) Fills VALUES with the numerical values at the
!    current local time. The hour (in the range 1-24), minute (in the range 1-60),
!    and seconds (in the range 1-60) appear in elements 1, 2, and 3 of VALUES,
!    respectively.
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

subroutine itime(values)

! 
! 
! ARGUMENTS
! 
!    VALUES The type shall be INTEGER, DIMENSION(3)
!    and the kind shall be the default integer kind.
! 
! 
! RETURN VALUE
!    Does not return anything.
! 
! 
! EXAMPLE
! 
!              program test_itime
!                integer, dimension(3) :: tarray
!                call itime(tarray)
!                print *, tarray(1)
!                print *, tarray(2)
!                print *, tarray(3)
!              end program test_itime
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
