! FORTRAN INTRINSIC PROCEDURE
!    bit_size()
! 
! 
! DESCRIPTION
!    BIT_SIZE(I) returns the number of bits (integer precision plus sign bit)
!    represented by the type of I.  The result of BIT_SIZE(I) is
!    independent of the actual value of I.
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

function bit_size(i)

! 
! 
! ARGUMENTS
! 
!    I The type shall be INTEGER.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER
! 
! 
! EXAMPLE
! 
!              program test_bit_size
!                  integer :: i = 123
!                  integer :: size
!                  size = bit_size(i)
!                  print *, size
!              end program test_bit_size
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
