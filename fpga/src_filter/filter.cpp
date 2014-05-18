#include <ac_int.h>
#include "filter.h"
#include "addr_space.h"

#define READ_A       0
#define READ_B       1
#define WRITE_C      2

/***************************************************************************
 Funkce median() vraci hodnotu medianu ze zadaneho okenka hodnot 3x3 pixelu.
 Jedna se o paralelni verzi algoritmu vhodnou pro hardware. 

 Vstupy:
   window   ukazatel na hodnoty okenka 3x3 pixelu
 Vystupu:
   pix_out  hodnota medianu
***************************************************************************/
t_pixel median(t_pixel *window){

   int i, j;
   t_pixel max[10], max2[10];

   Linit: for(i=0;i<9;i++)
      max[i] = window[i];
   max[9] = MIN_PIXEL;
   
   L2: for(j=0;j<5;j++) {

       L1a: for(i=0;i<5;i++) {
          if(max[i*2]<max[(i*2)+1]) {
              max2[i*2]     = max[i*2]; 
              max2[(i*2)+1] = max[(i*2)+1];
          }
          else {
              max2[i*2]     = max[(i*2)+1]; 
              max2[(i*2)+1] = max[i*2];
          }
       }

       L1b: for(i=0;i<4;i++) {
          if(max2[(i*2)+1]<max2[(i*2)+2]) {
              max[(i*2)+1] = max2[(i*2)+1]; 
              max[(i*2)+2] = max2[(i*2)+2];
          }
          else {
              max[(i*2)+1] = max2[(i*2)+2]; 
              max[(i*2)+2] = max2[(i*2)+1];
          }
       }     
       max[0] = max2[0];
       max[9] = max2[9];
   }

   return max[5];
}

/***************************************************************************
 Procedura filter() zajistuje zpracovani vstupniho pixelu. Tato jednoducha
 verze provadi pouze kopirovani vstupniho pixelu na vystup.

 Vstupy:
   in_data        vstupni pixel
   in_data_vld    informace o tom, zda je vstupni pixel platny
   mcu_data       pamet pro vymenu dat s MCU

 Vystupy:
   out_data       vystupni pixel
   mcu_data       pamet pro vymenu dat s MCU
***************************************************************************/
#pragma hls_design top

void filter(t_pixel &in_data, bool &in_data_vld, t_pixel &out_data, 
         t_mcu_data mcu_data[MCU_SIZE]){

   static t_mcu_data a = 0, b = 0, c;
   static int state = READ_A;

   // Kopirovani vstupniho pixelu na vystup
   if (in_data_vld) {
      out_data = in_data;
   } 

   // Demo aplikace pro test komunikace MCU - FPGA
   c = a + b; 
   switch(state){
      case READ_A:   a = mcu_data[FPGA_ADDR_A]; state = READ_B;  break;
      case READ_B:   b = mcu_data[FPGA_ADDR_B]; state = WRITE_C; break;
      case WRITE_C:  mcu_data[FPGA_ADDR_C] = c; state = READ_A;  break;
      default: break;
   }
}

