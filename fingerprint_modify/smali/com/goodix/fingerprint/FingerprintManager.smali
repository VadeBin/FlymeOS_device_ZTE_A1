.class public Lcom/goodix/fingerprint/FingerprintManager;
.super Lcom/zui/fingerprint/FingerprintManager;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;,
        Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;,
        Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    }
.end annotation


# static fields
.field public static final FEEDBACK_GOOD:I = 0x2

.field public static final FEEDBACK_LOW_SENSOR:I = 0x5

.field public static final FEEDBACK_OUTSIDE:I = 0x1

.field public static final FEEDBACK_POOR_IMAGE:I = 0x4

.field public static final FEEDBACK_SIMILAR:I = 0x3

.field public static final FEEDBACK_TOUCH_REJECTED:I = 0x6

.field private static final FP_NAME_FREFIX:Ljava/lang/String; = "goodixfpid"

.field public static final STATUS_WAITING_INPUT:I = 0x1

.field private static sInstance:Lcom/goodix/fingerprint/FingerprintManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

.field private mLocalAuthenListener:Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;

.field private mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

.field private mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

.field mSystemAuthenyListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

.field mSystemEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

.field mSystemIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;-><init>()V

    .line 425
    new-instance v0, Lcom/goodix/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/FingerprintManager$1;-><init>(Lcom/goodix/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemAuthenyListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 437
    new-instance v0, Lcom/goodix/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/FingerprintManager$2;-><init>(Lcom/goodix/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 453
    new-instance v0, Lcom/goodix/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/FingerprintManager$3;-><init>(Lcom/goodix/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    .line 117
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {}, Lcom/zui/fingerprint/FingerprintManager;->open()Lcom/zui/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    .line 120
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "FingerprintManager init failed!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    const-string v0, "new FingerprintManager leave."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/goodix/fingerprint/FingerprintManager;[BII)[B
    .locals 1
    .param p0, "x0"    # Lcom/goodix/fingerprint/FingerprintManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/goodix/fingerprint/FingerprintManager;->subByteArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;
    .locals 1
    .param p0, "x0"    # Lcom/goodix/fingerprint/FingerprintManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalAuthenListener:Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/goodix/fingerprint/FingerprintManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    .locals 1
    .param p0, "x0"    # Lcom/goodix/fingerprint/FingerprintManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    return-object v0
.end method

.method static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 86
    const-string v0, ""

    .line 87
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "Lenovo_FP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public static open()Lcom/goodix/fingerprint/FingerprintManager;
    .locals 3

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Lcom/goodix/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/goodix/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/goodix/fingerprint/FingerprintManager;->sInstance:Lcom/goodix/fingerprint/FingerprintManager;
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    :goto_0
    sget-object v1, Lcom/goodix/fingerprint/FingerprintManager;->sInstance:Lcom/goodix/fingerprint/FingerprintManager;

    return-object v1

    .line 101
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)Lcom/goodix/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Lcom/goodix/fingerprint/FingerprintManager;

    invoke-direct {v1, p0}, Lcom/goodix/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/goodix/fingerprint/FingerprintManager;->sInstance:Lcom/goodix/fingerprint/FingerprintManager;
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    sget-object v1, Lcom/goodix/fingerprint/FingerprintManager;->sInstance:Lcom/goodix/fingerprint/FingerprintManager;

    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0
.end method

.method private subByteArray([BII)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "beginPosition"    # I
    .param p3, "length"    # I

    .prologue
    .line 321
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, p1

    if-ge v2, p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 325
    :cond_1
    return-object v0

    .line 322
    :cond_2
    new-array v0, p3, [B

    .line 323
    .local v0, "des":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 324
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;[B[BJ)I
    .locals 8
    .param p1, "listener"    # Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;
    .param p2, "aaid"    # [B
    .param p3, "finalChallenge"    # [B
    .param p4, "timeout"    # J

    .prologue
    .line 307
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalAuthenListener:Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 310
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemAuthenyListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/fingerprint/FingerprintManager;->authenticate(Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;[B[BJ)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 313
    :catch_0
    move-exception v6

    .line 314
    .local v6, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v6}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 317
    .end local v6    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->cancel()I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteFP(I)I
    .locals 2
    .param p1, "fingerprintId"    # I

    .prologue
    .line 272
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/zui/fingerprint/FingerprintManager;->deleteFp(I)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 283
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public factoryTest()I
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->factoryTest()I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const/4 v1, 0x0

    .line 351
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 351
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v3, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "ids":[I
    :try_start_0
    iget-object v3, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/zui/fingerprint/FingerprintManager;->getFpIds()[I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 211
    :cond_0
    const-string v3, "getIds return NULL"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 217
    .end local v1    # "ids":[I
    :cond_1
    :goto_1
    return-object v1

    .line 207
    .restart local v1    # "ids":[I
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    .end local v1    # "ids":[I
    :cond_2
    move-object v1, v2

    .line 217
    goto :goto_1
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 2
    .param p1, "fingerprintId"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/zui/fingerprint/FingerprintManager;->getFpName(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imageQuality()I
    .locals 2

    .prologue
    .line 360
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->imageQuality()I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    const/4 v1, 0x0

    .line 369
    :goto_0
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 369
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public invokeTACmd([B)[B
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 423
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/zui/fingerprint/FingerprintManager;->invokeTACmd([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isIDValid([B)Z
    .locals 3
    .param p1, "enrollmentID"    # [B

    .prologue
    const/4 v0, 0x0

    .line 329
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 330
    :cond_0
    const-string v1, "check id  failed because enrollmentID is invalid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/zui/fingerprint/FingerprintManager;->isIDValid([B)Z

    move-result v0

    goto :goto_0
.end method

.method public release()I
    .locals 2

    .prologue
    .line 135
    :try_start_0
    invoke-super {p0}, Lcom/zui/fingerprint/FingerprintManager;->release()I

    .line 136
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->release()I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setFpMaxCount(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/zui/fingerprint/FingerprintManager;->setFpMaxCount(I)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/4 v1, 0x0

    .line 302
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startEnrol(Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;Ljava/lang/String;JI)I
    .locals 9
    .param p1, "enrolListener"    # Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    .param p2, "fingerprintName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "userData"    # I

    .prologue
    const/4 v7, -0x1

    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string v1, "enrolListener is NULL!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    .line 193
    :goto_0
    return v1

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    .line 184
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/zui/fingerprint/FingerprintManager;->startEnrol(Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;Ljava/lang/String;JI)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_1
    move v1, v7

    .line 193
    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lenovo.lenovofingerprintsettings"

    const-string v2, "com.lenovo.lenovofingerprintsettings.FingerprintManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 419
    const/4 v1, 0x0

    return v1
.end method

.method public startIdentify(Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;J[II)I
    .locals 6
    .param p1, "identifyListener"    # Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # J
    .param p4, "ids"    # [I
    .param p5, "userData"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 387
    if-nez p1, :cond_1

    .line 388
    const-string v3, "IdentifyListener is NULL!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/goodix/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    .line 393
    iget-object v3, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v3, :cond_0

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/goodix/fingerprint/FingerprintManager;->mSystemIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    long-to-int v5, p2

    invoke-virtual {v3, v4, v5, p4, p5}, Lcom/zui/fingerprint/FingerprintManager;->startIdentify(Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 397
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFpName(ILjava/lang/String;)I
    .locals 2
    .param p1, "fingerprintId"    # I
    .param p2, "fingerprintName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/zui/fingerprint/FingerprintManager;

    .line 253
    invoke-virtual {v1, p1, p2}, Lcom/zui/fingerprint/FingerprintManager;->updateFpName(ILjava/lang/String;)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
