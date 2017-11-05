! FORTRAN INTRINSIC PROCEDURE
!    sizeof()
! 
! 
! DESCRIPTION
!    SIZEOF(X) calculates the number of bytes of storage the
!    expression X occupies.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE
!    N = SIZEOF(X)
! 
! 
! ARGUMENTS
! 
!    X The argument shall be of any type, rank or shape.
! 
! 
! RETURN VALUE
!    The return value is of type integer and of the system-dependent kind
!    C_SIZE_T (from the ISO_C_BINDING module). Its value is the
!    number of bytes occupied by the argument.  If the argument has the
!    POINTER attribute, the number of bytes of the storage area pointed
!    to is returned.  If the argument is of a derived type with POINTER
!    or ALLOCATABLE components, the return value does not account for
!    the sizes of the data pointed to by these components. If the argument is
!    polymorphic, the size according to the dynamic type is returned. The argument
!    may not be a procedure or procedure pointer. Note that the code assumes for
!    arrays that those are contiguous; for contiguous arrays, it returns the
!    storage or an array element multiplied by the size of the array.
! 
! 
! EXAMPLE
! 
!                 integer :: i
!                 real :: r, s(5)
!                 print *, (sizeof(s)/sizeof(r) == 5)
!                 end
!    The example will print .TRUE. unless you are using a platform
!    where default REAL variables are unusually padded.
! 
! 
! SEE ALSO
!    C_SIZEOF, STORAGE_SIZE
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
