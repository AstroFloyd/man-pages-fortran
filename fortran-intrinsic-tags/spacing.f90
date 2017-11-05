! FORTRAN INTRINSIC PROCEDURE
!    spacing()
! 
! 
! DESCRIPTION
!    Determines the distance between the argument X and the nearest
!    adjacent number of the same type.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function spacing(x)

! 
! 
! ARGUMENTS
! 
!    X Shall be of type REAL.
! 
! 
! RETURN VALUE
!    The result is of the same type as the input argument X.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_spacing
!                INTEGER, PARAMETER :: SGL = SELECTED_REAL_KIND(p=6, r=37)
!                INTEGER, PARAMETER :: DBL = SELECTED_REAL_KIND(p=13, r=200)
! 
!                WRITE(*,*) spacing(1.0_SGL)      ! "1.1920929E-07"          on i686
!                WRITE(*,*) spacing(1.0_DBL)      ! "2.220446049250313E-016" on i686
!              END PROGRAM
! 
! SEE ALSO
!    RRSPACING
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
