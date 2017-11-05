! FORTRAN INTRINSIC PROCEDURE
!    minloc()
! 
! 
! DESCRIPTION
!    Determines the location of the element in the array with the minimum
!    value, or, if the DIM argument is supplied, determines the
!    locations of the minimum element along each row of the array in the
!    DIM direction.  If MASK is present, only the elements for
!    which MASK is .TRUE. are considered.  If more than one
!    element in the array has the minimum value, the location returned is
!    that of the first such element in array element order.  If the array has
!    zero size, or all of the elements of MASK are .FALSE., then
!    the result is an array of zeroes.  Similarly, if DIM is supplied
!    and all of the elements of MASK along a given row are zero, the
!    result value for that row is zero.
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

function minloc(array, dim  [, mask])

function minloc(array  [, mask])

! 
! 
! ARGUMENTS
! 
!    ARRAY Shall be an array of type INTEGER or
!    REAL. 
!    DIM   (Optional) Shall be a scalar of type
!    INTEGER, with a value between one and the rank of ARRAY,
!    inclusive.  It may not be an optional dummy argument. 
!    MASK  Shall be an array of type LOGICAL,
!    and conformable with ARRAY.
! 
! 
! RETURN VALUE
!    If DIM is absent, the result is a rank-one array with a length
!    equal to the rank of ARRAY.  If DIM is present, the result
!    is an array with a rank one less than the rank of ARRAY, and a
!    size corresponding to the size of ARRAY with the DIM
!    dimension removed.  If DIM is present and ARRAY has a rank
!    of one, the result is a scalar.  In all cases, the result is of default
!    INTEGER type.
! 
! 
! SEE ALSO
!    MIN, MINVAL
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
