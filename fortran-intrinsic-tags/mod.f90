! FORTRAN INTRINSIC PROCEDURE
!    mod()
! 
! 
! DESCRIPTION
!    MOD(A,P) computes the remainder of the division of A by P.
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

function mod(a, p)

! 
! 
! ARGUMENTS
! 
!    A Shall be a scalar of type INTEGER or REAL. 
!    P Shall be a scalar of the same type and kind as A
!    and not equal to zero.
! 
! 
! RETURN VALUE
!    The return value is the result of A - (INT(A/P) * P). The type
!    and kind of the return value is the same as that of the arguments. The
!    returned value has the same sign as A and a magnitude less than the
!    magnitude of P.
! 
! 
! EXAMPLE
! 
!              program test_mod
!                print *, mod(17,3)
!                print *, mod(17.5,5.5)
!                print *, mod(17.5d0,5.5)
!                print *, mod(17.5,5.5d0)
! 
!                print *, mod(-17,3)
!                print *, mod(-17.5,5.5)
!                print *, mod(-17.5d0,5.5)
!                print *, mod(-17.5,5.5d0)
! 
!                print *, mod(17,-3)
!                print *, mod(17.5,-5.5)
!                print *, mod(17.5d0,-5.5)
!                print *, mod(17.5,-5.5d0)
!              end program test_mod
! 
! SPECIFIC NAMES
! 
!    Name             Arguments          Return type    Standard
!    MOD(A,P)  INTEGER A,P INTEGER Fortran 95 and later
!    AMOD(A,P) REAL(4) A,P REAL(4) Fortran 95 and later
!    DMOD(A,P) REAL(8) A,P REAL(8) Fortran 95 and later
! 
! 
! SEE ALSO
!    MODULO
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
