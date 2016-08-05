.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_ACTIVE_MD:Ljava/lang/String; = "ril.active.md"

.field public static final PROPERTY_BASEBAND_CAPABILITY:Ljava/lang/String; = "gsm.baseband.capability"

.field public static final PROPERTY_BASEBAND_CAPABILITY_MD2:Ljava/lang/String; = "gsm.baseband.capability.md2"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_BASEBAND_VERSION_2:Ljava/lang/String; = "gsm.version.baseband.2"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "persist.radio.default.sub"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_EXTERNAL_SIM_ENABLED:Ljava/lang/String; = "gsm.external.sim.enabled"

.field public static final PROPERTY_EXTERNAL_SIM_INSERTED:Ljava/lang/String; = "gsm.external.sim.inserted"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_DEFAULT_NAME:Ljava/lang/String; = "gsm.sim.operator.default-name"

.field public static final PROPERTY_ICC_OPERATOR_IMSI:Ljava/lang/String; = "gsm.sim.operator.imsi"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MMS_TRANSACTION:Ljava/lang/String; = "mms.transaction"

.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.radio.multisim.config"

.field public static final PROPERTY_NITZ_OPER_CODE:Ljava/lang/String; = "persist.radio.nitz_oper_code"

.field public static final PROPERTY_NITZ_OPER_LNAME:Ljava/lang/String; = "persist.radio.nitz_oper_lname"

.field public static final PROPERTY_NITZ_OPER_SNAME:Ljava/lang/String; = "persist.radio.nitz_oper_sname"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_2:Ljava/lang/String; = "gsm.operator.alpha.2"

.field public static final PROPERTY_OPERATOR_ALPHA_3:Ljava/lang/String; = "gsm.operator.alpha.3"

.field public static final PROPERTY_OPERATOR_ALPHA_4:Ljava/lang/String; = "gsm.operator.alpha.4"

.field public static final PROPERTY_OPERATOR_IDP_STRING:Ljava/lang/String; = "gsm.operator.idpstring"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_RADIO_SVLTE_MODE:Ljava/lang/String; = "persist.radio.svlte.mode"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_COUNT:Ljava/lang/String; = "ro.telephony.sim.count"

.field public static final PROPERTY_SIM_LOCALE_SETTINGS:Ljava/lang/String; = "gsm.sim.locale.waiting"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE:Ljava/lang/String; = "persist.radio.terminal-based.cw"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_UT_CFU_NOTIFICATION_MODE:Ljava/lang/String; = "persist.radio.ut.cfu.mode"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final TERMINAL_BASED_CALL_WAITING_DISABLED:Ljava/lang/String; = "disabled_tbcw"

.field public static final TERMINAL_BASED_CALL_WAITING_ENABLED_OFF:Ljava/lang/String; = "enabled_tbcw_off"

.field public static final TERMINAL_BASED_CALL_WAITING_ENABLED_ON:Ljava/lang/String; = "enabled_tbcw_on"

.field public static final UT_CFU_NOTIFICATION_MODE_DISABLED:Ljava/lang/String; = "disabled_ut_cfu_mode"

.field public static final UT_CFU_NOTIFICATION_MODE_OFF:Ljava/lang/String; = "enabled_ut_cfu_mode_off"

.field public static final UT_CFU_NOTIFICATION_MODE_ON:Ljava/lang/String; = "enabled_ut_cfu_mode_on"
