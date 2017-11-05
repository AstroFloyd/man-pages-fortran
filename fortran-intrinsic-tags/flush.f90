! FORTRAN INTRINSIC PROCEDURE
!    flush()
! 
! 
! DESCRIPTION
!    Flushes Fortran unit(s) currently open for output. Without the optional
!    argument, all units are flushed, otherwise just the unit specified.
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

subroutine flush(unit)

! 
! 
! ARGUMENTS
! 
!    UNIT (Optional) The type shall be INTEGER.
! 
! 
! NOTE
!    Beginning with the Fortran 2003 standard, there is a FLUSH
!    statement that should be preferred over the FLUSH intrinsic.
! 
!    The FLUSH intrinsic and the Fortran 2003 FLUSH statement
!    have identical effect: they flush the runtime library's I/O buffer so
!    that the data becomes visible to other processes. This does not guarantee
!    that the data is committed to disk.
! 
!    On POSIX systems, you can request that all data is transferred  to  the
!    storage device by calling the fsync function, with the POSIX file
!    descriptor of the I/O unit as argument (retrieved with GNU intrinsic
!    FNUM). The following example shows how:
! 
!                ! Declare the interface for POSIX fsync function
!                interface
!                  function fsync (fd) bind(c,name="fsync")
!                  use iso_c_binding, only: c_int
!                    integer(c_int), value :: fd
!                    integer(c_int) :: fsync
!                  end function fsync
!                end interface
! 
!                ! Variable declaration
!                integer :: ret
! 
!                ! Opening unit 10
!                open (10,file="foo")
! 
!                ! ...
!                ! Perform I/O on unit 10
!                ! ...
! 
!                ! Flush and sync
!                flush(10)
!                ret = fsync(fnum(10))
! 
!                ! Handle possible error
!                if (ret /= 0) stop "Error calling FSYNC"
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
