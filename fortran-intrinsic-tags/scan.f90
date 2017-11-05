! FORTRAN INTRINSIC PROCEDURE
!    scan()
! 
! 
! DESCRIPTION
!    Scans a STRING for any of the characters in a SET
!    of characters.
! 
!    If BACK is either absent or equals FALSE, this function
!    returns the position of the leftmost character of STRING that is
!    in SET. If BACK equals TRUE, the rightmost position
!    is returned. If no character of SET is found in STRING, the
!    result is zero.
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

function scan(string, set [, back  [, kind]])

! 
! 
! ARGUMENTS
! 
!    STRING Shall be of type CHARACTER. 
!    SET    Shall be of type CHARACTER. 
!    BACK   (Optional) shall be of type LOGICAL. 
!    KIND   (Optional) An INTEGER initialization
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
!              PROGRAM test_scan
!                WRITE(*,*) SCAN("FORTRAN", "AO")          ! 2, found 'O'
!                WRITE(*,*) SCAN("FORTRAN", "AO", .TRUE.)  ! 6, found 'A'
!                WRITE(*,*) SCAN("FORTRAN", "C++")         ! 0, found none
!              END PROGRAM
! 
! SEE ALSO
!    INDEX, VERIFY
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
