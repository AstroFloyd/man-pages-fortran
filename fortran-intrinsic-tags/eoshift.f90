! FORTRAN INTRINSIC PROCEDURE
!    eoshift()
! 
! 
! DESCRIPTION
!    EOSHIFT(ARRAY, SHIFT [, BOUNDARY, DIM]) performs an end-off shift on
!    elements of ARRAY along the dimension of DIM.  If DIM is
!    omitted it is taken to be 1.  DIM is a scalar of type
!    INTEGER in the range of 1 <=q DIM <=q n) where n is the
!    rank of ARRAY.  If the rank of ARRAY is one, then all elements of
!    ARRAY are shifted by SHIFT places.  If rank is greater than one,
!    then all complete rank one sections of ARRAY along the given dimension are
!    shifted.  Elements shifted out one end of each rank one section are dropped.  If
!    BOUNDARY is present then the corresponding value of from BOUNDARY
!    is copied back in the other end.  If BOUNDARY is not present then the
!    following are copied in depending on the type of ARRAY.
! 
!    Array Type Boundary Value
!    Numeric  0 of the type and kind of ARRAY. 
!    Logical  .FALSE.. 
!    Character(len) len blanks.
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

function eoshift(array, shift  [, boundary, dim])

! 
! 
! ARGUMENTS
! 
!    ARRAY  May be any type, not scalar. 
!    SHIFT  The type shall be INTEGER. 
!    BOUNDARY Same type as ARRAY. 
!    DIM    The type shall be INTEGER.
! 
! 
! RETURN VALUE
!    Returns an array of same type and rank as the ARRAY argument.
! 
! 
! EXAMPLE
! 
!              program test_eoshift
!                  integer, dimension(3,3) :: a
!                  a = reshape( (/ 1, 2, 3, 4, 5, 6, 7, 8, 9 /), (/ 3, 3 /))
!                  print '(3i3)', a(1,:)
!                  print '(3i3)', a(2,:)
!                  print '(3i3)', a(3,:)
!                  a = EOSHIFT(a, SHIFT=(/1, 2, 1/), BOUNDARY=-5, DIM=2)
!                  print *
!                  print '(3i3)', a(1,:)
!                  print '(3i3)', a(2,:)
!                  print '(3i3)', a(3,:)
!              end program test_eoshift
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
