/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsAO4622  */

#ifndef _PGSAO4622_
#define _PGSAO4622_
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
typedef enum PgsAO4622ChannelType
{	PGS_AO4622_B10_V,
	PGS_AO4622_0_20_mA,
	PGS_AO4622_4_20_mA
} PgsAO4622ChannelType;

typedef struct PgsAO4622PrivType
{	plcbit update;
	unsigned char step;
	struct AsIOAccWrite write_io;
} PgsAO4622PrivType;

typedef struct PgsAO4622UpdatePrivType
{	plcbit init;
	unsigned char step;
	struct AsIOAccRead read_io;
	plcbit error;
	float time;
	unsigned long cycle_time;
	float cycle_dt;
} PgsAO4622UpdatePrivType;

typedef struct PgsAO4622Update
{
	/* VAR_INPUT (analog) */
	unsigned long Ident;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	struct PgsAO4622UpdatePrivType priv;
} PgsAO4622Update_typ;

typedef struct PgsAO4622
{
	/* VAR_INPUT (analog) */
	unsigned long pDeviceName;
	enum PgsAO4622ChannelType Channel1;
	enum PgsAO4622ChannelType Channel2;
	enum PgsAO4622ChannelType Channel3;
	enum PgsAO4622ChannelType Channel4;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsAO4622PrivType priv;
} PgsAO4622_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsAO4622Update(struct PgsAO4622Update* inst);
_BUR_PUBLIC void PgsAO4622(struct PgsAO4622* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSAO4622_ */

