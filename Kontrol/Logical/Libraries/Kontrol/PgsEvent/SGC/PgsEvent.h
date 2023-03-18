/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsEvent  */

#ifndef _PGSEVENT_
#define _PGSEVENT_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "runtime.h"
		#include "sys_lib.h"
		#include "brsystem.h"
		#include "astime.h"
		#include "AsSem.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif
#ifdef _SG4
		#include "runtime.h"
		#include "sys_lib.h"
		#include "brsystem.h"
		#include "astime.h"
		#include "AsSem.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif
#ifdef _SGC
		#include "runtime.h"
		#include "sys_lib.h"
		#include "brsystem.h"
		#include "astime.h"
		#include "AsSem.h"
		#include "PgsFileSys.h"
		#include "PgsTag.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsEvtStatus
{	PGS_EVT_ST_OK,
	PGS_EVT_ST_RUNNING,
	PGS_EVT_ST_DISABLED,
	PGS_EVT_ST_INVALID_IDENT,
	PGS_EVT_ST_MEM_FAIL,
	PGS_EVT_ST_START_FAIL,
	PGS_EVT_ST_STOP_FAIL,
	PGS_EVT_ST_INVALID_GROUP
} PgsEvtStatus;

typedef struct PgsEvtCreate
{
	/* VAR_INPUT (analog) */
	unsigned long tagIdent;
	/* VAR_OUTPUT (analog) */
	unsigned long ident;
	enum PgsEvtStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsEvtCreate_typ;

typedef struct PgsEvtDelete
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	/* VAR_OUTPUT (analog) */
	enum PgsEvtStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsEvtDelete_typ;

typedef struct PgsEvtGroup
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	unsigned long group;
	unsigned long pData;
	unsigned long dataSize;
	/* VAR_OUTPUT (analog) */
	enum PgsEvtStatus status;
	/* VAR (analog) */
	unsigned long i_tmp;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR_OUTPUT (digital) */
	plcbit lost;
} PgsEvtGroup_typ;

typedef struct PgsEvtUpdate
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	unsigned long file_sz;
	unsigned long max_sz;
	float time;
	/* VAR_OUTPUT (analog) */
	enum PgsEvtStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit read_config;
	plcbit clear_history;
} PgsEvtUpdate_typ;

typedef struct PgsEvtCmdOpen
{
	/* VAR_INPUT (analog) */
	unsigned long evtIdent;
	/* VAR_OUTPUT (analog) */
	enum PgsEvtStatus status;
	unsigned long ident;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsEvtCmdOpen_typ;

typedef struct PgsEvtCmdClose
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	/* VAR_OUTPUT (analog) */
	enum PgsEvtStatus status;
	/* VAR (analog) */
	unsigned long error;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsEvtCmdClose_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsEvtCreate(struct PgsEvtCreate* inst);
_BUR_PUBLIC void PgsEvtDelete(struct PgsEvtDelete* inst);
_BUR_PUBLIC void PgsEvtGroup(struct PgsEvtGroup* inst);
_BUR_PUBLIC void PgsEvtUpdate(struct PgsEvtUpdate* inst);
_BUR_PUBLIC void PgsEvtCmdOpen(struct PgsEvtCmdOpen* inst);
_BUR_PUBLIC void PgsEvtCmdClose(struct PgsEvtCmdClose* inst);
_BUR_PUBLIC unsigned long PgsEvtGetTag(unsigned long ident, unsigned short id);
_BUR_PUBLIC plcbit PgsEvtCmdInsert(unsigned long ident, unsigned long group, unsigned long tag);
_BUR_PUBLIC plcbit PgsEvtCmdRemove(unsigned long ident, unsigned long tag);
_BUR_PUBLIC plcbit PgsEvtCmdClear(unsigned long ident);


#ifdef __cplusplus
};
#endif
#endif /* _PGSEVENT_ */

