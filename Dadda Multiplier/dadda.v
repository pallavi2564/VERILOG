module dadda( input [7:0]a, input [7:0]b,output [15:0]m
 );
  
  wire [5:0]s1,c1;
  wire [13:0]s2,c2;
  wire [9:0]s3,c3;
  wire [11:0]s4,c4;
  wire [13:0]c5;
  
wire p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63;

assign p0=a[0]&b[0]; assign p1=b[0]&a[1];assign p2=b[0]&a[2];assign p3=b[0]&a[3];assign p4=b[0]&a[4];assign p5=b[0]&a[5];assign p6=b[0]&a[6];assign p7=b[0]&a[7];
assign p8=b[1]&a[0];assign p9=b[1]&a[1];assign p10=b[1]&a[2];assign p11=b[1]&a[3];assign p12=b[1]&a[4];assign p13=b[1]&a[5];assign p14=b[1]&a[6];assign p15=b[1]&a[7];
assign p16=b[2]&a[0];assign p17=b[2]&a[1];assign p18=b[2]&a[2];assign p19=b[2]&a[3];assign p20=b[2]&a[4];assign p21=b[2]&a[5];assign p22=b[2]&a[6];assign p23=b[2]&a[7];
assign p24=b[3]&a[0];assign p25=b[3]&a[1];assign p26=b[3]&a[2];assign p27=b[3]&a[3];assign p28=b[3]&a[4];assign p29=b[3]&a[5];assign p30=b[3]&a[6];assign p31=b[3]&a[7];
assign p32=b[4]&a[0];assign p33=b[4]&a[1];assign p34=b[4]&a[2];assign p35=b[4]&a[3];assign p36=b[4]&a[4];assign p37=b[4]&a[5];assign p38=b[4]&a[6];assign p39=b[4]&a[7];
assign p40=b[5]&a[0];assign p41=b[5]&a[1];assign p42=b[5]&a[2];assign p43=b[5]&a[3];assign p44=b[5]&a[4];assign p45=b[5]&a[5];assign p46=b[5]&a[6];assign p47=b[5]&a[7];
assign p48=b[6]&a[0];assign p49=b[6]&a[1];assign p50=b[6]&a[2];assign p51=b[6]&a[3];assign p52=b[6]&a[4];assign p53=b[6]&a[5];assign p54=b[6]&a[6];assign p55=b[6]&a[7];
assign p56=b[7]&a[0];assign p57=b[7]&a[1];assign p58=b[7]&a[2];assign p59=b[7]&a[3];assign p60=b[7]&a[4];assign p61=b[7]&a[5];assign p62=b[7]&a[6];assign p63=b[7]&a[7];

//d=8
  ha h1(p6,p13, s1[0],c1[0]);
  fa f1(p7,p14,p21,s1[1],c1[1]);
 
  ha h2(p28,p35,s1[2],c1[2]);
  fa f2(p15,p22,p29,s1[3],c1[3]);
  ha h3(p36,p43, s1[4],c1[4]);
  fa f3(p23,p30,p37,s1[5],c1[5]);
  
  //d=6
    ha h4(p4,p11,s2[0],c2[0]);
    fa f4(p5,p12,p19,s2[1],c2[1]);
    ha h5(p26,p33,s2[2],c2[2]);
    fa f5(s1[0],p27,p20,s2[3],c2[3]);
    fa f6(p34,p41,p48,s2[4],c2[4]);
    fa f7(c1[0],s1[1],s1[2],s2[5],c2[5]);
    fa f8(p42,p49,p56,s2[6],c2[6]);
    fa f9(s1[3],c1[1],s1[4],s2[7],c2[7]);
    fa f10(c1[2],p50,p57,s2[8],c2[8]);
    fa f11(s1[5],c1[3],c1[4],s2[9],c2[9]);
    fa f12(p44,p51,p58,s2[10],c2[10]);
    fa f13(c1[5],p31,p38,s2[11],c2[11]);
    fa f14(p45,p52,p59,s2[12],c2[12]);
    fa f15(p39,p46,p53,s2[13],c2[13]);
    
    //d=3
    
    ha h6(p3,p10,s3[0],c3[0]);
    fa f16(s2[0],p18,p25,s3[1],c3[1]);
    fa f17(s2[1],s2[2],c2[0],s3[2],c3[2]);
    fa f18(s2[3],s2[4],c2[1],s3[3],c3[3]);
    fa f19(s2[5],s2[6],c2[3],s3[4],c3[4]);
    fa f20(s2[7],s2[8],c2[5],s3[5],c3[5]);
    fa f21(s2[9],s2[10],c2[7],s3[6],c3[6]);
    fa f22(s2[11],s2[12],c2[9],s3[7],c3[7]);
    fa f23(s2[13],c2[11],c2[12],s3[8],c3[8]);
    fa f24(c2[13],p47,p54,s3[9],c3[9]);
    //d=2
    
    ha h7(p2,p9,s4[0],c4[0]);
    fa f25(s3[0],p17,p24,s4[1],c4[1]);
    fa f26(s3[1],c3[0],p32,s4[2],c4[2]);
    fa f27(s3[2],c3[1],p40,s4[3],c4[3]);
    fa f28(s3[3],c3[2],c2[2],s4[4],c4[4]);
    fa f29(s3[4],c3[3],c2[4],s4[5],c4[5]);
    fa f30(s3[5],c3[4],c2[6],s4[6],c4[6]);
    fa f31(s3[6],c3[5],c2[8],s4[7],c4[7]);
    fa f32(s3[7],c3[6],c2[10],s4[8],c4[8]);
    fa f33(s3[8],c3[7],c2[12],s4[9],c4[9]);
    fa f34(s3[9],c3[8],p61,s4[10],c4[10]);
    fa f35(c3[9],p55,p62,s4[11],c4[11]);
    
    //last stage
    
    ha h8(p1,p8,m[1],c5[0]);
    fa f36(s4[0],c5[0],p16,m[2],c5[1]);
    fa f37(s4[1],c4[0],c5[1],m[3],c5[2]);
    fa f38(s4[2],c4[1],c5[2],m[4],c5[3]);
    fa f39(s4[3],c4[2],c5[3],m[5],c5[4]);
    fa f40(s4[4],c4[3],c5[4],m[6],c5[5]);
    fa f41(s4[5],c4[4],c5[5],m[7],c5[6]);
    fa f42(s4[6],c4[5],c5[6],m[8],c5[7]);
    fa f43(s4[7],c4[6],c5[7],m[9],c5[8]);
    fa f44(s4[8],c4[7],c5[8],m[10],c5[9]);
    fa f45(s4[9],c4[8],c5[9],m[11],c5[10]);
    fa f46(s4[10],c4[9],c5[10],m[12],c5[11]);
    fa f47(s4[11],c4[10],c5[11],m[13],c5[12]);
    fa f48(p63,c4[11],c5[12],m[14],m[15]);
    
   assign m[0]=p0;
endmodule
