! FORTRAN INTRINSIC PROCEDURE
!    move_alloc()
! 
! 
! DESCRIPTION
!    MOVE_ALLOC(FROM, TO) moves the allocation from FROM to
!    TO.  FROM will become deallocated in the process.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Pure subroutine
! 
! 
! PROTOTYPE

subroutine move_alloc(from, to)

! 
! 
! ARGUMENTS
! 
!    FROM  ALLOCATABLE, INTENT(INOUT), may be
!    of any type and kind. 
!    TO ALLOCATABLE, INTENT(OUT), shall be
!    of the same type, kind and rank as FROM.
! 
! 
! RETURN VALUE
!    None
! 
! 
! EXAMPLE
! 
!              program test_move_alloc
!                  integer, allocatable :: a(:), b(:)
! 
!                  allocate(a(3))
!                  a = [ 1, 2, 3 ]
!                  call move_alloc(a, b)
!                  print *, allocated(a), allocated(b)
!                  print *, b
!              end program test_move_alloc
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
