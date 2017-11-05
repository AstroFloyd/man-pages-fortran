! FORTRAN INTRINSIC PROCEDURE
!    free()
! 
! 
! DESCRIPTION
!    Frees memory previously allocated by MALLOC. The FREE
!    intrinsic is an extension intended to be used with Cray pointers, and is
!    provided in GNU Fortran to allow user to compile legacy code. For
!    new code using Fortran 95 pointers, the memory de-allocation intrinsic is
!    DEALLOCATE.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine free(ptr)

! 
! 
! ARGUMENTS
! 
!    PTR The type shall be INTEGER. It represents the
!    location of the memory that should be de-allocated.
! 
! 
! RETURN VALUE
!    None
! 
! 
! EXAMPLE
!    See MALLOC for an example.
! 
! 
! SEE ALSO
!    MALLOC
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
