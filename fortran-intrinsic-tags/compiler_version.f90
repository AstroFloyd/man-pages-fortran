! FORTRAN INTRINSIC PROCEDURE
!    compiler_version()
! 
! 
! DESCRIPTION
!    COMPILER_VERSION returns a string with the name and the
!    version of the compiler.
! 
! 
! STANDARD
!    Fortran 2008
! 
! 
! CLASS
!    Inquiry function of the module ISO_FORTRAN_ENV
! 
! 
! PROTOTYPE
!    STR = COMPILER_VERSION()
! 
! 
! ARGUMENTS
!    None.
! 
! 
! RETURN VALUE
!    The return value is a default-kind string with system-dependent length. 
!    It contains the name of the compiler and its version number.
! 
! 
! EXAMPLE
! 
!                 use iso_fortran_env
!                 print '(4a)', 'This file was compiled by ', &
!                               compiler_version(), ' using the options ', &
!                               compiler_options()
!                 end
! 
! SEE ALSO
!    COMPILER_OPTIONS, ISO_FORTRAN_ENV
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
