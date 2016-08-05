.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# static fields
.field private static ALIPAY_COMMAND:I

.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static mgr:Lcom/goodix/fingerprint/FingerprintManager;


# instance fields
.field myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field myids:[I

.field mytimeout:I

.field wdidentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    .line 22
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 23
    const v0, 0xa001000

    sput v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->ALIPAY_COMMAND:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 80
    iput-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 82
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->wdidentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    .line 26
    return-void
.end method

.method public static open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/goodix/fingerprint/FingerprintManager;->open()Lcom/goodix/fingerprint/FingerprintManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    .line 36
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v0

    .line 39
    :cond_1
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    return-object v0
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/FingerprintManager;->cancel()I

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFpIDs()[I
    .locals 3

    .prologue
    .line 65
    :try_start_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/goodix/fingerprint/FingerprintManager;->getFpIds()[I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/FingerprintManager;->getFpName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/FingerprintManager;->release()I

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 7
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 114
    iput p2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 115
    iput-object p3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 116
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 119
    :try_start_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->wdidentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    int-to-long v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/goodix/fingerprint/FingerprintManager;->startIdentify(Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;J[II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 120
    :catch_0
    move-exception v6

    .line 121
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/FingerprintManager;->startFpManager(Landroid/content/Context;)I

    .line 130
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v0
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 2
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;->printStackTrace()V

    .line 149
    const/4 v1, 0x0

    return v1
.end method
