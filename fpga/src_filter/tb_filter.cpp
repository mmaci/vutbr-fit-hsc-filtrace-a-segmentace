#include "filter.h"
#include "addr_space.h"
#include "../cpu/common.h"

#include <iostream>
using namespace std;
#include "mc_scverify.h"
#include "../cpu/cpu.h"

#define FRAMES    1002

/***************************************************************************
 Hlavni program Testbench souboru. Zajistuje generovani vstupnich vektoru,
 vol?n? puvodniho (referencniho) kodu a modifikovaneho kodu a porovnani
 jejich vystupu.
***************************************************************************/
CCS_MAIN(int argv, char *argc){
   t_pixel pix_in_hw, pix_out_hw = 0;
   t_pixel_sw pix_in_sw, pix_out_sw = 0;
   int pix_out_sw_vld;
   bool valid = true, non_valid = false;
   t_mcu_data mcu_data[MCU_SIZE];

   for(int i=0;i<MCU_SIZE;i++)
      mcu_data[i] = 0;

   /* Tyto dva radky slouzi pouze pro demo aplikaci, ve vyslednem kodu je odstrante */
   mcu_data[0] = 0x12345678;
   mcu_data[1] = 0x50000000;

   for(int f=0;f<FRAMES;f++){
      for(int r=0;r<FRAME_ROWS;r++){
         for(int c=0;c<FRAME_COLS;c++){
            /* Generovani vstupniho pixelu */
            pix_in_sw = gen_pixel();
            pix_in_hw = (t_pixel)pix_in_sw;
            /* Volani puvodniho (referencniho) kod */
            pixel_processing(pix_in_sw, &pix_out_sw, &pix_out_sw_vld); 
            /* Volani modifikovaneho kodu */
            CCS_DESIGN(filter)(pix_in_hw, valid, pix_out_hw, mcu_data); 

            /* Porovnani vysledku referencniho vs. modifikovaneho kodu */
            if(pix_out_sw_vld && (f>=100) && (pix_out_hw != pix_out_sw)) {
               cout << endl << "ERROR: Chyba na pozici: (" << f << ":" << r << "," << c << "), ";
               cout << "In: out_sw/out_hw = " << pix_in_hw << ": " << (int)pix_out_sw << "/" << pix_out_hw <<  endl;
               CCS_RETURN(1);
            }
         }
      }
   }
   cout << "INFO: ***********************************************************" << endl;
   cout << "INFO: Test referencniho kodu oproti upravenemu probehl v poradku." << endl;
   cout << "INFO: ***********************************************************" << endl;
   CCS_RETURN(0);
}
 
