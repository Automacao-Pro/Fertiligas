/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsAI4622  */

#ifndef _PGSAI4622_
#define _PGSAI4622_
#ifdef __cplusplus
extern "C" 
{
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
typedef enum PgsAI4622FilterType
{	PGS_AI4622_FILTER_DISABLED = 0,
	PGS_AI4622_FILTER_LEVEL_002 = 1,
	PGS_AI4622_FILTER_LEVEL_004 = 2,
	PGS_AI4622_FILTER_LEVEL_008 = 3,
	PGS_AI4622_FILTER_LEVEL_016 = 4,
	PGS_AI4622_FILTER_LEVEL_032 = 5,
	PGS_AI4622_FILTER_LEVEL_064 = 6,
	PGS_AI4622_FILTER_LEVEL_128 = 7
} PgsAI4622FilterType;

typedef enum PgsAI4622RampType
{	PGS_AI4622_RAMP_DISABLED = 0,
	PGS_AI4622_RAMP_16383 = 1,
	PGS_AI4622_RAMP_8191 = 2,
	PGS_AI4622_RAMP_4095 = 3,
	PGS_AI4622_RAMP_2047 = 4,
	PGS_AI4622_RAMP_1023 = 5,
	PGS_AI4622_RAMP_511 = 6,
	PGS_AI4622_RAMP_255 = 7
} PgsAI4622RampType;

typedef enum PgsAI4622ChannelType
{	PGS_AI4622_B10_V,
	PGS_AI4622_0_20_mA,
	PGS_AI4622_4_20_mA
} PgsAI4622ChannelType;

typedef struct PgsAI4622PrivType
{	plcbit update;
	unsigned char step;
	struct AsIOAccWrite write_io;
} PgsAI4622PrivType;

typedef struct PgsAI4622UpdatePrivType
{	plcbit init;
	unsigned char step;
	struct AsIOAccRead read_io;
	plcbit error;
	float time;
	unsigned long cycle_time;
	float cycle_dt;
} PgsAI4622UpdatePrivType;

typedef struct PgsAI4622Update
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	/* VAR_OUTPUT (analog) */
	unsigned short Stauts;
	/* VAR (analog) */
	struct PgsAI4622UpdatePrivType priv;
} PgsAI4622Update_typ;

typedef struct PgsAI4622
{
	/* VAR_INPUT (analog) */
	unsigned long pDeviceName;
	enum PgsAI4622FilterType FilterLevel;
	enum PgsAI4622RampType RampLimit;
	signed short UpperLimit;
	signed short LowerLimit;
	enum PgsAI4622ChannelType Channel1;
	enum PgsAI4622ChannelType Channel2;
	enum PgsAI4622ChannelType Channel3;
	enum PgsAI4622ChannelType Channel4;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsAI4622PrivType priv;
} PgsAI4622_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsAI4622Update(struct PgsAI4622Update* inst);
_BUR_PUBLIC void PgsAI4622(struct PgsAI4622* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSAI4622_ */

