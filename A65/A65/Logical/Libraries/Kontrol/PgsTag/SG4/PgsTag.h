/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsTag 2.02.0 */

#ifndef _PGSTAG_
#define _PGSTAG_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsTag_VERSION
#define _PgsTag_VERSION 2.02.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum PgsTagVarType
{	PGS_TAG_VAR_INVALID,
	PGS_TAG_VAR_BOOL,
	PGS_TAG_VAR_SINT,
	PGS_TAG_VAR_INT,
	PGS_TAG_VAR_DINT,
	PGS_TAG_VAR_LINT,
	PGS_TAG_VAR_USINT,
	PGS_TAG_VAR_UINT,
	PGS_TAG_VAR_UDINT,
	PGS_TAG_VAR_ULINT,
	PGS_TAG_VAR_REAL,
	PGS_TAG_VAR_LREAL
} PgsTagVarType;

typedef enum PgsTagStatus
{	PGS_TAG_ST_OK,
	PGS_TAG_ST_RUNNING,
	PGS_TAG_ST_DISABLED,
	PGS_TAG_ST_INVALID_IDENT,
	PGS_TAG_ST_READ_ERROR,
	PGS_TAG_ST_WRITE_ERROR
} PgsTagStatus;

typedef struct PgsTagVarInfo
{	enum PgsTagVarType type;
	unsigned long var;
	unsigned char bytes;
} PgsTagVarInfo;

typedef struct PgsTagOpen
{
	/* VAR_OUTPUT (analog) */
	enum PgsTagStatus status;
	unsigned long ident;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsTagOpen_typ;

typedef struct PgsTagClose
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	/* VAR_OUTPUT (analog) */
	enum PgsTagStatus status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} PgsTagClose_typ;

typedef struct PgsTagUpdate
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	unsigned long FileName;
	/* VAR_OUTPUT (analog) */
	enum PgsTagStatus status;
	/* VAR (analog) */
	unsigned long i_tmp;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit read;
	plcbit write;
} PgsTagUpdate_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsTagOpen(struct PgsTagOpen* inst);
_BUR_PUBLIC void PgsTagClose(struct PgsTagClose* inst);
_BUR_PUBLIC void PgsTagUpdate(struct PgsTagUpdate* inst);
_BUR_PUBLIC plcbit PgsTagStartNode(unsigned long ident, unsigned long node);
_BUR_PUBLIC plcbit PgsTagEnterNode(unsigned long ident, unsigned long node);
_BUR_PUBLIC plcbit PgsTagEndNode(unsigned long ident);
_BUR_PUBLIC plcbit PgsTagRegisterBOOL(unsigned long ident, plcbit save, unsigned long tag, plcbit* value);
_BUR_PUBLIC plcbit PgsTagRegisterSINT(unsigned long ident, plcbit save, unsigned long tag, signed char* value);
_BUR_PUBLIC plcbit PgsTagRegisterINT(unsigned long ident, plcbit save, unsigned long tag, signed short* value);
_BUR_PUBLIC plcbit PgsTagRegisterDINT(unsigned long ident, plcbit save, unsigned long tag, signed long* value);
_BUR_PUBLIC plcbit PgsTagRegisterUSINT(unsigned long ident, plcbit save, unsigned long tag, unsigned char* value);
_BUR_PUBLIC plcbit PgsTagRegisterUINT(unsigned long ident, plcbit save, unsigned long tag, unsigned short* value);
_BUR_PUBLIC plcbit PgsTagRegisterUDINT(unsigned long ident, plcbit save, unsigned long tag, unsigned long* value);
_BUR_PUBLIC plcbit PgsTagRegisterREAL(unsigned long ident, plcbit save, unsigned long tag, float* value);
_BUR_PUBLIC plcbit PgsTagRegisterLREAL(unsigned long ident, plcbit save, unsigned long tag, double* value);
_BUR_PUBLIC plcbit PgsTagRegisterENUM(unsigned long ident, plcbit save, unsigned long tag, unsigned long value);
_BUR_PUBLIC plcbit PgsTagSetInfo(unsigned long ident, unsigned long tag, unsigned long info);
_BUR_PUBLIC plcbit PgsTagValid(unsigned long ident);
_BUR_PUBLIC plcbit PgsTagGetVar(unsigned long ident, unsigned long tag, unsigned long var_info);


#ifdef __cplusplus
};
#endif
#endif /* _PGSTAG_ */

