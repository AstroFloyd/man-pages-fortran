! FORTRAN INTRINSIC PROCEDURE
!    getenv()
! 
! 
! DESCRIPTION
!    Get the VALUE of the environmental variable NAME.
! 
!    This intrinsic routine is provided for backwards compatibility with
!    GNU Fortran 77.  In new code, programmers should consider the use of
!    the GET_ENVIRONMENT_VARIABLE intrinsic defined by the Fortran
!    2003 standard.
! 
!    Note that GETENV need not be thread-safe. It is the
!    responsibility of the user to ensure that the environment is not being
!    updated concurrently with a call to the GETENV intrinsic.
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

subroutine getenv(name, value)

! 
! 
! ARGUMENTS
! 
!    NAME  Shall be of type CHARACTER and of default kind. 
!    VALUE Shall be of type CHARACTER and of default kind.
! 
! 
! RETURN VALUE
!    Stores the value of NAME in VALUE. If VALUE is
!    not large enough to hold the data, it is truncated. If NAME
!    is not set, VALUE will be filled with blanks.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_getenv
!                CHARACTER(len=255) :: homedir
!                CALL getenv("HOME", homedir)
!                WRITE (*,*) TRIM(homedir)
!              END PROGRAM
! 
! SEE ALSO
!    GET_ENVIRONMENT_VARIABLE
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
