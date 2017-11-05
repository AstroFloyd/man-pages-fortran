! FORTRAN INTRINSIC PROCEDURE
!    lle()
! 
! 
! DESCRIPTION
!    Determines whether one string is lexically less than or equal to another
!    string, where the two strings are interpreted as containing ASCII
!    character codes.  If the String A and String B are not the same length,
!    the shorter is compared as if spaces were appended to it to form a value
!    that has the same length as the longer.
! 
!    In general, the lexical comparison intrinsics LGE, LGT,
!    LLE, and LLT differ from the corresponding intrinsic
!    operators .GE., .GT., .LE., and .LT., in
!    that the latter use the processor's character ordering (which is not
!    ASCII on some targets), whereas the former always use the ASCII
!    ordering.
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

function lle(string_a, string_b)

! 
! 
! ARGUMENTS
! 
!    STRING_A Shall be of default CHARACTER type. 
!    STRING_B Shall be of default CHARACTER type.
! 
! 
! RETURN VALUE
!    Returns .TRUE. if STRING_A <= STRING_B, and .FALSE.
!    otherwise, based on the ASCII ordering.
! 
! 
! SPECIFIC NAMES
! 
!    Name                           Argument          Return type       Standard
!    LLE(STRING_A, STRING_B) CHARACTER  LOGICAL    Fortran 77 and later
! 
! 
! SEE ALSO
!    LGE, LGT, LLT
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
