! FORTRAN INTRINSIC PROCEDURE
!    c_associated()
! 
! 
! DESCRIPTION
!    C_ASSOCIATED(c_ptr_1 [, c_ptr_2]) determines the status of the C pointer
!    c_ptr_1 or if c_ptr_1 is associated with the target c_ptr_2.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function c_associated(c_ptr_1 [, c_ptr_2])

! 
! 
! ARGUMENTS
! 
!    c_ptr_1 Scalar of the type C_PTR or C_FUNPTR. 
!    c_ptr_2 (Optional) Scalar of the same type as c_ptr_1.
! 
! 
! RETURN VALUE
!    The return value is of type LOGICAL; it is .false. if either
!    c_ptr_1 is a C NULL pointer or if c_ptr1 and c_ptr_2
!    point to different addresses.
! 
! 
! EXAMPLE
! 
!              subroutine association_test(a,b)
!                use iso_c_binding, only: c_associated, c_loc, c_ptr
!                implicit none
!                real, pointer :: a
!                type(c_ptr) :: b
!                if(c_associated(b, c_loc(a))) &
!                   stop 'b and a do not point to same target'
!              end subroutine association_test
! 
! SEE ALSO
!    C_LOC, C_FUNLOC
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
