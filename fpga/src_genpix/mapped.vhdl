
-- 
-- Definition of  genpix
-- 
--      10/18/13 12:05:07
--      
--      Precision RTL Synthesis, 2012a.10
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim ;
use unisim.vcomponents.all;

entity genpix_core is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      pause_rsc_mgc_in_wire_d : IN std_logic ;
      req_rsc_mgc_in_wire_d : IN std_logic ;
      pixel_rsc_mgc_out_stdreg_d : OUT std_logic_vector (2 DOWNTO 0) ;
      pixel_vld_rsc_mgc_out_stdreg_d : OUT std_logic) ;
end genpix_core ;

architecture v1 of genpix_core is 
   signal pixel_rsc_mgc_out_stdreg_d_EXMPLR31: std_logic_vector (2 DOWNTO 0)
    ;
   
   signal r_sva: std_logic_vector (8 DOWNTO 0) ;
   
   signal c_sva: std_logic_vector (8 DOWNTO 0) ;
   
   signal base_r_sva: std_logic_vector (8 DOWNTO 0) ;
   
   signal base_c_sva: std_logic_vector (8 DOWNTO 0) ;
   
   signal noise_cnt_sva: std_logic_vector (9 DOWNTO 0) ;
   
   signal frame_cnt_sva_5, frame_cnt_sva_4, frame_cnt_sva_3, 
      update_base_pos_inc_r_sg1_sva, update_base_pos_inc_c_sg1_sva, 
      if_1_asn_itm: std_logic ;
   
   signal acc_7_itm: std_logic_vector (9 DOWNTO 1) ;
   
   signal acc_itm: std_logic_vector (9 DOWNTO 1) ;
   
   signal nx51476z6, nx48638z1, nx48639z1, nx48640z1, nx54016z1, nx54017z1, 
      nx54018z1, nx54019z1, nx54020z1, nx6607z1, nx6606z1, nx6605z1, 
      nx64307z1, nx64308z1, nx64309z1, nx64310z1, nx64311z1, nx8372z1, 
      nx8373z1, nx8374z1, nx8375z1, nx8376z1, nx8377z1, nx8378z1, nx8379z1, 
      inc_d_0, nx8474z1, inc_d_1, nx8475z1, inc_d_2, nx8476z1, inc_d_3, 
      nx8477z1, inc_d_4, nx8478z1, inc_d_5, nx8479z1, inc_d_6, nx51681z1, 
      inc_d_7, nx51680z1, inc_d_8, inc_d_0_dup_171, nx18048z1, 
      inc_d_1_dup_174, nx61391z1, inc_d_2_dup_177, nx26338z1, 
      inc_d_3_dup_180, nx17005z1, inc_d_4_dup_183, nx61335z1, 
      inc_d_5_dup_186, nx26394z1, inc_d_6_dup_189, nx48587z1, 
      inc_d_7_dup_192, nx37686z1, inc_d_8_dup_195, inc_d_0_dup_225, 
      nx20048z1, inc_d_1_dup_227, nx64378z1, inc_d_2_dup_230, nx23351z1, 
      inc_d_3_dup_232, nx19992z1, inc_d_4_dup_234, nx63335z1, 
      inc_d_5_dup_236, nx24394z1, inc_d_6_dup_238, nx45600z1, 
      inc_d_7_dup_240, nx8481z1, inc_d_8_dup_242, nx51679z1, inc_d_9, b_2, 
      b_1, b_0, not_pause_rsc_mgc_in_wire_d, inc_d_0_dup_252, nx47534z1, 
      nx36648z1, nx52895z1, nx44624z1, nx43627z1, nx42630z1, nx39639z1, 
      nx38642z1, nx37645z1, nx49869z1, nx46878z1, nx44884z1, nx42890z1, 
      nx49482z1, nx50479z1, nx51476z1, nx23295z1, nx19413z1, nx28530z1, 
      nx51271z6, nx51271z1, nx8379z2, nx8378z2, nx8377z2, nx8376z2, nx8375z2, 
      nx8374z2, nx8373z2, nx8372z2, nx8371z2, nx64311z2, nx64310z2, 
      nx64309z2, nx64308z2, nx64307z2, nx6605z2, nx6606z2, nx6607z2, 
      nx6608z2, nx54020z2, nx54019z2, nx54018z2, nx54017z2, nx54016z2, 
      nx48640z2, nx48639z2, nx48638z2, nx48637z2, nx41633z1, nx40636z1, 
      nx43627z4, nx43627z3, nx43627z2, nx37645z4, nx37645z3, nx37645z2, 
      nx41893z5, nx41893z4, nx41893z1, nx48872z1, nx47875z1, nx45881z1, 
      nx43887z1, nx42890z3, nx42890z2, nx48872z6, nx48872z5, nx48872z4, 
      nx48872z3, nx48872z2, nx41893z3, nx41893z2, nx49482z3, nx49482z2, 
      nx50479z2, nx51476z15, nx51476z14, nx51476z13, nx51476z8, nx51476z7, 
      nx51476z5, nx51476z4, nx51476z3, nx51476z2, nx21374z1, nx1378z1, 
      nx41406z1, nx46882z1, nx46882z2, nx61438z1, nx51476z12, nx51476z11, 
      nx51476z10, nx51476z9, nx51271z10, nx51271z9, nx51271z8, nx51271z7, 
      nx51271z5, nx51271z4, nx51271z3, nx51271z2: std_logic ;

begin
   pixel_rsc_mgc_out_stdreg_d(2) <= pixel_rsc_mgc_out_stdreg_d_EXMPLR31(2) ;
   pixel_rsc_mgc_out_stdreg_d(1) <= pixel_rsc_mgc_out_stdreg_d_EXMPLR31(1) ;
   pixel_rsc_mgc_out_stdreg_d(0) <= pixel_rsc_mgc_out_stdreg_d_EXMPLR31(0) ;
   acc_itm_sub9_0_xorcy_0 : XORCY port map ( O=>acc_itm(1), CI=>nx23295z1, 
      LI=>nx48637z2);
   acc_itm_sub9_0_muxcy_0 : MUXCY_L port map ( LO=>nx48638z1, CI=>nx23295z1, 
      DI=>c_sva(0), S=>nx48637z2);
   acc_itm_sub9_0_xorcy_1 : XORCY port map ( O=>acc_itm(2), CI=>nx48638z1, 
      LI=>nx48638z2);
   acc_itm_sub9_0_muxcy_1 : MUXCY_L port map ( LO=>nx48639z1, CI=>nx48638z1, 
      DI=>c_sva(1), S=>nx48638z2);
   acc_itm_sub9_0_xorcy_2 : XORCY port map ( O=>acc_itm(3), CI=>nx48639z1, 
      LI=>nx48639z2);
   acc_itm_sub9_0_muxcy_2 : MUXCY_L port map ( LO=>nx48640z1, CI=>nx48639z1, 
      DI=>c_sva(2), S=>nx48639z2);
   acc_itm_sub9_0_xorcy_3 : XORCY port map ( O=>acc_itm(4), CI=>nx48640z1, 
      LI=>nx48640z2);
   acc_itm_sub9_0_muxcy_3 : MUXCY_L port map ( LO=>nx54016z1, CI=>nx48640z1, 
      DI=>c_sva(3), S=>nx48640z2);
   acc_itm_sub9_0_xorcy_4 : XORCY port map ( O=>acc_itm(5), CI=>nx54016z1, 
      LI=>nx54016z2);
   acc_itm_sub9_0_muxcy_4 : MUXCY_L port map ( LO=>nx54017z1, CI=>nx54016z1, 
      DI=>c_sva(4), S=>nx54016z2);
   acc_itm_sub9_0_xorcy_5 : XORCY port map ( O=>acc_itm(6), CI=>nx54017z1, 
      LI=>nx54017z2);
   acc_itm_sub9_0_muxcy_5 : MUXCY_L port map ( LO=>nx54018z1, CI=>nx54017z1, 
      DI=>c_sva(5), S=>nx54017z2);
   acc_itm_sub9_0_xorcy_6 : XORCY port map ( O=>acc_itm(7), CI=>nx54018z1, 
      LI=>nx54018z2);
   acc_itm_sub9_0_muxcy_6 : MUXCY_L port map ( LO=>nx54019z1, CI=>nx54018z1, 
      DI=>c_sva(6), S=>nx54018z2);
   acc_itm_sub9_0_xorcy_7 : XORCY port map ( O=>acc_itm(8), CI=>nx54019z1, 
      LI=>nx54019z2);
   acc_itm_sub9_0_muxcy_7 : MUXCY_L port map ( LO=>nx54020z1, CI=>nx54019z1, 
      DI=>c_sva(7), S=>nx54019z2);
   acc_itm_sub9_0_xorcy_8 : XORCY port map ( O=>acc_itm(9), CI=>nx54020z1, 
      LI=>nx54020z2);
   acc_7_itm_sub9_1_xorcy_0 : XORCY port map ( O=>acc_7_itm(1), CI=>
      nx23295z1, LI=>nx6608z2);
   acc_7_itm_sub9_1_muxcy_0 : MUXCY_L port map ( LO=>nx6607z1, CI=>nx23295z1, 
      DI=>r_sva(0), S=>nx6608z2);
   acc_7_itm_sub9_1_xorcy_1 : XORCY port map ( O=>acc_7_itm(2), CI=>nx6607z1, 
      LI=>nx6607z2);
   acc_7_itm_sub9_1_muxcy_1 : MUXCY_L port map ( LO=>nx6606z1, CI=>nx6607z1, 
      DI=>r_sva(1), S=>nx6607z2);
   acc_7_itm_sub9_1_xorcy_2 : XORCY port map ( O=>acc_7_itm(3), CI=>nx6606z1, 
      LI=>nx6606z2);
   acc_7_itm_sub9_1_muxcy_2 : MUXCY_L port map ( LO=>nx6605z1, CI=>nx6606z1, 
      DI=>r_sva(2), S=>nx6606z2);
   acc_7_itm_sub9_1_xorcy_3 : XORCY port map ( O=>acc_7_itm(4), CI=>nx6605z1, 
      LI=>nx6605z2);
   acc_7_itm_sub9_1_muxcy_3 : MUXCY_L port map ( LO=>nx64307z1, CI=>nx6605z1, 
      DI=>r_sva(3), S=>nx6605z2);
   acc_7_itm_sub9_1_xorcy_4 : XORCY port map ( O=>acc_7_itm(5), CI=>
      nx64307z1, LI=>nx64307z2);
   acc_7_itm_sub9_1_muxcy_4 : MUXCY_L port map ( LO=>nx64308z1, CI=>
      nx64307z1, DI=>r_sva(4), S=>nx64307z2);
   acc_7_itm_sub9_1_xorcy_5 : XORCY port map ( O=>acc_7_itm(6), CI=>
      nx64308z1, LI=>nx64308z2);
   acc_7_itm_sub9_1_muxcy_5 : MUXCY_L port map ( LO=>nx64309z1, CI=>
      nx64308z1, DI=>r_sva(5), S=>nx64308z2);
   acc_7_itm_sub9_1_xorcy_6 : XORCY port map ( O=>acc_7_itm(7), CI=>
      nx64309z1, LI=>nx64309z2);
   acc_7_itm_sub9_1_muxcy_6 : MUXCY_L port map ( LO=>nx64310z1, CI=>
      nx64309z1, DI=>r_sva(6), S=>nx64309z2);
   acc_7_itm_sub9_1_xorcy_7 : XORCY port map ( O=>acc_7_itm(8), CI=>
      nx64310z1, LI=>nx64310z2);
   acc_7_itm_sub9_1_muxcy_7 : MUXCY_L port map ( LO=>nx64311z1, CI=>
      nx64310z1, DI=>r_sva(7), S=>nx64310z2);
   acc_7_itm_sub9_1_xorcy_8 : XORCY port map ( O=>acc_7_itm(9), CI=>
      nx64311z1, LI=>nx64311z2);
   mux_2_nl_sub9_0i1_muxcy_0 : MUXCY_L port map ( LO=>nx8372z1, CI=>
      nx23295z1, DI=>acc_itm(1), S=>nx8371z2);
   mux_2_nl_sub9_0i1_muxcy_1 : MUXCY_L port map ( LO=>nx8373z1, CI=>nx8372z1, 
      DI=>acc_itm(2), S=>nx8372z2);
   mux_2_nl_sub9_0i1_muxcy_2 : MUXCY_L port map ( LO=>nx8374z1, CI=>nx8373z1, 
      DI=>acc_itm(3), S=>nx8373z2);
   mux_2_nl_sub9_0i1_muxcy_3 : MUXCY_L port map ( LO=>nx8375z1, CI=>nx8374z1, 
      DI=>acc_itm(4), S=>nx8374z2);
   mux_2_nl_sub9_0i1_muxcy_4 : MUXCY_L port map ( LO=>nx8376z1, CI=>nx8375z1, 
      DI=>acc_itm(5), S=>nx8375z2);
   mux_2_nl_sub9_0i1_muxcy_5 : MUXCY_L port map ( LO=>nx8377z1, CI=>nx8376z1, 
      DI=>acc_itm(6), S=>nx8376z2);
   mux_2_nl_sub9_0i1_muxcy_6 : MUXCY_L port map ( LO=>nx8378z1, CI=>nx8377z1, 
      DI=>acc_itm(7), S=>nx8377z2);
   mux_2_nl_sub9_0i1_muxcy_7 : MUXCY_L port map ( LO=>nx8379z1, CI=>nx8378z1, 
      DI=>acc_itm(8), S=>nx8378z2);
   mux_2_nl_sub9_0i1_muxcy_8 : MUXCY port map ( O=>nx51476z6, CI=>nx8379z1, 
      DI=>acc_itm(9), S=>nx8379z2);
   reg_q_8 : FDRE port map ( Q=>r_sva(8), C=>clk, CE=>nx51271z1, D=>inc_d_8, 
      R=>nx51271z6);
   reg_q_7 : FDRE port map ( Q=>r_sva(7), C=>clk, CE=>nx51271z1, D=>inc_d_7, 
      R=>nx51271z6);
   reg_q_6 : FDRE port map ( Q=>r_sva(6), C=>clk, CE=>nx51271z1, D=>inc_d_6, 
      R=>nx51271z6);
   reg_q_5 : FDRE port map ( Q=>r_sva(5), C=>clk, CE=>nx51271z1, D=>inc_d_5, 
      R=>nx51271z6);
   reg_q_4 : FDRE port map ( Q=>r_sva(4), C=>clk, CE=>nx51271z1, D=>inc_d_4, 
      R=>nx51271z6);
   reg_q_3 : FDRE port map ( Q=>r_sva(3), C=>clk, CE=>nx51271z1, D=>inc_d_3, 
      R=>nx51271z6);
   reg_q_2 : FDRE port map ( Q=>r_sva(2), C=>clk, CE=>nx51271z1, D=>inc_d_2, 
      R=>nx51271z6);
   reg_q_1 : FDRE port map ( Q=>r_sva(1), C=>clk, CE=>nx51271z1, D=>inc_d_1, 
      R=>nx51271z6);
   reg_q_0 : FDRE port map ( Q=>r_sva(0), C=>clk, CE=>nx51271z1, D=>inc_d_0, 
      R=>nx51271z6);
   xorcy_0 : XORCY port map ( O=>inc_d_0, CI=>nx23295z1, LI=>r_sva(0));
   muxcy_0 : MUXCY_L port map ( LO=>nx8474z1, CI=>nx23295z1, DI=>nx47534z1, 
      S=>r_sva(0));
   xorcy_1 : XORCY port map ( O=>inc_d_1, CI=>nx8474z1, LI=>r_sva(1));
   muxcy_1 : MUXCY_L port map ( LO=>nx8475z1, CI=>nx8474z1, DI=>nx47534z1, S
      =>r_sva(1));
   xorcy_2 : XORCY port map ( O=>inc_d_2, CI=>nx8475z1, LI=>r_sva(2));
   muxcy_2 : MUXCY_L port map ( LO=>nx8476z1, CI=>nx8475z1, DI=>nx47534z1, S
      =>r_sva(2));
   xorcy_3 : XORCY port map ( O=>inc_d_3, CI=>nx8476z1, LI=>r_sva(3));
   muxcy_3 : MUXCY_L port map ( LO=>nx8477z1, CI=>nx8476z1, DI=>nx47534z1, S
      =>r_sva(3));
   xorcy_4 : XORCY port map ( O=>inc_d_4, CI=>nx8477z1, LI=>r_sva(4));
   muxcy_4 : MUXCY_L port map ( LO=>nx8478z1, CI=>nx8477z1, DI=>nx47534z1, S
      =>r_sva(4));
   xorcy_5 : XORCY port map ( O=>inc_d_5, CI=>nx8478z1, LI=>r_sva(5));
   muxcy_5 : MUXCY_L port map ( LO=>nx8479z1, CI=>nx8478z1, DI=>nx47534z1, S
      =>r_sva(5));
   xorcy_6 : XORCY port map ( O=>inc_d_6, CI=>nx8479z1, LI=>r_sva(6));
   muxcy_6 : MUXCY_L port map ( LO=>nx51681z1, CI=>nx8479z1, DI=>nx47534z1, 
      S=>r_sva(6));
   xorcy_7 : XORCY port map ( O=>inc_d_7, CI=>nx51681z1, LI=>r_sva(7));
   muxcy_7 : MUXCY_L port map ( LO=>nx51680z1, CI=>nx51681z1, DI=>nx47534z1, 
      S=>r_sva(7));
   xorcy_8 : XORCY port map ( O=>inc_d_8, CI=>nx51680z1, LI=>r_sva(8));
   reg_q_8_dup_0 : FDRE port map ( Q=>c_sva(8), C=>clk, CE=>nx28530z1, D=>
      inc_d_8_dup_195, R=>nx51271z1);
   reg_q_7_dup_1 : FDRE port map ( Q=>c_sva(7), C=>clk, CE=>nx28530z1, D=>
      inc_d_7_dup_192, R=>nx51271z1);
   reg_q_6_dup_2 : FDRE port map ( Q=>c_sva(6), C=>clk, CE=>nx28530z1, D=>
      inc_d_6_dup_189, R=>nx51271z1);
   reg_q_5_dup_3 : FDRE port map ( Q=>c_sva(5), C=>clk, CE=>nx28530z1, D=>
      inc_d_5_dup_186, R=>nx51271z1);
   reg_q_4_dup_4 : FDRE port map ( Q=>c_sva(4), C=>clk, CE=>nx28530z1, D=>
      inc_d_4_dup_183, R=>nx51271z1);
   reg_q_3_dup_5 : FDRE port map ( Q=>c_sva(3), C=>clk, CE=>nx28530z1, D=>
      inc_d_3_dup_180, R=>nx51271z1);
   reg_q_2_dup_6 : FDRE port map ( Q=>c_sva(2), C=>clk, CE=>nx28530z1, D=>
      inc_d_2_dup_177, R=>nx51271z1);
   reg_q_1_dup_7 : FDRE port map ( Q=>c_sva(1), C=>clk, CE=>nx28530z1, D=>
      inc_d_1_dup_174, R=>nx51271z1);
   reg_q_0_dup_8 : FDRE port map ( Q=>c_sva(0), C=>clk, CE=>nx28530z1, D=>
      inc_d_0_dup_171, R=>nx51271z1);
   xorcy_0_dup_9 : XORCY port map ( O=>inc_d_0_dup_171, CI=>nx23295z1, LI=>
      c_sva(0));
   muxcy_0_dup_10 : MUXCY_L port map ( LO=>nx18048z1, CI=>nx23295z1, DI=>
      nx47534z1, S=>c_sva(0));
   xorcy_1_dup_11 : XORCY port map ( O=>inc_d_1_dup_174, CI=>nx18048z1, LI=>
      c_sva(1));
   muxcy_1_dup_12 : MUXCY_L port map ( LO=>nx61391z1, CI=>nx18048z1, DI=>
      nx47534z1, S=>c_sva(1));
   xorcy_2_dup_13 : XORCY port map ( O=>inc_d_2_dup_177, CI=>nx61391z1, LI=>
      c_sva(2));
   muxcy_2_dup_14 : MUXCY_L port map ( LO=>nx26338z1, CI=>nx61391z1, DI=>
      nx47534z1, S=>c_sva(2));
   xorcy_3_dup_15 : XORCY port map ( O=>inc_d_3_dup_180, CI=>nx26338z1, LI=>
      c_sva(3));
   muxcy_3_dup_16 : MUXCY_L port map ( LO=>nx17005z1, CI=>nx26338z1, DI=>
      nx47534z1, S=>c_sva(3));
   xorcy_4_dup_17 : XORCY port map ( O=>inc_d_4_dup_183, CI=>nx17005z1, LI=>
      c_sva(4));
   muxcy_4_dup_18 : MUXCY_L port map ( LO=>nx61335z1, CI=>nx17005z1, DI=>
      nx47534z1, S=>c_sva(4));
   xorcy_5_dup_19 : XORCY port map ( O=>inc_d_5_dup_186, CI=>nx61335z1, LI=>
      c_sva(5));
   muxcy_5_dup_20 : MUXCY_L port map ( LO=>nx26394z1, CI=>nx61335z1, DI=>
      nx47534z1, S=>c_sva(5));
   xorcy_6_dup_21 : XORCY port map ( O=>inc_d_6_dup_189, CI=>nx26394z1, LI=>
      c_sva(6));
   muxcy_6_dup_22 : MUXCY_L port map ( LO=>nx48587z1, CI=>nx26394z1, DI=>
      nx47534z1, S=>c_sva(6));
   xorcy_7_dup_23 : XORCY port map ( O=>inc_d_7_dup_192, CI=>nx48587z1, LI=>
      c_sva(7));
   muxcy_7_dup_24 : MUXCY_L port map ( LO=>nx37686z1, CI=>nx48587z1, DI=>
      nx47534z1, S=>c_sva(7));
   xorcy_8_dup_25 : XORCY port map ( O=>inc_d_8_dup_195, CI=>nx37686z1, LI=>
      c_sva(8));
   reg_q_9 : FDRE port map ( Q=>noise_cnt_sva(9), C=>clk, CE=>nx28530z1, D=>
      inc_d_9, R=>nx19413z1);
   reg_q_8_dup_26 : FDRE port map ( Q=>noise_cnt_sva(8), C=>clk, CE=>
      nx28530z1, D=>inc_d_8_dup_242, R=>nx19413z1);
   reg_q_7_dup_27 : FDRE port map ( Q=>noise_cnt_sva(7), C=>clk, CE=>
      nx28530z1, D=>inc_d_7_dup_240, R=>nx19413z1);
   reg_q_6_dup_28 : FDRE port map ( Q=>noise_cnt_sva(6), C=>clk, CE=>
      nx28530z1, D=>inc_d_6_dup_238, R=>nx19413z1);
   reg_q_5_dup_29 : FDRE port map ( Q=>noise_cnt_sva(5), C=>clk, CE=>
      nx28530z1, D=>inc_d_5_dup_236, R=>nx19413z1);
   reg_q_4_dup_30 : FDRE port map ( Q=>noise_cnt_sva(4), C=>clk, CE=>
      nx28530z1, D=>inc_d_4_dup_234, R=>nx19413z1);
   reg_q_3_dup_31 : FDRE port map ( Q=>noise_cnt_sva(3), C=>clk, CE=>
      nx28530z1, D=>inc_d_3_dup_232, R=>nx19413z1);
   reg_q_2_dup_32 : FDRE port map ( Q=>noise_cnt_sva(2), C=>clk, CE=>
      nx28530z1, D=>inc_d_2_dup_230, R=>nx19413z1);
   reg_q_1_dup_33 : FDRE port map ( Q=>noise_cnt_sva(1), C=>clk, CE=>
      nx28530z1, D=>inc_d_1_dup_227, R=>nx19413z1);
   reg_q_0_dup_34 : FDRE port map ( Q=>noise_cnt_sva(0), C=>clk, CE=>
      nx28530z1, D=>inc_d_0_dup_225, R=>nx19413z1);
   xorcy_0_dup_35 : XORCY port map ( O=>inc_d_0_dup_225, CI=>nx23295z1, LI=>
      noise_cnt_sva(0));
   muxcy_0_dup_36 : MUXCY_L port map ( LO=>nx20048z1, CI=>nx23295z1, DI=>
      nx47534z1, S=>noise_cnt_sva(0));
   xorcy_1_dup_37 : XORCY port map ( O=>inc_d_1_dup_227, CI=>nx20048z1, LI=>
      noise_cnt_sva(1));
   muxcy_1_dup_38 : MUXCY_L port map ( LO=>nx64378z1, CI=>nx20048z1, DI=>
      nx47534z1, S=>noise_cnt_sva(1));
   xorcy_2_dup_39 : XORCY port map ( O=>inc_d_2_dup_230, CI=>nx64378z1, LI=>
      noise_cnt_sva(2));
   muxcy_2_dup_40 : MUXCY_L port map ( LO=>nx23351z1, CI=>nx64378z1, DI=>
      nx47534z1, S=>noise_cnt_sva(2));
   xorcy_3_dup_41 : XORCY port map ( O=>inc_d_3_dup_232, CI=>nx23351z1, LI=>
      noise_cnt_sva(3));
   muxcy_3_dup_42 : MUXCY_L port map ( LO=>nx19992z1, CI=>nx23351z1, DI=>
      nx47534z1, S=>noise_cnt_sva(3));
   xorcy_4_dup_43 : XORCY port map ( O=>inc_d_4_dup_234, CI=>nx19992z1, LI=>
      noise_cnt_sva(4));
   muxcy_4_dup_44 : MUXCY_L port map ( LO=>nx63335z1, CI=>nx19992z1, DI=>
      nx47534z1, S=>noise_cnt_sva(4));
   xorcy_5_dup_45 : XORCY port map ( O=>inc_d_5_dup_236, CI=>nx63335z1, LI=>
      noise_cnt_sva(5));
   muxcy_5_dup_46 : MUXCY_L port map ( LO=>nx24394z1, CI=>nx63335z1, DI=>
      nx47534z1, S=>noise_cnt_sva(5));
   xorcy_6_dup_47 : XORCY port map ( O=>inc_d_6_dup_238, CI=>nx24394z1, LI=>
      noise_cnt_sva(6));
   muxcy_6_dup_48 : MUXCY_L port map ( LO=>nx45600z1, CI=>nx24394z1, DI=>
      nx47534z1, S=>noise_cnt_sva(6));
   xorcy_7_dup_49 : XORCY port map ( O=>inc_d_7_dup_240, CI=>nx45600z1, LI=>
      noise_cnt_sva(7));
   muxcy_7_dup_50 : MUXCY_L port map ( LO=>nx8481z1, CI=>nx45600z1, DI=>
      nx47534z1, S=>noise_cnt_sva(7));
   xorcy_8_dup_51 : XORCY port map ( O=>inc_d_8_dup_242, CI=>nx8481z1, LI=>
      noise_cnt_sva(8));
   muxcy_8 : MUXCY_L port map ( LO=>nx51679z1, CI=>nx8481z1, DI=>nx47534z1, 
      S=>noise_cnt_sva(8));
   xorcy_9 : XORCY port map ( O=>inc_d_9, CI=>nx51679z1, LI=>
      noise_cnt_sva(9));
   reg_q_5_dup_52 : FDRE port map ( Q=>frame_cnt_sva_5, C=>clk, CE=>
      nx51271z6, D=>nx61438z1, R=>rst);
   reg_q_4_dup_53 : FDRE port map ( Q=>frame_cnt_sva_4, C=>clk, CE=>
      nx51271z6, D=>nx46882z1, R=>rst);
   reg_q_3_dup_54 : FDRE port map ( Q=>frame_cnt_sva_3, C=>clk, CE=>
      nx51271z6, D=>nx41406z1, R=>rst);
   reg_q_2_dup_55 : FDRE port map ( Q=>b_2, C=>clk, CE=>nx51271z6, D=>
      nx1378z1, R=>rst);
   reg_q_1_dup_56 : FDRE port map ( Q=>b_1, C=>clk, CE=>nx51271z6, D=>
      nx21374z1, R=>rst);
   reg_q_0_dup_57 : FDRE port map ( Q=>b_0, C=>clk, CE=>nx51271z6, D=>
      inc_d_0_dup_252, R=>rst);
   reg_pixel_vld_rsc_mgc_out_stdreg_d : FDR port map ( Q=>
      pixel_vld_rsc_mgc_out_stdreg_d, C=>clk, D=>not_pause_rsc_mgc_in_wire_d, 
      R=>rst);
   reg_pixel_rsc_mgc_out_stdreg_d_drv_2 : FDR port map ( Q=>
      pixel_rsc_mgc_out_stdreg_d_EXMPLR31(2), C=>clk, D=>nx51476z1, R=>rst);
   reg_pixel_rsc_mgc_out_stdreg_d_drv_1 : FDR port map ( Q=>
      pixel_rsc_mgc_out_stdreg_d_EXMPLR31(1), C=>clk, D=>nx50479z1, R=>rst);
   reg_pixel_rsc_mgc_out_stdreg_d_drv_0 : FDR port map ( Q=>
      pixel_rsc_mgc_out_stdreg_d_EXMPLR31(0), C=>clk, D=>nx49482z1, R=>rst);
   reg_base_r_sva_7 : FDRE port map ( Q=>base_r_sva(7), C=>clk, CE=>
      nx51271z7, D=>nx42890z1, R=>rst);
   reg_base_r_sva_6 : FDSE port map ( Q=>base_r_sva(6), C=>clk, CE=>
      nx51271z7, D=>nx43887z1, S=>rst);
   reg_base_r_sva_5 : FDSE port map ( Q=>base_r_sva(5), C=>clk, CE=>
      nx51271z7, D=>nx44884z1, S=>rst);
   reg_base_r_sva_4 : FDRE port map ( Q=>base_r_sva(4), C=>clk, CE=>
      nx51271z7, D=>nx45881z1, R=>rst);
   reg_base_r_sva_3 : FDRE port map ( Q=>base_r_sva(3), C=>clk, CE=>
      nx51271z7, D=>nx46878z1, R=>rst);
   reg_base_r_sva_2 : FDSE port map ( Q=>base_r_sva(2), C=>clk, CE=>
      nx51271z7, D=>nx47875z1, S=>rst);
   reg_base_r_sva_1 : FDRE port map ( Q=>base_r_sva(1), C=>clk, CE=>
      nx51271z7, D=>nx48872z1, R=>rst);
   reg_base_r_sva_0 : FDRE port map ( Q=>base_r_sva(0), C=>clk, CE=>
      nx51271z7, D=>nx49869z1, R=>rst);
   reg_update_base_pos_inc_r_sg1_sva : FDRE port map ( Q=>
      update_base_pos_inc_r_sg1_sva, C=>clk, CE=>nx51271z7, D=>nx48872z2, R
      =>rst);
   reg_base_r_sva_8 : FDRE port map ( Q=>base_r_sva(8), C=>clk, CE=>
      nx51271z7, D=>nx41893z1, R=>rst);
   reg_base_c_sva_7 : FDRE port map ( Q=>base_c_sva(7), C=>clk, CE=>
      nx51271z7, D=>nx37645z1, R=>rst);
   reg_base_c_sva_6 : FDSE port map ( Q=>base_c_sva(6), C=>clk, CE=>
      nx51271z7, D=>nx38642z1, S=>rst);
   reg_base_c_sva_5 : FDSE port map ( Q=>base_c_sva(5), C=>clk, CE=>
      nx51271z7, D=>nx39639z1, S=>rst);
   reg_base_c_sva_4 : FDRE port map ( Q=>base_c_sva(4), C=>clk, CE=>
      nx51271z7, D=>nx40636z1, R=>rst);
   reg_base_c_sva_3 : FDRE port map ( Q=>base_c_sva(3), C=>clk, CE=>
      nx51271z7, D=>nx41633z1, R=>rst);
   reg_base_c_sva_2 : FDSE port map ( Q=>base_c_sva(2), C=>clk, CE=>
      nx51271z7, D=>nx42630z1, S=>rst);
   reg_base_c_sva_1 : FDRE port map ( Q=>base_c_sva(1), C=>clk, CE=>
      nx51271z7, D=>nx43627z1, R=>rst);
   reg_base_c_sva_0 : FDRE port map ( Q=>base_c_sva(0), C=>clk, CE=>
      nx51271z7, D=>nx44624z1, R=>rst);
   reg_update_base_pos_inc_c_sg1_sva : FDRE port map ( Q=>
      update_base_pos_inc_c_sg1_sva, C=>clk, CE=>nx51271z7, D=>nx52895z1, R
      =>rst);
   reg_base_c_sva_8 : FDRE port map ( Q=>base_c_sva(8), C=>clk, CE=>
      nx51271z7, D=>nx36648z1, R=>rst);
   reg_if_1_asn_itm : FDS port map ( Q=>if_1_asn_itm, C=>clk, D=>nx47534z1, 
      S=>rst);
   not_pause_rsc_mgc_in_wire_d_EXMPLR32 : INV port map ( O=>
      not_pause_rsc_mgc_in_wire_d, I=>pause_rsc_mgc_in_wire_d);
   inc_d_0_dup_252_EXMPLR33 : INV port map ( O=>inc_d_0_dup_252, I=>b_0);
   ps_gnd : GND port map ( G=>nx47534z1);
   ix36648z28619 : LUT4
      generic map (INIT => X"6AA9") 
       port map ( O=>nx36648z1, I0=>base_c_sva(8), I1=>base_c_sva(7), I2=>
      nx37645z2, I3=>nx43627z2);
   ix52895z64674 : LUT4
      generic map (INIT => X"F780") 
       port map ( O=>nx52895z1, I0=>nx43627z3, I1=>nx43627z4, I2=>
      base_c_sva(8), I3=>update_base_pos_inc_c_sg1_sva);
   ix44624z26622 : INV port map ( O=>nx44624z1, I=>base_c_sva(0));
   ix43627z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx43627z1, I0=>nx43627z2, I1=>base_c_sva(1), I2=>
      base_c_sva(0));
   ix42630z28619 : LUT4
      generic map (INIT => X"6AA9") 
       port map ( O=>nx42630z1, I0=>base_c_sva(2), I1=>base_c_sva(1), I2=>
      base_c_sva(0), I3=>nx43627z2);
   ix39639z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx39639z1, I0=>nx37645z3, I1=>nx43627z2, I2=>
      base_c_sva(5));
   ix38642z28619 : LUT4
      generic map (INIT => X"6AA9") 
       port map ( O=>nx38642z1, I0=>base_c_sva(6), I1=>base_c_sva(5), I2=>
      nx37645z3, I3=>nx43627z2);
   ix37645z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx37645z1, I0=>nx37645z2, I1=>nx43627z2, I2=>
      base_c_sva(7));
   ix49869z26622 : INV port map ( O=>nx49869z1, I=>base_r_sva(0));
   ix46878z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx46878z1, I0=>nx41893z3, I1=>nx48872z2, I2=>
      base_r_sva(3));
   ix44884z1464 : LUT3
      generic map (INIT => X"96") 
       port map ( O=>nx44884z1, I0=>nx41893z2, I1=>nx48872z2, I2=>
      base_r_sva(5));
   ix42890z1341 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx42890z1, I0=>nx41893z2, I1=>nx42890z2, I2=>nx42890z3
   );
   ix49482z767 : LUT4
      generic map (INIT => X"FDDD") 
       port map ( O=>nx49482z1, I0=>nx51476z2, I1=>nx49482z2, I2=>nx51271z5, 
      I3=>pixel_rsc_mgc_out_stdreg_d_EXMPLR31(0));
   ix50479z767 : LUT4
      generic map (INIT => X"FDDD") 
       port map ( O=>nx50479z1, I0=>nx51476z2, I1=>nx50479z2, I2=>nx51271z5, 
      I3=>pixel_rsc_mgc_out_stdreg_d_EXMPLR31(1));
   ix51476z767 : LUT4
      generic map (INIT => X"FDDD") 
       port map ( O=>nx51476z1, I0=>nx51476z2, I1=>nx51476z15, I2=>nx51271z5, 
      I3=>pixel_rsc_mgc_out_stdreg_d_EXMPLR31(2));
   ps_vcc : VCC port map ( P=>nx23295z1);
   ix19413z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx19413z1, I0=>nx51476z9, I1=>rst);
   ix28530z1568 : LUT3
      generic map (INIT => X"FE") 
       port map ( O=>nx28530z1, I0=>rst, I1=>req_rsc_mgc_in_wire_d, I2=>
      if_1_asn_itm);
   ix51271z1333 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx51271z6, I0=>nx51271z7, I1=>rst);
   ix51271z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx51271z1, I0=>nx51271z2, I1=>rst);
   ix8379z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8379z2, I0=>acc_7_itm(9), I1=>acc_itm(9));
   ix8378z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8378z2, I0=>acc_7_itm(8), I1=>acc_itm(8));
   ix8377z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8377z2, I0=>acc_7_itm(7), I1=>acc_itm(7));
   ix8376z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8376z2, I0=>acc_7_itm(6), I1=>acc_itm(6));
   ix8375z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8375z2, I0=>acc_7_itm(5), I1=>acc_itm(5));
   ix8374z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8374z2, I0=>acc_7_itm(4), I1=>acc_itm(4));
   ix8373z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8373z2, I0=>acc_7_itm(3), I1=>acc_itm(3));
   ix8372z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8372z2, I0=>acc_7_itm(2), I1=>acc_itm(2));
   ix8371z1324 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx8371z2, I0=>acc_7_itm(1), I1=>acc_itm(1));
   ix64311z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx64311z2, I0=>r_sva(8), I1=>base_r_sva(8));
   ix64310z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx64310z2, I0=>r_sva(7), I1=>base_r_sva(7));
   ix64309z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx64309z2, I0=>r_sva(6), I1=>base_r_sva(6));
   ix64308z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx64308z2, I0=>r_sva(5), I1=>base_r_sva(5));
   ix64307z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx64307z2, I0=>r_sva(4), I1=>base_r_sva(4));
   ix6605z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx6605z2, I0=>r_sva(3), I1=>base_r_sva(3));
   ix6606z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx6606z2, I0=>r_sva(2), I1=>base_r_sva(2));
   ix6607z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx6607z2, I0=>r_sva(1), I1=>base_r_sva(1));
   ix6608z1324 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx6608z2, I0=>r_sva(0), I1=>base_r_sva(0));
   ix54020z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx54020z2, I0=>c_sva(8), I1=>base_c_sva(8));
   ix54019z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx54019z2, I0=>c_sva(7), I1=>base_c_sva(7));
   ix54018z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx54018z2, I0=>c_sva(6), I1=>base_c_sva(6));
   ix54017z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx54017z2, I0=>c_sva(5), I1=>base_c_sva(5));
   ix54016z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx54016z2, I0=>c_sva(4), I1=>base_c_sva(4));
   ix48640z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx48640z2, I0=>c_sva(3), I1=>base_c_sva(3));
   ix48639z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx48639z2, I0=>c_sva(2), I1=>base_c_sva(2));
   ix48638z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx48638z2, I0=>c_sva(1), I1=>base_c_sva(1));
   ix48637z1324 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx48637z2, I0=>c_sva(0), I1=>base_c_sva(0));
   ix41633z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx41633z1, I0=>nx37645z4, I1=>nx43627z2, I2=>
      base_c_sva(3));
   ix40636z28619 : LUT4
      generic map (INIT => X"6AA9") 
       port map ( O=>nx40636z1, I0=>base_c_sva(4), I1=>base_c_sva(3), I2=>
      nx37645z4, I3=>nx43627z2);
   ix43627z1318 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx43627z4, I0=>base_c_sva(5), I1=>base_c_sva(2), I2=>
      base_c_sva(1), I3=>base_c_sva(0));
   ix43627z1317 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx43627z3, I0=>base_c_sva(7), I1=>base_c_sva(6), I2=>
      base_c_sva(4), I3=>base_c_sva(3));
   ix43627z3490 : LUT4
      generic map (INIT => X"087F") 
       port map ( O=>nx43627z2, I0=>nx43627z3, I1=>nx43627z4, I2=>
      base_c_sva(8), I3=>update_base_pos_inc_c_sg1_sva);
   ix37645z55929 : LUT4
      generic map (INIT => X"D554") 
       port map ( O=>nx37645z4, I0=>nx43627z2, I1=>base_c_sva(2), I2=>
      base_c_sva(1), I3=>base_c_sva(0));
   ix37645z47190 : LUT4
      generic map (INIT => X"B332") 
       port map ( O=>nx37645z3, I0=>nx37645z4, I1=>nx43627z2, I2=>
      base_c_sva(4), I3=>base_c_sva(3));
   ix37645z47189 : LUT4
      generic map (INIT => X"B332") 
       port map ( O=>nx37645z2, I0=>nx37645z3, I1=>nx43627z2, I2=>
      base_c_sva(6), I3=>base_c_sva(5));
   ix41893z17702 : LUT4
      generic map (INIT => X"4000") 
       port map ( O=>nx41893z5, I0=>nx48872z2, I1=>base_r_sva(7), I2=>
      base_r_sva(6), I3=>base_r_sva(5));
   ix41893z1319 : LUT4
      generic map (INIT => X"0002") 
       port map ( O=>nx41893z4, I0=>nx48872z2, I1=>base_r_sva(7), I2=>
      base_r_sva(6), I3=>base_r_sva(5));
   ix41893z8454 : LUT4
      generic map (INIT => X"1BE4") 
       port map ( O=>nx41893z1, I0=>nx41893z2, I1=>nx41893z4, I2=>nx41893z5, 
      I3=>base_r_sva(8));
   ix48872z1464 : LUT3
      generic map (INIT => X"96") 
       port map ( O=>nx48872z1, I0=>nx48872z2, I1=>base_r_sva(1), I2=>
      base_r_sva(0));
   ix47875z44684 : LUT4
      generic map (INIT => X"A96A") 
       port map ( O=>nx47875z1, I0=>base_r_sva(2), I1=>base_r_sva(1), I2=>
      base_r_sva(0), I3=>nx48872z2);
   ix45881z40904 : LUT4
      generic map (INIT => X"9AA6") 
       port map ( O=>nx45881z1, I0=>base_r_sva(4), I1=>base_r_sva(3), I2=>
      nx41893z3, I3=>nx48872z2);
   ix43887z44684 : LUT4
      generic map (INIT => X"A96A") 
       port map ( O=>nx43887z1, I0=>base_r_sva(6), I1=>base_r_sva(5), I2=>
      nx41893z2, I3=>nx48872z2);
   ix42890z26711 : LUT4
      generic map (INIT => X"6333") 
       port map ( O=>nx42890z3, I0=>nx48872z2, I1=>base_r_sva(7), I2=>
      base_r_sva(6), I3=>base_r_sva(5));
   ix42890z14428 : LUT4
      generic map (INIT => X"3339") 
       port map ( O=>nx42890z2, I0=>nx48872z2, I1=>base_r_sva(7), I2=>
      base_r_sva(6), I3=>base_r_sva(5));
   ix48872z1321 : LUT3
      generic map (INIT => X"01") 
       port map ( O=>nx48872z6, I0=>base_r_sva(7), I1=>base_r_sva(5), I2=>
      base_r_sva(4));
   ix48872z1447 : LUT3
      generic map (INIT => X"80") 
       port map ( O=>nx48872z5, I0=>base_r_sva(7), I1=>base_r_sva(5), I2=>
      base_r_sva(4));
   ix48872z1324 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx48872z4, I0=>base_r_sva(8), I1=>base_r_sva(2), I2=>
      base_r_sva(1), I3=>base_r_sva(0));
   ix48872z1318 : LUT3
      generic map (INIT => X"02") 
       port map ( O=>nx48872z3, I0=>nx48872z4, I1=>base_r_sva(6), I2=>
      base_r_sva(3));
   ix48872z25643 : LUT4
      generic map (INIT => X"5F08") 
       port map ( O=>nx48872z2, I0=>nx48872z3, I1=>nx48872z5, I2=>nx48872z6, 
      I3=>update_base_pos_inc_r_sg1_sva);
   ix41893z6779 : LUT4
      generic map (INIT => X"1557") 
       port map ( O=>nx41893z3, I0=>nx48872z2, I1=>base_r_sva(2), I2=>
      base_r_sva(1), I3=>base_r_sva(0));
   ix41893z57831 : LUT4
      generic map (INIT => X"DCC4") 
       port map ( O=>nx41893z2, I0=>nx41893z3, I1=>nx48872z2, I2=>
      base_r_sva(4), I3=>base_r_sva(3));
   ix49482z1369 : LUT3
      generic map (INIT => X"35") 
       port map ( O=>nx49482z3, I0=>acc_7_itm(4), I1=>acc_itm(4), I2=>
      nx51476z6);
   ix49482z1355 : LUT3
      generic map (INIT => X"28") 
       port map ( O=>nx49482z2, I0=>nx51476z13, I1=>nx49482z3, I2=>
      frame_cnt_sva_3);
   ix50479z34635 : LUT4
      generic map (INIT => X"8228") 
       port map ( O=>nx50479z2, I0=>nx51476z13, I1=>nx51476z5, I2=>nx51476z7, 
      I3=>frame_cnt_sva_4);
   ix51476z36275 : LUT4
      generic map (INIT => X"8884") 
       port map ( O=>nx51476z15, I0=>nx51476z4, I1=>nx51476z13, I2=>
      nx51476z8, I3=>frame_cnt_sva_5);
   ix51476z1327 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx51476z14, I0=>acc_7_itm(9), I1=>acc_7_itm(7), I2=>
      acc_itm(9), I3=>acc_itm(7));
   ix51476z1329 : LUT4
      generic map (INIT => X"0004") 
       port map ( O=>nx51476z13, I0=>nx51271z5, I1=>nx51476z14, I2=>
      acc_7_itm(8), I3=>acc_itm(8));
   ix51476z1373 : LUT3
      generic map (INIT => X"35") 
       port map ( O=>nx51476z8, I0=>acc_7_itm(6), I1=>acc_itm(6), I2=>
      nx51476z6);
   ix51476z3913 : LUT4
      generic map (INIT => X"0A22") 
       port map ( O=>nx51476z7, I0=>frame_cnt_sva_3, I1=>acc_7_itm(4), I2=>
      acc_itm(4), I3=>nx51476z6);
   ix51476z1371 : LUT3
      generic map (INIT => X"35") 
       port map ( O=>nx51476z5, I0=>acc_7_itm(5), I1=>acc_itm(5), I2=>
      nx51476z6);
   ix51476z1340 : LUT3
      generic map (INIT => X"17") 
       port map ( O=>nx51476z4, I0=>nx51476z5, I1=>nx51476z7, I2=>
      frame_cnt_sva_4);
   ix51476z1359 : LUT3
      generic map (INIT => X"2B") 
       port map ( O=>nx51476z3, I0=>nx51476z4, I1=>nx51476z8, I2=>
      frame_cnt_sva_5);
   ix51476z1350 : LUT3
      generic map (INIT => X"23") 
       port map ( O=>nx51476z2, I0=>nx51476z3, I1=>nx51476z9, I2=>nx51476z13
   );
   ix21374z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx21374z1, I0=>b_1, I1=>b_0);
   ix1378z1420 : LUT3
      generic map (INIT => X"6A") 
       port map ( O=>nx1378z1, I0=>b_2, I1=>b_1, I2=>b_0);
   ix41406z28620 : LUT4
      generic map (INIT => X"6AAA") 
       port map ( O=>nx41406z1, I0=>frame_cnt_sva_3, I1=>b_2, I2=>b_1, I3=>
      b_0);
   ix46882z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx46882z1, I0=>nx46882z2, I1=>frame_cnt_sva_4);
   ix46882z34083 : LUT4
      generic map (INIT => X"8000") 
       port map ( O=>nx46882z2, I0=>frame_cnt_sva_3, I1=>b_2, I2=>b_1, I3=>
      b_0);
   ix61438z1422 : LUT3
      generic map (INIT => X"6C") 
       port map ( O=>nx61438z1, I0=>nx46882z2, I1=>frame_cnt_sva_5, I2=>
      frame_cnt_sva_4);
   ix51476z1332 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx51476z12, I0=>noise_cnt_sva(7), I1=>noise_cnt_sva(4)
   );
   ix51476z1331 : LUT4
      generic map (INIT => X"0008") 
       port map ( O=>nx51476z11, I0=>noise_cnt_sva(8), I1=>noise_cnt_sva(5), 
      I2=>noise_cnt_sva(3), I3=>noise_cnt_sva(2));
   ix51476z1330 : LUT4
      generic map (INIT => X"0008") 
       port map ( O=>nx51476z10, I0=>noise_cnt_sva(9), I1=>noise_cnt_sva(6), 
      I2=>noise_cnt_sva(1), I3=>noise_cnt_sva(0));
   ix51476z17705 : LUT4
      generic map (INIT => X"4000") 
       port map ( O=>nx51476z9, I0=>nx51271z5, I1=>nx51476z10, I2=>
      nx51476z11, I3=>nx51476z12);
   ix51271z1327 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>nx51271z10, I0=>r_sva(4), I1=>r_sva(3));
   ix51271z34090 : LUT4
      generic map (INIT => X"8000") 
       port map ( O=>nx51271z9, I0=>r_sva(7), I1=>r_sva(6), I2=>r_sva(2), I3
      =>r_sva(0));
   ix51271z1353 : LUT3
      generic map (INIT => X"20") 
       port map ( O=>nx51271z8, I0=>nx51271z9, I1=>r_sva(8), I2=>r_sva(5));
   ix51271z34088 : LUT4
      generic map (INIT => X"8000") 
       port map ( O=>nx51271z7, I0=>nx51271z2, I1=>nx51271z8, I2=>nx51271z10, 
      I3=>r_sva(1));
   ix51271z1319 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx51271z5, I0=>req_rsc_mgc_in_wire_d, I1=>if_1_asn_itm
   );
   ix51271z9509 : LUT4
      generic map (INIT => X"2000") 
       port map ( O=>nx51271z4, I0=>c_sva(8), I1=>c_sva(6), I2=>c_sva(5), I3
      =>c_sva(4));
   ix51271z9508 : LUT4
      generic map (INIT => X"2000") 
       port map ( O=>nx51271z3, I0=>nx51271z4, I1=>nx51271z5, I2=>c_sva(2), 
      I3=>c_sva(1));
   ix51271z9507 : LUT4
      generic map (INIT => X"2000") 
       port map ( O=>nx51271z2, I0=>nx51271z3, I1=>c_sva(7), I2=>c_sva(3), 
      I3=>c_sva(0));
end v1 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity genpix is 
   port (
      pause_rsc_z : IN std_logic ;
      req_rsc_z : IN std_logic ;
      pixel_rsc_z : OUT std_logic_vector (2 DOWNTO 0) ;
      pixel_vld_rsc_z : OUT std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic) ;
end genpix ;

architecture v1 of genpix is 
   component genpix_core
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         pause_rsc_mgc_in_wire_d : IN std_logic ;
         req_rsc_mgc_in_wire_d : IN std_logic ;
         pixel_rsc_mgc_out_stdreg_d : OUT std_logic_vector (2 DOWNTO 0) ;
         pixel_vld_rsc_mgc_out_stdreg_d : OUT std_logic) ;
   end component ;
begin
   genpix_core_inst : genpix_core port map ( clk=>clk, rst=>rst, 
      pause_rsc_mgc_in_wire_d=>pause_rsc_z, req_rsc_mgc_in_wire_d=>req_rsc_z, 
      pixel_rsc_mgc_out_stdreg_d(2)=>pixel_rsc_z(2), 
      pixel_rsc_mgc_out_stdreg_d(1)=>pixel_rsc_z(1), 
      pixel_rsc_mgc_out_stdreg_d(0)=>pixel_rsc_z(0), 
      pixel_vld_rsc_mgc_out_stdreg_d=>pixel_vld_rsc_z);
end v1 ;

