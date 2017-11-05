! FORTRAN INTRINSIC PROCEDURE
!    ichar()
! 
! 
! DESCRIPTION
!    ICHAR(C) returns the code for the character in the first character
!    position of C in the system's native character set. 
!    The correspondence between characters and their codes is not necessarily
!    the same across different GNU Fortran implementations.
! 
! 
! STANDARD
!    Fortran 95 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function ichar(c  [, kind])

! 
! 
! ARGUMENTS
! 
!    C    Shall be a scalar CHARACTER, with INTENT(IN)
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of kind KIND. If
!    KIND is absent, the return value is of default integer kind.
! 
! 
! EXAMPLE
! 
!              program test_ichar
!                integer i
!                i = ichar(' ')
!              end program test_ichar
! 
! SPECIFIC NAMES
! 
!    Name             Argument             Return type       Standard
!    ICHAR(C)  CHARACTER C   INTEGER(4)    Fortran 77 and later
! 
! 
! NOTE
!    No intrinsic exists to convert between a numeric value and a formatted
!    character string representation \- for instance, given the
!    CHARACTER value '154', obtaining an INTEGER or
!    REAL value with the value 154, or vice versa. Instead, this
!    functionality is provided by internal-file I/O, as in the following
!    example:
!              program read_val
!                integer value
!                character(len=10) string, string2
!                string = '154'
! 
!                ! Convert a string to a numeric value
!                read (string,'(I10)') value
!                print *, value
! 
!                ! Convert a value to a formatted string
!                write (string2,'(I10)') value
!                print *, string2
!              end program read_val
! 
! SEE ALSO
!    ACHAR, CHAR, IACHAR
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
