! FORTRAN INTRINSIC PROCEDURE
!    umask()
! 
! 
! DESCRIPTION
!    Sets the file creation mask to MASK. If called as a function, it
!    returns the old value. If called as a subroutine and argument OLD
!    if it is supplied, it is set to the old value. See umask(2).
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine, function
! 
! 
! PROTOTYPE

subroutine umask(mask  [, old])

!    OLD = UMASK(MASK)
! 
! 
! ARGUMENTS
! 
!    MASK Shall be a scalar of type INTEGER. 
!    OLD (Optional) Shall be a scalar of type
!    INTEGER.
! 
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
