! FORTRAN INTRINSIC PROCEDURE
!    radix()
! 
! 
! DESCRIPTION
!    RADIX(X) returns the base of the model representing the entity X.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function radix(x)

! 
! 
! ARGUMENTS
! 
!    X Shall be of type INTEGER or REAL
! 
! 
! RETURN VALUE
!    The return value is a scalar of type INTEGER and of the default
!    integer kind.
! 
! 
! SEE ALSO
!    SELECTED_REAL_KIND
! 
! 
! EXAMPLE
! 
!              program test_radix
!                print *, "The radix for the default integer kind is", radix(0)
!                print *, "The radix for the default real kind is", radix(0.0)
!              end program test_radix
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
