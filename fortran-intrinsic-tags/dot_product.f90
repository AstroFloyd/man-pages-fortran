! FORTRAN INTRINSIC PROCEDURE
!    dot_product()
! 
! 
! DESCRIPTION
!    DOT_PRODUCT(VECTOR_A, VECTOR_B) computes the dot product multiplication
!    of two vectors VECTOR_A and VECTOR_B.  The two vectors may be
!    either numeric or logical and must be arrays of rank one and of equal size. If
!    the vectors are INTEGER or REAL, the result is
!    SUM(VECTOR_A*VECTOR_B). If the vectors are COMPLEX, the result
!    is SUM(CONJG(VECTOR_A)*VECTOR_B). If the vectors are LOGICAL,
!    the result is ANY(VECTOR_A .AND. VECTOR_B).
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function dot_product(vector_a, vector_b)

! 
! 
! ARGUMENTS
! 
!    VECTOR_A The type shall be numeric or LOGICAL, rank 1. 
!    VECTOR_B The type shall be numeric if VECTOR_A is of numeric type or LOGICAL if VECTOR_A is of type LOGICAL. VECTOR_B shall be a rank-one array.
! 
! 
! RETURN VALUE
!    If the arguments are numeric, the return value is a scalar of numeric type,
!    INTEGER, REAL, or COMPLEX.  If the arguments are
!    LOGICAL, the return value is .TRUE. or .FALSE..
! 
! 
! EXAMPLE
! 
!              program test_dot_prod
!                  integer, dimension(3) :: a, b
!                  a = (/ 1, 2, 3 /)
!                  b = (/ 4, 5, 6 /)
!                  print '(3i3)', a
!                  print *
!                  print '(3i3)', b
!                  print *
!                  print *, dot_product(a,b)
!              end program test_dot_prod
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
