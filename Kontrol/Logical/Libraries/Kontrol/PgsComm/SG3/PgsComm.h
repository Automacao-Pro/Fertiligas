/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsComm 1.10.1 */

#ifndef _PGSCOMM_
#define _PGSCOMM_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsComm_VERSION
#define _PgsComm_VERSION 1.10.1
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsTCP.h"
		#include "PgsControl.h"
#endif
#ifdef _SG4
		#include "AsTCP.h"
		#include "PgsControl.h"
#endif
#ifdef _SGC
		#include "AsTCP.h"
		#include "PgsControl.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsMbStatus
{	PGS_MB_ST_OK,
	PGS_MB_ST_RUNNING,
	PGS_MB_ST_DISABLED,
	PGS_MB_ST_INVALID_IDENT,
	PGS_MB_ST_OPENING,
	PGS_MB_ST_CLOSING,
	PGS_MB_ST_CLOSED
} PgsMbStatus;

typedef enum PgsMbBlkType
{	PGS_MB_BLK_DISCRETE,
	PGS_MB_BLK_COIL,
	PGS_MB_BLK_HOLDING,
	PGS_MB_BLK_INPUT
} PgsMbBlkType;

typedef struct PgsMbDataOpen
{
	/* VAR_INPUT (analog) */
	unsigned char Devices;
	/* VAR_OUTPUT (analog) */
	unsigned long dtaIdent;
} PgsMbDataOpen_typ;

typedef struct PgsMbDataClose
{
	/* VAR_INPUT (analog) */
	unsigned long dtaIdent;
	/* VAR_OUTPUT (analog) */
	unsigned char Status;
} PgsMbDataClose_typ;

typedef struct PgsMbDevice
{
	/* VAR_INPUT (analog) */
	unsigned long dtaIdent;
	unsigned char id;
	unsigned char HoldingBlocks;
	unsigned char InputBlocks;
	unsigned char CoilBlocks;
	unsigned char DiscreteBlocks;
	unsigned char Links;
	/* VAR_OUTPUT (analog) */
	unsigned long devIdent;
	unsigned char Status;
} PgsMbDevice_typ;

typedef struct PgsMbSetBlock
{
	/* VAR_INPUT (analog) */
	unsigned long devIdent;
	enum PgsMbBlkType BlockType;
	unsigned short Address;
	unsigned long pBlock;
	unsigned long blockLen;
	/* VAR_OUTPUT (analog) */
	unsigned char Status;
} PgsMbSetBlock_typ;

typedef struct PgsMbSetLink
{
	/* VAR_INPUT (analog) */
	unsigned long devIdent;
	unsigned long lnkIdent;
	/* VAR_OUTPUT (analog) */
	unsigned char Status;
} PgsMbSetLink_typ;

typedef struct PgsMbSetInfo
{
	/* VAR_INPUT (analog) */
	unsigned long devIdent;
	unsigned char SlaveId;
	unsigned long pInfo;
	unsigned long infoLen;
	/* VAR_OUTPUT (analog) */
	unsigned char Status;
	/* VAR_INPUT (digital) */
	plcbit isRunning;
} PgsMbSetInfo_typ;

typedef struct PgsMbLinkAvrOpen
{
	/* VAR_INPUT (analog) */
	unsigned long AvrIdent;
	unsigned short CoilAddress;
	unsigned short HoldingAddress;
	unsigned short InputAddress;
	float GainUm;
	float GainIm;
	float GainSm;
	float GainUf;
	float GainIf;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR_INPUT (digital) */
	plcbit Float;
	plcbit ModiconFormat;
} PgsMbLinkAvrOpen_typ;

typedef struct PgsMbLinkGovOpen
{
	/* VAR_INPUT (analog) */
	unsigned long GovIdent;
	unsigned short CoilAddress;
	unsigned short HoldingAddress;
	unsigned short InputAddress;
	float GainUm;
	float GainSm;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR_INPUT (digital) */
	plcbit Float;
	plcbit ModiconFormat;
} PgsMbLinkGovOpen_typ;

typedef struct PgsMbLinkPosOpen
{
	/* VAR_INPUT (analog) */
	unsigned long PosIdent;
	unsigned short CoilAddress;
	unsigned short HoldingAddress;
	unsigned short InputAddress;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR_INPUT (digital) */
	plcbit Float;
	plcbit ModiconFormat;
} PgsMbLinkPosOpen_typ;

typedef struct PgsMbLinkCurveOpen
{
	/* VAR_INPUT (analog) */
	unsigned long CurveIdent;
	unsigned short HoldingAddress;
	unsigned short InputAddress;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR_INPUT (digital) */
	plcbit Float;
	plcbit ModiconFormat;
} PgsMbLinkCurveOpen_typ;

typedef struct PgsMbLinkRealOpen
{
	/* VAR_INPUT (analog) */
	unsigned short Address;
	unsigned long pBlock;
	unsigned long blockLen;
	float Gain;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	/* VAR_INPUT (digital) */
	plcbit Holding;
	plcbit Float;
	plcbit ModiconFormat;
	plcbit NewValue;
} PgsMbLinkRealOpen_typ;

typedef struct PgsMbLinkClose
{
	/* VAR_INPUT (analog) */
	unsigned long lnkIdent;
	/* VAR_OUTPUT (analog) */
	unsigned char Status;
} PgsMbLinkClose_typ;

typedef struct PgsMbTcpOpen
{
	/* VAR_INPUT (analog) */
	unsigned long dtaIdent;
	unsigned short port;
	/* VAR_OUTPUT (analog) */
	unsigned long ident;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsMbTcpOpen_typ;

typedef struct PgsMbTcpUpdate
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	float timeout;
	/* VAR_OUTPUT (analog) */
	unsigned long clients;
	unsigned long selected;
	plcstring ip[16];
	enum PgsMbStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit reset;
	plcbit next;
	plcbit close;
} PgsMbTcpUpdate_typ;

typedef struct PgsMbTcpClose
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	/* VAR_OUTPUT (analog) */
	enum PgsMbStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsMbTcpClose_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsMbDataOpen(struct PgsMbDataOpen* inst);
_BUR_PUBLIC void PgsMbDataClose(struct PgsMbDataClose* inst);
_BUR_PUBLIC void PgsMbDevice(struct PgsMbDevice* inst);
_BUR_PUBLIC void PgsMbSetBlock(struct PgsMbSetBlock* inst);
_BUR_PUBLIC void PgsMbSetLink(struct PgsMbSetLink* inst);
_BUR_PUBLIC void PgsMbSetInfo(struct PgsMbSetInfo* inst);
_BUR_PUBLIC void PgsMbLinkAvrOpen(struct PgsMbLinkAvrOpen* inst);
_BUR_PUBLIC void PgsMbLinkGovOpen(struct PgsMbLinkGovOpen* inst);
_BUR_PUBLIC void PgsMbLinkPosOpen(struct PgsMbLinkPosOpen* inst);
_BUR_PUBLIC void PgsMbLinkCurveOpen(struct PgsMbLinkCurveOpen* inst);
_BUR_PUBLIC void PgsMbLinkRealOpen(struct PgsMbLinkRealOpen* inst);
_BUR_PUBLIC void PgsMbLinkClose(struct PgsMbLinkClose* inst);
_BUR_PUBLIC void PgsMbTcpOpen(struct PgsMbTcpOpen* inst);
_BUR_PUBLIC void PgsMbTcpUpdate(struct PgsMbTcpUpdate* inst);
_BUR_PUBLIC void PgsMbTcpClose(struct PgsMbTcpClose* inst);


#ifdef __cplusplus
};
#endif
#endif /* _PGSCOMM_ */

