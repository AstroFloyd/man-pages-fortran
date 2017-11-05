! FORTRAN INTRINSIC PROCEDURE
!    get_environment_variable()
! 
! 
! DESCRIPTION
!    Get the VALUE of the environmental variable NAME.
! 
!    Note that GET_ENVIRONMENT_VARIABLE need not be thread-safe. It
!    is the responsibility of the user to ensure that the environment is
!    not being updated concurrently with a call to the
!    GET_ENVIRONMENT_VARIABLE intrinsic.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine get_environment_variable(name [, value, length, status, trim_name)

! 
! 
! ARGUMENTS
! 
!    NAME      Shall be a scalar of type CHARACTER
!    and of default kind. 
!    VALUE     (Optional) Shall be a scalar of type CHARACTER
!    and of default kind. 
!    LENGTH    (Optional) Shall be a scalar of type INTEGER
!    and of default kind. 
!    STATUS    (Optional) Shall be a scalar of type INTEGER
!    and of default kind. 
!    TRIM_NAME (Optional) Shall be a scalar of type LOGICAL
!    and of default kind.
! 
! 
! RETURN VALUE
!    Stores the value of NAME in VALUE. If VALUE is
!    not large enough to hold the data, it is truncated. If NAME
!    is not set, VALUE will be filled with blanks. Argument LENGTH
!    contains the length needed for storing the environment variable NAME
!    or zero if it is not present. STATUS is -1 if VALUE is present
!    but too short for the environment variable; it is 1 if the environment
!    variable does not exist and 2 if the processor does not support environment
!    variables; in all other cases STATUS is zero. If TRIM_NAME is
!    present with the value .FALSE., the trailing blanks in NAME
!    are significant; otherwise they are not part of the environment variable
!    name.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_getenv
!                CHARACTER(len=255) :: homedir
!                CALL get_environment_variable("HOME", homedir)
!                WRITE (*,*) TRIM(homedir)
!              END PROGRAM
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
