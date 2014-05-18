
-- 
-- Definition of  filter
-- 
--      10/18/13 10:50:48
--      
--      Precision RTL Synthesis, 2012a.10
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim ;
use unisim.vcomponents.all;

entity filter_core is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      mcu_data_rsc_singleport_data_in : OUT std_logic_vector (31 DOWNTO 0) ;
      
      mcu_data_rsc_singleport_addr : OUT std_logic_vector (8 DOWNTO 0) ;
      mcu_data_rsc_singleport_re : OUT std_logic ;
      mcu_data_rsc_singleport_we : OUT std_logic ;
      mcu_data_rsc_singleport_data_out : IN std_logic_vector (31 DOWNTO 0) ;
      
      in_data_rsc_mgc_in_wire_en_ld : OUT std_logic ;
      in_data_rsc_mgc_in_wire_en_d : IN std_logic_vector (2 DOWNTO 0) ;
      in_data_vld_rsc_mgc_in_wire_d : IN std_logic ;
      out_data_rsc_mgc_out_stdreg_en_ld : OUT std_logic ;
      out_data_rsc_mgc_out_stdreg_en_d : OUT std_logic_vector (2 DOWNTO 0)
   ) ;
end filter_core ;

architecture v1_unfold_1878 of filter_core is 
   signal mcu_data_rsc_singleport_addr_0_EXMPLR46, fsm_output_2, 
      fsm_output_1: std_logic ;
   
   signal a_sva: std_logic_vector (31 DOWNTO 0) ;
   
   signal b_sva: std_logic_vector (31 DOWNTO 0) ;
   
   signal state_1_sva_1, equal_tmp_2, switch_lp_or_itm_1, asn_44_itm_1, 
      main_stage_0_2, nx52657z1, nx52656z1, nx52655z1, nx52654z1, nx52653z1, 
      nx52652z1, nx52651z1, nx52650z1, nx52649z1, nx60891z1, nx60892z1, 
      nx60893z1, nx60894z1, nx60895z1, nx60896z1, nx60897z1, nx60898z1, 
      nx60899z1, nx60900z1, nx61888z1, nx61889z1, nx61890z1, nx61891z1, 
      nx61892z1, nx61893z1, nx61894z1, nx61895z1, nx61896z1, nx61897z1, 
      nx62885z1, nx47809z1, nx18175z1, nx20291z1, nx47809z2, nx62885z3, 
      nx61897z3, nx61896z3, nx61895z3, nx61894z3, nx61893z3, nx61892z3, 
      nx61891z3, nx61890z3, nx61889z3, nx61888z3, nx60900z3, nx60899z3, 
      nx60898z3, nx60897z3, nx60896z3, nx60895z3, nx60894z3, nx60893z3, 
      nx60892z3, nx60891z3, nx52649z3, nx52650z3, nx52651z3, nx52652z3, 
      nx52653z3, nx52654z3, nx52655z3, nx52656z3, nx52657z3, nx52658z1, 
      nx52658z3, nx17178z1, nx48259z1, nx26289z1, nx42061z1, nx29223z1, 
      nx30220z1, nx47809z3, nx39472z1, nx62885z2, nx61897z2, nx61896z2, 
      nx61895z2, nx61894z2, nx61893z2, nx61892z2, nx61891z2, nx61890z2, 
      nx61889z2, nx61888z2, nx60900z2, nx60899z2, nx60898z2, nx60897z2, 
      nx60896z2, nx60895z2, nx60894z2, nx60893z2, nx60892z2, nx60891z2, 
      nx52649z2, nx52650z2, nx52651z2, nx52652z2, nx52653z2, nx52654z2, 
      nx52655z2, nx52656z2, nx52657z2, nx52658z4, nx52658z2: std_logic ;

begin
   mcu_data_rsc_singleport_addr(0) <= 
   mcu_data_rsc_singleport_addr_0_EXMPLR46 ;
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_0 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(0), CI=>nx52658z1, LI=>nx52658z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_0 : MUXCY_L port map ( LO=>
      nx52657z1, CI=>nx52658z1, DI=>nx52658z2, S=>nx52658z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_1 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(1), CI=>nx52657z1, LI=>nx52657z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_1 : MUXCY_L port map ( LO=>
      nx52656z1, CI=>nx52657z1, DI=>nx52657z2, S=>nx52657z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_2 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(2), CI=>nx52656z1, LI=>nx52656z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_2 : MUXCY_L port map ( LO=>
      nx52655z1, CI=>nx52656z1, DI=>nx52656z2, S=>nx52656z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_3 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(3), CI=>nx52655z1, LI=>nx52655z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_3 : MUXCY_L port map ( LO=>
      nx52654z1, CI=>nx52655z1, DI=>nx52655z2, S=>nx52655z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_4 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(4), CI=>nx52654z1, LI=>nx52654z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_4 : MUXCY_L port map ( LO=>
      nx52653z1, CI=>nx52654z1, DI=>nx52654z2, S=>nx52654z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_5 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(5), CI=>nx52653z1, LI=>nx52653z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_5 : MUXCY_L port map ( LO=>
      nx52652z1, CI=>nx52653z1, DI=>nx52653z2, S=>nx52653z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_6 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(6), CI=>nx52652z1, LI=>nx52652z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_6 : MUXCY_L port map ( LO=>
      nx52651z1, CI=>nx52652z1, DI=>nx52652z2, S=>nx52652z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_7 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(7), CI=>nx52651z1, LI=>nx52651z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_7 : MUXCY_L port map ( LO=>
      nx52650z1, CI=>nx52651z1, DI=>nx52651z2, S=>nx52651z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_8 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(8), CI=>nx52650z1, LI=>nx52650z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_8 : MUXCY_L port map ( LO=>
      nx52649z1, CI=>nx52650z1, DI=>nx52650z2, S=>nx52650z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_9 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(9), CI=>nx52649z1, LI=>nx52649z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_9 : MUXCY_L port map ( LO=>
      nx60891z1, CI=>nx52649z1, DI=>nx52649z2, S=>nx52649z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_10 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(10), CI=>nx60891z1, LI=>nx60891z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_10 : MUXCY_L port map ( LO
      =>nx60892z1, CI=>nx60891z1, DI=>nx60891z2, S=>nx60891z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_11 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(11), CI=>nx60892z1, LI=>nx60892z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_11 : MUXCY_L port map ( LO
      =>nx60893z1, CI=>nx60892z1, DI=>nx60892z2, S=>nx60892z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_12 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(12), CI=>nx60893z1, LI=>nx60893z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_12 : MUXCY_L port map ( LO
      =>nx60894z1, CI=>nx60893z1, DI=>nx60893z2, S=>nx60893z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_13 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(13), CI=>nx60894z1, LI=>nx60894z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_13 : MUXCY_L port map ( LO
      =>nx60895z1, CI=>nx60894z1, DI=>nx60894z2, S=>nx60894z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_14 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(14), CI=>nx60895z1, LI=>nx60895z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_14 : MUXCY_L port map ( LO
      =>nx60896z1, CI=>nx60895z1, DI=>nx60895z2, S=>nx60895z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_15 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(15), CI=>nx60896z1, LI=>nx60896z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_15 : MUXCY_L port map ( LO
      =>nx60897z1, CI=>nx60896z1, DI=>nx60896z2, S=>nx60896z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_16 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(16), CI=>nx60897z1, LI=>nx60897z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_16 : MUXCY_L port map ( LO
      =>nx60898z1, CI=>nx60897z1, DI=>nx60897z2, S=>nx60897z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_17 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(17), CI=>nx60898z1, LI=>nx60898z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_17 : MUXCY_L port map ( LO
      =>nx60899z1, CI=>nx60898z1, DI=>nx60898z2, S=>nx60898z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_18 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(18), CI=>nx60899z1, LI=>nx60899z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_18 : MUXCY_L port map ( LO
      =>nx60900z1, CI=>nx60899z1, DI=>nx60899z2, S=>nx60899z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_19 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(19), CI=>nx60900z1, LI=>nx60900z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_19 : MUXCY_L port map ( LO
      =>nx61888z1, CI=>nx60900z1, DI=>nx60900z2, S=>nx60900z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_20 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(20), CI=>nx61888z1, LI=>nx61888z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_20 : MUXCY_L port map ( LO
      =>nx61889z1, CI=>nx61888z1, DI=>nx61888z2, S=>nx61888z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_21 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(21), CI=>nx61889z1, LI=>nx61889z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_21 : MUXCY_L port map ( LO
      =>nx61890z1, CI=>nx61889z1, DI=>nx61889z2, S=>nx61889z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_22 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(22), CI=>nx61890z1, LI=>nx61890z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_22 : MUXCY_L port map ( LO
      =>nx61891z1, CI=>nx61890z1, DI=>nx61890z2, S=>nx61890z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_23 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(23), CI=>nx61891z1, LI=>nx61891z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_23 : MUXCY_L port map ( LO
      =>nx61892z1, CI=>nx61891z1, DI=>nx61891z2, S=>nx61891z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_24 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(24), CI=>nx61892z1, LI=>nx61892z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_24 : MUXCY_L port map ( LO
      =>nx61893z1, CI=>nx61892z1, DI=>nx61892z2, S=>nx61892z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_25 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(25), CI=>nx61893z1, LI=>nx61893z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_25 : MUXCY_L port map ( LO
      =>nx61894z1, CI=>nx61893z1, DI=>nx61893z2, S=>nx61893z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_26 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(26), CI=>nx61894z1, LI=>nx61894z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_26 : MUXCY_L port map ( LO
      =>nx61895z1, CI=>nx61894z1, DI=>nx61894z2, S=>nx61894z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_27 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(27), CI=>nx61895z1, LI=>nx61895z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_27 : MUXCY_L port map ( LO
      =>nx61896z1, CI=>nx61895z1, DI=>nx61895z2, S=>nx61895z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_28 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(28), CI=>nx61896z1, LI=>nx61896z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_28 : MUXCY_L port map ( LO
      =>nx61897z1, CI=>nx61896z1, DI=>nx61896z2, S=>nx61896z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_29 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(29), CI=>nx61897z1, LI=>nx61897z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_29 : MUXCY_L port map ( LO
      =>nx62885z1, CI=>nx61897z1, DI=>nx61897z2, S=>nx61897z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_30 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(30), CI=>nx62885z1, LI=>nx62885z3);
   mcu_data_rsc_singleport_data_in_add32_0_muxcy_30 : MUXCY_L port map ( LO
      =>nx47809z1, CI=>nx62885z1, DI=>nx62885z2, S=>nx62885z3);
   mcu_data_rsc_singleport_data_in_add32_0_xorcy_31 : XORCY port map ( O=>
      mcu_data_rsc_singleport_data_in(31), CI=>nx47809z1, LI=>nx47809z2);
   reg_main_stage_0_2 : FDR port map ( Q=>main_stage_0_2, C=>clk, D=>
      fsm_output_2, R=>rst);
   reg_asn_44_itm_1 : FDR port map ( Q=>asn_44_itm_1, C=>clk, D=>
      in_data_vld_rsc_mgc_in_wire_d, R=>rst);
   reg_switch_lp_or_itm_1 : FDR port map ( Q=>switch_lp_or_itm_1, C=>clk, D
      =>nx20291z1, R=>rst);
   reg_equal_tmp_2 : FDR port map ( Q=>equal_tmp_2, C=>clk, D=>nx29223z1, R
      =>rst);
   reg_in_data_rsc_mgc_in_wire_en_ld : FDR port map ( Q=>
      in_data_rsc_mgc_in_wire_en_ld, C=>clk, D=>nx42061z1, R=>rst);
   reg_out_data_rsc_mgc_out_stdreg_en_ld : FDR port map ( Q=>
      out_data_rsc_mgc_out_stdreg_en_ld, C=>clk, D=>nx26289z1, R=>rst);
   reg_state_1_sva_1 : FDRE port map ( Q=>state_1_sva_1, C=>clk, CE=>
      fsm_output_2, D=>nx29223z1, R=>rst);
   reg_state_1_sva_0 : FDRE port map ( Q=>
      mcu_data_rsc_singleport_addr_0_EXMPLR46, C=>clk, CE=>fsm_output_2, D=>
      nx30220z1, R=>rst);
   reg_b_sva_31 : FDRE port map ( Q=>b_sva(31), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(31), R=>rst);
   reg_b_sva_30 : FDRE port map ( Q=>b_sva(30), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(30), R=>rst);
   reg_b_sva_29 : FDRE port map ( Q=>b_sva(29), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(29), R=>rst);
   reg_b_sva_28 : FDRE port map ( Q=>b_sva(28), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(28), R=>rst);
   reg_b_sva_27 : FDRE port map ( Q=>b_sva(27), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(27), R=>rst);
   reg_b_sva_26 : FDRE port map ( Q=>b_sva(26), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(26), R=>rst);
   reg_b_sva_25 : FDRE port map ( Q=>b_sva(25), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(25), R=>rst);
   reg_b_sva_24 : FDRE port map ( Q=>b_sva(24), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(24), R=>rst);
   reg_b_sva_23 : FDRE port map ( Q=>b_sva(23), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(23), R=>rst);
   reg_b_sva_22 : FDRE port map ( Q=>b_sva(22), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(22), R=>rst);
   reg_b_sva_21 : FDRE port map ( Q=>b_sva(21), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(21), R=>rst);
   reg_b_sva_20 : FDRE port map ( Q=>b_sva(20), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(20), R=>rst);
   reg_b_sva_19 : FDRE port map ( Q=>b_sva(19), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(19), R=>rst);
   reg_b_sva_18 : FDRE port map ( Q=>b_sva(18), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(18), R=>rst);
   reg_b_sva_17 : FDRE port map ( Q=>b_sva(17), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(17), R=>rst);
   reg_b_sva_16 : FDRE port map ( Q=>b_sva(16), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(16), R=>rst);
   reg_b_sva_15 : FDRE port map ( Q=>b_sva(15), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(15), R=>rst);
   reg_b_sva_14 : FDRE port map ( Q=>b_sva(14), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(14), R=>rst);
   reg_b_sva_13 : FDRE port map ( Q=>b_sva(13), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(13), R=>rst);
   reg_b_sva_12 : FDRE port map ( Q=>b_sva(12), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(12), R=>rst);
   reg_b_sva_11 : FDRE port map ( Q=>b_sva(11), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(11), R=>rst);
   reg_b_sva_10 : FDRE port map ( Q=>b_sva(10), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(10), R=>rst);
   reg_b_sva_9 : FDRE port map ( Q=>b_sva(9), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(9), R=>rst);
   reg_b_sva_8 : FDRE port map ( Q=>b_sva(8), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(8), R=>rst);
   reg_b_sva_7 : FDRE port map ( Q=>b_sva(7), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(7), R=>rst);
   reg_b_sva_6 : FDRE port map ( Q=>b_sva(6), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(6), R=>rst);
   reg_b_sva_5 : FDRE port map ( Q=>b_sva(5), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(5), R=>rst);
   reg_b_sva_4 : FDRE port map ( Q=>b_sva(4), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(4), R=>rst);
   reg_b_sva_3 : FDRE port map ( Q=>b_sva(3), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(3), R=>rst);
   reg_b_sva_2 : FDRE port map ( Q=>b_sva(2), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(2), R=>rst);
   reg_b_sva_1 : FDRE port map ( Q=>b_sva(1), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(1), R=>rst);
   reg_b_sva_0 : FDRE port map ( Q=>b_sva(0), C=>clk, CE=>nx48259z1, D=>
      mcu_data_rsc_singleport_data_out(0), R=>rst);
   reg_out_data_rsc_mgc_out_stdreg_en_d_drv_2 : FDRE port map ( Q=>
      out_data_rsc_mgc_out_stdreg_en_d(2), C=>clk, CE=>nx26289z1, D=>
      in_data_rsc_mgc_in_wire_en_d(2), R=>rst);
   reg_out_data_rsc_mgc_out_stdreg_en_d_drv_1 : FDRE port map ( Q=>
      out_data_rsc_mgc_out_stdreg_en_d(1), C=>clk, CE=>nx26289z1, D=>
      in_data_rsc_mgc_in_wire_en_d(1), R=>rst);
   reg_out_data_rsc_mgc_out_stdreg_en_d_drv_0 : FDRE port map ( Q=>
      out_data_rsc_mgc_out_stdreg_en_d(0), C=>clk, CE=>nx26289z1, D=>
      in_data_rsc_mgc_in_wire_en_d(0), R=>rst);
   reg_a_sva_31 : FDRE port map ( Q=>a_sva(31), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(31), R=>rst);
   reg_a_sva_30 : FDRE port map ( Q=>a_sva(30), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(30), R=>rst);
   reg_a_sva_29 : FDRE port map ( Q=>a_sva(29), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(29), R=>rst);
   reg_a_sva_28 : FDRE port map ( Q=>a_sva(28), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(28), R=>rst);
   reg_a_sva_27 : FDRE port map ( Q=>a_sva(27), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(27), R=>rst);
   reg_a_sva_26 : FDRE port map ( Q=>a_sva(26), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(26), R=>rst);
   reg_a_sva_25 : FDRE port map ( Q=>a_sva(25), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(25), R=>rst);
   reg_a_sva_24 : FDRE port map ( Q=>a_sva(24), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(24), R=>rst);
   reg_a_sva_23 : FDRE port map ( Q=>a_sva(23), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(23), R=>rst);
   reg_a_sva_22 : FDRE port map ( Q=>a_sva(22), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(22), R=>rst);
   reg_a_sva_21 : FDRE port map ( Q=>a_sva(21), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(21), R=>rst);
   reg_a_sva_20 : FDRE port map ( Q=>a_sva(20), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(20), R=>rst);
   reg_a_sva_19 : FDRE port map ( Q=>a_sva(19), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(19), R=>rst);
   reg_a_sva_18 : FDRE port map ( Q=>a_sva(18), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(18), R=>rst);
   reg_a_sva_17 : FDRE port map ( Q=>a_sva(17), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(17), R=>rst);
   reg_a_sva_16 : FDRE port map ( Q=>a_sva(16), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(16), R=>rst);
   reg_a_sva_15 : FDRE port map ( Q=>a_sva(15), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(15), R=>rst);
   reg_a_sva_14 : FDRE port map ( Q=>a_sva(14), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(14), R=>rst);
   reg_a_sva_13 : FDRE port map ( Q=>a_sva(13), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(13), R=>rst);
   reg_a_sva_12 : FDRE port map ( Q=>a_sva(12), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(12), R=>rst);
   reg_a_sva_11 : FDRE port map ( Q=>a_sva(11), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(11), R=>rst);
   reg_a_sva_10 : FDRE port map ( Q=>a_sva(10), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(10), R=>rst);
   reg_a_sva_9 : FDRE port map ( Q=>a_sva(9), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(9), R=>rst);
   reg_a_sva_8 : FDRE port map ( Q=>a_sva(8), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(8), R=>rst);
   reg_a_sva_7 : FDRE port map ( Q=>a_sva(7), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(7), R=>rst);
   reg_a_sva_6 : FDRE port map ( Q=>a_sva(6), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(6), R=>rst);
   reg_a_sva_5 : FDRE port map ( Q=>a_sva(5), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(5), R=>rst);
   reg_a_sva_4 : FDRE port map ( Q=>a_sva(4), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(4), R=>rst);
   reg_a_sva_3 : FDRE port map ( Q=>a_sva(3), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(3), R=>rst);
   reg_a_sva_2 : FDRE port map ( Q=>a_sva(2), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(2), R=>rst);
   reg_a_sva_1 : FDRE port map ( Q=>a_sva(1), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(1), R=>rst);
   reg_a_sva_0 : FDRE port map ( Q=>a_sva(0), C=>clk, CE=>nx39472z1, D=>
      mcu_data_rsc_singleport_data_out(0), R=>rst);
   filter_core_fsm_inst_reg_state_var_1 : FDR port map ( Q=>fsm_output_2, C
      =>clk, D=>nx18175z1, R=>rst);
   filter_core_fsm_inst_reg_state_var_0 : FDR port map ( Q=>fsm_output_1, C
      =>clk, D=>nx17178z1, R=>rst);
   ix15410z1505 : LUT3
      generic map (INIT => X"BF") 
       port map ( O=>mcu_data_rsc_singleport_we, I0=>
      mcu_data_rsc_singleport_addr_0_EXMPLR46, I1=>fsm_output_2, I2=>
      state_1_sva_1);
   ix20395z1327 : LUT2
      generic map (INIT => X"D") 
       port map ( O=>mcu_data_rsc_singleport_re, I0=>fsm_output_2, I1=>
      state_1_sva_1);
   ix18175z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx18175z1, I0=>fsm_output_2, I1=>fsm_output_1);
   ix20291z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx20291z1, I0=>mcu_data_rsc_singleport_addr_0_EXMPLR46, 
      I1=>state_1_sva_1);
   ix47809z16014 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx47809z2, I0=>nx39472z1, I1=>nx47809z3, I2=>
      mcu_data_rsc_singleport_data_out(31), I3=>a_sva(31));
   ix62885z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx62885z3, I0=>nx52658z4, I1=>nx62885z2, I2=>
      mcu_data_rsc_singleport_data_out(30), I3=>b_sva(30));
   ix61897z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61897z3, I0=>nx52658z4, I1=>nx61897z2, I2=>
      mcu_data_rsc_singleport_data_out(29), I3=>b_sva(29));
   ix61896z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61896z3, I0=>nx52658z4, I1=>nx61896z2, I2=>
      mcu_data_rsc_singleport_data_out(28), I3=>b_sva(28));
   ix61895z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61895z3, I0=>nx52658z4, I1=>nx61895z2, I2=>
      mcu_data_rsc_singleport_data_out(27), I3=>b_sva(27));
   ix61894z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61894z3, I0=>nx52658z4, I1=>nx61894z2, I2=>
      mcu_data_rsc_singleport_data_out(26), I3=>b_sva(26));
   ix61893z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61893z3, I0=>nx52658z4, I1=>nx61893z2, I2=>
      mcu_data_rsc_singleport_data_out(25), I3=>b_sva(25));
   ix61892z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61892z3, I0=>nx52658z4, I1=>nx61892z2, I2=>
      mcu_data_rsc_singleport_data_out(24), I3=>b_sva(24));
   ix61891z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61891z3, I0=>nx52658z4, I1=>nx61891z2, I2=>
      mcu_data_rsc_singleport_data_out(23), I3=>b_sva(23));
   ix61890z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61890z3, I0=>nx52658z4, I1=>nx61890z2, I2=>
      mcu_data_rsc_singleport_data_out(22), I3=>b_sva(22));
   ix61889z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61889z3, I0=>nx52658z4, I1=>nx61889z2, I2=>
      mcu_data_rsc_singleport_data_out(21), I3=>b_sva(21));
   ix61888z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx61888z3, I0=>nx52658z4, I1=>nx61888z2, I2=>
      mcu_data_rsc_singleport_data_out(20), I3=>b_sva(20));
   ix60900z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60900z3, I0=>nx52658z4, I1=>nx60900z2, I2=>
      mcu_data_rsc_singleport_data_out(19), I3=>b_sva(19));
   ix60899z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60899z3, I0=>nx52658z4, I1=>nx60899z2, I2=>
      mcu_data_rsc_singleport_data_out(18), I3=>b_sva(18));
   ix60898z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60898z3, I0=>nx52658z4, I1=>nx60898z2, I2=>
      mcu_data_rsc_singleport_data_out(17), I3=>b_sva(17));
   ix60897z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60897z3, I0=>nx52658z4, I1=>nx60897z2, I2=>
      mcu_data_rsc_singleport_data_out(16), I3=>b_sva(16));
   ix60896z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60896z3, I0=>nx52658z4, I1=>nx60896z2, I2=>
      mcu_data_rsc_singleport_data_out(15), I3=>b_sva(15));
   ix60895z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60895z3, I0=>nx52658z4, I1=>nx60895z2, I2=>
      mcu_data_rsc_singleport_data_out(14), I3=>b_sva(14));
   ix60894z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60894z3, I0=>nx52658z4, I1=>nx60894z2, I2=>
      mcu_data_rsc_singleport_data_out(13), I3=>b_sva(13));
   ix60893z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60893z3, I0=>nx52658z4, I1=>nx60893z2, I2=>
      mcu_data_rsc_singleport_data_out(12), I3=>b_sva(12));
   ix60892z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60892z3, I0=>nx52658z4, I1=>nx60892z2, I2=>
      mcu_data_rsc_singleport_data_out(11), I3=>b_sva(11));
   ix60891z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx60891z3, I0=>nx52658z4, I1=>nx60891z2, I2=>
      mcu_data_rsc_singleport_data_out(10), I3=>b_sva(10));
   ix52649z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52649z3, I0=>nx52658z4, I1=>nx52649z2, I2=>
      mcu_data_rsc_singleport_data_out(9), I3=>b_sva(9));
   ix52650z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52650z3, I0=>nx52658z4, I1=>nx52650z2, I2=>
      mcu_data_rsc_singleport_data_out(8), I3=>b_sva(8));
   ix52651z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52651z3, I0=>nx52658z4, I1=>nx52651z2, I2=>
      mcu_data_rsc_singleport_data_out(7), I3=>b_sva(7));
   ix52652z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52652z3, I0=>nx52658z4, I1=>nx52652z2, I2=>
      mcu_data_rsc_singleport_data_out(6), I3=>b_sva(6));
   ix52653z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52653z3, I0=>nx52658z4, I1=>nx52653z2, I2=>
      mcu_data_rsc_singleport_data_out(5), I3=>b_sva(5));
   ix52654z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52654z3, I0=>nx52658z4, I1=>nx52654z2, I2=>
      mcu_data_rsc_singleport_data_out(4), I3=>b_sva(4));
   ix52655z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52655z3, I0=>nx52658z4, I1=>nx52655z2, I2=>
      mcu_data_rsc_singleport_data_out(3), I3=>b_sva(3));
   ix52656z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52656z3, I0=>nx52658z4, I1=>nx52656z2, I2=>
      mcu_data_rsc_singleport_data_out(2), I3=>b_sva(2));
   ix52657z16015 : LUT4
      generic map (INIT => X"396C") 
       port map ( O=>nx52657z3, I0=>nx52658z4, I1=>nx52657z2, I2=>
      mcu_data_rsc_singleport_data_out(1), I3=>b_sva(1));
   ps_gnd : GND port map ( G=>nx52658z1);
   ix52658z24206 : LUT4
      generic map (INIT => X"596A") 
       port map ( O=>nx52658z3, I0=>nx52658z2, I1=>nx52658z4, I2=>
      mcu_data_rsc_singleport_data_out(0), I3=>b_sva(0));
   ix19711z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>mcu_data_rsc_singleport_addr(1), I0=>
      mcu_data_rsc_singleport_addr_0_EXMPLR46, I1=>state_1_sva_1);
   ix17178z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx17178z1, I0=>fsm_output_2, I1=>fsm_output_1);
   ix48259z1442 : LUT3
      generic map (INIT => X"80") 
       port map ( O=>nx48259z1, I0=>fsm_output_2, I1=>equal_tmp_2, I2=>
      main_stage_0_2);
   ix26289z1442 : LUT3
      generic map (INIT => X"80") 
       port map ( O=>nx26289z1, I0=>fsm_output_2, I1=>asn_44_itm_1, I2=>
      main_stage_0_2);
   ix42061z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx42061z1, I0=>in_data_vld_rsc_mgc_in_wire_d, I1=>
      fsm_output_2);
   ix29223z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>nx29223z1, I0=>mcu_data_rsc_singleport_addr_0_EXMPLR46, 
      I1=>state_1_sva_1);
   ix30220z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx30220z1, I0=>mcu_data_rsc_singleport_addr_0_EXMPLR46, 
      I1=>state_1_sva_1);
   ix47809z45551 : LUT4
      generic map (INIT => X"ACCC") 
       port map ( O=>nx47809z3, I0=>mcu_data_rsc_singleport_data_out(31), I1
      =>b_sva(31), I2=>equal_tmp_2, I3=>main_stage_0_2);
   ix39472z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>nx39472z1, I0=>switch_lp_or_itm_1, I1=>main_stage_0_2);
   ix62885z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx62885z2, I0=>mcu_data_rsc_singleport_data_out(30), I1
      =>a_sva(30), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61897z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61897z2, I0=>mcu_data_rsc_singleport_data_out(29), I1
      =>a_sva(29), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61896z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61896z2, I0=>mcu_data_rsc_singleport_data_out(28), I1
      =>a_sva(28), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61895z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61895z2, I0=>mcu_data_rsc_singleport_data_out(27), I1
      =>a_sva(27), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61894z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61894z2, I0=>mcu_data_rsc_singleport_data_out(26), I1
      =>a_sva(26), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61893z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61893z2, I0=>mcu_data_rsc_singleport_data_out(25), I1
      =>a_sva(25), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61892z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61892z2, I0=>mcu_data_rsc_singleport_data_out(24), I1
      =>a_sva(24), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61891z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61891z2, I0=>mcu_data_rsc_singleport_data_out(23), I1
      =>a_sva(23), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61890z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61890z2, I0=>mcu_data_rsc_singleport_data_out(22), I1
      =>a_sva(22), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61889z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61889z2, I0=>mcu_data_rsc_singleport_data_out(21), I1
      =>a_sva(21), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix61888z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx61888z2, I0=>mcu_data_rsc_singleport_data_out(20), I1
      =>a_sva(20), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60900z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60900z2, I0=>mcu_data_rsc_singleport_data_out(19), I1
      =>a_sva(19), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60899z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60899z2, I0=>mcu_data_rsc_singleport_data_out(18), I1
      =>a_sva(18), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60898z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60898z2, I0=>mcu_data_rsc_singleport_data_out(17), I1
      =>a_sva(17), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60897z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60897z2, I0=>mcu_data_rsc_singleport_data_out(16), I1
      =>a_sva(16), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60896z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60896z2, I0=>mcu_data_rsc_singleport_data_out(15), I1
      =>a_sva(15), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60895z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60895z2, I0=>mcu_data_rsc_singleport_data_out(14), I1
      =>a_sva(14), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60894z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60894z2, I0=>mcu_data_rsc_singleport_data_out(13), I1
      =>a_sva(13), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60893z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60893z2, I0=>mcu_data_rsc_singleport_data_out(12), I1
      =>a_sva(12), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60892z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60892z2, I0=>mcu_data_rsc_singleport_data_out(11), I1
      =>a_sva(11), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix60891z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx60891z2, I0=>mcu_data_rsc_singleport_data_out(10), I1
      =>a_sva(10), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52649z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52649z2, I0=>mcu_data_rsc_singleport_data_out(9), I1
      =>a_sva(9), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52650z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52650z2, I0=>mcu_data_rsc_singleport_data_out(8), I1
      =>a_sva(8), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52651z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52651z2, I0=>mcu_data_rsc_singleport_data_out(7), I1
      =>a_sva(7), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52652z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52652z2, I0=>mcu_data_rsc_singleport_data_out(6), I1
      =>a_sva(6), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52653z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52653z2, I0=>mcu_data_rsc_singleport_data_out(5), I1
      =>a_sva(5), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52654z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52654z2, I0=>mcu_data_rsc_singleport_data_out(4), I1
      =>a_sva(4), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52655z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52655z2, I0=>mcu_data_rsc_singleport_data_out(3), I1
      =>a_sva(3), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52656z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52656z2, I0=>mcu_data_rsc_singleport_data_out(2), I1
      =>a_sva(2), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52657z53230 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52657z2, I0=>mcu_data_rsc_singleport_data_out(1), I1
      =>a_sva(1), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
   ix52658z1325 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx52658z4, I0=>equal_tmp_2, I1=>main_stage_0_2);
   ix52658z53231 : LUT4
      generic map (INIT => X"CACC") 
       port map ( O=>nx52658z2, I0=>mcu_data_rsc_singleport_data_out(0), I1
      =>a_sva(0), I2=>switch_lp_or_itm_1, I3=>main_stage_0_2);
end v1_unfold_1878 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim ;
use unisim.vcomponents.all;

entity filter is 
   port (
      in_data_rsc_z : IN std_logic_vector (2 DOWNTO 0) ;
      in_data_rsc_lz : OUT std_logic ;
      in_data_vld_rsc_z : IN std_logic ;
      out_data_rsc_z : OUT std_logic_vector (2 DOWNTO 0) ;
      out_data_rsc_lz : OUT std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      mcu_data_rsc_singleport_data_in : OUT std_logic_vector (31 DOWNTO 0) ;
      
      mcu_data_rsc_singleport_addr : OUT std_logic_vector (8 DOWNTO 0) ;
      mcu_data_rsc_singleport_re : OUT std_logic ;
      mcu_data_rsc_singleport_we : OUT std_logic ;
      mcu_data_rsc_singleport_data_out : IN std_logic_vector (31 DOWNTO 0)
   ) ;
end filter ;

architecture v1 of filter is 
   component filter_core
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         mcu_data_rsc_singleport_data_in : OUT std_logic_vector
          (31 DOWNTO 0) ;
         mcu_data_rsc_singleport_addr : OUT std_logic_vector (8 DOWNTO 0) ;
         mcu_data_rsc_singleport_re : OUT std_logic ;
         mcu_data_rsc_singleport_we : OUT std_logic ;
         mcu_data_rsc_singleport_data_out : IN std_logic_vector
          (31 DOWNTO 0) ;
         in_data_rsc_mgc_in_wire_en_ld : OUT std_logic ;
         in_data_rsc_mgc_in_wire_en_d : IN std_logic_vector (2 DOWNTO 0) ;
         in_data_vld_rsc_mgc_in_wire_d : IN std_logic ;
         out_data_rsc_mgc_out_stdreg_en_ld : OUT std_logic ;
         out_data_rsc_mgc_out_stdreg_en_d : OUT std_logic_vector
          (2 DOWNTO 0)) ;
   end component ;
   signal mcu_data_rsc_singleport_addr_2_EXMPLR174: std_logic ;
   
   signal DANGLING : std_logic_vector (6 downto 0 );

begin
   mcu_data_rsc_singleport_addr(8) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(7) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(6) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(5) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(4) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(3) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   mcu_data_rsc_singleport_addr(2) <= 
   mcu_data_rsc_singleport_addr_2_EXMPLR174 ;
   filter_core_inst : filter_core port map ( clk=>clk, rst=>rst, 
      mcu_data_rsc_singleport_data_in(31)=>
      mcu_data_rsc_singleport_data_in(31), 
      mcu_data_rsc_singleport_data_in(30)=>
      mcu_data_rsc_singleport_data_in(30), 
      mcu_data_rsc_singleport_data_in(29)=>
      mcu_data_rsc_singleport_data_in(29), 
      mcu_data_rsc_singleport_data_in(28)=>
      mcu_data_rsc_singleport_data_in(28), 
      mcu_data_rsc_singleport_data_in(27)=>
      mcu_data_rsc_singleport_data_in(27), 
      mcu_data_rsc_singleport_data_in(26)=>
      mcu_data_rsc_singleport_data_in(26), 
      mcu_data_rsc_singleport_data_in(25)=>
      mcu_data_rsc_singleport_data_in(25), 
      mcu_data_rsc_singleport_data_in(24)=>
      mcu_data_rsc_singleport_data_in(24), 
      mcu_data_rsc_singleport_data_in(23)=>
      mcu_data_rsc_singleport_data_in(23), 
      mcu_data_rsc_singleport_data_in(22)=>
      mcu_data_rsc_singleport_data_in(22), 
      mcu_data_rsc_singleport_data_in(21)=>
      mcu_data_rsc_singleport_data_in(21), 
      mcu_data_rsc_singleport_data_in(20)=>
      mcu_data_rsc_singleport_data_in(20), 
      mcu_data_rsc_singleport_data_in(19)=>
      mcu_data_rsc_singleport_data_in(19), 
      mcu_data_rsc_singleport_data_in(18)=>
      mcu_data_rsc_singleport_data_in(18), 
      mcu_data_rsc_singleport_data_in(17)=>
      mcu_data_rsc_singleport_data_in(17), 
      mcu_data_rsc_singleport_data_in(16)=>
      mcu_data_rsc_singleport_data_in(16), 
      mcu_data_rsc_singleport_data_in(15)=>
      mcu_data_rsc_singleport_data_in(15), 
      mcu_data_rsc_singleport_data_in(14)=>
      mcu_data_rsc_singleport_data_in(14), 
      mcu_data_rsc_singleport_data_in(13)=>
      mcu_data_rsc_singleport_data_in(13), 
      mcu_data_rsc_singleport_data_in(12)=>
      mcu_data_rsc_singleport_data_in(12), 
      mcu_data_rsc_singleport_data_in(11)=>
      mcu_data_rsc_singleport_data_in(11), 
      mcu_data_rsc_singleport_data_in(10)=>
      mcu_data_rsc_singleport_data_in(10), 
      mcu_data_rsc_singleport_data_in(9)=>mcu_data_rsc_singleport_data_in(9), 
      mcu_data_rsc_singleport_data_in(8)=>mcu_data_rsc_singleport_data_in(8), 
      mcu_data_rsc_singleport_data_in(7)=>mcu_data_rsc_singleport_data_in(7), 
      mcu_data_rsc_singleport_data_in(6)=>mcu_data_rsc_singleport_data_in(6), 
      mcu_data_rsc_singleport_data_in(5)=>mcu_data_rsc_singleport_data_in(5), 
      mcu_data_rsc_singleport_data_in(4)=>mcu_data_rsc_singleport_data_in(4), 
      mcu_data_rsc_singleport_data_in(3)=>mcu_data_rsc_singleport_data_in(3), 
      mcu_data_rsc_singleport_data_in(2)=>mcu_data_rsc_singleport_data_in(2), 
      mcu_data_rsc_singleport_data_in(1)=>mcu_data_rsc_singleport_data_in(1), 
      mcu_data_rsc_singleport_data_in(0)=>mcu_data_rsc_singleport_data_in(0), 
      mcu_data_rsc_singleport_addr(8)=>DANGLING(0), 
      mcu_data_rsc_singleport_addr(7)=>DANGLING(1), 
      mcu_data_rsc_singleport_addr(6)=>DANGLING(2), 
      mcu_data_rsc_singleport_addr(5)=>DANGLING(3), 
      mcu_data_rsc_singleport_addr(4)=>DANGLING(4), 
      mcu_data_rsc_singleport_addr(3)=>DANGLING(5), 
      mcu_data_rsc_singleport_addr(2)=>DANGLING(6), 
      mcu_data_rsc_singleport_addr(1)=>mcu_data_rsc_singleport_addr(1), 
      mcu_data_rsc_singleport_addr(0)=>mcu_data_rsc_singleport_addr(0), 
      mcu_data_rsc_singleport_re=>mcu_data_rsc_singleport_re, 
      mcu_data_rsc_singleport_we=>mcu_data_rsc_singleport_we, 
      mcu_data_rsc_singleport_data_out(31)=>
      mcu_data_rsc_singleport_data_out(31), 
      mcu_data_rsc_singleport_data_out(30)=>
      mcu_data_rsc_singleport_data_out(30), 
      mcu_data_rsc_singleport_data_out(29)=>
      mcu_data_rsc_singleport_data_out(29), 
      mcu_data_rsc_singleport_data_out(28)=>
      mcu_data_rsc_singleport_data_out(28), 
      mcu_data_rsc_singleport_data_out(27)=>
      mcu_data_rsc_singleport_data_out(27), 
      mcu_data_rsc_singleport_data_out(26)=>
      mcu_data_rsc_singleport_data_out(26), 
      mcu_data_rsc_singleport_data_out(25)=>
      mcu_data_rsc_singleport_data_out(25), 
      mcu_data_rsc_singleport_data_out(24)=>
      mcu_data_rsc_singleport_data_out(24), 
      mcu_data_rsc_singleport_data_out(23)=>
      mcu_data_rsc_singleport_data_out(23), 
      mcu_data_rsc_singleport_data_out(22)=>
      mcu_data_rsc_singleport_data_out(22), 
      mcu_data_rsc_singleport_data_out(21)=>
      mcu_data_rsc_singleport_data_out(21), 
      mcu_data_rsc_singleport_data_out(20)=>
      mcu_data_rsc_singleport_data_out(20), 
      mcu_data_rsc_singleport_data_out(19)=>
      mcu_data_rsc_singleport_data_out(19), 
      mcu_data_rsc_singleport_data_out(18)=>
      mcu_data_rsc_singleport_data_out(18), 
      mcu_data_rsc_singleport_data_out(17)=>
      mcu_data_rsc_singleport_data_out(17), 
      mcu_data_rsc_singleport_data_out(16)=>
      mcu_data_rsc_singleport_data_out(16), 
      mcu_data_rsc_singleport_data_out(15)=>
      mcu_data_rsc_singleport_data_out(15), 
      mcu_data_rsc_singleport_data_out(14)=>
      mcu_data_rsc_singleport_data_out(14), 
      mcu_data_rsc_singleport_data_out(13)=>
      mcu_data_rsc_singleport_data_out(13), 
      mcu_data_rsc_singleport_data_out(12)=>
      mcu_data_rsc_singleport_data_out(12), 
      mcu_data_rsc_singleport_data_out(11)=>
      mcu_data_rsc_singleport_data_out(11), 
      mcu_data_rsc_singleport_data_out(10)=>
      mcu_data_rsc_singleport_data_out(10), 
      mcu_data_rsc_singleport_data_out(9)=>
      mcu_data_rsc_singleport_data_out(9), 
      mcu_data_rsc_singleport_data_out(8)=>
      mcu_data_rsc_singleport_data_out(8), 
      mcu_data_rsc_singleport_data_out(7)=>
      mcu_data_rsc_singleport_data_out(7), 
      mcu_data_rsc_singleport_data_out(6)=>
      mcu_data_rsc_singleport_data_out(6), 
      mcu_data_rsc_singleport_data_out(5)=>
      mcu_data_rsc_singleport_data_out(5), 
      mcu_data_rsc_singleport_data_out(4)=>
      mcu_data_rsc_singleport_data_out(4), 
      mcu_data_rsc_singleport_data_out(3)=>
      mcu_data_rsc_singleport_data_out(3), 
      mcu_data_rsc_singleport_data_out(2)=>
      mcu_data_rsc_singleport_data_out(2), 
      mcu_data_rsc_singleport_data_out(1)=>
      mcu_data_rsc_singleport_data_out(1), 
      mcu_data_rsc_singleport_data_out(0)=>
      mcu_data_rsc_singleport_data_out(0), in_data_rsc_mgc_in_wire_en_ld=>
      in_data_rsc_lz, in_data_rsc_mgc_in_wire_en_d(2)=>in_data_rsc_z(2), 
      in_data_rsc_mgc_in_wire_en_d(1)=>in_data_rsc_z(1), 
      in_data_rsc_mgc_in_wire_en_d(0)=>in_data_rsc_z(0), 
      in_data_vld_rsc_mgc_in_wire_d=>in_data_vld_rsc_z, 
      out_data_rsc_mgc_out_stdreg_en_ld=>out_data_rsc_lz, 
      out_data_rsc_mgc_out_stdreg_en_d(2)=>out_data_rsc_z(2), 
      out_data_rsc_mgc_out_stdreg_en_d(1)=>out_data_rsc_z(1), 
      out_data_rsc_mgc_out_stdreg_en_d(0)=>out_data_rsc_z(0));
   mcu_data_rsc_singleport_addr_2_EXMPLR180 : GND port map ( G=>
      mcu_data_rsc_singleport_addr_2_EXMPLR174);
end v1 ;

