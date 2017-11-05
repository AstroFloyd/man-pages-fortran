! FORTRAN INTRINSIC PROCEDURE
!    c_loc()
! 
! 
! DESCRIPTION
!    C_LOC(X) determines the C address of the argument.
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

function c_loc(x)

! 
! 
! ARGUMENTS
! 
!    X Shall have either the POINTER or TARGET attribute. It shall not be a coindexed object. It shall either be a variable with interoperable type and kind type parameters, or be a scalar, nonpolymorphic variable with no length type parameters.
! 
! 
! RETURN VALUE
!    The return value is of type C_PTR and contains the C address
!    of the argument.
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
!    C_ASSOCIATED, C_FUNLOC, C_F_POINTER, C_F_PROCPOINTER
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
