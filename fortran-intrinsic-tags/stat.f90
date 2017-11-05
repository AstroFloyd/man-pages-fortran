! FORTRAN INTRINSIC PROCEDURE
!    stat()
! 
! 
! DESCRIPTION
!    This function returns information about a file. No permissions are required on
!    the file itself, but execute (search) permission is required on all of the
!    directories in path that lead to the file.
! 
!    The elements that are obtained and stored in the array VALUES:
!    VALUES(1)   Device ID
!    VALUES(2)   Inode number
!    VALUES(3)   File mode
!    VALUES(4)   Number of links
!    VALUES(5)   Owner's uid
!    VALUES(6)   Owner's gid
!    VALUES(7)   ID of device containing directory entry for file (0 if not available)
!    VALUES(8)   File size (bytes)
!    VALUES(9)   Last access time
!    VALUES(10)  Last modification time
!    VALUES(11)  Last file status change time
!    VALUES(12)  Preferred I/O block size (-1 if not available)
!    VALUES(13)  Number of blocks allocated (-1 if not available)
! 
!    Not all these elements are relevant on all systems. 
!    If an element is not relevant, it is returned as 0.
! 
!    This intrinsic is provided in both subroutine and function forms; however,
!    only one form can be used in any given program unit.
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

subroutine stat(name, values  [, status])

!    STATUS = STAT(NAME, VALUES)
! 
! 
! ARGUMENTS
! 
!    NAME   The type shall be CHARACTER, of the
!    default kind and a valid path within the file system. 
!    VALUES The type shall be INTEGER(4), DIMENSION(13). 
!    STATUS (Optional) status flag of type INTEGER(4). Returns 0
!    on success and a system specific error code otherwise.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_stat
!                INTEGER, DIMENSION(13) :: buff
!                INTEGER :: status
! 
!                CALL STAT("/etc/passwd", buff, status)
! 
!                IF (status == 0) THEN
!                  WRITE (*, FMT="('Device ID:',               T30, I19)") buff(1)
!                  WRITE (*, FMT="('Inode number:',            T30, I19)") buff(2)
!                  WRITE (*, FMT="('File mode (octal):',       T30, O19)") buff(3)
!                  WRITE (*, FMT="('Number of links:',         T30, I19)") buff(4)
!                  WRITE (*, FMT="('Owner''s uid:',            T30, I19)") buff(5)
!                  WRITE (*, FMT="('Owner''s gid:',            T30, I19)") buff(6)
!                  WRITE (*, FMT="('Device where located:',    T30, I19)") buff(7)
!                  WRITE (*, FMT="('File size:',               T30, I19)") buff(8)
!                  WRITE (*, FMT="('Last access time:',        T30, A19)") CTIME(buff(9))
!                  WRITE (*, FMT="('Last modification time',   T30, A19)") CTIME(buff(10))
!                  WRITE (*, FMT="('Last status change time:', T30, A19)") CTIME(buff(11))
!                  WRITE (*, FMT="('Preferred block size:',    T30, I19)") buff(12)
!                  WRITE (*, FMT="('No. of blocks allocated:', T30, I19)") buff(13)
!                END IF
!              END PROGRAM
! 
! SEE ALSO
!    To stat an open file: FSTAT, to stat a link: LSTAT
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
