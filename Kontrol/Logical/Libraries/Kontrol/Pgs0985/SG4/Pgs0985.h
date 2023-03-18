/* Automation Studio generated header file */
/* Do not edit ! */
/* Pgs0985 2.00.0 */

#ifndef _PGS0985_
#define _PGS0985_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _Pgs0985_VERSION
#define _Pgs0985_VERSION 2.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "brsystem.h"
		#include "AsIOAcc.h"
#endif
#ifdef _SG4
		#include "brsystem.h"
		#include "AsIOAcc.h"
#endif
#ifdef _SGC
		#include "brsystem.h"
		#include "AsIOAcc.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum Pgs0985ConnectionType
{	PGS_0985_CON_ABCN,
	PGS_0985_CON_GBCN,
	PGS_0985_CON_AGCN,
	PGS_0985_CON_ABGN,
	PGS_0985_CON_ABC,
	PGS_0985_CON_GBC,
	PGS_0985_CON_AGC,
	PGS_0985_CON_ABG
} Pgs0985ConnectionType;

typedef enum Pgs0985SyncType
{	PGS_0985_SYNC_X4_X6,
	PGS_0985_SYNC_X4_X5,
	PGS_0985_SYNC_X4_X3,
	PGS_0985_SYNC_X5_X3
} Pgs0985SyncType;

typedef struct Pgs0985PrivType
{	plcbit update;
	unsigned char step;
	struct AsIOAccWrite write_io;
	unsigned char cstep;
	unsigned char cgstep;
	unsigned long gen;
	unsigned long genpu;
	unsigned long genpf;
	unsigned long genpa;
	unsigned long genpc;
	unsigned long genpp;
	unsigned long do1;
	unsigned long mai;
	unsigned long bus;
	unsigned long sync;
} Pgs0985PrivType;

typedef struct Pgs0985GenPrivType
{	unsigned char step;
	unsigned char v_tap;
	unsigned short v_mult;
	unsigned char i_tap;
	unsigned short i_mult;
} Pgs0985GenPrivType;

typedef struct Pgs0985BusPrivType
{	unsigned char step;
	unsigned char v_tap;
	unsigned short v_mult;
} Pgs0985BusPrivType;

typedef struct Pgs0985MainPrivType
{	unsigned char step;
	unsigned char v1_tap;
	unsigned short v1_mult;
	unsigned char v2_tap;
	unsigned short v2_mult;
} Pgs0985MainPrivType;

typedef struct Pgs0985SyncPrivType
{	unsigned char step;
} Pgs0985SyncPrivType;

typedef struct Pgs0985GenPuPrivType
{	unsigned char step;
} Pgs0985GenPuPrivType;

typedef struct Pgs0985GenPfPrivType
{	unsigned char step;
} Pgs0985GenPfPrivType;

typedef struct Pgs0985GenPaPrivType
{	unsigned char step;
} Pgs0985GenPaPrivType;

typedef struct Pgs0985GenPcPrivType
{	unsigned char step;
} Pgs0985GenPcPrivType;

typedef struct Pgs0985GenPpPrivType
{	unsigned char step;
} Pgs0985GenPpPrivType;

typedef struct Pgs0985DO1PrivType
{	unsigned char step;
	unsigned short out57;
	unsigned short out97;
} Pgs0985DO1PrivType;

typedef struct Pgs0985UpdatePrivType
{	plcbit init;
	unsigned char step;
	struct AsIOAccRead read_io;
	plcbit error;
	float time;
	unsigned long cycle_time;
	float cycle_dt;
} Pgs0985UpdatePrivType;

typedef struct Pgs0985Regs
{	signed short AnalogInput01;
	signed short AnalogInput02;
	signed short AnalogInput03;
	signed short AnalogInput04;
	signed short AnalogInput05;
	unsigned short AnalogInput06;
	signed short AnalogInput07;
	signed short AnalogInput08;
	signed short AnalogInput09;
	signed short AnalogInput10;
	signed short AnalogInput11;
	signed short AnalogInput12;
	signed short AnalogInput13;
	signed short AnalogInput14;
	signed short AnalogInput15;
	signed short AnalogInput16;
	signed short AnalogInput17;
	signed short AnalogInput18;
	signed short AnalogInput19;
	signed short AnalogInput20;
	signed short AnalogInput21;
	signed short AnalogInput22;
	signed short AnalogInput23;
	unsigned short AnalogInput24;
	signed short AnalogInput25;
	signed short AnalogInput26;
	unsigned short AnalogInput27;
	unsigned short AnalogInput28;
	signed short AnalogInput29;
	signed short AnalogInput30;
	signed short AnalogInput31;
	signed short AnalogInput32;
	signed short AnalogInput33;
	signed short AnalogInput34;
	unsigned short AnalogInput35;
	signed long AnalogInput38;
	signed long AnalogInput39;
	signed long AnalogInput40;
	signed long AnalogInput41;
	signed long AnalogInput42;
	signed long AnalogInput43;
} Pgs0985Regs;

typedef struct Pgs0985Update
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	struct Pgs0985UpdatePrivType priv;
} Pgs0985Update_typ;

typedef struct Pgs0985
{
	/* VAR_INPUT (analog) */
	unsigned long pDeviceName;
	float Fnom;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR (analog) */
	struct Pgs0985PrivType priv;
	/* VAR_INPUT (digital) */
	plcbit EnableSetDO5;
	plcbit EnableSetDO6;
	plcbit ClockWise;
} Pgs0985_typ;

typedef struct Pgs0985Gen
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	enum Pgs0985ConnectionType Connection;
	float Vprim;
	float Vsec;
	float Vnom;
	float Iprim;
	unsigned char Isec;
	float Inom;
	unsigned short Tfilter;
	float D02Pulse;
	/* VAR_OUTPUT (analog) */
	float Vgain;
	float Igain;
	float Sgain;
	/* VAR (analog) */
	struct Pgs0985GenPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit EnableHarmonic;
} Pgs0985Gen_typ;

typedef struct Pgs0985GenPu
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	float Umax1;
	float TUmax1;
	float Umax2;
	float TUmax2;
	float Umin1;
	float TUmin1;
	float Umin2;
	float TUmin2;
	/* VAR (analog) */
	struct Pgs0985GenPuPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit EnableLine;
	plcbit EnablePhase;
} Pgs0985GenPu_typ;

typedef struct Pgs0985GenPf
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	float Fmax1;
	float TFmax1;
	float Fmax2;
	float TFmax2;
	float Fmin1;
	float TFmin1;
	float Fmin2;
	float TFmin2;
	/* VAR (analog) */
	struct Pgs0985GenPfPrivType priv;
} Pgs0985GenPf_typ;

typedef struct Pgs0985GenPa
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	float Uas;
	float TUas;
	float Inom;
	float K1;
	float K2;
	/* VAR (analog) */
	struct Pgs0985GenPaPrivType priv;
} Pgs0985GenPa_typ;

typedef struct Pgs0985GenPc
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	float I50N;
	float TI50N;
	float I50;
	float TI50;
	float I51;
	float Iths;
	/* VAR (analog) */
	struct Pgs0985GenPcPrivType priv;
} Pgs0985GenPc_typ;

typedef struct Pgs0985GenPp
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	float Qmin;
	float TQmin;
	float Pmax;
	float TPmax;
	float NPmax;
	float TNPmax;
	/* VAR (analog) */
	struct Pgs0985GenPpPrivType priv;
} Pgs0985GenPp_typ;

typedef struct Pgs0985DO1
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	/* VAR (analog) */
	struct Pgs0985DO1PrivType priv;
	/* VAR_INPUT (digital) */
	plcbit ResetManual;
	plcbit T59_1;
	plcbit T59_2;
	plcbit T27_1;
	plcbit T27_2;
	plcbit T81O_1;
	plcbit T81O_2;
	plcbit T81U_1;
	plcbit T81U_2;
	plcbit T60V;
	plcbit T60I;
	plcbit T50N;
	plcbit T50;
	plcbit T51;
	plcbit T32Q;
	plcbit T32P;
	plcbit T32N;
} Pgs0985DO1_typ;

typedef struct Pgs0985Main
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	enum Pgs0985ConnectionType Connection1;
	float V1prim;
	float V1sec;
	float V1nom;
	enum Pgs0985ConnectionType Connection2;
	float V2prim;
	float V2sec;
	float V2nom;
	/* VAR_OUTPUT (analog) */
	float V1gain;
	float V2gain;
	/* VAR (analog) */
	struct Pgs0985MainPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable3phase;
} Pgs0985Main_typ;

typedef struct Pgs0985Bus
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	enum Pgs0985ConnectionType Connection;
	float Vprim;
	float Vsec;
	float Vnom;
	/* VAR_OUTPUT (analog) */
	float Vgain;
	/* VAR (analog) */
	struct Pgs0985BusPrivType priv;
} Pgs0985Bus_typ;

typedef struct Pgs0985Sync
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	enum Pgs0985SyncType Mode;
	float dFmax;
	float dFmin;
	float dUmax;
	float dAngleMax;
	float PhaseShift;
	float UBmin;
	float DO4Pulse;
	float DO4SwTime;
	float DO6Pulse;
	float DO6SwTime;
	/* VAR (analog) */
	struct Pgs0985SyncPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit ChangeDO4toDo6;
} Pgs0985Sync_typ;

typedef struct Pgs0985Meter
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	struct Pgs0985Regs Registers;
	/* VAR_OUTPUT (analog) */
	float Ug1;
	float Ug2;
	float Ug3;
	float Ug1Angle;
	float Ug2Angle;
	float Ug3Angle;
	float Ug12;
	float Ug23;
	float Ug31;
	float Ug;
	float Ig1;
	float Ig2;
	float Ig3;
	float Ig1Angle;
	float Ig2Angle;
	float Ig3Angle;
	float Ig;
	float Ign;
	float Igm_dyn;
	float Pg;
	float Qg;
	float Sg;
	float PFg;
	float Fg;
	float Ub1;
	float Ub2;
	float Ub3;
	float Ub12;
	float Ub23;
	float Ub31;
	float Fb;
	float Us1;
	float Fs1;
	float Us2;
	float Fs2;
	float Un1;
	float Un2;
	float Un3;
	float Un12;
	float Un23;
	float Un31;
	float Fn;
	float dAngle;
	float dU;
} Pgs0985Meter_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void Pgs0985Update(struct Pgs0985Update* inst);
_BUR_PUBLIC void Pgs0985(struct Pgs0985* inst);
_BUR_PUBLIC void Pgs0985Gen(struct Pgs0985Gen* inst);
_BUR_PUBLIC void Pgs0985GenPu(struct Pgs0985GenPu* inst);
_BUR_PUBLIC void Pgs0985GenPf(struct Pgs0985GenPf* inst);
_BUR_PUBLIC void Pgs0985GenPa(struct Pgs0985GenPa* inst);
_BUR_PUBLIC void Pgs0985GenPc(struct Pgs0985GenPc* inst);
_BUR_PUBLIC void Pgs0985GenPp(struct Pgs0985GenPp* inst);
_BUR_PUBLIC void Pgs0985DO1(struct Pgs0985DO1* inst);
_BUR_PUBLIC void Pgs0985Main(struct Pgs0985Main* inst);
_BUR_PUBLIC void Pgs0985Bus(struct Pgs0985Bus* inst);
_BUR_PUBLIC void Pgs0985Sync(struct Pgs0985Sync* inst);
_BUR_PUBLIC void Pgs0985Meter(struct Pgs0985Meter* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGS0985_ */

