! FORTRAN INTRINSIC PROCEDURE
!    aimag()
! 
! 
! DESCRIPTION
!    AIMAG(Z) yields the imaginary part of complex argument Z. 
!    The IMAG(Z) and IMAGPART(Z) intrinsic functions are provided
!    for compatibility with g77, and their use in new code is
!    strongly discouraged.
! 
! 
! STANDARD
!    Fortran 77 and later, has overloads that are GNU extensions
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function aimag(z)

! 
! 
! ARGUMENTS
! 
!    Z The type of the argument shall be COMPLEX.
! 
! 
! RETURN VALUE
!    The return value is of type REAL with the
!    kind type parameter of the argument.
! 
! 
! EXAMPLE
! 
!              program test_aimag
!                complex(4) z4
!                complex(8) z8
!                z4 = cmplx(1.e0_4, 0.e0_4)
!                z8 = cmplx(0.e0_8, 1.e0_8)
!                print *, aimag(z4), dimag(z8)
!              end program test_aimag
! 
! SPECIFIC NAMES
! 
!    Name               Argument            Return type     Standard
!    AIMAG(Z)    COMPLEX Z    REAL     GNU extension
!    DIMAG(Z)    COMPLEX(8) Z REAL(8)  GNU extension
!    IMAG(Z)     COMPLEX Z    REAL     GNU extension
!    IMAGPART(Z) COMPLEX Z    REAL     GNU extension
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
