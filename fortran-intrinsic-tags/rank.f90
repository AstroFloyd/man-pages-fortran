! FORTRAN INTRINSIC PROCEDURE
!    rank()
! 
! 
! DESCRIPTION
!    RANK(A) returns the rank of a scalar or array data object.
! 
! 
! STANDARD
!    Technical Specification (TS) 29113
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function rank(a)

! 
! 
! ARGUMENTS
! 
!    A can be of any type
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of the default integer
!    kind. For arrays, their rank is returned; for scalars zero is returned.
! 
! 
! EXAMPLE
! 
!              program test_rank
!                integer :: a
!                real, allocatable :: b(:,:)
! 
!                print *, rank(a), rank(b) ! Prints:  0  2
!              end program test_rank
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
