/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 01:36:44 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2436561550 */

module HomeAutomation(rst, clk, frontSens, rearSens, WindowSens, fireSens, 
      tempSens, frontOut, rearOut, windowOut, buzz, cooler, heater);
   input rst;
   input clk;
   input frontSens;
   input rearSens;
   input WindowSens;
   input fireSens;
   input [7:0]tempSens;
   output frontOut;
   output rearOut;
   output windowOut;
   output buzz;
   output cooler;
   output heater;

   wire [2:0]state;
   wire n_0_0_0;
   wire n_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_1;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_2;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;

   DFF_X1 \state_reg[2]  (.D(n_0_2), .CK(clk), .Q(state[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_1), .CK(clk), .Q(state[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_0), .CK(clk), .Q(state[0]), .QN());
   NOR2_X1 i_0_0_0 (.A1(n_0_0_40), .A2(state[2]), .ZN(frontOut));
   NOR3_X1 i_0_0_1 (.A1(state[2]), .A2(n_0_0_0), .A3(n_0_0_25), .ZN(rearOut));
   NOR4_X1 i_0_0_2 (.A1(n_0_0_31), .A2(fireSens), .A3(rearSens), .A4(frontSens), 
      .ZN(n_0_0_0));
   NOR2_X1 i_0_0_3 (.A1(n_0_0_54), .A2(n_0_0_25), .ZN(cooler));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_54), .A2(n_0_0_40), .ZN(heater));
   OAI221_X1 i_0_0_5 (.A(n_0_0_1), .B1(n_0_0_9), .B2(n_0_0_25), .C1(state[2]), 
      .C2(n_0_0_11), .ZN(n_0_0));
   OR3_X1 i_0_0_6 (.A1(rst), .A2(tempSens[7]), .A3(n_0_0_2), .ZN(n_0_0_1));
   AOI22_X1 i_0_0_7 (.A1(n_0_0_47), .A2(n_0_0_6), .B1(n_0_0_3), .B2(n_0_0_35), 
      .ZN(n_0_0_2));
   OAI22_X1 i_0_0_8 (.A1(WindowSens), .A2(n_0_0_4), .B1(n_0_0_43), .B2(state[0]), 
      .ZN(n_0_0_3));
   AOI21_X1 i_0_0_9 (.A(n_0_0_5), .B1(state[1]), .B2(n_0_0_54), .ZN(n_0_0_4));
   AOI21_X1 i_0_0_10 (.A(rearSens), .B1(state[0]), .B2(state[1]), .ZN(n_0_0_5));
   OAI21_X1 i_0_0_11 (.A(n_0_0_7), .B1(n_0_0_9), .B2(state[1]), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_12 (.A(n_0_0_8), .B1(n_0_0_10), .B2(frontSens), .ZN(n_0_0_7));
   AOI211_X1 i_0_0_13 (.A(state[2]), .B(WindowSens), .C1(rearSens), .C2(n_0_0_53), 
      .ZN(n_0_0_8));
   AOI21_X1 i_0_0_14 (.A(n_0_0_10), .B1(frontSens), .B2(state[2]), .ZN(n_0_0_9));
   NOR2_X1 i_0_0_15 (.A1(n_0_0_51), .A2(rearSens), .ZN(n_0_0_10));
   AOI22_X1 i_0_0_16 (.A1(n_0_0_14), .A2(n_0_0_13), .B1(n_0_0_12), .B2(n_0_0_38), 
      .ZN(n_0_0_11));
   NOR2_X1 i_0_0_17 (.A1(n_0_0_52), .A2(state[1]), .ZN(n_0_0_12));
   OAI21_X1 i_0_0_18 (.A(n_0_0_25), .B1(n_0_0_55), .B2(rearSens), .ZN(n_0_0_13));
   OAI21_X1 i_0_0_19 (.A(n_0_0_51), .B1(WindowSens), .B2(n_0_0_46), .ZN(n_0_0_14));
   NAND2_X1 i_0_0_20 (.A1(n_0_0_15), .A2(n_0_0_20), .ZN(n_0_1));
   AOI221_X1 i_0_0_21 (.A(n_0_0_18), .B1(n_0_0_17), .B2(n_0_0_16), .C1(n_0_0_23), 
      .C2(state[2]), .ZN(n_0_0_15));
   AOI21_X1 i_0_0_22 (.A(n_0_0_41), .B1(frontSens), .B2(state[2]), .ZN(n_0_0_16));
   OAI21_X1 i_0_0_23 (.A(n_0_0_40), .B1(n_0_0_25), .B2(n_0_0_51), .ZN(n_0_0_17));
   AOI211_X1 i_0_0_24 (.A(WindowSens), .B(n_0_0_46), .C1(n_0_0_40), .C2(n_0_0_19), 
      .ZN(n_0_0_18));
   AOI22_X1 i_0_0_25 (.A1(state[1]), .A2(n_0_0_45), .B1(n_0_0_38), .B2(n_0_0_52), 
      .ZN(n_0_0_19));
   OAI211_X1 i_0_0_26 (.A(n_0_0_21), .B(n_0_0_22), .C1(n_0_0_34), .C2(n_0_0_53), 
      .ZN(n_0_0_20));
   OAI21_X1 i_0_0_27 (.A(state[2]), .B1(state[1]), .B2(n_0_0_35), .ZN(n_0_0_21));
   NOR3_X1 i_0_0_28 (.A1(rst), .A2(frontSens), .A3(n_0_0_41), .ZN(n_0_0_22));
   OAI22_X1 i_0_0_29 (.A1(n_0_0_46), .A2(n_0_0_55), .B1(n_0_0_25), .B2(n_0_0_24), 
      .ZN(n_0_0_23));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_52), .A2(rearSens), .ZN(n_0_0_24));
   NAND2_X1 i_0_0_31 (.A1(state[1]), .A2(n_0_0_38), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_32 (.A1(n_0_0_26), .A2(n_0_0_30), .ZN(n_0_2));
   AOI211_X1 i_0_0_33 (.A(n_0_0_29), .B(n_0_0_27), .C1(n_0_0_35), .C2(windowOut), 
      .ZN(n_0_0_26));
   AOI21_X1 i_0_0_34 (.A(n_0_0_46), .B1(n_0_0_28), .B2(n_0_0_44), .ZN(n_0_0_27));
   AOI22_X1 i_0_0_35 (.A1(state[2]), .A2(n_0_0_42), .B1(n_0_0_41), .B2(n_0_0_39), 
      .ZN(n_0_0_28));
   AOI21_X1 i_0_0_36 (.A(n_0_0_34), .B1(n_0_0_33), .B2(n_0_0_44), .ZN(n_0_0_29));
   NAND4_X1 i_0_0_37 (.A1(n_0_0_52), .A2(n_0_0_32), .A3(n_0_0_31), .A4(n_0_0_41), 
      .ZN(n_0_0_30));
   NAND2_X1 i_0_0_38 (.A1(n_0_0_46), .A2(n_0_0_34), .ZN(n_0_0_31));
   OAI22_X1 i_0_0_39 (.A1(n_0_0_34), .A2(n_0_0_55), .B1(state[0]), .B2(rst), 
      .ZN(n_0_0_32));
   NAND3_X1 i_0_0_40 (.A1(state[0]), .A2(n_0_0_45), .A3(n_0_0_41), .ZN(n_0_0_33));
   NOR2_X1 i_0_0_41 (.A1(WindowSens), .A2(n_0_0_35), .ZN(n_0_0_34));
   NOR3_X1 i_0_0_42 (.A1(n_0_0_43), .A2(state[0]), .A3(rst), .ZN(windowOut));
   AOI21_X1 i_0_0_43 (.A(tempSens[6]), .B1(n_0_0_37), .B2(n_0_0_36), .ZN(
      n_0_0_35));
   AND2_X1 i_0_0_44 (.A1(tempSens[5]), .A2(tempSens[4]), .ZN(n_0_0_36));
   OR3_X1 i_0_0_45 (.A1(tempSens[3]), .A2(tempSens[2]), .A3(tempSens[1]), 
      .ZN(n_0_0_37));
   NOR2_X1 i_0_0_46 (.A1(rst), .A2(state[0]), .ZN(n_0_0_38));
   INV_X1 i_0_0_47 (.A(n_0_0_40), .ZN(n_0_0_39));
   NAND2_X1 i_0_0_48 (.A1(state[0]), .A2(n_0_0_42), .ZN(n_0_0_40));
   NOR2_X1 i_0_0_49 (.A1(rearSens), .A2(fireSens), .ZN(n_0_0_41));
   NOR2_X1 i_0_0_50 (.A1(rst), .A2(state[1]), .ZN(n_0_0_42));
   NAND2_X1 i_0_0_51 (.A1(n_0_0_53), .A2(state[2]), .ZN(n_0_0_43));
   OAI211_X1 i_0_0_52 (.A(state[1]), .B(n_0_0_45), .C1(n_0_0_51), .C2(state[0]), 
      .ZN(n_0_0_44));
   AND3_X1 i_0_0_53 (.A1(state[1]), .A2(state[0]), .A3(n_0_0_45), .ZN(buzz));
   NOR2_X1 i_0_0_54 (.A1(rst), .A2(state[2]), .ZN(n_0_0_45));
   AOI21_X1 i_0_0_55 (.A(tempSens[7]), .B1(n_0_0_48), .B2(tempSens[6]), .ZN(
      n_0_0_46));
   NAND2_X1 i_0_0_56 (.A1(n_0_0_48), .A2(tempSens[6]), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_57 (.A1(n_0_0_49), .A2(n_0_0_50), .ZN(n_0_0_48));
   NOR3_X1 i_0_0_58 (.A1(tempSens[5]), .A2(tempSens[4]), .A3(tempSens[3]), 
      .ZN(n_0_0_49));
   NAND3_X1 i_0_0_59 (.A1(tempSens[2]), .A2(tempSens[1]), .A3(tempSens[0]), 
      .ZN(n_0_0_50));
   INV_X1 i_0_0_60 (.A(fireSens), .ZN(n_0_0_51));
   INV_X1 i_0_0_61 (.A(frontSens), .ZN(n_0_0_52));
   INV_X1 i_0_0_62 (.A(state[1]), .ZN(n_0_0_53));
   INV_X1 i_0_0_63 (.A(state[2]), .ZN(n_0_0_54));
   INV_X1 i_0_0_64 (.A(n_0_0_42), .ZN(n_0_0_55));
endmodule
