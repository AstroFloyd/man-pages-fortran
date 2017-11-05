! FORTRAN INTRINSIC PROCEDURE
!    c_funloc()
! 
! 
! DESCRIPTION
!    C_FUNLOC(x) determines the C address of the argument.
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

function c_funloc(x)

! 
! 
! ARGUMENTS
! 
!    x Interoperable function or pointer to such function.
! 
! 
! RETURN VALUE
!    The return value is of type C_FUNPTR and contains the C address
!    of the argument.
! 
! 
! EXAMPLE
! 
!              module x
!                use iso_c_binding
!                implicit none
!              contains
!                subroutine sub(a) bind(c)
!                  real(c_float) :: a
!                  a = sqrt(a)+5.0
!                end subroutine sub
!              end module x
!              program main
!                use iso_c_binding
!                use x
!                implicit none
!                interface
!                  subroutine my_routine(p) bind(c,name='myC_func')
!                    import :: c_funptr
!                    type(c_funptr), intent(in) :: p
!                  end subroutine
!                end interface
!                call my_routine(c_funloc(sub))
!              end program main
! 
! SEE ALSO
!    C_ASSOCIATED, C_LOC, C_F_POINTER, C_F_PROCPOINTER
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
