! FORTRAN INTRINSIC PROCEDURE
!    associated()
! 
! 
! DESCRIPTION
!    ASSOCIATED(POINTER  [, TARGET]) determines the status of the pointer
!    POINTER or if POINTER is associated with the target TARGET.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function associated(pointer  [, target])

! 
! 
! ARGUMENTS
! 
!    POINTER POINTER shall have the POINTER attribute
!    and it can be of any type. 
!    TARGET (Optional) TARGET shall be a pointer or
!    a target.  It must have the same type, kind type parameter, and
!    array rank as POINTER.
!    The association status of neither POINTER nor TARGET shall be
!    undefined.
! 
! 
! RETURN VALUE
!    ASSOCIATED(POINTER) returns a scalar value of type LOGICAL(4). 
!    There are several cases:
! 
! 
!    (A) When the optional TARGET is not present then ASSOCIATED(POINTER) is true if POINTER is associated with a target; otherwise, it returns false. 
! 
!    (B) If TARGET is present and a scalar target, the result is true if TARGET is not a zero-sized storage sequence and the target associated with POINTER occupies the same storage units.  If POINTER is
!    disassociated, the result is false. 
! 
!    (C) If TARGET is present and an array target, the result is true if TARGET and POINTER have the same shape, are not zero-sized arrays,
!    are arrays whose elements are not zero-sized storage sequences, and
!    TARGET and POINTER occupy the same storage units in array element
!    order. 
!    As in case(B), the result is false, if POINTER is disassociated. 
! 
!    (D) If TARGET is present and an scalar pointer, the result is true if TARGET is associated with POINTER, the target associated with
!    TARGET are not zero-sized storage sequences and occupy the same storage
!    units. 
!    The result is false, if either TARGET or POINTER is disassociated. 
! 
!    (E) If TARGET is present and an array pointer, the result is true if target associated with POINTER and the target associated with TARGET
!    have the same shape, are not zero-sized arrays, are arrays whose elements are
!    not zero-sized storage sequences, and TARGET and POINTER occupy
!    the same storage units in array element order. 
!    The result is false, if either TARGET or POINTER is disassociated. 
! 
! 
! EXAMPLE
! 
!              program test_associated
!                 implicit none
!                 real, target  :: tgt(2) = (/1., 2./)
!                 real, pointer :: ptr(:)
!                 ptr => tgt
!                 if (associated(ptr)     .eqv. .false.) call abort
!                 if (associated(ptr,tgt) .eqv. .false.) call abort
!              end program test_associated
! 
! SEE ALSO
!    NULL
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
