! FORTRAN INTRINSIC PROCEDURE
!    log()
! 
! 
! DESCRIPTION
!    LOG(X) computes the natural logarithm of X, i.e. the
!    logarithm to the base e.
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

function log(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL or
!    COMPLEX.
! 
! 
! RETURN VALUE
!    The return value is of type REAL or COMPLEX. 
!    The kind type parameter is the same as X. 
!    If X is COMPLEX, the imaginary part \omega is in the range
!    -PI < \omega <=q PI.
! 
! 
! EXAMPLE
! 
!              program test_log
!                real(8) :: x = 2.7182818284590451_8
!                complex :: z = (1.0, 2.0)
!                x = log(x)    ! will yield (approximately) 1
!                z = log(z)
!              end program test_log
! 
! SPECIFIC NAMES
! 
!    Name            Argument          Return type       Standard
!    ALOG(X)  REAL(4) X  REAL(4)    f95, gnu
!    DLOG(X)  REAL(8) X  REAL(8)    f95, gnu
!    CLOG(X)  COMPLEX(4) X  COMPLEX(4)    f95, gnu
!    ZLOG(X)  COMPLEX(8) X  COMPLEX(8)    f95, gnu
!    CDLOG(X) COMPLEX(8) X  COMPLEX(8)    f95, gnu
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
