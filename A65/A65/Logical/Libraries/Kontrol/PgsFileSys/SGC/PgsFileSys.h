/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsFileSys 2.00.0 */

#ifndef _PGSFILESYS_
#define _PGSFILESYS_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsFileSys_VERSION
#define _PgsFileSys_VERSION 2.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsARCfg.h"
		#include "FileIO.h"
#endif
#ifdef _SG4
		#include "AsARCfg.h"
		#include "FileIO.h"
#endif
#ifdef _SGC
		#include "AsARCfg.h"
		#include "FileIO.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsFsStatus
{	PGS_FILE_ST_OK,
	PGS_FILE_ST_RUNNING,
	PGS_FILE_ST_DISABLED,
	PGS_FILE_ST_INVALID_IDENT,
	PGS_FILE_ST_OPEN_FAIL,
	PGS_FILE_ST_FILE_ERROR,
	PGS_FILE_ST_DEVICE_ERROR
} PgsFsStatus;

typedef struct PgsFsLink
{
	/* VAR_OUTPUT (analog) */
	unsigned long status;
	enum PgsFsStatus device;
	/* VAR (analog) */
	unsigned long i_tmp;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsLink_typ;

typedef struct PgsFsOpen
{
	/* VAR_INPUT (analog) */
	unsigned long DirName;
	unsigned long FileName;
	/* VAR_OUTPUT (analog) */
	enum PgsFsStatus status;
	unsigned long ident;
	unsigned long filelen;
	unsigned long device;
	/* VAR (analog) */
	unsigned long i_tmp;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsOpen_typ;

typedef struct PgsFsReadData
{
	/* VAR_INPUT (analog) */
	unsigned long DirName;
	unsigned long FileName;
	/* VAR_OUTPUT (analog) */
	enum PgsFsStatus status;
	unsigned long dataIdent;
	/* VAR (analog) */
	unsigned long i_tmp;
	unsigned char i_error;
	unsigned char i_step;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsReadData_typ;

typedef struct PgsFsWriteData
{
	/* VAR_INPUT (analog) */
	unsigned long DirName;
	unsigned long FileName;
	unsigned long data;
	unsigned long dataSize;
	/* VAR_OUTPUT (analog) */
	enum PgsFsStatus status;
	/* VAR (analog) */
	unsigned long i_tmp;
	unsigned char i_error;
	unsigned char i_step;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsWriteData_typ;

typedef struct PgsFsGetDataInfo
{
	/* VAR_INPUT (analog) */
	unsigned long dataIdent;
	/* VAR_OUTPUT (analog) */
	enum PgsFsStatus status;
	unsigned long data;
	unsigned long dataSize;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsGetDataInfo_typ;

typedef struct PgsFsCloseData
{
	/* VAR_INPUT (analog) */
	unsigned long dataIdent;
	/* VAR_OUTPUT (analog) */
	enum PgsFsStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsFsCloseData_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsFsLink(struct PgsFsLink* inst);
_BUR_PUBLIC void PgsFsOpen(struct PgsFsOpen* inst);
_BUR_PUBLIC void PgsFsReadData(struct PgsFsReadData* inst);
_BUR_PUBLIC void PgsFsWriteData(struct PgsFsWriteData* inst);
_BUR_PUBLIC void PgsFsGetDataInfo(struct PgsFsGetDataInfo* inst);
_BUR_PUBLIC void PgsFsCloseData(struct PgsFsCloseData* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSFILESYS_ */

