
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
-- $Id: tc3145.vhd,v 1.2 2001-10-26 16:29:52 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c05s02b02x00p10n01i03145ent_a IS
  generic ( g1 : real := 22.0 );
END c05s02b02x00p10n01i03145ent_a;

ARCHITECTURE c05s02b02x00p10n01i03145arch_a OF c05s02b02x00p10n01i03145ent_a IS

BEGIN
  TESTING: PROCESS
  BEGIN
    assert NOT( g1 = 22.0 )
      report "***PASSED TEST: c05s02b02x00p10n01i03145"
      severity NOTE;
    assert ( g1 = 22.0 )
      report "***FAILED TEST: c05s02b02x00p10n01i03145 - The formal generics take on implicit OPENs."
      severity ERROR;
    wait;
  END PROCESS TESTING;
  
END c05s02b02x00p10n01i03145arch_a;

--

ENTITY c05s02b02x00p10n01i03145ent IS
END c05s02b02x00p10n01i03145ent;

ARCHITECTURE c05s02b02x00p10n01i03145arch OF c05s02b02x00p10n01i03145ent IS
begin
  l : block
    component c05s02b02x00p10n01i03145ent_a
    end component;
    for comp1 : c05s02b02x00p10n01i03145ent_a use entity work.c05s02b02x00p10n01i03145ent_a(c05s02b02x00p10n01i03145arch_a)
      generic map(OPEN);
  BEGIN
    comp1 : c05s02b02x00p10n01i03145ent_a;
  end block;
END c05s02b02x00p10n01i03145arch;


configuration c05s02b02x00p10n01i03145cfg of c05s02b02x00p10n01i03145ent is
  for c05s02b02x00p10n01i03145arch
  end for;
end c05s02b02x00p10n01i03145cfg;
