! FORTRAN INTRINSIC PROCEDURE
!    lstat()
! 
! 
! DESCRIPTION
!    LSTAT is identical to STAT, except that if path is a
!    symbolic link, then the link itself is statted, not the file that it
!    refers to.
! 
!    The elements in VALUES are the same as described by STAT.
! 
!    This intrinsic is provided in both subroutine and function forms;
!    however, only one form can be used in any given program unit.
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

subroutine lstat(name, values  [, status])

!    STATUS = LSTAT(NAME, VALUES)
! 
! 
! ARGUMENTS
! 
!    NAME   The type shall be CHARACTER of the default
!    kind, a valid path within the file system. 
!    VALUES The type shall be INTEGER(4), DIMENSION(13). 
!    STATUS (Optional) status flag of type INTEGER(4). 
!    Returns 0 on success and a system specific error code otherwise.
! 
! 
! EXAMPLE
!    See STAT for an example.
! 
! 
! SEE ALSO
!    To stat an open file: FSTAT, to stat a file: STAT
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
