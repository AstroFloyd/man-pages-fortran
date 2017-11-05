! FORTRAN INTRINSIC PROCEDURE
!    index()
! 
! 
! DESCRIPTION
!    Returns the position of the start of the first occurrence of string
!    SUBSTRING as a substring in STRING, counting from one.  If
!    SUBSTRING is not present in STRING, zero is returned.  If
!    the BACK argument is present and true, the return value is the
!    start of the last occurrence rather than the first.
! 
! 
! STANDARD
!    Fortran 77 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function index(string, substring  [, back  [, kind]])

! 
! 
! ARGUMENTS
! 
!    STRING Shall be a scalar CHARACTER, with
!    INTENT(IN)
!    SUBSTRING Shall be a scalar CHARACTER, with
!    INTENT(IN)
!    BACK (Optional) Shall be a scalar LOGICAL, with
!    INTENT(IN)
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
!    Name                            Argument           Return type       Standard
!    INDEX(STRING, SUBSTRING) CHARACTER   INTEGER(4) Fortran 77 and later
! 
! 
! SEE ALSO
!    SCAN, VERIFY
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
