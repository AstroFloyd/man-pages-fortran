! FORTRAN INTRINSIC PROCEDURE
!    present()
! 
! 
! DESCRIPTION
!    Determines whether an optional dummy argument is present.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function present(a)

! 
! 
! ARGUMENTS
! 
!    A May be of any type and may be a pointer, scalar or array
!    value, or a dummy procedure. It shall be the name of an optional dummy argument
!    accessible within the current subroutine or function.
! 
! 
! RETURN VALUE
!    Returns either TRUE if the optional argument A is present, or
!    FALSE otherwise.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_present
!                WRITE(*,*) f(), f(42)      ! "F T"
!              CONTAINS
!                LOGICAL FUNCTION f(x)
!                  INTEGER, INTENT(IN), OPTIONAL :: x
!                  f = PRESENT(x)
!                END FUNCTION
!              END PROGRAM
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
