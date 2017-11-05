! FORTRAN INTRINSIC PROCEDURE
!    chdir()
! 
! 
! DESCRIPTION
!    Change current working directory to a specified path.
! 
!    This intrinsic is provided in both subroutine and function forms; however,
!    only one form can be used in any given program unit.
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

subroutine chdir(name  [, status])

!    STATUS = CHDIR(NAME)
! 
! 
! ARGUMENTS
! 
!    NAME   The type shall be CHARACTER of default
!    kind and shall specify a valid path within the file system. 
!    STATUS (Optional) INTEGER status flag of the default
!    kind.  Returns 0 on success, and a system specific and nonzero error code
!    otherwise.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_chdir
!                CHARACTER(len=255) :: path
!                CALL getcwd(path)
!                WRITE(*,*) TRIM(path)
!                CALL chdir("/tmp")
!                CALL getcwd(path)
!                WRITE(*,*) TRIM(path)
!              END PROGRAM
! 
! SEE ALSO
!    GETCWD
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
