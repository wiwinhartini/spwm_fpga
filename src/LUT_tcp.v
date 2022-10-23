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


module LUT_tcp(
    input clk_in ,
    output reg  [11:0] sine_tcp
    );
parameter SIZE = 407;    // USER INPUT
reg  [11:0] tcp_value [SIZE-1:0];
integer i;

initial begin 
tcp_value[0]=594;
tcp_value[1]=588;
tcp_value[2]=583;
tcp_value[3]=578;
tcp_value[4]=573;
tcp_value[5]=568;
tcp_value[6]=563;
tcp_value[7]=558;
tcp_value[8]=553;
tcp_value[9]=549;
tcp_value[10]=544;
tcp_value[11]=540;
tcp_value[12]=535;
tcp_value[13]=531;
tcp_value[14]=527;
tcp_value[15]=523;
tcp_value[16]=519;
tcp_value[17]=515;
tcp_value[18]=511;
tcp_value[19]=508;
tcp_value[20]=504;
tcp_value[21]=501;
tcp_value[22]=497;
tcp_value[23]=494;
tcp_value[24]=491;
tcp_value[25]=488;
tcp_value[26]=485;
tcp_value[27]=482;
tcp_value[28]=479;
tcp_value[29]=476;
tcp_value[30]=474;
tcp_value[31]=471;
tcp_value[32]=469;
tcp_value[33]=467;
tcp_value[34]=464;
tcp_value[35]=462;
tcp_value[36]=460;
tcp_value[37]=458;
tcp_value[38]=456;
tcp_value[39]=454;
tcp_value[40]=453;
tcp_value[41]=451;
tcp_value[42]=449;
tcp_value[43]=448;
tcp_value[44]=446;
tcp_value[45]=445;
tcp_value[46]=444;
tcp_value[47]=442;
tcp_value[48]=441;
tcp_value[49]=440;
tcp_value[50]=439;
tcp_value[51]=438;
tcp_value[52]=437;
tcp_value[53]=436;
tcp_value[54]=435;
tcp_value[55]=435;
tcp_value[56]=434;
tcp_value[57]=433;
tcp_value[58]=433;
tcp_value[59]=432;
tcp_value[60]=432;
tcp_value[61]=431;
tcp_value[62]=431;
tcp_value[63]=431;
tcp_value[64]=430;
tcp_value[65]=430;
tcp_value[66]=430;
tcp_value[67]=430;
tcp_value[68]=430;
tcp_value[69]=430;
tcp_value[70]=430;
tcp_value[71]=430;
tcp_value[72]=431;
tcp_value[73]=431;
tcp_value[74]=431;
tcp_value[75]=431;
tcp_value[76]=432;
tcp_value[77]=432;
tcp_value[78]=433;
tcp_value[79]=433;
tcp_value[80]=434;
tcp_value[81]=435;
tcp_value[82]=436;
tcp_value[83]=436;
tcp_value[84]=437;
tcp_value[85]=438;
tcp_value[86]=439;
tcp_value[87]=440;
tcp_value[88]=441;
tcp_value[89]=443;
tcp_value[90]=444;
tcp_value[91]=445;
tcp_value[92]=447;
tcp_value[93]=448;
tcp_value[94]=450;
tcp_value[95]=451;
tcp_value[96]=453;
tcp_value[97]=455;
tcp_value[98]=457;
tcp_value[99]=459;
tcp_value[100]=461;
tcp_value[101]=463;
tcp_value[102]=465;
tcp_value[103]=467;
tcp_value[104]=470;
tcp_value[105]=472;
tcp_value[106]=475;
tcp_value[107]=477;
tcp_value[108]=480;
tcp_value[109]=483;
tcp_value[110]=486;
tcp_value[111]=489;
tcp_value[112]=492;
tcp_value[113]=495;
tcp_value[114]=498;
tcp_value[115]=502;
tcp_value[116]=505;
tcp_value[117]=509;
tcp_value[118]=512;
tcp_value[119]=516;
tcp_value[120]=520;
tcp_value[121]=524;
tcp_value[122]=528;
tcp_value[123]=532;
tcp_value[124]=537;
tcp_value[125]=541;
tcp_value[126]=545;
tcp_value[127]=550;
tcp_value[128]=555;
tcp_value[129]=560;
tcp_value[130]=564;
tcp_value[131]=569;
tcp_value[132]=574;
tcp_value[133]=580;
tcp_value[134]=585;
tcp_value[135]=590;
tcp_value[136]=596;
tcp_value[137]=601;
tcp_value[138]=607;
tcp_value[139]=613;
tcp_value[140]=619;
tcp_value[141]=624;
tcp_value[142]=630;
tcp_value[143]=636;
tcp_value[144]=643;
tcp_value[145]=649;
tcp_value[146]=655;
tcp_value[147]=662;
tcp_value[148]=668;
tcp_value[149]=675;
tcp_value[150]=681;
tcp_value[151]=688;
tcp_value[152]=694;
tcp_value[153]=701;
tcp_value[154]=708;
tcp_value[155]=715;
tcp_value[156]=722;
tcp_value[157]=729;
tcp_value[158]=736;
tcp_value[159]=743;
tcp_value[160]=750;
tcp_value[161]=757;
tcp_value[162]=764;
tcp_value[163]=771;
tcp_value[164]=779;
tcp_value[165]=786;
tcp_value[166]=793;
tcp_value[167]=800;
tcp_value[168]=808;
tcp_value[169]=815;
tcp_value[170]=822;
tcp_value[171]=830;
tcp_value[172]=837;
tcp_value[173]=844;
tcp_value[174]=851;
tcp_value[175]=858;
tcp_value[176]=866;
tcp_value[177]=873;
tcp_value[178]=880;
tcp_value[179]=887;
tcp_value[180]=894;
tcp_value[181]=901;
tcp_value[182]=908;
tcp_value[183]=915;
tcp_value[184]=922;
tcp_value[185]=929;
tcp_value[186]=936;
tcp_value[187]=943;
tcp_value[188]=950;
tcp_value[189]=956;
tcp_value[190]=963;
tcp_value[191]=969;
tcp_value[192]=976;
tcp_value[193]=982;
tcp_value[194]=988;
tcp_value[195]=995;
tcp_value[196]=1001;
tcp_value[197]=1007;
tcp_value[198]=1013;
tcp_value[199]=1019;
tcp_value[200]=1025;
tcp_value[201]=1031;
tcp_value[202]=1036;
tcp_value[203]=1042;
tcp_value[204]=1047;
tcp_value[205]=1053;
tcp_value[206]=1058;
tcp_value[207]=1063;
tcp_value[208]=1068;
tcp_value[209]=1073;
tcp_value[210]=1078;
tcp_value[211]=1083;
tcp_value[212]=1088;
tcp_value[213]=1092;
tcp_value[214]=1097;
tcp_value[215]=1101;
tcp_value[216]=1105;
tcp_value[217]=1110;
tcp_value[218]=1114;
tcp_value[219]=1118;
tcp_value[220]=1122;
tcp_value[221]=1125;
tcp_value[222]=1129;
tcp_value[223]=1133;
tcp_value[224]=1136;
tcp_value[225]=1140;
tcp_value[226]=1143;
tcp_value[227]=1146;
tcp_value[228]=1149;
tcp_value[229]=1152;
tcp_value[230]=1155;
tcp_value[231]=1158;
tcp_value[232]=1161;
tcp_value[233]=1163;
tcp_value[234]=1166;
tcp_value[235]=1168;
tcp_value[236]=1171;
tcp_value[237]=1173;
tcp_value[238]=1175;
tcp_value[239]=1177;
tcp_value[240]=1179;
tcp_value[241]=1181;
tcp_value[242]=1183;
tcp_value[243]=1185;
tcp_value[244]=1187;
tcp_value[245]=1188;
tcp_value[246]=1190;
tcp_value[247]=1191;
tcp_value[248]=1193;
tcp_value[249]=1194;
tcp_value[250]=1196;
tcp_value[251]=1197;
tcp_value[252]=1198;
tcp_value[253]=1199;
tcp_value[254]=1200;
tcp_value[255]=1201;
tcp_value[256]=1202;
tcp_value[257]=1203;
tcp_value[258]=1203;
tcp_value[259]=1204;
tcp_value[260]=1205;
tcp_value[261]=1205;
tcp_value[262]=1206;
tcp_value[263]=1206;
tcp_value[264]=1207;
tcp_value[265]=1207;
tcp_value[266]=1208;
tcp_value[267]=1208;
tcp_value[268]=1208;
tcp_value[269]=1208;
tcp_value[270]=1208;
tcp_value[271]=1208;
tcp_value[272]=1208;
tcp_value[273]=1208;
tcp_value[274]=1208;
tcp_value[275]=1208;
tcp_value[276]=1208;
tcp_value[277]=1207;
tcp_value[278]=1207;
tcp_value[279]=1207;
tcp_value[280]=1206;
tcp_value[281]=1206;
tcp_value[282]=1205;
tcp_value[283]=1205;
tcp_value[284]=1204;
tcp_value[285]=1203;
tcp_value[286]=1202;
tcp_value[287]=1202;
tcp_value[288]=1201;
tcp_value[289]=1200;
tcp_value[290]=1199;
tcp_value[291]=1198;
tcp_value[292]=1196;
tcp_value[293]=1195;
tcp_value[294]=1194;
tcp_value[295]=1192;
tcp_value[296]=1191;
tcp_value[297]=1189;
tcp_value[298]=1188;
tcp_value[299]=1186;
tcp_value[300]=1184;
tcp_value[301]=1183;
tcp_value[302]=1181;
tcp_value[303]=1179;
tcp_value[304]=1177;
tcp_value[305]=1174;
tcp_value[306]=1172;
tcp_value[307]=1170;
tcp_value[308]=1168;
tcp_value[309]=1165;
tcp_value[310]=1162;
tcp_value[311]=1160;
tcp_value[312]=1157;
tcp_value[313]=1154;
tcp_value[314]=1151;
tcp_value[315]=1148;
tcp_value[316]=1145;
tcp_value[317]=1142;
tcp_value[318]=1138;
tcp_value[319]=1135;
tcp_value[320]=1131;
tcp_value[321]=1128;
tcp_value[322]=1124;
tcp_value[323]=1120;
tcp_value[324]=1116;
tcp_value[325]=1112;
tcp_value[326]=1108;
tcp_value[327]=1104;
tcp_value[328]=1100;
tcp_value[329]=1095;
tcp_value[330]=1091;
tcp_value[331]=1086;
tcp_value[332]=1081;
tcp_value[333]=1076;
tcp_value[334]=1072;
tcp_value[335]=1066;
tcp_value[336]=1061;
tcp_value[337]=1056;
tcp_value[338]=1051;
tcp_value[339]=1045;
tcp_value[340]=1040;
tcp_value[341]=1034;
tcp_value[342]=1029;
tcp_value[343]=1023;
tcp_value[344]=1017;
tcp_value[345]=1011;
tcp_value[346]=1005;
tcp_value[347]=999;
tcp_value[348]=993;
tcp_value[349]=986;
tcp_value[350]=980;
tcp_value[351]=974;
tcp_value[352]=967;
tcp_value[353]=961;
tcp_value[354]=954;
tcp_value[355]=947;
tcp_value[356]=941;
tcp_value[357]=934;
tcp_value[358]=927;
tcp_value[359]=920;
tcp_value[360]=913;
tcp_value[361]=906;
tcp_value[362]=899;
tcp_value[363]=892;
tcp_value[364]=885;
tcp_value[365]=878;
tcp_value[366]=870;
tcp_value[367]=863;
tcp_value[368]=856;
tcp_value[369]=849;
tcp_value[370]=842;
tcp_value[371]=834;
tcp_value[372]=827;
tcp_value[373]=820;
tcp_value[374]=813;
tcp_value[375]=805;
tcp_value[376]=798;
tcp_value[377]=791;
tcp_value[378]=784;
tcp_value[379]=776;
tcp_value[380]=769;
tcp_value[381]=762;
tcp_value[382]=755;
tcp_value[383]=748;
tcp_value[384]=741;
tcp_value[385]=734;
tcp_value[386]=727;
tcp_value[387]=720;
tcp_value[388]=713;
tcp_value[389]=706;
tcp_value[390]=699;
tcp_value[391]=692;
tcp_value[392]=686;
tcp_value[393]=679;
tcp_value[394]=672;
tcp_value[395]=666;
tcp_value[396]=659;
tcp_value[397]=653;
tcp_value[398]=647;
tcp_value[399]=641;
tcp_value[400]=634;
tcp_value[401]=628;
tcp_value[402]=622;
tcp_value[403]=617;
tcp_value[404]=611;
tcp_value[405]=605;
tcp_value[406]=599;
end 
 
 
//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk_in)
begin
    sine_tcp = tcp_value[i];
    i = i+ 1;
    if(i == SIZE)
        i = 0;
end
endmodule