! FORTRAN INTRINSIC PROCEDURE
!    achar()
! 
! 
! DESCRIPTION
!    ACHAR(I) returns the character located at position I
!    in the ASCII collating sequence.
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

function achar(i  [, kind])

! 
! 
! ARGUMENTS
! 
!    I    The type shall be INTEGER. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type CHARACTER with a length of one. 
!    If the KIND argument is present, the return value is of the
!    specified kind and of the default kind otherwise.
! 
! 
! EXAMPLE
! 
!              program test_achar
!                character c
!                c = achar(32)
!              end program test_achar
! 
! NOTE
!    See ICHAR for a discussion of converting between numerical values
!    and formatted string representations.
! 
! 
! SEE ALSO
!    CHAR, IACHAR, ICHAR
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
