! FORTRAN INTRINSIC PROCEDURE
!    atomic_cas()
! 
! 
! DESCRIPTION
!    ATOMIC_CAS compares the variable ATOM with the value of
!    COMPARE; if the value is the same, ATOM is set to the value
!    of NEW. Additionally, OLD is set to the value of ATOM
!    that was used for the comparison.  When STAT is present and the invokation
!    was successful, it is assigned the value 0. If it is present and the invokation
!    has failed, it is assigned a positive value; in particular, for a coindexed
!    ATOM, if the remote image has stopped, it is assigned the value of
!    ISO_FORTRAN_ENV's STAT_STOPPED_IMAGE and if the remote image has
!    failed, the value STAT_FAILED_IMAGE.
! 
! 
! STANDARD
!    TS 18508 or later
! 
! 
! CLASS
!    Atomic subroutine
! 
! 
! PROTOTYPE

subroutine atomic_cas
 (ATOM, OLD, COMPARE, NEW  [, STAT])
! 
! 
! ARGUMENTS
! 
!    ATOM    Scalar coarray or coindexed variable of either integer
!    type with ATOMIC_INT_KIND kind or logical type with
!    ATOMIC_LOGICAL_KIND kind. 
!    OLD     Scalar of the same type and kind as ATOM. 
!    COMPARE Scalar variable of the same type and kind as
!    ATOM. 
!    NEW     Scalar variable of the same type as ATOM. If kind
!    is different, the value is converted to the kind of ATOM. 
!    STAT    (optional) Scalar default-kind integer variable.
! 
! 
! EXAMPLE
! 
!              program atomic
!                use iso_fortran_env
!                logical(atomic_logical_kind) :: atom[*], prev
!                call atomic_cas (atom[1], prev, .false., .true.))
!              end program atomic
! 
! SEE ALSO
!    ATOMIC_DEFINE, ATOMIC_REF, ISO_FORTRAN_ENV
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
