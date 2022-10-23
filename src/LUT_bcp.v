`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2022 07:00:39 PM
// Design Name: 
// Module Name: LUT_tap
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LUT_bcp(
    input clk_in ,
    output reg [11:0] sine_bcp
    );
parameter SIZE = 407;    // USER INPUT
reg [11:0] bcp_value [SIZE-1:0];
integer i;

initial begin 
bcp_value[0]=1004;
bcp_value[1]=1009;
bcp_value[2]=1014;
bcp_value[3]=1020;
bcp_value[4]=1025;
bcp_value[5]=1031;
bcp_value[6]=1036;
bcp_value[7]=1042;
bcp_value[8]=1047;
bcp_value[9]=1052;
bcp_value[10]=1058;
bcp_value[11]=1063;
bcp_value[12]=1068;
bcp_value[13]=1074;
bcp_value[14]=1079;
bcp_value[15]=1084;
bcp_value[16]=1089;
bcp_value[17]=1095;
bcp_value[18]=1100;
bcp_value[19]=1105;
bcp_value[20]=1110;
bcp_value[21]=1115;
bcp_value[22]=1120;
bcp_value[23]=1125;
bcp_value[24]=1129;
bcp_value[25]=1134;
bcp_value[26]=1139;
bcp_value[27]=1144;
bcp_value[28]=1148;
bcp_value[29]=1153;
bcp_value[30]=1157;
bcp_value[31]=1162;
bcp_value[32]=1166;
bcp_value[33]=1170;
bcp_value[34]=1174;
bcp_value[35]=1178;
bcp_value[36]=1182;
bcp_value[37]=1186;
bcp_value[38]=1190;
bcp_value[39]=1194;
bcp_value[40]=1197;
bcp_value[41]=1201;
bcp_value[42]=1204;
bcp_value[43]=1207;
bcp_value[44]=1211;
bcp_value[45]=1214;
bcp_value[46]=1217;
bcp_value[47]=1219;
bcp_value[48]=1222;
bcp_value[49]=1225;
bcp_value[50]=1227;
bcp_value[51]=1230;
bcp_value[52]=1232;
bcp_value[53]=1234;
bcp_value[54]=1236;
bcp_value[55]=1238;
bcp_value[56]=1239;
bcp_value[57]=1241;
bcp_value[58]=1242;
bcp_value[59]=1244;
bcp_value[60]=1245;
bcp_value[61]=1246;
bcp_value[62]=1247;
bcp_value[63]=1248;
bcp_value[64]=1248;
bcp_value[65]=1249;
bcp_value[66]=1249;
bcp_value[67]=1249;
bcp_value[68]=1249;
bcp_value[69]=1249;
bcp_value[70]=1249;
bcp_value[71]=1249;
bcp_value[72]=1248;
bcp_value[73]=1247;
bcp_value[74]=1247;
bcp_value[75]=1246;
bcp_value[76]=1245;
bcp_value[77]=1243;
bcp_value[78]=1242;
bcp_value[79]=1241;
bcp_value[80]=1239;
bcp_value[81]=1237;
bcp_value[82]=1235;
bcp_value[83]=1233;
bcp_value[84]=1231;
bcp_value[85]=1229;
bcp_value[86]=1226;
bcp_value[87]=1224;
bcp_value[88]=1221;
bcp_value[89]=1219;
bcp_value[90]=1216;
bcp_value[91]=1213;
bcp_value[92]=1210;
bcp_value[93]=1206;
bcp_value[94]=1203;
bcp_value[95]=1200;
bcp_value[96]=1196;
bcp_value[97]=1192;
bcp_value[98]=1189;
bcp_value[99]=1185;
bcp_value[100]=1181;
bcp_value[101]=1177;
bcp_value[102]=1173;
bcp_value[103]=1169;
bcp_value[104]=1164;
bcp_value[105]=1160;
bcp_value[106]=1156;
bcp_value[107]=1151;
bcp_value[108]=1147;
bcp_value[109]=1142;
bcp_value[110]=1137;
bcp_value[111]=1133;
bcp_value[112]=1128;
bcp_value[113]=1123;
bcp_value[114]=1118;
bcp_value[115]=1113;
bcp_value[116]=1108;
bcp_value[117]=1103;
bcp_value[118]=1098;
bcp_value[119]=1093;
bcp_value[120]=1088;
bcp_value[121]=1082;
bcp_value[122]=1077;
bcp_value[123]=1072;
bcp_value[124]=1067;
bcp_value[125]=1061;
bcp_value[126]=1056;
bcp_value[127]=1051;
bcp_value[128]=1045;
bcp_value[129]=1040;
bcp_value[130]=1034;
bcp_value[131]=1029;
bcp_value[132]=1024;
bcp_value[133]=1018;
bcp_value[134]=1013;
bcp_value[135]=1007;
bcp_value[136]=1002;
bcp_value[137]=996;
bcp_value[138]=991;
bcp_value[139]=985;
bcp_value[140]=980;
bcp_value[141]=974;
bcp_value[142]=969;
bcp_value[143]=963;
bcp_value[144]=958;
bcp_value[145]=952;
bcp_value[146]=947;
bcp_value[147]=941;
bcp_value[148]=936;
bcp_value[149]=930;
bcp_value[150]=925;
bcp_value[151]=920;
bcp_value[152]=914;
bcp_value[153]=909;
bcp_value[154]=903;
bcp_value[155]=898;
bcp_value[156]=892;
bcp_value[157]=887;
bcp_value[158]=882;
bcp_value[159]=876;
bcp_value[160]=871;
bcp_value[161]=865;
bcp_value[162]=860;
bcp_value[163]=855;
bcp_value[164]=849;
bcp_value[165]=844;
bcp_value[166]=838;
bcp_value[167]=833;
bcp_value[168]=828;
bcp_value[169]=822;
bcp_value[170]=817;
bcp_value[171]=812;
bcp_value[172]=806;
bcp_value[173]=801;
bcp_value[174]=795;
bcp_value[175]=790;
bcp_value[176]=785;
bcp_value[177]=779;
bcp_value[178]=774;
bcp_value[179]=769;
bcp_value[180]=763;
bcp_value[181]=758;
bcp_value[182]=752;
bcp_value[183]=747;
bcp_value[184]=741;
bcp_value[185]=736;
bcp_value[186]=731;
bcp_value[187]=725;
bcp_value[188]=720;
bcp_value[189]=714;
bcp_value[190]=709;
bcp_value[191]=703;
bcp_value[192]=698;
bcp_value[193]=692;
bcp_value[194]=687;
bcp_value[195]=681;
bcp_value[196]=676;
bcp_value[197]=671;
bcp_value[198]=665;
bcp_value[199]=660;
bcp_value[200]=654;
bcp_value[201]=649;
bcp_value[202]=643;
bcp_value[203]=638;
bcp_value[204]=632;
bcp_value[205]=627;
bcp_value[206]=621;
bcp_value[207]=616;
bcp_value[208]=610;
bcp_value[209]=605;
bcp_value[210]=599;
bcp_value[211]=594;
bcp_value[212]=589;
bcp_value[213]=583;
bcp_value[214]=578;
bcp_value[215]=573;
bcp_value[216]=567;
bcp_value[217]=562;
bcp_value[218]=557;
bcp_value[219]=552;
bcp_value[220]=546;
bcp_value[221]=541;
bcp_value[222]=536;
bcp_value[223]=531;
bcp_value[224]=526;
bcp_value[225]=521;
bcp_value[226]=516;
bcp_value[227]=511;
bcp_value[228]=507;
bcp_value[229]=502;
bcp_value[230]=497;
bcp_value[231]=492;
bcp_value[232]=488;
bcp_value[233]=483;
bcp_value[234]=479;
bcp_value[235]=475;
bcp_value[236]=470;
bcp_value[237]=466;
bcp_value[238]=462;
bcp_value[239]=458;
bcp_value[240]=454;
bcp_value[241]=450;
bcp_value[242]=447;
bcp_value[243]=443;
bcp_value[244]=439;
bcp_value[245]=436;
bcp_value[246]=433;
bcp_value[247]=429;
bcp_value[248]=426;
bcp_value[249]=423;
bcp_value[250]=420;
bcp_value[251]=418;
bcp_value[252]=415;
bcp_value[253]=412;
bcp_value[254]=410;
bcp_value[255]=408;
bcp_value[256]=405;
bcp_value[257]=403;
bcp_value[258]=402;
bcp_value[259]=400;
bcp_value[260]=398;
bcp_value[261]=397;
bcp_value[262]=395;
bcp_value[263]=394;
bcp_value[264]=393;
bcp_value[265]=392;
bcp_value[266]=391;
bcp_value[267]=390;
bcp_value[268]=390;
bcp_value[269]=390;
bcp_value[270]=389;
bcp_value[271]=389;
bcp_value[272]=389;
bcp_value[273]=389;
bcp_value[274]=390;
bcp_value[275]=390;
bcp_value[276]=391;
bcp_value[277]=391;
bcp_value[278]=392;
bcp_value[279]=393;
bcp_value[280]=394;
bcp_value[281]=396;
bcp_value[282]=397;
bcp_value[283]=399;
bcp_value[284]=400;
bcp_value[285]=402;
bcp_value[286]=404;
bcp_value[287]=406;
bcp_value[288]=408;
bcp_value[289]=411;
bcp_value[290]=413;
bcp_value[291]=416;
bcp_value[292]=418;
bcp_value[293]=421;
bcp_value[294]=424;
bcp_value[295]=427;
bcp_value[296]=430;
bcp_value[297]=434;
bcp_value[298]=437;
bcp_value[299]=441;
bcp_value[300]=444;
bcp_value[301]=448;
bcp_value[302]=452;
bcp_value[303]=455;
bcp_value[304]=459;
bcp_value[305]=463;
bcp_value[306]=468;
bcp_value[307]=472;
bcp_value[308]=476;
bcp_value[309]=480;
bcp_value[310]=485;
bcp_value[311]=489;
bcp_value[312]=494;
bcp_value[313]=499;
bcp_value[314]=503;
bcp_value[315]=508;
bcp_value[316]=513;
bcp_value[317]=518;
bcp_value[318]=523;
bcp_value[319]=528;
bcp_value[320]=533;
bcp_value[321]=538;
bcp_value[322]=543;
bcp_value[323]=548;
bcp_value[324]=553;
bcp_value[325]=559;
bcp_value[326]=564;
bcp_value[327]=569;
bcp_value[328]=574;
bcp_value[329]=580;
bcp_value[330]=585;
bcp_value[331]=590;
bcp_value[332]=596;
bcp_value[333]=601;
bcp_value[334]=607;
bcp_value[335]=612;
bcp_value[336]=618;
bcp_value[337]=623;
bcp_value[338]=628;
bcp_value[339]=634;
bcp_value[340]=639;
bcp_value[341]=645;
bcp_value[342]=650;
bcp_value[343]=656;
bcp_value[344]=661;
bcp_value[345]=667;
bcp_value[346]=672;
bcp_value[347]=678;
bcp_value[348]=683;
bcp_value[349]=689;
bcp_value[350]=694;
bcp_value[351]=700;
bcp_value[352]=705;
bcp_value[353]=711;
bcp_value[354]=716;
bcp_value[355]=722;
bcp_value[356]=727;
bcp_value[357]=732;
bcp_value[358]=738;
bcp_value[359]=743;
bcp_value[360]=749;
bcp_value[361]=754;
bcp_value[362]=760;
bcp_value[363]=765;
bcp_value[364]=770;
bcp_value[365]=776;
bcp_value[366]=781;
bcp_value[367]=786;
bcp_value[368]=792;
bcp_value[369]=797;
bcp_value[370]=803;
bcp_value[371]=808;
bcp_value[372]=813;
bcp_value[373]=819;
bcp_value[374]=824;
bcp_value[375]=830;
bcp_value[376]=835;
bcp_value[377]=840;
bcp_value[378]=846;
bcp_value[379]=851;
bcp_value[380]=856;
bcp_value[381]=862;
bcp_value[382]=867;
bcp_value[383]=873;
bcp_value[384]=878;
bcp_value[385]=883;
bcp_value[386]=889;
bcp_value[387]=894;
bcp_value[388]=900;
bcp_value[389]=905;
bcp_value[390]=911;
bcp_value[391]=916;
bcp_value[392]=921;
bcp_value[393]=927;
bcp_value[394]=932;
bcp_value[395]=938;
bcp_value[396]=943;
bcp_value[397]=949;
bcp_value[398]=954;
bcp_value[399]=960;
bcp_value[400]=965;
bcp_value[401]=971;
bcp_value[402]=976;
bcp_value[403]=982;
bcp_value[404]=987;
bcp_value[405]=993;
bcp_value[406]=998;
end 
 

//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk_in)
begin
    sine_bcp = bcp_value[i];
    i = i+ 1;
    if(i == SIZE)
        i = 0;
end
endmodule