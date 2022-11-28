/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsCfgNet 2.02.0 */

#ifndef _PGSCFGNET_
#define _PGSCFGNET_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsCfgNet_VERSION
#define _PgsCfgNet_VERSION 2.02.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsARCfg.h"
		#include "AsBrStr.h"
		#include "PgsTag.h"
#endif
#ifdef _SG4
		#include "AsARCfg.h"
		#include "AsBrStr.h"
		#include "PgsTag.h"
#endif
#ifdef _SGC
		#include "AsARCfg.h"
		#include "AsBrStr.h"
		#include "PgsTag.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsCfgNetBaudrate
{	PGS_CFG_NET_BAUDRATE_AUTO = 0,
	PGS_CFG_NET_BAUDRATE_10HD = 10,
	PGS_CFG_NET_BAUDRATE_10FD = 11,
	PGS_CFG_NET_BAUDRATE_100HD = 100,
	PGS_CFG_NET_BAUDRATE_100FD = 101
} PgsCfgNetBaudrate;

typedef enum PgsCfgNetMode
{	PGS_CFG_NET_MODE_MANUAL = 0,
	PGS_CFG_NET_MODE_DHCP = 1
} PgsCfgNetMode;

typedef enum PgsCfgNetTimeZone
{	UTC12N = 5,
	UTC11N = 10,
	UTC10N = 15,
	UTC09N = 20,
	UTC08N = 25,
	UTC07N = 30,
	UTC06N = 55,
	UTC05N = 60,
	UTC04N = 80,
	UTC03N = 100,
	UTC02N = 115,
	UTC01N = 125,
	UTC00 = 135,
	UTC01P = 155,
	UTC02P = 180,
	UTC03P = 195,
	UTC04P = 220,
	UTC05P = 240,
	UTC06P = 260,
	UTC07P = 285,
	UTC08P = 295,
	UTC09P = 320,
	UTC10P = 340,
	UTC11P = 365,
	UTC12P = 375
} PgsCfgNetTimeZone;

typedef struct PgsCfgNetIf2Par
{	plcstring HostName[81];
	enum PgsCfgNetBaudrate baudrate;
	enum PgsCfgNetMode mode;
	plcstring gateway[16];
	plcstring ip[16];
	plcstring mask[16];
	unsigned char ina;
} PgsCfgNetIf2Par;

typedef struct PgsCfgNetIf3Par
{	enum PgsCfgNetMode mode;
	plcstring ip[16];
	plcstring mask[16];
	unsigned char ina;
} PgsCfgNetIf3Par;

typedef struct PgsCfgNetNtpPar
{	enum PgsCfgNetTimeZone timezone;
	plcstring serverAddr1[81];
	plcstring serverAddr2[81];
	plcstring serverAddr3[81];
	plcstring serverAddr4[81];
} PgsCfgNetNtpPar;

typedef struct PgsCfgNetPar
{	struct PgsCfgNetIf2Par if2;
	struct PgsCfgNetIf3Par if3;
	struct PgsCfgNetNtpPar ntp;
} PgsCfgNetPar;

typedef struct PgsCfgNet
{
	/* VAR_INPUT (analog) */
	struct PgsCfgNetPar parameter;
	/* VAR (analog) */
	unsigned long i_tmp;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit get;
	plcbit set;
	/* VAR_OUTPUT (digital) */
	plcbit NtpRunning;
	plcbit NtpSync;
} PgsCfgNet_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsCfgNet(struct PgsCfgNet* inst);
_BUR_PUBLIC plcbit PgsCfgNetRegister(unsigned long tagIdent, struct PgsCfgNet* cfgNet);


#ifdef __cplusplus
};
#endif
#endif /* _PGSCFGNET_ */

