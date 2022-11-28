/* Automation Studio generated header file */
/* Do not edit ! */
/* PgsControl 2.03.3 */

#ifndef _PGSCONTROL_
#define _PGSCONTROL_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _PgsControl_VERSION
#define _PgsControl_VERSION 2.03.3
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "LoopConR.h"
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif
#ifdef _SG4
		#include "LoopConR.h"
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif
#ifdef _SGC
		#include "LoopConR.h"
		#include "brsystem.h"
		#include "AsARCfg.h"
		#include "PgsFileSys.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum PgsAvrModeType
{	PGS_AVR_MD_MANUAL,
	PGS_AVR_MD_AUTO
} PgsAvrModeType;

typedef enum PgsAvrCtrlManualType
{	PGS_AVR_CM_OFF,
	PGS_AVR_CM_IF,
	PGS_AVR_CM_UF,
	PGS_AVR_CM_IM,
	PGS_AVR_CM_OL
} PgsAvrCtrlManualType;

typedef enum PgsAvrCtrlAutoType
{	PGS_AVR_CA_OFF,
	PGS_AVR_CA_UM_0,
	PGS_AVR_CA_QM,
	PGS_AVR_CA_PF,
	PGS_AVR_CA_UM_1
} PgsAvrCtrlAutoType;

typedef enum PgsAvrStatusType
{	PGS_AVR_ST_OFF,
	PGS_AVR_ST_TRIP,
	PGS_AVR_ST_MANUAL,
	PGS_AVR_ST_AUTO,
	PGS_AVR_ST_STARTING,
	PGS_AVR_ST_STOPPING,
	PGS_AVR_ST_UPLOADING,
	PGS_AVR_ST_DOWNLOADING
} PgsAvrStatusType;

typedef enum PgsAvrCurveType
{	PGS_AVR_CV_00,
	PGS_AVR_CV_01,
	PGS_AVR_CV_02
} PgsAvrCurveType;

typedef enum PgsAvrLimiterType
{	PGS_AVR_LNULL,
	PGS_AVR_LUH,
	PGS_AVR_LIFH,
	PGS_AVR_LIFL,
	PGS_AVR_LIFHH,
	PGS_AVR_LIMH,
	PGS_AVR_LPQ
} PgsAvrLimiterType;

typedef enum PgsGovModeType
{	PGS_GOV_MD_DISABLE,
	PGS_GOV_MD_AUTO,
	PGS_GOV_MD_MANUAL
} PgsGovModeType;

typedef enum PgsGovCtrlManualType
{	PGS_GOV_CM_OFF,
	PGS_GOV_CM_POS
} PgsGovCtrlManualType;

typedef enum PgsGovCtrlAutoType
{	PGS_GOV_CA_OFF,
	PGS_GOV_CA_RPM_0,
	PGS_GOV_CA_RPM_1,
	PGS_GOV_CA_HZ_0,
	PGS_GOV_CA_HZ_1,
	PGS_GOV_CA_PWR
} PgsGovCtrlAutoType;

typedef enum PgsGovStatusType
{	PGS_GOV_ST_STOPPED,
	PGS_GOV_ST_TRIP,
	PGS_GOV_ST_MANUAL,
	PGS_GOV_ST_AUTO,
	PGS_GOV_ST_STARTING,
	PGS_GOV_ST_STOPPING,
	PGS_GOV_ST_UPLOADING,
	PGS_GOV_ST_DOWNLOADING
} PgsGovStatusType;

typedef enum PgsPosModeType
{	PGS_POS_MD_DISABLE,
	PGS_POS_MD_AUTO,
	PGS_POS_MD_MANUAL,
	PGS_POS_MD_OUT
} PgsPosModeType;

typedef enum PgsPwrStatusType
{	PGS_PWR_ST_STOPPED,
	PGS_PWR_ST_TRIP,
	PGS_PWR_ST_HZ,
	PGS_PWR_ST_P,
	PGS_PWR_ST_UPLOADING,
	PGS_PWR_ST_DOWNLOADING
} PgsPwrStatusType;

typedef struct PgsCurveParType
{	float in[10];
	float out[10];
} PgsCurveParType;

typedef struct PgsCurvePqParType
{	float p[10];
	float q[10];
} PgsCurvePqParType;

typedef struct PgsBaseType
{	float Sm;
	float Um;
	float Ub;
	float Im;
	float Fm;
	float Rot;
	float Uf;
	float If;
} PgsBaseType;

typedef struct PgsAnalogType
{	float Um;
	float Ub;
	float Im;
	float Uf;
	float If;
	float Fm;
	float Rot;
	float Pm;
	float Qm;
	float Sm;
	float PF;
} PgsAnalogType;

typedef struct PgsPidParType
{	float Kp;
	float Ti;
	float Td;
	float Tf;
	float Kwd;
	float db;
	plcbit Update;
} PgsPidParType;

typedef struct PgsPidType
{	float SetValue;
	float ActValue;
	float Out;
	struct PgsPidParType* parameter;
	struct LCRPID pid;
	struct LCRPIDpara pid_para;
} PgsPidType;

typedef struct PgsRampType
{	float x;
	float y;
	plcbit x_reached;
	plcbit max_limit;
	plcbit min_limit;
	float dy_up;
	float dy_down;
	float y_max;
	float y_min;
	unsigned long _cycle_time;
	float _dy_up;
	float _dy_down;
} PgsRampType;

typedef struct PgsHourMeterPrivType
{	plcbit init;
	float dh;
} PgsHourMeterPrivType;

typedef struct PgsEnergyPrivType
{	plcbit init;
	float dh;
} PgsEnergyPrivType;

typedef struct PgsAvrCmxxParType
{	plcbit Enable;
	float dRefOn;
	float dRefOff;
	struct PgsPidParType PID;
} PgsAvrCmxxParType;

typedef struct PgsAvrManualParType
{	struct PgsAvrCmxxParType CmIf;
	struct PgsAvrCmxxParType CmUf;
	struct PgsAvrCmxxParType CmIm;
	enum PgsAvrCtrlManualType Ctrl;
	plcbit EnableOL;
} PgsAvrManualParType;

typedef struct PgsAvrSoftStartParType
{	float RefUm;
	float dRefOn;
	float dRefOff;
	float Offset;
	float RefUm0;
	float FFTmin;
	float FFTmax;
} PgsAvrSoftStartParType;

typedef struct PgsAvrCa1ParType
{	plcbit Enable;
	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	float Kdp;
	struct PgsPidParType PID;
} PgsAvrCa1ParType;

typedef struct PgsAvrCa2ParType
{	plcbit Enable;
	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	struct PgsPidParType PID;
	float L2max;
	float L2min;
	float Kdp;
	struct PgsPidParType PIDU;
} PgsAvrCa2ParType;

typedef struct PgsAvrAutoParType
{	struct PgsAvrSoftStartParType SoftStart;
	struct PgsAvrCa1ParType CaUm0;
	struct PgsAvrCa1ParType CaUm1;
	struct PgsAvrCa2ParType CaQm;
	struct PgsAvrCa2ParType CaPf;
} PgsAvrAutoParType;

typedef struct PgsAvrLuhParType
{	plcbit Enable;
	float Umin;
	float Un;
	float Fn;
	float Kuh;
	struct PgsPidParType PID;
} PgsAvrLuhParType;

typedef struct PgsAvrLcvParType
{	plcbit Enable;
	float SetPoint;
	enum PgsAvrCurveType Curve;
	float Time;
	struct PgsPidParType PID;
} PgsAvrLcvParType;

typedef struct PgsAvrLmtParType
{	plcbit Enable;
	float SetPoint;
	struct PgsPidParType PID;
} PgsAvrLmtParType;

typedef struct PgsAvrLpqParType
{	plcbit Enable;
	struct PgsCurvePqParType Curve;
	struct PgsPidParType PID;
} PgsAvrLpqParType;

typedef struct PgsAvrLimiterParType
{	struct PgsAvrLuhParType Luh;
	struct PgsAvrLcvParType Lifh;
	struct PgsAvrLmtParType Lifl;
	struct PgsAvrLmtParType Lifhh;
	struct PgsAvrLcvParType Limh;
	struct PgsAvrLpqParType Lpq;
} PgsAvrLimiterParType;

typedef struct PgsAvrProtExcParType
{	float Level1;
	float Time1;
	float Level2;
	float Time2;
} PgsAvrProtExcParType;

typedef struct PgsAvProtParType
{	struct PgsAvrProtExcParType OverExcitation;
	struct PgsAvrProtExcParType UnderExcitation;
} PgsAvProtParType;

typedef struct PgsAvrParType
{	struct PgsAvrManualParType CtrlManual;
	struct PgsAvrAutoParType CtrlAuto;
	struct PgsAvrLimiterParType Limiter;
	struct PgsAvProtParType Protection;
} PgsAvrParType;

typedef struct PgsAvrOldType
{	enum PgsAvrStatusType Status;
	enum PgsAvrCtrlManualType CtrlManual;
	enum PgsAvrCtrlAutoType CtrlAuto;
	plcbit Unload;
	plcbit Online;
	float RefQ;
	float RefPF;
	float fastSetIf;
	float fastSetUf;
	float fastSetIm;
	float fastSetUm;
	float fastSetQ;
	float fastSetPF;
} PgsAvrOldType;

typedef struct PgsAvrCmxxPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
} PgsAvrCmxxPrivType;

typedef struct PgsAvrManualPrivType
{	struct PgsAvrCmxxPrivType CmIf;
	struct PgsAvrCmxxPrivType CmUf;
	struct PgsAvrCmxxPrivType CmIm;
} PgsAvrManualPrivType;

typedef struct PgsAvrSoftStartPrivType
{	struct PgsRampType ramp;
	float ff_time;
	plcbit ff_enable;
} PgsAvrSoftStartPrivType;

typedef struct PgsAvrCa1PrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
} PgsAvrCa1PrivType;

typedef struct PgsAvrCa2PrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
	struct PgsPidType pidu;
} PgsAvrCa2PrivType;

typedef struct PgsAvrAutoPrivType
{	float OutOffline;
	struct PgsAvrSoftStartPrivType SoftStart;
	struct PgsAvrCa1PrivType CaUm0;
	struct PgsAvrCa1PrivType CaUm1;
	struct PgsAvrCa2PrivType CaQm;
	struct PgsAvrCa2PrivType CaPf;
} PgsAvrAutoPrivType;

typedef struct PgsAvrProtExcPrivType
{	float time1;
	float time2;
} PgsAvrProtExcPrivType;

typedef struct PgsAvrProtPrivType
{	struct PgsAvrProtExcPrivType OverExcitation;
	struct PgsAvrProtExcPrivType UnderExcitation;
	float fbk_time;
	plcbit ResetAlarm;
} PgsAvrProtPrivType;

typedef struct PgsAvrPrivType
{	plcbit init;
	unsigned long cycle_time;
	float cycle_dt;
	struct PgsAvrOldType old;
	struct PgsAvrManualPrivType CtrlManual;
	struct PgsAvrAutoPrivType CtrlAuto;
	struct PgsAvrProtPrivType Protection;
	float Lmax;
	float Lmin;
	enum PgsAvrLimiterType LmaxActive;
	enum PgsAvrLimiterType LminActive;
	struct PgsPidType pid_luh;
	struct PgsPidType pid_lifh;
	struct PgsPidType pid_lifl;
	struct PgsPidType pid_lifhh;
	struct PgsPidType pid_limhh;
	struct PgsPidType pid_limhl;
	struct PgsPidType pid_lpq;
	float lifh_time;
	float limhh_time;
	float limhl_time;
} PgsAvrPrivType;

typedef struct PgsAvrDigInputsType
{	plcbit Start;
	plcbit Stop;
	plcbit Auto;
	plcbit Manual;
	plcbit Reset;
	plcbit Unload;
	plcbit Online;
	plcbit RefUp;
	plcbit RefDown;
} PgsAvrDigInputsType;

typedef struct PgsAvrSetPointsType
{	float SetOut;
	float SetIf;
	float fastSetIf;
	float SetUf;
	float fastSetUf;
	float SetIm;
	float fastSetIm;
	float SetUm;
	float fastSetUm;
	float SetQ;
	float fastSetQ;
	float SetPF;
	float fastSetPF;
} PgsAvrSetPointsType;

typedef struct PgsAvrDigOutputsStatusType
{	plcbit Enable;
	plcbit VoltageOK;
	plcbit FieldFlashOn;
	plcbit Unloaded;
} PgsAvrDigOutputsStatusType;

typedef struct PgsAvrDigOutputsAlarmType
{	plcbit LimiterMax;
	plcbit LimiterMin;
	plcbit LimiterLuvh;
	plcbit LimiterLifh;
	plcbit LimiterLifl;
	plcbit LimiterLifhh;
	plcbit LimiterLimh;
	plcbit LimiterLpq;
	plcbit LimiterL2max;
	plcbit LimiterL2min;
	plcbit OverExcitation;
	plcbit UnderExcitation;
} PgsAvrDigOutputsAlarmType;

typedef struct PgsAvrDigOutputsTripType
{	plcbit Trip;
	plcbit MeterIdent;
	plcbit CtrlDisabled;
	plcbit FieldFlashTimeout;
	plcbit Feedback;
	plcbit OverExcitation;
	plcbit UnderExcitation;
} PgsAvrDigOutputsTripType;

typedef struct PgsAvrDigOutputsType
{	struct PgsAvrDigOutputsStatusType Status;
	struct PgsAvrDigOutputsAlarmType Alarm;
	struct PgsAvrDigOutputsTripType Trip;
} PgsAvrDigOutputsType;

typedef struct PgsGovCmParType
{	plcbit Enable;
	float dRefOn;
	float dRefOff;
	float RefMax;
	float RefMin;
	plcbit Update;
} PgsGovCmParType;

typedef struct PgsGovManualParType
{	struct PgsGovCmParType CmPos;
} PgsGovManualParType;

typedef struct PgsGovSoftStartParType
{	float Pos0;
	float dPos;
	float Rpm0;
	float Rpm1;
	float Rpm2;
	float RpmBrake;
	float dRpmOn;
	float dRpmOff;
	float TRpm0;
	float TRpm1;
	float TRpm2;
} PgsGovSoftStartParType;

typedef struct PgsGovCaRpmParType
{	plcbit Enable;
	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	float Kdp;
	float PosMax;
	struct PgsPidParType PID;
} PgsGovCaRpmParType;

typedef struct PgsGovCaHzParType
{	plcbit Enable;
	float UmOn;
	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	float Kdp;
	float PosMax;
	struct PgsPidParType PID;
} PgsGovCaHzParType;

typedef struct PgsGovCaPwrParType
{	plcbit Enable;
	float UmOn;
	float Ref;
	float RefMax;
	float RefMin;
	float RefOpen;
	float dRefOn;
	float dRefOff;
	struct PgsPidParType PID;
	float L2max;
	float L2min;
	float Kdp;
	float PosMax;
	struct PgsPidParType PIDHz;
} PgsGovCaPwrParType;

typedef struct PgsGovAutoParType
{	struct PgsGovSoftStartParType SoftStart;
	struct PgsGovCaRpmParType CaRpm0;
	struct PgsGovCaRpmParType CaRpm1;
	struct PgsGovCaHzParType CaHz0;
	struct PgsGovCaHzParType CaHz1;
	struct PgsGovCaPwrParType CaPwr;
} PgsGovAutoParType;

typedef struct PgsGovProtRotParType
{	float Level1;
	float Time1;
	float Level2;
	float Time2;
} PgsGovProtRotParType;

typedef struct PgsGovProtCreepParType
{	plcbit Enable;
	float TEnable;
	float Rpm;
	float Time;
} PgsGovProtCreepParType;

typedef struct PgsGovProtFeedbackParType
{	plcbit Enable;
	float Pos;
	float Rpm;
	float Time;
} PgsGovProtFeedbackParType;

typedef struct PgsGovProtParType
{	struct PgsGovProtRotParType OverRotation;
	struct PgsGovProtCreepParType Creep;
	struct PgsGovProtFeedbackParType Feedback;
} PgsGovProtParType;

typedef struct PgsGovParType
{	struct PgsGovManualParType CtrlManual;
	struct PgsGovAutoParType CtrlAuto;
	struct PgsGovProtParType Protection;
} PgsGovParType;

typedef struct PgsGovOldType
{	enum PgsGovModeType Mode;
	enum PgsGovCtrlManualType CtrlManual;
	enum PgsGovCtrlAutoType CtrlAuto;
	enum PgsGovStatusType Status;
	plcbit Unload;
	plcbit Online;
	float fastSetPos;
	float fastSetRpm;
	float fastSetHz;
	float fastSetPwr;
} PgsGovOldType;

typedef struct PgsGovSoftStartPrivType
{	struct PgsRampType ramp_rpm;
	struct PgsRampType ramp_pos;
	float time0;
	float time1;
	float time2;
} PgsGovSoftStartPrivType;

typedef struct PgsGovCaRpmPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
	plcbit reset_pid;
} PgsGovCaRpmPrivType;

typedef struct PgsGovCaHzPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
	plcbit reset_pid;
} PgsGovCaHzPrivType;

typedef struct PgsGovCaPwrPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
	struct PgsPidType pidhz;
} PgsGovCaPwrPrivType;

typedef struct PgsGovAutoPrivType
{	float RotOffline;
	float OutOffline;
	struct PgsGovSoftStartPrivType SoftStart;
	struct PgsGovCaRpmPrivType CaRpm0;
	struct PgsGovCaRpmPrivType CaRpm1;
	struct PgsGovCaHzPrivType CaHz0;
	struct PgsGovCaHzPrivType CaHz1;
	struct PgsGovCaPwrPrivType CaPwr;
} PgsGovAutoPrivType;

typedef struct PgsGovManualPrivType
{	struct PgsRampType ramp;
} PgsGovManualPrivType;

typedef struct PgsGovProtRotPrivType
{	float time1;
	float time2;
} PgsGovProtRotPrivType;

typedef struct PgsGovProtCreepPrivType
{	float time1;
	float time2;
} PgsGovProtCreepPrivType;

typedef struct PgsGovProtFeedbackPrivType
{	float time;
} PgsGovProtFeedbackPrivType;

typedef struct PgsGovProtPrivType
{	struct PgsGovProtRotPrivType OverRotation;
	struct PgsGovProtCreepPrivType Creep;
	struct PgsGovProtFeedbackPrivType Feedback;
	plcbit ResetAlarm;
} PgsGovProtPrivType;

typedef struct PgsGovPrivType
{	plcbit init;
	unsigned long cycle_time;
	float cycle_dt;
	struct PgsGovOldType old;
	struct PgsGovAutoPrivType CtrlAuto;
	struct PgsGovManualPrivType CtrlManual;
	struct PgsGovProtPrivType Protection;
	float time_unload;
} PgsGovPrivType;

typedef struct PgsGovDigInputsType
{	plcbit Start;
	plcbit Stop;
	plcbit Auto;
	plcbit Manual;
	plcbit Reset;
	plcbit Unload;
	plcbit Online;
	plcbit RefUp;
	plcbit RefDown;
} PgsGovDigInputsType;

typedef struct PgsGovSetPointsType
{	float SetPos;
	float fastSetPos;
	float SetRpm;
	float fastSetRpm;
	float SetHz;
	float fastSetHz;
	float SetPwr;
	float fastSetPwr;
} PgsGovSetPointsType;

typedef struct PgsGovDigOutpusStatusType
{	plcbit Enable;
	plcbit RotationOk;
	plcbit Unloaded;
	plcbit Stopped;
	plcbit RotationBrake;
} PgsGovDigOutpusStatusType;

typedef struct PgsGovDigOutpusAlarmType
{	plcbit LimiterL2max;
	plcbit LimiterL2min;
	plcbit OverRotation;
	plcbit Feedback;
} PgsGovDigOutpusAlarmType;

typedef struct PgsGovDigOutpusTripType
{	plcbit Trip;
	plcbit MeterIdent;
	plcbit CtrlDisabled;
	plcbit Start1Fault;
	plcbit Start2Fault;
	plcbit StopFault;
	plcbit OverRotation;
	plcbit Creep;
	plcbit Feedback;
} PgsGovDigOutpusTripType;

typedef struct PgsGovDigOutpusType
{	struct PgsGovDigOutpusStatusType Status;
	struct PgsGovDigOutpusAlarmType Alarm;
	struct PgsGovDigOutpusTripType Trip;
} PgsGovDigOutpusType;

typedef struct PgsPosRampParType
{	float dSp0;
	float SetPoint;
	float dSp1;
} PgsPosRampParType;

typedef struct PgsPosHccParType
{	float Kup;
	float Kdown;
	float dbHigh;
	float dbLow;
} PgsPosHccParType;

typedef struct PgsPosProtParType
{	float ePos;
	float Time;
} PgsPosProtParType;

typedef struct PgsPosParType
{	plcbit Enable;
	float Base;
	float DeadBand;
	struct PgsPosRampParType RampUp;
	struct PgsPosRampParType RampDown;
	struct PgsPosHccParType HCC;
	struct PgsPosProtParType Alarm;
	struct PgsPosProtParType Trip;
	struct PgsPidParType PID;
} PgsPosParType;

typedef struct PgsPosPrivType
{	plcbit init;
	float cycle_dt;
	enum PgsPosModeType oldMode;
	float oldfastSetPoint;
	plcbit oldEnable;
	struct PgsPidType pid;
	struct PgsRampType ramp;
	float time_alarm;
	float time_trip;
} PgsPosPrivType;

typedef struct PgsPosSetPointType
{	float SetPoint;
	float fastSetPoint;
	float SetOut;
} PgsPosSetPointType;

typedef struct PgsPwrChzParType
{	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	float Offset;
	float Min;
	float Max;
	struct PgsPidParType PID;
} PgsPwrChzParType;

typedef struct PgsPwrCpParType
{	float Ref;
	float RefMax;
	float RefMin;
	float dRefOn;
	float dRefOff;
	struct PgsPidParType PID;
	float Offset;
	float Min;
	float Max;
} PgsPwrCpParType;

typedef struct PgsPwrParType
{	struct PgsPwrChzParType CtrlHz;
	struct PgsPwrCpParType CtrlP;
} PgsPwrParType;

typedef struct PgsPwrOldType
{	enum PgsPwrStatusType Status;
	plcbit Unload;
	plcbit Online;
	float fastSetHz;
	float fastSetP;
} PgsPwrOldType;

typedef struct PgsPwrChzPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
} PgsPwrChzPrivType;

typedef struct PgsPwrCpPrivType
{	struct PgsRampType ramp;
	struct PgsPidType pid;
} PgsPwrCpPrivType;

typedef struct PgsPwrPrivType
{	plcbit init;
	unsigned long cycle_time;
	float cycle_dt;
	struct PgsPwrOldType old;
	struct PgsPwrChzPrivType CtrlHz;
	struct PgsPwrCpPrivType CtrlP;
} PgsPwrPrivType;

typedef struct PgsPwrDigInputsType
{	plcbit Start;
	plcbit Stop;
	plcbit Reset;
	plcbit Unload;
	plcbit Online;
	plcbit RefUp;
	plcbit RefDown;
} PgsPwrDigInputsType;

typedef struct PgsPwrSetPointsType
{	float SetHz;
	float fastSetHz;
	float SetP;
	float fastSetP;
} PgsPwrSetPointsType;

typedef struct PgsPwrDigOutpusStatusType
{	plcbit Enable;
	plcbit Unloaded;
} PgsPwrDigOutpusStatusType;

typedef struct PgsPwrDigOutpusAlarmType
{	plcbit LimiterMax;
	plcbit LimiterMin;
} PgsPwrDigOutpusAlarmType;

typedef struct PgsPwrDigOutpusTripType
{	plcbit Trip;
	plcbit MeterIdent;
	plcbit CtrlDisabled;
} PgsPwrDigOutpusTripType;

typedef struct PgsPwrDigOutpusType
{	struct PgsPwrDigOutpusStatusType Status;
	struct PgsPwrDigOutpusAlarmType Alarm;
	struct PgsPwrDigOutpusTripType Trip;
} PgsPwrDigOutpusType;

typedef struct PgsLicense
{
	/* VAR_OUTPUT (digital) */
	plcbit Valid;
} PgsLicense_typ;

typedef struct PgsMeter
{
	/* VAR_INPUT (analog) */
	struct PgsBaseType Base;
	struct PgsAnalogType In;
	/* VAR_OUTPUT (analog) */
	unsigned long Ident;
	struct PgsAnalogType Out;
} PgsMeter_typ;

typedef struct PgsAVR
{
	/* VAR_INPUT (analog) */
	struct PgsAvrParType Parameter;
	unsigned long MeterIdent;
	struct PgsAvrDigInputsType DigInputs;
	struct PgsAvrSetPointsType SetPoints;
	enum PgsAvrCtrlAutoType CtrlOnline;
	/* VAR_OUTPUT (analog) */
	float Out;
	enum PgsAvrModeType Mode;
	enum PgsAvrCtrlManualType CtrlManual;
	enum PgsAvrCtrlAutoType CtrlAuto;
	enum PgsAvrStatusType Status;
	struct PgsAvrDigOutputsType DigOutputs;
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsAvrPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Update;
} PgsAVR_typ;

typedef struct PgsGOV
{
	/* VAR_INPUT (analog) */
	struct PgsGovParType Parameter;
	unsigned long MeterIdent;
	unsigned long PosIdent;
	struct PgsGovDigInputsType DigInputs;
	struct PgsGovSetPointsType SetPoints;
	float PosIn;
	enum PgsGovCtrlAutoType CtrlOnline;
	/* VAR_OUTPUT (analog) */
	float Out;
	enum PgsGovModeType Mode;
	enum PgsGovCtrlManualType CtrlManual;
	enum PgsGovCtrlAutoType CtrlAuto;
	enum PgsGovStatusType Status;
	struct PgsGovDigOutpusType DigOutputs;
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsGovPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Update;
} PgsGOV_typ;

typedef struct PgsPWR
{
	/* VAR_INPUT (analog) */
	struct PgsPwrParType Parameter;
	unsigned long MeterIdent;
	struct PgsPwrDigInputsType DigInputs;
	struct PgsPwrSetPointsType SetPoints;
	/* VAR_OUTPUT (analog) */
	float Out;
	enum PgsPwrStatusType Status;
	struct PgsPwrDigOutpusType DigOutputs;
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsPwrPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Update;
} PgsPWR_typ;

typedef struct PgsPOS
{
	/* VAR_INPUT (analog) */
	struct PgsPosParType Parameter;
	enum PgsPosModeType Mode;
	float PosIn;
	struct PgsPosSetPointType SetPoints;
	float In;
	unsigned long PosIdent;
	/* VAR_OUTPUT (analog) */
	float PosOut;
	float Out;
	float invOut;
	unsigned long Ident;
	/* VAR (analog) */
	struct PgsPosPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit Update;
	plcbit Reset;
	plcbit Auto;
	/* VAR_OUTPUT (digital) */
	plcbit Alarm;
	plcbit Trip;
} PgsPOS_typ;

typedef struct PgsHydCyl
{
	/* VAR_INPUT (analog) */
	float In;
	/* VAR_OUTPUT (analog) */
	float Out;
	/* VAR (analog) */
	float dUpMax;
	float dDownMax;
	float dbH;
	float dbL;
	struct PgsRampType ramp;
	/* VAR (digital) */
	plcbit init;
} PgsHydCyl_typ;

typedef struct PgsCurve
{
	/* VAR_INPUT (analog) */
	struct PgsCurveParType Curve;
	float In;
	/* VAR_OUTPUT (analog) */
	float Out;
	unsigned long Ident;
} PgsCurve_typ;

typedef struct PgsRPM
{
	/* VAR_INPUT (analog) */
	signed long MasterTime;
	signed long MasterCount;
	signed short ppr;
	/* VAR_OUTPUT (analog) */
	float Output;
	float dOut;
	/* VAR (analog) */
	signed long LastTime;
	signed long LastCount;
	float cycle_dt;
	float timer;
} PgsRPM_typ;

typedef struct PgsHourMeter
{
	/* VAR_OUTPUT (analog) */
	double hours;
	/* VAR (analog) */
	struct PgsHourMeterPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit reset;
} PgsHourMeter_typ;

typedef struct PgsEnergy
{
	/* VAR_INPUT (analog) */
	float power;
	/* VAR_OUTPUT (analog) */
	double posEnergy;
	double negEnergy;
	/* VAR (analog) */
	struct PgsEnergyPrivType priv;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit reset;
} PgsEnergy_typ;

typedef struct PgsRamp
{
	/* VAR_INPUT (analog) */
	float dy;
	float min;
	float max;
	float x;
	/* VAR_OUTPUT (analog) */
	float y;
	/* VAR (analog) */
	struct PgsRampType priv;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit reset;
	/* VAR_OUTPUT (digital) */
	plcbit reached;
} PgsRamp_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void PgsLicense(struct PgsLicense* inst);
_BUR_PUBLIC void PgsMeter(struct PgsMeter* inst);
_BUR_PUBLIC void PgsAVR(struct PgsAVR* inst);
_BUR_PUBLIC void PgsGOV(struct PgsGOV* inst);
_BUR_PUBLIC void PgsPWR(struct PgsPWR* inst);
_BUR_PUBLIC void PgsPOS(struct PgsPOS* inst);
_BUR_PUBLIC void PgsHydCyl(struct PgsHydCyl* inst);
_BUR_PUBLIC void PgsCurve(struct PgsCurve* inst);
_BUR_PUBLIC void PgsRPM(struct PgsRPM* inst);
_BUR_PUBLIC void PgsHourMeter(struct PgsHourMeter* inst);
_BUR_PUBLIC void PgsEnergy(struct PgsEnergy* inst);
_BUR_PUBLIC void PgsRamp(struct PgsRamp* inst);
_BUR_PUBLIC float PgsConvertPF(float input);
_BUR_PUBLIC plcbit PgsHourMeter_set_hours(struct PgsHourMeter* hour_meter, double hours);
_BUR_PUBLIC plcbit PgsEnergy_set_energy(struct PgsEnergy* energy, double pos, double neg);


#ifdef __cplusplus
};
#endif
#endif /* _PGSCONTROL_ */

