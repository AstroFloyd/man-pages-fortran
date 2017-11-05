! FORTRAN INTRINSIC PROCEDURE
!    rand()
! 
! 
! DESCRIPTION
!    RAND(FLAG) returns a pseudo-random number from a uniform
!    distribution between 0 and 1. If FLAG is 0, the next number
!    in the current sequence is returned; if FLAG is 1, the generator
!    is restarted by CALL SRAND(0); if FLAG has any other value,
!    it is used as a new seed with SRAND.
! 
!    This intrinsic routine is provided for backwards compatibility with
!    GNU Fortran 77. It implements a simple modulo generator as provided
!    by g77. For new code, one should consider the use of
!    RANDOM_NUMBER as it implements a superior algorithm.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Function
! 
! 
! PROTOTYPE

function rand(i)

! 
! 
! ARGUMENTS
! 
!    I Shall be a scalar INTEGER of kind 4.
! 
! 
! RETURN VALUE
!    The return value is of REAL type and the default kind.
! 
! 
! EXAMPLE
! 
!              program test_rand
!                integer,parameter :: seed = 86456
! 
!                call srand(seed)
!                print *, rand(), rand(), rand(), rand()
!                print *, rand(seed), rand(), rand(), rand()
!              end program test_rand
! 
! SEE ALSO
!    SRAND, RANDOM_NUMBER
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
