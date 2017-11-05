! FORTRAN INTRINSIC PROCEDURE
!    fseek()
! 
! 
! DESCRIPTION
!    Moves UNIT to the specified OFFSET. If WHENCE
!    is set to 0, the OFFSET is taken as an absolute value SEEK_SET,
!    if set to 1, OFFSET is taken to be relative to the current position
!    SEEK_CUR, and if set to 2 relative to the end of the file SEEK_END. 
!    On error, STATUS is set to a nonzero value. If STATUS the seek
!    fails silently.
! 
!    This intrinsic routine is not fully backwards compatible with g77. 
!    In g77, the FSEEK takes a statement label instead of a
!    STATUS variable. If FSEEK is used in old code, change
!                CALL FSEEK(UNIT, OFFSET, WHENCE, *label)
!    to
!                INTEGER :: status
!                CALL FSEEK(UNIT, OFFSET, WHENCE, status)
!                IF (status /= 0) GOTO label
!    Please note that GNU Fortran provides the Fortran 2003 Stream facility. 
!    Programmers should consider the use of new stream IO feature in new code
!    for future portability.
! 
! 
! STANDARD
!    GNU extension
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine fseek(unit, offset, whence [, status])

! 
! 
! ARGUMENTS
! 
!    UNIT   Shall be a scalar of type INTEGER. 
!    OFFSET Shall be a scalar of type INTEGER. 
!    WHENCE Shall be a scalar of type INTEGER. 
!    Its value shall be either 0, 1 or 2. 
!    STATUS (Optional) shall be a scalar of type
!    INTEGER(4).
! 
! 
! EXAMPLE
! 
!              PROGRAM test_fseek
!                INTEGER, PARAMETER :: SEEK_SET = 0, SEEK_CUR = 1, SEEK_END = 2
!                INTEGER :: fd, offset, ierr
! 
!                ierr   = 0
!                offset = 5
!                fd     = 10
! 
!                OPEN(UNIT=fd, FILE="fseek.test")
!                CALL FSEEK(fd, offset, SEEK_SET, ierr)  ! move to OFFSET
!                print *, FTELL(fd), ierr
! 
!                CALL FSEEK(fd, 0, SEEK_END, ierr)       ! move to end
!                print *, FTELL(fd), ierr
! 
!                CALL FSEEK(fd, 0, SEEK_SET, ierr)       ! move to beginning
!                print *, FTELL(fd), ierr
! 
!                CLOSE(UNIT=fd)
!              END PROGRAM
! 
! SEE ALSO
!    FTELL
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
