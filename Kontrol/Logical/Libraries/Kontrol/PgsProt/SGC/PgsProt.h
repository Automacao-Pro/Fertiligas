/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsProt 2.00.0 */

#ifndef _PGSPROT_
#define _PGSPROT_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsProt_VERSION
#define _PgsProt_VERSION 2.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif
#ifdef _SG4
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif
#ifdef _SGC
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsProt51CurveType
{	PGS_PROT_CURVE_51_U1,
	PGS_PROT_CURVE_51_U2,
	PGS_PROT_CURVE_51_U3,
	PGS_PROT_CURVE_51_U4,
	PGS_PROT_CURVE_51_U5,
	PGS_PROT_CURVE_51_C1,
	PGS_PROT_CURVE_51_C2,
	PGS_PROT_CURVE_51_C3,
	PGS_PROT_CURVE_51_C4,
	PGS_PROT_CURVE_51_C5
} PgsProt51CurveType;

typedef struct PgsProtPhaseFaultParType
{	float level;
} PgsProtPhaseFaultParType;

typedef struct PgsProt24ParType
{	float Vnom;
	float HZnom;
	float VHZ;
	float Time;
} PgsProt24ParType;

typedef struct PgsProt24PrivType
{	plcbit init;
	float cycle_dt;
	float time;
} PgsProt24PrivType;

typedef struct PgsProt40ParType
{	float diameter;
	float Offset;
	float Time;
} PgsProt40ParType;

typedef struct PgsProt40PrivType
{	plcbit init;
	float cycle_dt;
	float time;
} PgsProt40PrivType;

typedef struct PgsProt51VParType
{	float Vnom;
	float Ipk;
	float Td;
	enum PgsProt51CurveType Curve;
} PgsProt51VParType;

typedef struct PgsProt51VPrivType
{	plcbit init;
	float cycle_dt;
	float time;
} PgsProt51VPrivType;

typedef struct PgsProt62ParType
{	plcbit Under;
	float Level;
	float Time;
} PgsProt62ParType;

typedef struct PgsProt62PrivType
{	plcbit init;
	float cycle_dt;
	float time;
} PgsProt62PrivType;

typedef struct PgsProt50BFParType
{	float Time;
	float Inom;
} PgsProt50BFParType;

typedef struct PgsProt50BFPrivType
{	plcbit init;
	float cycle_dt;
	float time;
	unsigned char o50bf;
} PgsProt50BFPrivType;

typedef struct PgsProtPhaseFault
{
	/* VAR_INPUT (analog) */
	struct PgsProtPhaseFaultParType Parameter;
	float Ph1;
	float Ph2;
	float Ph3;
	/* VAR_OUTPUT (analog) */
	float Phm;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit Fault1;
	plcbit Fault2;
	plcbit Fault3;
} PgsProtPhaseFault_typ;

typedef struct PgsProt40
{
	/* VAR_INPUT (analog) */
	struct PgsProt40ParType Parameter;
	float Zmodule;
	float Zangle;
	/* VAR (analog) */
	struct PgsProt40PrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit O40Z;
	plcbit O40ZT;
} PgsProt40_typ;

typedef struct PgsProt51V
{
	/* VAR_INPUT (analog) */
	struct PgsProt51VParType Parameter;
	float I;
	float V;
	/* VAR (analog) */
	struct PgsProt51VPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit O51V;
	plcbit O51VT;
	plcbit O51VR;
} PgsProt51V_typ;

typedef struct PgsProt24
{
	/* VAR_INPUT (analog) */
	struct PgsProt24ParType Parameter;
	float V;
	float Hz;
	/* VAR (analog) */
	struct PgsProt24PrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit O24;
	plcbit O24T;
} PgsProt24_typ;

typedef struct PgsProtSeq0
{
	/* VAR_INPUT (analog) */
	float PhaseA;
	float AngleA;
	float PhaseB;
	float AngleB;
	float PhaseC;
	float AngleC;
	/* VAR_OUTPUT (analog) */
	float Phase0;
	float Angle0;
} PgsProtSeq0_typ;

typedef struct PgsProtSeq1
{
	/* VAR_INPUT (analog) */
	float PhaseA;
	float AngleA;
	float PhaseB;
	float AngleB;
	float PhaseC;
	float AngleC;
	/* VAR_OUTPUT (analog) */
	float Phase1;
	float Angle1;
	/* VAR_INPUT (digital) */
	plcbit ClockWise;
} PgsProtSeq1_typ;

typedef struct PgsProtSeq2
{
	/* VAR_INPUT (analog) */
	float PhaseA;
	float AngleA;
	float PhaseB;
	float AngleB;
	float PhaseC;
	float AngleC;
	/* VAR_OUTPUT (analog) */
	float Phase2;
	float Angle2;
	/* VAR_INPUT (digital) */
	plcbit ClockWise;
} PgsProtSeq2_typ;

typedef struct PgsProt62
{
	/* VAR_INPUT (analog) */
	struct PgsProt62ParType Parameter;
	float In;
	/* VAR (analog) */
	struct PgsProt62PrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit O62;
	plcbit O62T;
} PgsProt62_typ;

typedef struct PgsProgLatch
{
	/* VAR_INPUT (digital) */
	plcbit In;
	plcbit Reset;
	/* VAR_OUTPUT (digital) */
	plcbit Out;
} PgsProgLatch_typ;

typedef struct PgsProt50BF
{
	/* VAR_INPUT (analog) */
	struct PgsProt50BFParType Parameter;
	float I1;
	float I2;
	/* VAR (analog) */
	struct PgsProt50BFPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit Trip;
	plcbit Closed;
	/* VAR_OUTPUT (digital) */
	plcbit O50BFT;
} PgsProt50BF_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsProtPhaseFault(struct PgsProtPhaseFault* inst);
_BUR_PUBLIC void PgsProt40(struct PgsProt40* inst);
_BUR_PUBLIC void PgsProt51V(struct PgsProt51V* inst);
_BUR_PUBLIC void PgsProt24(struct PgsProt24* inst);
_BUR_PUBLIC void PgsProtSeq0(struct PgsProtSeq0* inst);
_BUR_PUBLIC void PgsProtSeq1(struct PgsProtSeq1* inst);
_BUR_PUBLIC void PgsProtSeq2(struct PgsProtSeq2* inst);
_BUR_PUBLIC void PgsProt62(struct PgsProt62* inst);
_BUR_PUBLIC void PgsProgLatch(struct PgsProgLatch* inst);
_BUR_PUBLIC void PgsProt50BF(struct PgsProt50BF* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSPROT_ */

