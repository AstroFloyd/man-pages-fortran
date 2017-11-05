! FORTRAN INTRINSIC PROCEDURE
!    execute_command_line()
! 
! 
! DESCRIPTION
!    EXECUTE_COMMAND_LINE runs a shell command, synchronously or
!    asynchronously.
! 
!    The COMMAND argument is passed to the shell and executed, using
!    the C library's system call.  (The shell is sh on Unix
!    systems, and cmd.exe on Windows.)  If WAIT is present
!    and has the value false, the execution of the command is asynchronous
!    if the system supports it; otherwise, the command is executed
!    synchronously.
! 
!    The three last arguments allow the user to get status information.  After
!    synchronous execution, EXITSTAT contains the integer exit code of
!    the command, as returned by system.  CMDSTAT is set to zero
!    if the command line was executed (whatever its exit status was). 
!    CMDMSG is assigned an error message if an error has occurred.
! 
!    Note that the system function need not be thread-safe. It is
!    the responsibility of the user to ensure that system is not
!    called concurrently.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Subroutine
! 
! 
! PROTOTYPE

subroutine execute_command_line(command  [, wait, exitstat, cmdstat, cmdmsg ])

! 
! 
! ARGUMENTS
! 
!    COMMAND Shall be a default CHARACTER scalar. 
!    WAIT (Optional) Shall be a default LOGICAL scalar. 
!    EXITSTAT (Optional) Shall be an INTEGER of the
!    default kind. 
!    CMDSTAT (Optional) Shall be an INTEGER of the
!    default kind. 
!    CMDMSG (Optional) Shall be an CHARACTER scalar of the
!    default kind.
! 
! 
! EXAMPLE
! 
!              program test_exec
!                integer :: i
! 
!                call execute_command_line ("external_prog.exe", exitstat=i)
!                print *, "Exit status of external_prog.exe was ", i
! 
!                call execute_command_line ("reindex_files.exe", wait=.false.)
!                print *, "Now reindexing files in the background"
! 
!              end program test_exec
! 
! NOTE
! 
!    Because this intrinsic is implemented in terms of the system
!    function call, its behavior with respect to signaling is processor
!    dependent. In particular, on POSIX-compliant systems, the SIGINT and
!    SIGQUIT signals will be ignored, and the SIGCHLD will be blocked. As
!    such, if the parent process is terminated, the child process might not be
!    terminated alongside.
! 
! 
! SEE ALSO
!    SYSTEM
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
