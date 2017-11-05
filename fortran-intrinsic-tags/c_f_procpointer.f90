! FORTRAN INTRINSIC PROCEDURE
!    c_f_procpointer()
! 
! 
! DESCRIPTION
!    C_F_PROCPOINTER(CPTR, FPTR) Assign the target of the C function pointer
!    CPTR to the Fortran procedure pointer FPTR.
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

subroutine c_f_procpointer(cptr, fptr)

! 
! 
! ARGUMENTS
! 
!    CPTR  scalar of the type C_FUNPTR. It is
!    INTENT(IN). 
!    FPTR  procedure pointer interoperable with cptr. It is
!    INTENT(OUT).
! 
! 
! EXAMPLE
! 
!              program main
!                use iso_c_binding
!                implicit none
!                abstract interface
!                  function func(a)
!                    import :: c_float
!                    real(c_float), intent(in) :: a
!                    real(c_float) :: func
!                  end function
!                end interface
!                interface
!                   function getIterFunc() bind(c,name="getIterFunc")
!                     import :: c_funptr
!                     type(c_funptr) :: getIterFunc
!                   end function
!                end interface
!                type(c_funptr) :: cfunptr
!                procedure(func), pointer :: myFunc
!                cfunptr = getIterFunc()
!                call c_f_procpointer(cfunptr, myFunc)
!              end program main
! 
! SEE ALSO
!    C_LOC, C_F_POINTER
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
