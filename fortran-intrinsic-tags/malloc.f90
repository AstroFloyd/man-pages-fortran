! FORTRAN INTRINSIC PROCEDURE
!    malloc()
! 
! 
! DESCRIPTION
!    MALLOC(SIZE) allocates SIZE bytes of dynamic memory and
!    returns the address of the allocated memory. The MALLOC intrinsic
!    is an extension intended to be used with Cray pointers, and is provided
!    in GNU Fortran to allow the user to compile legacy code. For new code
!    using Fortran 95 pointers, the memory allocation intrinsic is
!    ALLOCATE.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Function
! 
! 
! PROTOTYPE

function malloc(size)

! 
! 
! ARGUMENTS
! 
!    SIZE The type shall be INTEGER.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER(K), with K such that
!    variables of type INTEGER(K) have the same size as
!    C pointers (sizeof(void *)).
! 
! 
! EXAMPLE
!    The following example demonstrates the use of MALLOC and
!    FREE with Cray pointers.
! 
!              program test_malloc
!                implicit none
!                integer i
!                real*8 x(*), z
!                pointer(ptr_x,x)
! 
!                ptr_x = malloc(20*8)
!                do i = 1, 20
!                  x(i) = sqrt(1.0d0 / i)
!                end do
!                z = 0
!                do i = 1, 20
!                  z = z + x(i)
!                  print *, z
!                end do
!                call free(ptr_x)
!              end program test_malloc
! 
! SEE ALSO
!    FREE
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
