! FORTRAN INTRINSIC PROCEDURE
!    access()
! 
! 
! DESCRIPTION
!    ACCESS(NAME, MODE) checks whether the file NAME
!    exists, is readable, writable or executable. Except for the
!    executable check, ACCESS can be replaced by
!    Fortran 95's INQUIRE.
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

function access(name, mode)

! 
! 
! ARGUMENTS
! 
!    NAME Scalar CHARACTER of default kind with the
!    file name. Tailing blank are ignored unless the character achar(0)
!    is present, then all characters up to and excluding achar(0) are
!    used as file name. 
!    MODE Scalar CHARACTER of default kind with the
!    file access mode, may be any concatenation of "r" (readable),
!    "w" (writable) and "x" (executable), or " " to check
!    for existence.
! 
! 
! RETURN VALUE
!    Returns a scalar INTEGER, which is 0 if the file is
!    accessible in the given mode; otherwise or if an invalid argument
!    has been given for MODE the value 1 is returned.
! 
! 
! EXAMPLE
! 
!              program access_test
!                implicit none
!                character(len=*), parameter :: file  = 'test.dat'
!                character(len=*), parameter :: file2 = 'test.dat  '//achar(0)
!                if(access(file,' ') == 0) print *, trim(file),' is exists'
!                if(access(file,'r') == 0) print *, trim(file),' is readable'
!                if(access(file,'w') == 0) print *, trim(file),' is writable'
!                if(access(file,'x') == 0) print *, trim(file),' is executable'
!                if(access(file2,'rwx') == 0) &
!                  print *, trim(file2),' is readable, writable and executable'
!              end program access_test
! 
! SEE ALSO
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
