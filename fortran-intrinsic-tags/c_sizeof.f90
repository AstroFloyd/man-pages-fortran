! FORTRAN INTRINSIC PROCEDURE
!    c_sizeof()
! 
! 
! DESCRIPTION
!    C_SIZEOF(X) calculates the number of bytes of storage the
!    expression X occupies.
! 
! 
! STANDARD
!    Fortran 2008
! 
! 
! CLASS
!    Inquiry function of the module ISO_C_BINDING
! 
! 
! PROTOTYPE
!    N = C_SIZEOF(X)
! 
! 
! ARGUMENTS
! 
!    X The argument shall be an interoperable data entity.
! 
! 
! RETURN VALUE
!    The return value is of type integer and of the system-dependent kind
!    C_SIZE_T (from the ISO_C_BINDING module). Its value is the
!    number of bytes occupied by the argument.  If the argument has the
!    POINTER attribute, the number of bytes of the storage area pointed
!    to is returned.  If the argument is of a derived type with POINTER
!    or ALLOCATABLE components, the return value does not account for
!    the sizes of the data pointed to by these components.
! 
! 
! EXAMPLE
! 
!                 use iso_c_binding
!                 integer(c_int) :: i
!                 real(c_float) :: r, s(5)
!                 print *, (c_sizeof(s)/c_sizeof(r) == 5)
!                 end
!    The example will print .TRUE. unless you are using a platform
!    where default REAL variables are unusually padded.
! 
! 
! SEE ALSO
!    SIZEOF, STORAGE_SIZE
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
