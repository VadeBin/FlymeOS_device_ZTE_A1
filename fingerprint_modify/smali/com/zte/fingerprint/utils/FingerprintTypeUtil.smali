.class public Lcom/zte/fingerprint/utils/FingerprintTypeUtil;
.super Ljava/lang/Object;
.source "FingerprintTypeUtil.java"


# static fields
.field public static FINGERPRINT_ERROR:I

.field public static FINGERPRINT_FPC:I

.field public static FINGERPRINT_GOODIX:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_ERROR:I

    .line 17
    const-class v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFingerprintType()I
    .locals 6

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/fpc1020"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->TAG:Ljava/lang/String;

    const-string v4, "chip type:fpc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    .line 39
    :goto_0
    return v3

    .line 28
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/goodix_fp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "fileGoodix":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->TAG:Ljava/lang/String;

    const-string v4, "chip type:goodix"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    goto :goto_0

    .line 35
    :cond_1
    sget v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_ERROR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v2    # "fileGoodix":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check fpc1020 exist error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v3, 0x0

    goto :goto_0
.end method
