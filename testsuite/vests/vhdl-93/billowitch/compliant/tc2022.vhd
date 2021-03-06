
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc2022.vhd,v 1.2 2001-10-26 16:29:45 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b04x00p01n01i02022ent IS
END c07s02b04x00p01n01i02022ent;

ARCHITECTURE c07s02b04x00p01n01i02022arch OF c07s02b04x00p01n01i02022ent IS

BEGIN
  TESTING: PROCESS
    variable w : real := 3.0 - 2.0;   -- No_failure_here
                                          -- w should be 1.0
  BEGIN
    assert NOT(w=1.0) 
      report "***PASSED TEST: c07s02b04x00p01n01i02022"
      severity NOTE;
    assert (w=1.0) 
      report "***FAILED TEST: c07s02b04x00p01n01i02022 - The adding operators are predefined only for numeric types." 
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b04x00p01n01i02022arch;
