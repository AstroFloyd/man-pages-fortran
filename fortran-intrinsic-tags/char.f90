! FORTRAN INTRINSIC PROCEDURE
!    char()
! 
! 
! DESCRIPTION
!    CHAR(I  [, KIND]) returns the character represented by the integer I.
! 
! 
! STANDARD
!    Fortran 77 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function char(i  [, kind])

! 
! 
! ARGUMENTS
! 
!    I The type shall be INTEGER. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type CHARACTER(1)
! 
! 
! EXAMPLE
! 
!              program test_char
!                  integer :: i = 74
!                  character(1) :: c
!                  c = char(i)
!                  print *, i, c ! returns 'J'
!              end program test_char
! 
! SPECIFIC NAMES
! 
!    Name           Argument         Return type             Standard
!    CHAR(I) INTEGER I CHARACTER(LEN=1) F77 and later
! 
! 
! NOTE
!    See ICHAR for a discussion of converting between numerical values
!    and formatted string representations.
! 
! 
! SEE ALSO
!    ACHAR, IACHAR, ICHAR
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
