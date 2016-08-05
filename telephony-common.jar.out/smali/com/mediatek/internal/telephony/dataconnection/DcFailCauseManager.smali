.class public Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.super Ljava/lang/Object;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;,
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;,
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;,
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final FALLBACK_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=13, 5000,10000,30000,60000,300000,1800000,3600000,14400000,28800000,28800000,28800000,28800000,28800000"

.field public static final LOG_TAG:Ljava/lang/String; = "DcFailCauseManager"

.field public static final MTK_AP_FALLBACK_SUPPORT:Ljava/lang/String; = "persist.ap.fallback.support"

.field public static MTK_CC33_SUPPORT:Z = false

.field public static final MTK_DC_FCMGR_ENABLE:Ljava/lang/String; = "persist.dc.fcmgr.enable"

.field public static final MTK_FALLBACK_RETRY_SUPPORT:Z

.field private static final OP001Ext_FAIL_CAUSE_TABLE:[I

.field private static final OP002Ext_FAIL_CAUSE_TABLE:[I

.field private static final PDP_FAIL_FALLBACK_RETRY:I = -0x3e8

.field private static final SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final USER_AUTHENTICATION:I = 0x1d

.field public static final VDBG:Z

.field private static final specificPLMN:[[Ljava/lang/String;


# instance fields
.field private mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

.field private mIsBsp:Z

.field public mMaxRetryCount:I

.field public mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field public mRandomizationTime:I

.field public mRetryCount:I

.field public mRetryTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v5, [[Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "33402"

    aput-object v4, v3, v2

    const-string v4, "334020"

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "50501"

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    .line 90
    const-string v0, "persist.data.cc33.support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->MTK_CC33_SUPPORT:Z

    .line 93
    const-string v0, "ro.mtk_fallback_retry_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->MTK_FALLBACK_RETRY_SUPPORT:Z

    .line 129
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->OP001Ext_FAIL_CAUSE_TABLE:[I

    .line 134
    new-array v0, v1, [I

    const/16 v1, -0x3e8

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->OP002Ext_FAIL_CAUSE_TABLE:[I

    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_1

    .line 129
    nop

    :array_0
    .array-data 4
        0x1d
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 138
    const-string v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mIsBsp:Z

    .line 238
    const-string v0, "constructor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private canIgnoredReason(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/String;)Z
    .locals 3
    .param p1, "op"    # Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "ignored":Z
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 389
    :pswitch_0
    const-string v1, "dataAttached"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lostDataConnection"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v0, "DcFailCauseManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v0, "DcFailCauseManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method private setRetryConfig(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/Object;)V
    .locals 4
    .param p1, "op"    # Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .param p2, "retryManager"    # Ljava/lang/Object;

    .prologue
    .line 179
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/RetryManager;

    .line 180
    .local v0, "rm":Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    .line 203
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    .line 204
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[default] set SmRetry Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 207
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 208
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    .line 212
    :goto_0
    return-void

    .line 187
    :pswitch_0
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    .line 188
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    .line 189
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->getValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] set SmRetry Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 192
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 193
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    goto :goto_0

    .line 196
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] set SmRetry Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "max_retries=13, 5000,10000,30000,60000,300000,1800000,3600000,14400000,28800000,28800000,28800000,28800000,28800000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 198
    const-string v1, "max_retries=13, 5000,10000,30000,60000,300000,1800000,3600000,14400000,28800000,28800000,28800000,28800000,28800000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 199
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 22
    .param p1, "cause"    # Ljava/lang/Object;
    .param p2, "retryManager"    # Ljava/lang/Object;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v20, "persist.dc.fcmgr.enable"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_1

    .line 245
    const-string v20, "dc fail cause handling mechanism is disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 247
    const/4 v11, 0x0

    .line 381
    :cond_0
    :goto_0
    return v11

    .line 250
    :cond_1
    const/4 v4, 0x0

    .line 251
    .local v4, "canHandle":Z
    const/16 v16, 0x0

    .line 252
    .local v16, "need":Z
    const-string v8, ""

    .local v8, "handleCase":Ljava/lang/String;
    move-object/from16 v7, p1

    .line 253
    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 255
    .local v7, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/16 v17, -0x1

    .line 256
    .local v17, "phoneId":I
    const-string v18, ""

    .line 258
    .local v18, "plmn":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v17

    .line 259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v18

    .line 260
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Check PLMN="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    if-eqz p1, :cond_2

    .line 270
    const-string v8, "c1"

    .line 273
    :cond_2
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 275
    const-string v8, "c2"

    .line 281
    :cond_3
    :goto_2
    const-string v20, "c2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz p3, :cond_4

    .line 283
    const-string v8, "c4"

    .line 286
    :cond_4
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    sget-object v20, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 288
    const/4 v13, 0x0

    .line 291
    .local v13, "isServingInSpecificPlmn":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    sget-object v20, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    aget-object v20, v20, v9

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 292
    sget-object v20, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    aget-object v20, v20, v9

    aget-object v20, v20, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 293
    const/4 v13, 0x1

    .line 291
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 261
    .end local v9    # "i":I
    .end local v13    # "isServingInSpecificPlmn":Z
    .end local v14    # "j":I
    :catch_0
    move-exception v6

    .line 263
    .local v6, "e":Ljava/lang/Exception;
    const-string v20, "get plmn fail"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 278
    const-string v8, "c3"

    goto :goto_2

    .line 297
    .restart local v9    # "i":I
    .restart local v13    # "isServingInSpecificPlmn":Z
    .restart local v14    # "j":I
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_b

    .line 298
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->get(I)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 299
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Serving in specific op="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 304
    .end local v13    # "isServingInSpecificPlmn":Z
    .end local v14    # "j":I
    :cond_8
    sget-object v20, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 314
    const-string v20, "persist.ap.fallback.support"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 315
    const/16 v20, -0x3e8

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v5

    .line 316
    .local v5, "dcFailCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 317
    const/4 v4, 0x1

    .line 323
    .end local v5    # "dcFailCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_9
    if-eqz v4, :cond_f

    .line 324
    const/4 v11, 0x0

    .line 325
    .local v11, "ignoreReason":Z
    const-string v20, "c2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->setRetryConfig(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/Object;)V

    :cond_a
    move v11, v4

    .line 344
    goto/16 :goto_0

    .line 286
    .end local v11    # "ignoreReason":Z
    .restart local v13    # "isServingInSpecificPlmn":Z
    .restart local v14    # "j":I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 306
    .end local v13    # "isServingInSpecificPlmn":Z
    .end local v14    # "j":I
    :pswitch_0
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->OP001Ext_FAIL_CAUSE_TABLE:[I

    .local v3, "arr$":[I
    array-length v15, v3

    .local v15, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_5
    if-ge v10, v15, :cond_9

    aget v19, v3, v10

    .line 307
    .local v19, "tempCause":I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v5

    .line 308
    .restart local v5    # "dcFailCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-boolean v20, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->MTK_CC33_SUPPORT:Z

    if-eqz v20, :cond_c

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 309
    const/4 v4, 0x1

    .line 306
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 328
    .end local v3    # "arr$":[I
    .end local v5    # "dcFailCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v19    # "tempCause":I
    .restart local v11    # "ignoreReason":Z
    :cond_d
    const-string v20, "c3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canIgnoredReason(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 331
    const/4 v11, 0x1

    .line 332
    const-string v20, "Can ignore this setup conn reason by Plmn!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_e
    const-string v20, "c4"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->setRetryConfig(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/Object;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canIgnoredReason(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 339
    const/4 v11, 0x1

    .line 340
    const-string v20, "Can ignore this setup conn reason by Plmn!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .end local v11    # "ignoreReason":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mIsBsp:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    .line 349
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/mediatek/common/telephony/IGsmDCTExt;->needSmRetry(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 356
    :cond_10
    :goto_6
    if-eqz v16, :cond_16

    .line 357
    const/4 v12, 0x0

    .line 358
    .local v12, "ignoreReasonByOp":Z
    const-string v20, "c2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->setSmRetryConfig(Ljava/lang/Object;)Z

    :cond_11
    move/from16 v11, v16

    .line 377
    goto/16 :goto_0

    .line 350
    .end local v12    # "ignoreReasonByOp":Z
    :catch_1
    move-exception v6

    .line 351
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v20, "check needSmRetry fail!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 361
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "ignoreReasonByOp":Z
    :cond_12
    const-string v20, "c3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canIgnoredReason(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 364
    const/4 v12, 0x1

    .line 365
    const-string v20, "Can not ignore this setup conn reason by OP!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    :cond_13
    move v11, v12

    .line 367
    goto/16 :goto_0

    .line 368
    :cond_14
    const-string v20, "c4"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->setSmRetryConfig(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canIgnoredReason(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 372
    const/4 v12, 0x1

    .line 373
    const-string v20, "Can not ignore this setup conn reason by OP!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    :cond_15
    move v11, v12

    .line 375
    goto/16 :goto_0

    .line 380
    .end local v12    # "ignoreReasonByOp":Z
    :cond_16
    const-string v20, "Can not handle this fail cause!"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 381
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createGsmDCTExt(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "success":Z
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mIsBsp:Z

    if-nez v2, :cond_0

    .line 219
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IGsmDCTExt;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGsmDCTExt init on phone["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v1, 0x1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "mGsmDCTExt init fail"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcFailCauseManager: { operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mMaxRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retryTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " randomizationTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRandomizationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retryCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    return-object v0
.end method
