! FORTRAN INTRINSIC PROCEDURE
!    anint()
! 
! 
! DESCRIPTION
!    ANINT(A  [, KIND]) rounds its argument to the nearest whole number.
! 
! 
! STANDARD
!    Fortran 77 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function anint(a  [, kind])

! 
! 
! ARGUMENTS
! 
!    A    The type of the argument shall be REAL. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type real with the kind type parameter of the
!    argument if the optional KIND is absent; otherwise, the kind
!    type parameter will be given by KIND.  If A is greater than
!    zero, ANINT(A) returns AINT(X+0.5).  If A is
!    less than or equal to zero then it returns AINT(X-0.5).
! 
! 
! EXAMPLE
! 
!              program test_anint
!                real(4) x4
!                real(8) x8
!                x4 = 1.234E0_4
!                x8 = 4.321_8
!                print *, anint(x4), dnint(x8)
!                x8 = anint(x4,8)
!              end program test_anint
! 
! SPECIFIC NAMES
! 
!    Name            Argument         Return type      Standard
!    AINT(A)  REAL(4) A REAL(4)   Fortran 77 and later
!    DNINT(A) REAL(8) A REAL(8)   Fortran 77 and later
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
