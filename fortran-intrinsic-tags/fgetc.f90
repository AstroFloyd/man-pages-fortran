! FORTRAN INTRINSIC PROCEDURE
!    fgetc()
! 
! 
! DESCRIPTION
!    Read a single character in stream mode by bypassing normal formatted output. 
!    Stream I/O should not be mixed with normal record-oriented (formatted or
!    unformatted) I/O on the same unit; the results are unpredictable.
! 
!    This intrinsic is provided in both subroutine and function forms; however,
!    only one form can be used in any given program unit.
! 
!    Note that the FGET intrinsic is provided for backwards compatibility
!    with g77.  GNU Fortran provides the Fortran 2003 Stream facility. 
!    Programmers should consider the use of new stream IO feature in new code
!    for future portability.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine, function
! 
! 
! PROTOTYPE

subroutine fgetc(unit, c  [, status])

!    STATUS = FGETC(UNIT, C)
! 
! 
! ARGUMENTS
! 
!    UNIT   The type shall be INTEGER. 
!    C      The type shall be CHARACTER and of default
!    kind. 
!    STATUS (Optional) status flag of type INTEGER. 
!    Returns 0 on success, -1 on end-of-file and a system specific positive
!    error code otherwise.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_fgetc
!                INTEGER :: fd = 42, status
!                CHARACTER :: c
! 
!                OPEN(UNIT=fd, FILE="/etc/passwd", ACTION="READ", STATUS = "OLD")
!                DO
!                  CALL fgetc(fd, c, status)
!                  IF (status /= 0) EXIT
!                  call fput(c)
!                END DO
!                CLOSE(UNIT=fd)
!              END PROGRAM
! 
! SEE ALSO
!    FGET, FPUT, FPUTC
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
