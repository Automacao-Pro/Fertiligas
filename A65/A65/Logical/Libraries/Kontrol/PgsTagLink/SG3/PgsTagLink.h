/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsTagLink 2.00.0 */

#ifndef _PGSTAGLINK_
#define _PGSTAGLINK_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsTagLink_VERSION
#define _PgsTagLink_VERSION 2.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "PgsControl.h"
		#include "PgsTag.h"
#endif
#ifdef _SG4
		#include "PgsControl.h"
		#include "PgsTag.h"
#endif
#ifdef _SGC
		#include "PgsControl.h"
		#include "PgsTag.h"
#endif





/* Prototyping of functions and function blocks */
_BUR_PUBLIC plcbit PgsTagRegisterAVR(unsigned long tagIdent, unsigned long name, struct PgsAVR* avr);
_BUR_PUBLIC plcbit PgsTagRegisterGOV(unsigned long tagIdent, unsigned long name, struct PgsGOV* gov);
_BUR_PUBLIC plcbit PgsTagRegisterPOS(unsigned long tagIdent, unsigned long name, struct PgsPOS* pos);
_BUR_PUBLIC plcbit PgsTagRegisterCurve(unsigned long tagIdent, unsigned long name, struct PgsCurve* curve);


#ifdef __cplusplus
};
#endif
#endif /* _PGSTAGLINK_ */

