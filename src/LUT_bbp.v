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


module LUT_bbp(
    input clk_in ,
    output reg [11:0] sine_bbp
    );
parameter SIZE = 407;    // USER INPUT
reg [11:0] bbp_value [SIZE-1:0];
integer i;

initial begin 
bbp_value[0]=1004;
bbp_value[1]=998;
bbp_value[2]=993;
bbp_value[3]=987;
bbp_value[4]=982;
bbp_value[5]=976;
bbp_value[6]=971;
bbp_value[7]=965;
bbp_value[8]=960;
bbp_value[9]=954;
bbp_value[10]=949;
bbp_value[11]=943;
bbp_value[12]=938;
bbp_value[13]=932;
bbp_value[14]=927;
bbp_value[15]=921;
bbp_value[16]=916;
bbp_value[17]=911;
bbp_value[18]=905;
bbp_value[19]=900;
bbp_value[20]=894;
bbp_value[21]=889;
bbp_value[22]=883;
bbp_value[23]=878;
bbp_value[24]=873;
bbp_value[25]=867;
bbp_value[26]=862;
bbp_value[27]=856;
bbp_value[28]=851;
bbp_value[29]=846;
bbp_value[30]=840;
bbp_value[31]=835;
bbp_value[32]=830;
bbp_value[33]=824;
bbp_value[34]=819;
bbp_value[35]=813;
bbp_value[36]=808;
bbp_value[37]=803;
bbp_value[38]=797;
bbp_value[39]=792;
bbp_value[40]=786;
bbp_value[41]=781;
bbp_value[42]=776;
bbp_value[43]=770;
bbp_value[44]=765;
bbp_value[45]=760;
bbp_value[46]=754;
bbp_value[47]=749;
bbp_value[48]=743;
bbp_value[49]=738;
bbp_value[50]=732;
bbp_value[51]=727;
bbp_value[52]=722;
bbp_value[53]=716;
bbp_value[54]=711;
bbp_value[55]=705;
bbp_value[56]=700;
bbp_value[57]=694;
bbp_value[58]=689;
bbp_value[59]=683;
bbp_value[60]=678;
bbp_value[61]=672;
bbp_value[62]=667;
bbp_value[63]=661;
bbp_value[64]=656;
bbp_value[65]=650;
bbp_value[66]=645;
bbp_value[67]=639;
bbp_value[68]=634;
bbp_value[69]=628;
bbp_value[70]=623;
bbp_value[71]=618;
bbp_value[72]=612;
bbp_value[73]=607;
bbp_value[74]=601;
bbp_value[75]=596;
bbp_value[76]=590;
bbp_value[77]=585;
bbp_value[78]=580;
bbp_value[79]=574;
bbp_value[80]=569;
bbp_value[81]=564;
bbp_value[82]=559;
bbp_value[83]=553;
bbp_value[84]=548;
bbp_value[85]=543;
bbp_value[86]=538;
bbp_value[87]=533;
bbp_value[88]=528;
bbp_value[89]=523;
bbp_value[90]=518;
bbp_value[91]=513;
bbp_value[92]=508;
bbp_value[93]=503;
bbp_value[94]=499;
bbp_value[95]=494;
bbp_value[96]=489;
bbp_value[97]=485;
bbp_value[98]=480;
bbp_value[99]=476;
bbp_value[100]=472;
bbp_value[101]=468;
bbp_value[102]=463;
bbp_value[103]=459;
bbp_value[104]=455;
bbp_value[105]=452;
bbp_value[106]=448;
bbp_value[107]=444;
bbp_value[108]=441;
bbp_value[109]=437;
bbp_value[110]=434;
bbp_value[111]=430;
bbp_value[112]=427;
bbp_value[113]=424;
bbp_value[114]=421;
bbp_value[115]=418;
bbp_value[116]=416;
bbp_value[117]=413;
bbp_value[118]=411;
bbp_value[119]=408;
bbp_value[120]=406;
bbp_value[121]=404;
bbp_value[122]=402;
bbp_value[123]=400;
bbp_value[124]=399;
bbp_value[125]=397;
bbp_value[126]=396;
bbp_value[127]=394;
bbp_value[128]=393;
bbp_value[129]=392;
bbp_value[130]=391;
bbp_value[131]=391;
bbp_value[132]=390;
bbp_value[133]=390;
bbp_value[134]=389;
bbp_value[135]=389;
bbp_value[136]=389;
bbp_value[137]=389;
bbp_value[138]=390;
bbp_value[139]=390;
bbp_value[140]=390;
bbp_value[141]=391;
bbp_value[142]=392;
bbp_value[143]=393;
bbp_value[144]=394;
bbp_value[145]=395;
bbp_value[146]=397;
bbp_value[147]=398;
bbp_value[148]=400;
bbp_value[149]=402;
bbp_value[150]=403;
bbp_value[151]=405;
bbp_value[152]=408;
bbp_value[153]=410;
bbp_value[154]=412;
bbp_value[155]=415;
bbp_value[156]=418;
bbp_value[157]=420;
bbp_value[158]=423;
bbp_value[159]=426;
bbp_value[160]=429;
bbp_value[161]=433;
bbp_value[162]=436;
bbp_value[163]=439;
bbp_value[164]=443;
bbp_value[165]=447;
bbp_value[166]=450;
bbp_value[167]=454;
bbp_value[168]=458;
bbp_value[169]=462;
bbp_value[170]=466;
bbp_value[171]=470;
bbp_value[172]=475;
bbp_value[173]=479;
bbp_value[174]=483;
bbp_value[175]=488;
bbp_value[176]=492;
bbp_value[177]=497;
bbp_value[178]=502;
bbp_value[179]=507;
bbp_value[180]=511;
bbp_value[181]=516;
bbp_value[182]=521;
bbp_value[183]=526;
bbp_value[184]=531;
bbp_value[185]=536;
bbp_value[186]=541;
bbp_value[187]=546;
bbp_value[188]=552;
bbp_value[189]=557;
bbp_value[190]=562;
bbp_value[191]=567;
bbp_value[192]=573;
bbp_value[193]=578;
bbp_value[194]=583;
bbp_value[195]=589;
bbp_value[196]=594;
bbp_value[197]=599;
bbp_value[198]=605;
bbp_value[199]=610;
bbp_value[200]=616;
bbp_value[201]=621;
bbp_value[202]=627;
bbp_value[203]=632;
bbp_value[204]=638;
bbp_value[205]=643;
bbp_value[206]=649;
bbp_value[207]=654;
bbp_value[208]=660;
bbp_value[209]=665;
bbp_value[210]=671;
bbp_value[211]=676;
bbp_value[212]=681;
bbp_value[213]=687;
bbp_value[214]=692;
bbp_value[215]=698;
bbp_value[216]=703;
bbp_value[217]=709;
bbp_value[218]=714;
bbp_value[219]=720;
bbp_value[220]=725;
bbp_value[221]=731;
bbp_value[222]=736;
bbp_value[223]=741;
bbp_value[224]=747;
bbp_value[225]=752;
bbp_value[226]=758;
bbp_value[227]=763;
bbp_value[228]=769;
bbp_value[229]=774;
bbp_value[230]=779;
bbp_value[231]=785;
bbp_value[232]=790;
bbp_value[233]=795;
bbp_value[234]=801;
bbp_value[235]=806;
bbp_value[236]=812;
bbp_value[237]=817;
bbp_value[238]=822;
bbp_value[239]=828;
bbp_value[240]=833;
bbp_value[241]=838;
bbp_value[242]=844;
bbp_value[243]=849;
bbp_value[244]=855;
bbp_value[245]=860;
bbp_value[246]=865;
bbp_value[247]=871;
bbp_value[248]=876;
bbp_value[249]=882;
bbp_value[250]=887;
bbp_value[251]=892;
bbp_value[252]=898;
bbp_value[253]=903;
bbp_value[254]=909;
bbp_value[255]=914;
bbp_value[256]=920;
bbp_value[257]=925;
bbp_value[258]=930;
bbp_value[259]=936;
bbp_value[260]=941;
bbp_value[261]=947;
bbp_value[262]=952;
bbp_value[263]=958;
bbp_value[264]=963;
bbp_value[265]=969;
bbp_value[266]=974;
bbp_value[267]=980;
bbp_value[268]=985;
bbp_value[269]=991;
bbp_value[270]=996;
bbp_value[271]=1002;
bbp_value[272]=1007;
bbp_value[273]=1013;
bbp_value[274]=1018;
bbp_value[275]=1024;
bbp_value[276]=1029;
bbp_value[277]=1034;
bbp_value[278]=1040;
bbp_value[279]=1045;
bbp_value[280]=1051;
bbp_value[281]=1056;
bbp_value[282]=1061;
bbp_value[283]=1067;
bbp_value[284]=1072;
bbp_value[285]=1077;
bbp_value[286]=1082;
bbp_value[287]=1088;
bbp_value[288]=1093;
bbp_value[289]=1098;
bbp_value[290]=1103;
bbp_value[291]=1108;
bbp_value[292]=1113;
bbp_value[293]=1118;
bbp_value[294]=1123;
bbp_value[295]=1128;
bbp_value[296]=1133;
bbp_value[297]=1137;
bbp_value[298]=1142;
bbp_value[299]=1147;
bbp_value[300]=1151;
bbp_value[301]=1156;
bbp_value[302]=1160;
bbp_value[303]=1164;
bbp_value[304]=1169;
bbp_value[305]=1173;
bbp_value[306]=1177;
bbp_value[307]=1181;
bbp_value[308]=1185;
bbp_value[309]=1189;
bbp_value[310]=1192;
bbp_value[311]=1196;
bbp_value[312]=1200;
bbp_value[313]=1203;
bbp_value[314]=1206;
bbp_value[315]=1210;
bbp_value[316]=1213;
bbp_value[317]=1216;
bbp_value[318]=1219;
bbp_value[319]=1221;
bbp_value[320]=1224;
bbp_value[321]=1226;
bbp_value[322]=1229;
bbp_value[323]=1231;
bbp_value[324]=1233;
bbp_value[325]=1235;
bbp_value[326]=1237;
bbp_value[327]=1239;
bbp_value[328]=1241;
bbp_value[329]=1242;
bbp_value[330]=1243;
bbp_value[331]=1245;
bbp_value[332]=1246;
bbp_value[333]=1247;
bbp_value[334]=1247;
bbp_value[335]=1248;
bbp_value[336]=1249;
bbp_value[337]=1249;
bbp_value[338]=1249;
bbp_value[339]=1249;
bbp_value[340]=1249;
bbp_value[341]=1249;
bbp_value[342]=1249;
bbp_value[343]=1248;
bbp_value[344]=1248;
bbp_value[345]=1247;
bbp_value[346]=1246;
bbp_value[347]=1245;
bbp_value[348]=1244;
bbp_value[349]=1242;
bbp_value[350]=1241;
bbp_value[351]=1239;
bbp_value[352]=1238;
bbp_value[353]=1236;
bbp_value[354]=1234;
bbp_value[355]=1232;
bbp_value[356]=1230;
bbp_value[357]=1227;
bbp_value[358]=1225;
bbp_value[359]=1222;
bbp_value[360]=1219;
bbp_value[361]=1217;
bbp_value[362]=1214;
bbp_value[363]=1211;
bbp_value[364]=1207;
bbp_value[365]=1204;
bbp_value[366]=1201;
bbp_value[367]=1197;
bbp_value[368]=1194;
bbp_value[369]=1190;
bbp_value[370]=1186;
bbp_value[371]=1182;
bbp_value[372]=1178;
bbp_value[373]=1174;
bbp_value[374]=1170;
bbp_value[375]=1166;
bbp_value[376]=1162;
bbp_value[377]=1157;
bbp_value[378]=1153;
bbp_value[379]=1148;
bbp_value[380]=1144;
bbp_value[381]=1139;
bbp_value[382]=1134;
bbp_value[383]=1129;
bbp_value[384]=1125;
bbp_value[385]=1120;
bbp_value[386]=1115;
bbp_value[387]=1110;
bbp_value[388]=1105;
bbp_value[389]=1100;
bbp_value[390]=1095;
bbp_value[391]=1089;
bbp_value[392]=1084;
bbp_value[393]=1079;
bbp_value[394]=1074;
bbp_value[395]=1068;
bbp_value[396]=1063;
bbp_value[397]=1058;
bbp_value[398]=1052;
bbp_value[399]=1047;
bbp_value[400]=1042;
bbp_value[401]=1036;
bbp_value[402]=1031;
bbp_value[403]=1025;
bbp_value[404]=1020;
bbp_value[405]=1014;
bbp_value[406]=1009;
end 
 

 
 
//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk_in)
begin
    sine_bbp = bbp_value[i];
    i = i+ 1;
    if(i == SIZE)
        i = 0;
end
endmodule