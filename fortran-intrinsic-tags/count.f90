! FORTRAN INTRINSIC PROCEDURE
!    count()
! 
! 
! DESCRIPTION
! 
!    Counts the number of .TRUE. elements in a logical MASK,
!    or, if the DIM argument is supplied, counts the number of
!    elements along each row of the array in the DIM direction. 
!    If the array has zero size, or all of the elements of MASK are
!    .FALSE., then the result is 0.
! 
! 
! STANDARD
!    Fortran 95 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function count(mask  [, dim, kind])

! 
! 
! ARGUMENTS
! 
!    MASK The type shall be LOGICAL. 
!    DIM  (Optional) The type shall be INTEGER. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of kind KIND. If
!    KIND is absent, the return value is of default integer kind. 
!    If DIM is present, the result is an array with a rank one less
!    than the rank of ARRAY, and a size corresponding to the shape
!    of ARRAY with the DIM dimension removed.
! 
! 
! EXAMPLE
! 
!              program test_count
!                  integer, dimension(2,3) :: a, b
!                  logical, dimension(2,3) :: mask
!                  a = reshape( (/ 1, 2, 3, 4, 5, 6 /), (/ 2, 3 /))
!                  b = reshape( (/ 0, 7, 3, 4, 5, 8 /), (/ 2, 3 /))
!                  print '(3i3)', a(1,:)
!                  print '(3i3)', a(2,:)
!                  print *
!                  print '(3i3)', b(1,:)
!                  print '(3i3)', b(2,:)
!                  print *
!                  mask = a.ne.b
!                  print '(3l3)', mask(1,:)
!                  print '(3l3)', mask(2,:)
!                  print *
!                  print '(3i3)', count(mask)
!                  print *
!                  print '(3i3)', count(mask, 1)
!                  print *
!                  print '(3i3)', count(mask, 2)
!              end program test_count
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
