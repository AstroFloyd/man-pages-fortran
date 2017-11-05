! FORTRAN INTRINSIC PROCEDURE
!    allocated()
! 
! 
! DESCRIPTION
!    ALLOCATED(ARRAY) and ALLOCATED(SCALAR) check the allocation
!    status of ARRAY and SCALAR, respectively.
! 
! 
! STANDARD
!    Fortran 95 and later.  Note, the SCALAR= keyword and allocatable
!    scalar entities are available in Fortran 2003 and later.
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function allocated(array)

function allocated(scalar)

! 
! 
! ARGUMENTS
! 
!    ARRAY    The argument shall be an ALLOCATABLE array. 
!    SCALAR   The argument shall be an ALLOCATABLE scalar.
! 
! 
! RETURN VALUE
!    The return value is a scalar LOGICAL with the default logical
!    kind type parameter.  If the argument is allocated, then the result is
!    .TRUE.; otherwise, it returns .FALSE.
! 
! 
! EXAMPLE
! 
!              program test_allocated
!                integer :: i = 4
!                real(4), allocatable :: x(:)
!                if (.not. allocated(x)) allocate(x(i))
!              end program test_allocated
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
