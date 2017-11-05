! FORTRAN INTRINSIC PROCEDURE
!    srand()
! 
! 
! DESCRIPTION
!    SRAND reinitializes the pseudo-random number generator
!    called by RAND and IRAND. The new seed used by the
!    generator is specified by the required argument SEED.
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

subroutine srand(seed)

! 
! 
! ARGUMENTS
! 
!    SEED Shall be a scalar INTEGER(kind=4).
! 
! 
! RETURN VALUE
!    Does not return anything.
! 
! 
! EXAMPLE
!    See RAND and IRAND for examples.
! 
! 
! NOTES
!    The Fortran 2003 standard specifies the intrinsic RANDOM_SEED to
!    initialize the pseudo-random numbers generator and RANDOM_NUMBER
!    to generate pseudo-random numbers. Please note that in
!    GNU Fortran, these two sets of intrinsics (RAND,
!    IRAND and SRAND on the one hand, RANDOM_NUMBER and
!    RANDOM_SEED on the other hand) access two independent
!    pseudo-random number generators.
! 
! 
! SEE ALSO
!    RAND, RANDOM_SEED, RANDOM_NUMBER
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
