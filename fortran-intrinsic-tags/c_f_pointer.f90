! FORTRAN INTRINSIC PROCEDURE
!    c_f_pointer()
! 
! 
! DESCRIPTION
!    C_F_POINTER(CPTR, FPTR [, SHAPE]) assigns the target of the C pointer
!    CPTR to the Fortran pointer FPTR and specifies its shape.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine c_f_pointer(cptr, fptr [, shape])

! 
! 
! ARGUMENTS
! 
!    CPTR  scalar of the type C_PTR. It is
!    INTENT(IN). 
!    FPTR  pointer interoperable with cptr. It is
!    INTENT(OUT). 
!    SHAPE (Optional) Rank-one array of type INTEGER
!    with INTENT(IN). It shall be present
!    if and only if fptr is an array. The size
!    must be equal to the rank of fptr.
! 
! 
! EXAMPLE
! 
!              program main
!                use iso_c_binding
!                implicit none
!                interface
!                  subroutine my_routine(p) bind(c,name='myC_func')
!                    import :: c_ptr
!                    type(c_ptr), intent(out) :: p
!                  end subroutine
!                end interface
!                type(c_ptr) :: cptr
!                real,pointer :: a(:)
!                call my_routine(cptr)
!                call c_f_pointer(cptr, a, [12])
!              end program main
! 
! SEE ALSO
!    C_LOC, C_F_PROCPOINTER
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
