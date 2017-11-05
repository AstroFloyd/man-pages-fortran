! FORTRAN INTRINSIC PROCEDURE
!    pack()
! 
! 
! DESCRIPTION
!    Stores the elements of ARRAY in an array of rank one.
! 
!    The beginning of the resulting array is made up of elements whose MASK
!    equals TRUE. Afterwards, positions are filled with elements taken from
!    VECTOR.
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

function pack(array, mask[,vector])

! 
! 
! ARGUMENTS
! 
!    ARRAY  Shall be an array of any type. 
!    MASK   Shall be an array of type LOGICAL and
!    of the same size as ARRAY. Alternatively, it may be a LOGICAL
!    scalar. 
!    VECTOR (Optional) shall be an array of the same type
!    as ARRAY and of rank one. If present, the number of elements in
!    VECTOR shall be equal to or greater than the number of true elements
!    in MASK. If MASK is scalar, the number of elements in
!    VECTOR shall be equal to or greater than the number of elements in
!    ARRAY.
! 
! 
! RETURN VALUE
!    The result is an array of rank one and the same type as that of ARRAY. 
!    If VECTOR is present, the result size is that of VECTOR, the
!    number of TRUE values in MASK otherwise.
! 
! 
! EXAMPLE
!    Gathering nonzero elements from an array:
!              PROGRAM test_pack_1
!                INTEGER :: m(6)
!                m = (/ 1, 0, 0, 0, 5, 0 /)
!                WRITE(*, FMT="(6(I0, ' '))") pack(m, m /= 0)  ! "1 5"
!              END PROGRAM
!    Gathering nonzero elements from an array and appending elements from VECTOR:
!              PROGRAM test_pack_2
!                INTEGER :: m(4)
!                m = (/ 1, 0, 0, 2 /)
!                WRITE(*, FMT="(4(I0, ' '))") pack(m, m /= 0, (/ 0, 0, 3, 4 /))  ! "1 2 3 4"
!              END PROGRAM
! 
! SEE ALSO
!    UNPACK
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
