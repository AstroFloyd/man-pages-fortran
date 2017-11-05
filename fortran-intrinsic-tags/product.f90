! FORTRAN INTRINSIC PROCEDURE
!    product()
! 
! 
! DESCRIPTION
!    Multiplies the elements of ARRAY along dimension DIM if
!    the corresponding element in MASK is TRUE.
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

function product(array [, mask])

function product(array, dim [, mask])

! 
! 
! ARGUMENTS
! 
!    ARRAY Shall be an array of type INTEGER,
!    REAL or COMPLEX. 
!    DIM   (Optional) shall be a scalar of type
!    INTEGER with a value in the range from 1 to n, where n
!    equals the rank of ARRAY. 
!    MASK  (Optional) shall be of type LOGICAL
!    and either be a scalar or an array of the same shape as ARRAY.
! 
! 
! RETURN VALUE
!    The result is of the same type as ARRAY.
! 
!    If DIM is absent, a scalar with the product of all elements in
!    ARRAY is returned. Otherwise, an array of rank n-1, where n equals
!    the rank of ARRAY, and a shape similar to that of ARRAY with
!    dimension DIM dropped is returned.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_product
!                INTEGER :: x(5) = (/ 1, 2, 3, 4 ,5 /)
!                print *, PRODUCT(x)                    ! all elements, product = 120
!                print *, PRODUCT(x, MASK=MOD(x, 2)==1) ! odd elements, product = 15
!              END PROGRAM
! 
! SEE ALSO
!    SUM
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
