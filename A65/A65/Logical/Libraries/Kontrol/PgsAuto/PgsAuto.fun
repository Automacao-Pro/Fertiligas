
FUNCTION_BLOCK PgsEnergia
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
		power : REAL;
		set_inicial : BOOL;
		set_posEnergy : REAL;
		set_negEnergy : REAL;
	END_VAR
	VAR_OUTPUT
		posEnergy : LREAL;
		negEnergy : LREAL;
	END_VAR
	VAR
		priv : PgsEnergiaPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsHorimetro
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
		set_inicial : BOOL;
		set_total : REAL;
	END_VAR
	VAR_OUTPUT
		total : REAL;
		horas : REAL;
		minutos : REAL;
		segundos : REAL;
	END_VAR
	VAR
		priv : PgsHorimetroPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsManobra
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
		set_inicial : BOOL;
		set_total : REAL;
	END_VAR
	VAR_OUTPUT
		total : REAL;
	END_VAR
	VAR
		priv : PgsManobraPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION PGS_MDB_TO_REAL : REAL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		IN : UDINT;
	END_VAR
	VAR
		pVar : REFERENCE TO REAL;
		varUint : ARRAY[0..1] OF UINT;
		varUint1 : REFERENCE TO ARRAY[0..1] OF UINT;
	END_VAR
END_FUNCTION

FUNCTION PGS_REAL_TO_MDB : UDINT (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		IN : REAL;
	END_VAR
	VAR
		pVar : REFERENCE TO UDINT;
		varUint : ARRAY[0..1] OF UINT;
		varUint1 : REFERENCE TO ARRAY[0..1] OF UINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PGS_MDB_TO_DINT : DINT (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		HIGH : UINT;
		LOW : UINT;
	END_VAR
	VAR
		pVar : REFERENCE TO DINT;
		varUint : ARRAY[0..1] OF UINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PGS_MDB_TO_UDINT : UDINT (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		HIGH : UINT;
		LOW : UINT;
	END_VAR
	VAR
		pVar : REFERENCE TO UDINT;
		varUint : ARRAY[0..1] OF UINT;
	END_VAR
END_FUNCTION

FUNCTION_BLOCK PgsAlarme
	VAR_INPUT
		IN : BOOL; (*input signal*)
		PT : TIME; (*delay time*)
		RESET : BOOL; (*resets output Q1*)
	END_VAR
	VAR_OUTPUT
		Q : BOOL; (*rising edge of the input signal is delayed by PT*)
	END_VAR
	VAR
		ton : TON;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFiltro (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		IN : {REDUND_UNREPLICABLE} REAL;
		CTE : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		OUT : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR
		acc : REAL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsEscala (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		SensorMax : {REDUND_UNREPLICABLE} REAL;
		SensorMin : {REDUND_UNREPLICABLE} REAL;
		Entrada : REAL;
	END_VAR
	VAR_OUTPUT
		Valor : {REDUND_UNREPLICABLE} REAL;
		Sensor : REAL;
	END_VAR
	VAR
		filtro : PgsFiltro;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsCabo (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		IN : REAL;
		PT : TIME;
	END_VAR
	VAR_OUTPUT
		Falha : BOOL;
		Cabo_Aberto : BOOL;
		Cabo_Curto : BOOL;
	END_VAR
	VAR
		aberto : BOOL;
		curto : BOOL;
		ton_aberto : TON;
		ton_curto : TON;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK PgsSobre (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL := TRUE;
		IN : REAL;
		IN_AL : REAL;
		PT_AL : REAL;
		IN_TP : REAL;
		PT_TP : REAL;
		RST : BOOL;
	END_VAR
	VAR_OUTPUT
		Alarme : BOOL;
		Trip : BOOL;
	END_VAR
	VAR
		ton_al : TON;
		ton_tp : TON;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK PgsSub (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL := TRUE;
		IN : REAL;
		IN_AL : REAL;
		PT_AL : REAL;
		IN_TP : REAL;
		PT_TP : REAL;
		RST : BOOL;
	END_VAR
	VAR_OUTPUT
		Alarme : BOOL;
		Trip : BOOL;
	END_VAR
	VAR
		ton_al : TON;
		ton_tp : TON;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsX20AT
	VAR_INPUT
		Status : USINT;
	END_VAR
	VAR_OUTPUT
		IN1_Aberto : BOOL;
		IN1_Curto : BOOL;
		IN2_Aberto : BOOL;
		IN2_Curto : BOOL;
		IN3_Aberto : BOOL;
		IN3_Curto : BOOL;
		IN4_Aberto : BOOL;
		IN4_Curto : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsStatusInput (*Para verificar o Status da Entrada Analógica*)
	VAR_INPUT
		Enable : BOOL;
		StatusInput : USINT; (*Status Input do módulo*)
		Pos : USINT; (*Posição da analógica 1,2,3 ou 4*)
		Reset : BOOL;
	END_VAR
	VAR_OUTPUT
		Limite_Inferior : BOOL;
		Limite_Superior : BOOL;
		Circuito_Aberto : BOOL;
	END_VAR
	VAR
		pos_0 : BOOL;
		pos_1 : BOOL;
	END_VAR
END_FUNCTION_BLOCK
