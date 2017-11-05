! FORTRAN INTRINSIC PROCEDURE
!    signal()
! 
! 
! DESCRIPTION
!    SIGNAL(NUMBER, HANDLER  [, STATUS]) causes external subroutine
!    HANDLER to be executed with a single integer argument when signal
!    NUMBER occurs.  If HANDLER is an integer, it can be used to
!    turn off handling of signal NUMBER or revert to its default
!    action.  See signal(2).
! 
!    If SIGNAL is called as a subroutine and the STATUS argument
!    is supplied, it is set to the value returned by signal(2).
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

subroutine signal(number, handler  [, status])

!    STATUS = SIGNAL(NUMBER, HANDLER)
! 
! 
! ARGUMENTS
! 
!    NUMBER Shall be a scalar integer, with INTENT(IN)
!    HANDLERSignal handler (INTEGER FUNCTION or
!    SUBROUTINE) or dummy/global INTEGER scalar. 
!    INTEGER. It is INTENT(IN). 
!    STATUS (Optional) STATUS shall be a scalar
!    integer. It has INTENT(OUT).
! 
! 
! RETURN VALUE
!    The SIGNAL function returns the value returned by signal(2).
! 
! 
! EXAMPLE
! 
!              program test_signal
!                intrinsic signal
!                external handler_print
! 
!                call signal (12, handler_print)
!                call signal (10, 1)
! 
!                call sleep (30)
!              end program test_signal
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
