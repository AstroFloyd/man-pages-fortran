! FORTRAN INTRINSIC PROCEDURE
!    matmul()
! 
! 
! DESCRIPTION
!    Performs a matrix multiplication on numeric or logical arguments.
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

function matmul(matrix_a, matrix_b)

! 
! 
! ARGUMENTS
! 
!    MATRIX_A An array of INTEGER,
!    REAL, COMPLEX, or LOGICAL type, with a rank of
!    one or two. 
!    MATRIX_B An array of INTEGER,
!    REAL, or COMPLEX type if MATRIX_A is of a numeric
!    type; otherwise, an array of LOGICAL type. The rank shall be one
!    or two, and the first (or only) dimension of MATRIX_B shall be
!    equal to the last (or only) dimension of MATRIX_A.
! 
! 
! RETURN VALUE
!    The matrix product of MATRIX_A and MATRIX_B.  The type and
!    kind of the result follow the usual type and kind promotion rules, as
!    for the * or .AND. operators.
! 
! 
! SEE ALSO
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
