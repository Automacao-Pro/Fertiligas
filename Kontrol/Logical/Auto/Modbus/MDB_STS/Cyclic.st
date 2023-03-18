
PROGRAM _CYCLIC
	
 	//-------------------------------------------------------------------------------------------
	(*Status*)
	//-------------------------------------------------------------------------------------------
	
	MDB_Status[1] := UG.Status.Motivo_Parada_Normal;
	MDB_Status[2] := UG.Status.Motivo_Parada_86M;
	MDB_Status[3] := UG.Status.Motivo_Parada_86E;
	MDB_Status[4] := UG.Status.Motivo_Parada_86H;
	MDB_Status[5] := UG.Status.Motivo_Parada_Nivel;
	MDB_Status[6] := UG.Status.Automatico;
	MDB_Status[7] := UG.Status.Manual;
	MDB_Status[8] := UG.Status.Manutencao;
	MDB_Status[9] := UG.Status.UP_Partindo;
	MDB_Status[10] := UG.Status.UP_Alvo;
	MDB_Status[11] := UG.Status.UP;
	MDB_Status[12] := UG.Status.UPGM_Precond;
	MDB_Status[13] := UG.Status.UPGM_Partindo;
	MDB_Status[14] := UG.Status.UPGM_Parando;
	MDB_Status[15] := UG.Status.UPGM_Alvo;
	MDB_Status[16] := UG.Status.UPGM;
	MDB_Status[17] := UG.Status.UMVD_Precond;
	MDB_Status[18] := UG.Status.UMVD_Partindo;
	MDB_Status[19] := UG.Status.UMVD_Parando;
	MDB_Status[20] := UG.Status.UMVD_Alvo;
	MDB_Status[21] := UG.Status.UMVD;
	MDB_Status[22] := UG.Status.UPS_Precond;
	MDB_Status[23] := UG.Status.UPS_Partindo;
	MDB_Status[24] := UG.Status.UPS_Parando;
	MDB_Status[25] := UG.Status.UPS_Alvo;
	MDB_Status[26] := UG.Status.UPS;
	MDB_Status[27] := UG.Status.US_Precond;
	MDB_Status[28] := UG.Status.US_Parando;
	MDB_Status[29] := UG.Status.US_Alvo;
	MDB_Status[30] := UG.Status.US;
	MDB_Status[31] := FALSE;
	MDB_Status[32] := FALSE;
	MDB_Status[33] := FALSE;
	MDB_Status[34] := FALSE;
	MDB_Status[35] := FALSE;
	MDB_Status[36] := FALSE;
	MDB_Status[37] := FALSE;
	MDB_Status[38] := FALSE;
	MDB_Status[39] := FALSE;
	MDB_Status[40] := FALSE;
	MDB_Status[41] := Painel.Status.Rele_86;
	MDB_Status[42] := Painel.Status.Rele_86E;
	MDB_Status[43] := Painel.Status.Rele_86M;
	MDB_Status[44] := Painel.Status.Rele_86H;
	MDB_Status[45] := Painel.Status.Local;
	MDB_Status[46] := Painel.Status.Remoto;
	MDB_Status[47] := Painel.Status.Reset;
	MDB_Status[48] := FALSE;
	MDB_Status[49] := FALSE;
	MDB_Status[50] := FALSE;
	MDB_Status[51] := FALSE;
	MDB_Status[52] := FALSE;
	MDB_Status[53] := FALSE;
	MDB_Status[54] := FALSE;
	MDB_Status[55] := FALSE;
	MDB_Status[56] := FALSE;
	MDB_Status[57] := FALSE;
	MDB_Status[58] := FALSE;
	MDB_Status[59] := FALSE;
	MDB_Status[60] := SFA.Status.Habilitado;
	MDB_Status[61] := SFA.Status.Bomba1.Ligado;
	MDB_Status[62] := SFA.Status.Bomba1.Desligado;
	MDB_Status[63] := FALSE;
	MDB_Status[64] := FALSE;
	MDB_Status[65] := SFA.Status.Filtro1_Valv_Entrada1.Aberto;
	MDB_Status[66] := SFA.Status.Filtro1_Valv_Retrolav1.Aberto;
	MDB_Status[67] := SFA.Status.Filtro1_Valv_Entrada2.Aberto;
	MDB_Status[68] := SFA.Status.Filtro1_Valv_Retrolav2.Aberto;
	MDB_Status[69] := SFA.Status.Filtro2_Valv_Entrada1.Aberto;
	MDB_Status[70] := SFA.Status.Filtro2_Valv_Retrolav1.Aberto;
	MDB_Status[71] := SFA.Status.Filtro2_Valv_Entrada2.Aberto;
	MDB_Status[72] := SFA.Status.Filtro2_Valv_Retrolav2.Aberto;
	MDB_Status[73] := SFA.Status.Pressao.Normal;
	MDB_Status[74] := FALSE;
	MDB_Status[75] := FALSE;
	MDB_Status[76] := FALSE;
	MDB_Status[77] := FALSE;
	MDB_Status[78] := FALSE;
	MDB_Status[79] := FALSE;
	MDB_Status[80] := FALSE;
	MDB_Status[81] := UHLM.Status.Habilitado;
	MDB_Status[82] := UHLM.Status.Desabilitado;
	MDB_Status[83] := UHLM.Status.Local;
	MDB_Status[84] := UHLM.Status.Remoto;
	MDB_Status[85] := UHLM.Status.Partindo;
	MDB_Status[86] := UHLM.Status.Parando;
	MDB_Status[87] := UHLM.Status.Bomba1.Ligado;
	MDB_Status[88] := UHLM.Status.Bomba1.Desligado;
	MDB_Status[89] := UHLM.Status.Bomba2.Ligado;
	MDB_Status[90] := UHLM.Status.Bomba2.Desligado;
	MDB_Status[91] := UHLM.Status.JackingOil.Ligado;
	MDB_Status[92] := UHLM.Status.JackingOil.Desligado;
	MDB_Status[93] := UHLM.Status.Ventilador.Ligado;
	MDB_Status[94] := UHLM.Status.Ventilador.Desligado;
	MDB_Status[95] := UHLM.Status.Nivel.Normal;
	MDB_Status[96] := UHLM.Status.Temperatura.Normal;
	MDB_Status[97] := UHLM.Status.Fluxo.Normal;
	MDB_Status[98] := UHLM.Status.Fluxo1.Normal;(*Fluxostato do trocador de calor do mancal combinado*)
	MDB_Status[99] := UHLM.Status.Fluxo2.Normal;(*Fluxostato do trocador de calor do mancal guia*)
	MDB_Status[100] := UHLM.Status.Fluxo3.Normal;
	MDB_Status[101] := UHLM.Status.Fluxo4.Normal;
	MDB_Status[102] := UHLM.Status.Fluxo5.Normal;
	MDB_Status[103] := UHLM.Status.Pressao.Normal;
	MDB_Status[104] := UHLM.Status.Pressao1.Normal;(*Pressostato da linha de �leo jacking oil*)
	MDB_Status[105] := UHLM.Status.Pressao2.Normal;(*Pressostato da linha de �leo mancal combinado*)
	MDB_Status[106] := UHLM.Status.Pressao3.Normal;(*Pressostato da linha de �leo mancal guia*)
	MDB_Status[107] := UHLM.Status.Pressao4.Normal;
	MDB_Status[108] := UHLM.Status.Pressao5.Normal;
	MDB_Status[109] := UHLM.Status.Bomba3.Ligado;
	MDB_Status[110] := UHLM.Status.Bomba3.Desligado;
	MDB_Status[111] := UHLM.Status.Nivel_Mancal_Guia.Normal;
	MDB_Status[112] := FALSE;
	MDB_Status[113] := FALSE;
	MDB_Status[114] := FALSE;
	MDB_Status[115] := FALSE;
	MDB_Status[116] := FALSE;
	MDB_Status[117] := FALSE;
	MDB_Status[118] := FALSE;
	MDB_Status[119] := FALSE;
	MDB_Status[120] := FALSE;
	MDB_Status[121] := UHRV.Status.Habilitado;
	MDB_Status[122] := UHRV.Status.Desabilitado;
	MDB_Status[123] := UHRV.Status.Local;
	MDB_Status[124] := UHRV.Status.Remoto;
	MDB_Status[125] := UHRV.Status.Partindo;
	MDB_Status[126] := UHRV.Status.Parando;
	MDB_Status[127] := UHRV.Status.Bomba1.Ligado;
	MDB_Status[128] := UHRV.Status.Bomba1.Desligado;
	MDB_Status[129] := UHRV.Status.Bomba2.Ligado;
	MDB_Status[130] := UHRV.Status.Bomba2.Desligado;
	MDB_Status[131] := UHRV.Status.Bomba3.Ligado;
	MDB_Status[132] := UHRV.Status.Bomba3.Desligado;
	MDB_Status[133] := UHRV.Status.Ventilador.Ligado;
	MDB_Status[134] := UHRV.Status.Ventilador.Desligado;
	MDB_Status[135] := UHRV.Status.Vseg1.Ligado;
	MDB_Status[136] := UHRV.Status.Vseg1.Desligado;
	MDB_Status[137] := UHRV.Status.Vseg2.Ligado;
	MDB_Status[138] := UHRV.Status.Vseg2.Desligado;
	MDB_Status[139] := UHRV.Status.Ventagem.Ligado;
	MDB_Status[140] := UHRV.Status.Ventagem.Desligado;
	MDB_Status[141] := UHRV.Status.Nivel.Normal;
	MDB_Status[142] := UHRV.Status.Temperatura.Normal;
	MDB_Status[143] := UHRV.Status.Pressao.Normal;
	MDB_Status[144] := UHRV.Status.Filtro1.Pressao.Normal;
	MDB_Status[145] := FALSE;
	MDB_Status[146] := FALSE;
	MDB_Status[147] := FALSE;
	MDB_Status[148] := FALSE;
	MDB_Status[149] := FALSE;
	MDB_Status[150] := FALSE;
	MDB_Status[151] := FALSE;
	MDB_Status[152] := FALSE;
	MDB_Status[153] := FALSE;
	MDB_Status[154] := FALSE;
	MDB_Status[155] := FALSE;
	MDB_Status[156] := FALSE;
	MDB_Status[157] := FALSE;
	MDB_Status[158] := FALSE;
	MDB_Status[159] := FALSE;
	MDB_Status[160] := FALSE;
	MDB_Status[161] := Freio.Status.Modo_Continuo;
	MDB_Status[162] := Freio.Status.Modo_Intermitente;
	MDB_Status[163] := Freio.Status.Aplicado;
	MDB_Status[164] := Freio.Status.Desaplicado;
	MDB_Status[165] := Freio.Status.Pressostato_OK;
	MDB_Status[166] := FALSE;
	MDB_Status[167] := FALSE;
	MDB_Status[168] := FALSE;
	MDB_Status[169] := FALSE;
	MDB_Status[170] := FALSE;
//	MDB_Status[171] := VByPass.Status.Aberto;
//	MDB_Status[172] := VByPass.Status.Fechado;
//	MDB_Status[173] := VByPass.Status.Abrindo;
//	MDB_Status[174] := VByPass.Status.Fechando;
	MDB_Status[175] := FALSE;
	MDB_Status[176] := FALSE;
	MDB_Status[177] := FALSE;
	MDB_Status[178] := FALSE;
	MDB_Status[179] := FALSE;
	MDB_Status[180] := FALSE;
	MDB_Status[181] := FALSE;
	MDB_Status[182] := FALSE;
	MDB_Status[183] := FALSE;
	MDB_Status[184] := FALSE;
	MDB_Status[185] := FALSE;
	MDB_Status[186] := FALSE;
	MDB_Status[187] := FALSE;
	MDB_Status[188] := FALSE;
	MDB_Status[189] := FALSE;
	MDB_Status[190] := FALSE;
//	MDB_Status[191] := VBorb.Status.Aberto;
//	MDB_Status[192] := VBorb.Status.Fechado;
//	MDB_Status[193] := VBorb.Status.Abrindo;
//	MDB_Status[194] := VBorb.Status.Fechando;
//	MDB_Status[195] := VBorb.Status.Equalizado;
//	MDB_Status[196] := VBorb.Status.Reposicao;
//	MDB_Status[197] := VBorb.Status.Deriva;
	MDB_Status[198] := FALSE;
	MDB_Status[199] := FALSE;
	MDB_Status[200] := FALSE;
	MDB_Status[201] := FALSE;
	MDB_Status[202] := FALSE;
	MDB_Status[203] := FALSE;
	MDB_Status[204] := FALSE;
	MDB_Status[205] := FALSE;
	MDB_Status[206] := FALSE;
	MDB_Status[207] := FALSE;
	MDB_Status[208] := FALSE;
	MDB_Status[209] := FALSE;
	MDB_Status[210] := FALSE;
	MDB_Status[211] := Comporta1.Status.Aberto;
	MDB_Status[212] := Comporta1.Status.Fechado;
	MDB_Status[213] := Comporta1.Status.Abrindo;
	MDB_Status[214] := Comporta1.Status.Fechando;
	MDB_Status[215] := Comporta1.Status.Cracking;
	MDB_Status[216] := Comporta1.Status.Deriva;
	MDB_Status[217] := Comporta1.Status.Reposicao;
	MDB_Status[218] := FALSE;
	MDB_Status[219] := Comporta2.Status.Aberto;
	MDB_Status[220] := Comporta2.Status.Fechado;
	MDB_Status[221] := Comporta2.Status.Abrindo;
	MDB_Status[222] := Comporta2.Status.Fechando;
	MDB_Status[223] := Comporta2.Status.Cracking;
	MDB_Status[224] := Comporta2.Status.Deriva;
	MDB_Status[225] := Comporta2.Status.Reposicao;
	MDB_Status[226] := Comporta_UH.Status.Bomba1.Ligado;
	MDB_Status[227] := Comporta_UH.Status.Bomba2.Ligado;
	MDB_Status[228] := Comporta_UH.Status.Valv_Abertura_Lenta.Ligado;
	MDB_Status[229] := Comporta_UH.Status.Val_Abertura.Ligado;
	MDB_Status[230] := Comporta_UH.Status.Val_Fechamento.Ligado;
	MDB_Status[231] := Comporta_UH.Status.Valv_Fechamento_Rapido.Ligado;
	MDB_Status[232] := Comportas.Status.Modo_Remoto;
	MDB_Status[233] := Comportas.Status.Pressao_Equalizada;
	MDB_Status[234] := FALSE;
	MDB_Status[235] := FALSE;
	MDB_Status[236] := FALSE;
	MDB_Status[237] := FALSE;
	MDB_Status[238] := FALSE;
	MDB_Status[239] := FALSE;
	MDB_Status[240] := FALSE;
	MDB_Status[241] := RV.Status.Habilitado;
	MDB_Status[242] := RV.Status.Desabilitado;
	MDB_Status[243] := RV.Status.Partindo;
	MDB_Status[244] := RV.Status.Parando;
	MDB_Status[245] := RV.Status.Carga_Zerada;
	MDB_Status[246] := RV.Status.Velocidade_Nominal;
	MDB_Status[247] := RV.Status.Velocidade_30;
	MDB_Status[248] := RV.Status.Velocidade_Parado;
	MDB_Status[249] := FALSE;
	MDB_Status[250] := FALSE;
	MDB_Status[251] := FALSE;
	MDB_Status[252] := FALSE;
	MDB_Status[253] := FALSE;
	MDB_Status[254] := FALSE;
	MDB_Status[255] := FALSE;
	MDB_Status[256] := FALSE;
	MDB_Status[257] := FALSE;
	MDB_Status[258] := FALSE;
	MDB_Status[259] := FALSE;
	MDB_Status[260] := FALSE;
	MDB_Status[261] := RT.Status.Habilitado;
	MDB_Status[262] := RT.Status.Desabilitado;
	MDB_Status[263] := RT.Status.Partindo;
	MDB_Status[264] := RT.Status.Parando;
	MDB_Status[265] := RT.Status.Qm_Constante;
	MDB_Status[266] := RT.Status.FP_Constante;
	MDB_Status[267] := RT.Status.Tensao_Nominal;
	MDB_Status[268] := FALSE;
	MDB_Status[269] := FALSE;
	MDB_Status[270] := FALSE;
	MDB_Status[271] := FALSE;
	MDB_Status[272] := FALSE;
	MDB_Status[273] := FALSE;
	MDB_Status[274] := FALSE;
	MDB_Status[275] := FALSE;
	MDB_Status[276] := FALSE;
	MDB_Status[277] := FALSE;
	MDB_Status[278] := FALSE;
	MDB_Status[279] := FALSE;
	MDB_Status[280] := FALSE;
	MDB_Status[281] := SC.Status.Habilitado;
	MDB_Status[282] := SC.Status.Desabilitado;
	MDB_Status[283] := FALSE;
	MDB_Status[284] := FALSE;
	MDB_Status[285] := FALSE;
	MDB_Status[286] := FALSE;
	MDB_Status[287] := FALSE;
	MDB_Status[288] := FALSE;
	MDB_Status[289] := FALSE;
	MDB_Status[290] := FALSE;
	MDB_Status[291] := DJ52G.Status.Aberto;
	MDB_Status[292] := DJ52G.Status.Fechado;
	MDB_Status[293] := DJ52G.Status.Mola_Carregada;
	MDB_Status[294] := DJ52G.Status.Bobina_Minima;
	MDB_Status[295] := DJ52G.Status.Modo_Teste;
	MDB_Status[296] := DJ52G.Status.Inserido;
	MDB_Status[297] := DJ52G.Status.Extraido;
	MDB_Status[298] := DJ52G.Status.Habilitado;
	MDB_Status[299] := DJ52G.Status.Desabilitado;
	MDB_Status[300] := FALSE;
	MDB_Status[301] := FALSE;
	MDB_Status[302] := FALSE;
	MDB_Status[303] := FALSE;
	MDB_Status[304] := FALSE;
	MDB_Status[305] := FALSE;
	MDB_Status[306] := FALSE;
	MDB_Status[307] := FALSE;
	MDB_Status[308] := FALSE;
	MDB_Status[309] := FALSE;
	MDB_Status[310] := FALSE;
//	MDB_Status[311] := DJ52L.Status.Aberto;
//	MDB_Status[312] := DJ52L.Status.Fechado;
//	MDB_Status[313] := DJ52L.Status.Remoto;
//	MDB_Status[314] := DJ52L.Status.Bloqueio;
	MDB_Status[315] := FALSE;
	MDB_Status[316] := FALSE;
	MDB_Status[317] := FALSE;
	MDB_Status[318] := FALSE;
	MDB_Status[319] := FALSE;
	MDB_Status[320] := FALSE;
	MDB_Status[321] := Nivel.Status.Habilitado;
	MDB_Status[322] := Nivel.Status.Desabilitado;
	MDB_Status[323] := Nivel.Status.Partindo;
	MDB_Status[324] := Nivel.Status.Parando;
	MDB_Status[325] := FALSE;
	MDB_Status[326] := FALSE;
	MDB_Status[327] := FALSE;
	MDB_Status[328] := FALSE;
	MDB_Status[329] := FALSE;
	MDB_Status[330] := FALSE;
		
	//-------------------------------------------------------------------------------------------
END_PROGRAM