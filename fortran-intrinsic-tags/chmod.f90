! FORTRAN INTRINSIC PROCEDURE
!    chmod()
! 
! 
! DESCRIPTION
!    CHMOD changes the permissions of a file.
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

subroutine chmod(name, mode [, status])

!    STATUS = CHMOD(NAME, MODE)
! 
! 
! ARGUMENTS
! 
! 
!    NAME Scalar CHARACTER of default kind with the
!    file name. Trailing blanks are ignored unless the character
!    achar(0) is present, then all characters up to and excluding
!    achar(0) are used as the file name.
! 
!    MODE Scalar CHARACTER of default kind giving the
!    file permission. MODE uses the same syntax as the chmod utility
!    as defined by the POSIX standard. The argument shall either be a string of
!    a nonnegative octal number or a symbolic mode.
! 
!    STATUS (optional) scalar INTEGER, which is
!    0 on success and nonzero otherwise.
! 
! 
! RETURN VALUE
!    In either syntax, STATUS is set to 0 on success and nonzero
!    otherwise.
! 
! 
! EXAMPLE
!    CHMOD as subroutine
!              program chmod_test
!                implicit none
!                integer :: status
!                call chmod('test.dat','u+x',status)
!                print *, 'Status: ', status
!              end program chmod_test
!    CHMOD as function:
!              program chmod_test
!                implicit none
!                integer :: status
!                status = chmod('test.dat','u+x')
!                print *, 'Status: ', status
!              end program chmod_test
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
