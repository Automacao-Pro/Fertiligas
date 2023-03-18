/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsTelnet 2.01.1 */

#ifndef _PGSTELNET_
#define _PGSTELNET_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsTelnet_VERSION
#define _PgsTelnet_VERSION 2.01.1
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "brsystem.h"
		#include "AsTCP.h"
		#include "astime.h"
		#include "AsBrStr.h"
		#include "PgsCfgNet.h"
		#include "PgsEvent.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif
#ifdef _SG4
		#include "brsystem.h"
		#include "AsTCP.h"
		#include "astime.h"
		#include "AsBrStr.h"
		#include "PgsCfgNet.h"
		#include "PgsEvent.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif
#ifdef _SGC
		#include "brsystem.h"
		#include "AsTCP.h"
		#include "astime.h"
		#include "AsBrStr.h"
		#include "PgsCfgNet.h"
		#include "PgsEvent.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsSshStatus
{	PGS_TNET_ST_OK,
	PGS_TNET_ST_RUNNING,
	PGS_TNET_ST_DISABLED,
	PGS_TNET_ST_INVALID_IDENT,
	PGS_TNET_ST_OPENING,
	PGS_TNET_ST_CLOSING,
	PGS_TNET_ST_CLOSED
} PgsSshStatus;

typedef struct PgsTelnetOpen
{
	/* VAR_INPUT (analog) */
	unsigned short port;
	/* VAR_OUTPUT (analog) */
	unsigned long ident;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsTelnetOpen_typ;

typedef struct PgsTelnetUpdate
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	unsigned long tagIdent;
	unsigned long evtIdent;
	float timeout;
	/* VAR_OUTPUT (analog) */
	unsigned long clients;
	unsigned long selected;
	plcstring ip[16];
	enum PgsSshStatus status;
	/* VAR (analog) */
	plcstring str[256];
	unsigned long test;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit reset;
	plcbit next;
	plcbit close;
} PgsTelnetUpdate_typ;

typedef struct PgsTelnetClose
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	/* VAR_OUTPUT (analog) */
	enum PgsSshStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsTelnetClose_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsTelnetOpen(struct PgsTelnetOpen* inst);
_BUR_PUBLIC void PgsTelnetUpdate(struct PgsTelnetUpdate* inst);
_BUR_PUBLIC void PgsTelnetClose(struct PgsTelnetClose* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSTELNET_ */

