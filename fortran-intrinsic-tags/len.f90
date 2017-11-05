! FORTRAN INTRINSIC PROCEDURE
!    len()
! 
! 
! DESCRIPTION
!    Returns the length of a character string.  If STRING is an array,
!    the length of an element of STRING is returned.  Note that
!    STRING need not be defined when this intrinsic is invoked, since
!    only the length, not the content, of STRING is needed.
! 
! 
! STANDARD
!    Fortran 77 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE
!    L = LEN(STRING  [, KIND])
! 
! 
! ARGUMENTS
! 
!    STRING Shall be a scalar or array of type
!    CHARACTER, with INTENT(IN)
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of kind KIND. If
!    KIND is absent, the return value is of default integer kind.
! 
! 
! SPECIFIC NAMES
! 
!    Name               Argument          Return type       Standard
!    LEN(STRING) CHARACTER  INTEGER    Fortran 77 and later
! 
! 
! SEE ALSO
!    LEN_TRIM, ADJUSTL, ADJUSTR
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
