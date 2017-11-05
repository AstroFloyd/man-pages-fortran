! FORTRAN INTRINSIC PROCEDURE
!    alarm()
! 
! 
! DESCRIPTION
!    ALARM(SECONDS, HANDLER  [, STATUS]) causes external subroutine HANDLER
!    to be executed after a delay of SECONDS by using alarm(2) to
!    set up a signal and signal(2) to catch it. If STATUS is
!    supplied, it will be returned with the number of seconds remaining until
!    any previously scheduled alarm was due to be delivered, or zero if there
!    was no previously scheduled alarm.
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

subroutine alarm(seconds, handler  [, status])

! 
! 
! ARGUMENTS
! 
!    SECONDS The type of the argument shall be a scalar
!    INTEGER. It is INTENT(IN). 
!    HANDLER Signal handler (INTEGER FUNCTION or
!    SUBROUTINE) or dummy/global INTEGER scalar. The scalar
!    values may be either SIG_IGN=1 to ignore the alarm generated
!    or SIG_DFL=0 to set the default action. It is INTENT(IN). 
!    STATUS  (Optional) STATUS shall be a scalar
!    variable of the default INTEGER kind. It is INTENT(OUT).
! 
! 
! EXAMPLE
! 
!              program test_alarm
!                external handler_print
!                integer i
!                call alarm (3, handler_print, i)
!                print *, i
!                call sleep(10)
!              end program test_alarm
!    This will cause the external routine handler_print to be called
!    after 3 seconds. 
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
