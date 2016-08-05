.class public Lcom/zte/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/FingerprintManager$BinderDeathHandler;,
        Lcom/zte/fingerprint/FingerprintManager$EventHandler;,
        Lcom/zte/fingerprint/FingerprintManager$GuidedData;,
        Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;,
        Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;,
        Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    }
.end annotation


# static fields
.field public static final CMD_RESULT_FAIL:I = -0x1

.field public static final CMD_RESULT_OK:I = 0x0

.field public static final MAX_ID_NUM:I = 0xa

.field public static final MSG_ENROL_PROGRESS:I = 0x3e9

.field public static final MSG_ENROL_RESULT:I = 0x3ea

.field public static final MSG_ENROL_STATUS:I = 0x3eb

.field public static final MSG_IDENTIFY_RESULT:I = 0x3ed

.field public static final MSG_IDENTIFY_STATUS:I = 0x3ee

.field public static final NAME_MAX_LENGTH:I = 0x80

.field public static final RESULT_AUTHEN_DATA:I = 0x7e

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_ENROL_EXIT_FINGER:I = 0x7f

.field public static final RESULT_ENROL_IMAGE_POOR:I = 0x75

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_FILESYSTEM_ERROR:I = 0x77

.field public static final RESULT_FINGER_ENROLED:I = 0x7c

.field public static final RESULT_HANDLE_DIED_ERROR:I = 0x7b

.field public static final RESULT_MEMORY_ERROR:I = 0x79

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_ENROLLED:I = 0x72

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_NUMBER_ERROR:I = 0x78

.field public static final RESULT_PARAM_ERROR:I = 0x76

.field public static final RESULT_PERMISSION_LIMIT:I = 0x7d

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TEMP_DATA_ERROR:I = 0x7a

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final RUNNING_ENROLING:I = 0x1f5

.field public static final RUNNING_ENROLPAUSE:I = 0x1f6

.field public static final RUNNING_IDENTIFYING:I = 0x1f7

.field public static final RUNNING_NONE:I = 0x1f4

.field public static final SERVICE_NAME:Ljava/lang/String; = "fm_fingerprint_service"

.field public static final STATUS_FINGER_DOWN:I = 0x4

.field public static final STATUS_FINGER_UP:I = 0x5

.field public static final STATUS_IMAGE_POOR:I = 0x6

.field public static final STATUS_INPUTTING:I = 0x2

.field public static final STATUS_INPUT_COMPLETED:I = 0x3

.field public static final STATUS_WAITING_FOR_INPUT:I = 0x1


# instance fields
.field private mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

.field private mClient:Lcom/zte/fingerprint/IFingerprintClient;

.field private mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

.field private mEnrolUserData:I

.field private mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;

.field private mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

.field private mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

.field private mIdentifyUserData:I

.field private mService:Lcom/zte/fingerprint/IFingerprintService;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    .line 101
    iput-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    .line 102
    iput-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    .line 103
    iput-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 104
    iput v1, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I

    .line 105
    iput v1, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 471
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->getService()I

    .line 472
    return-void
.end method

.method private PackGuidedData([I)Z
    .locals 14
    .param p1, "enrolInfo"    # [I

    .prologue
    .line 237
    array-length v2, p1

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    .line 239
    const-string v2, "PackGuidedData enrolInfo is not 17"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    const/4 v2, 0x0

    .line 264
    :goto_0
    return v2

    .line 243
    :cond_0
    const/4 v2, 0x0

    aget v12, p1, v2

    .line 244
    .local v12, "progress":I
    const-string v2, "PackGuidedData progress = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v12}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setProgress(I)V

    .line 247
    new-instance v0, Lcom/zte/fingerprint/RectParcelable;

    const/4 v2, 0x1

    aget v1, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    aget v5, p1, v5

    const/4 v6, 0x6

    aget v6, p1, v6

    const/4 v7, 0x7

    aget v7, p1, v7

    const/16 v8, 0x8

    aget v8, p1, v8

    invoke-direct/range {v0 .. v8}, Lcom/zte/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 248
    .local v0, "lastTouch":Lcom/zte/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData lastTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zte/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setLastTouch(Lcom/zte/fingerprint/RectParcelable;)V

    .line 251
    new-instance v1, Lcom/zte/fingerprint/RectParcelable;

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    const/16 v5, 0xc

    aget v5, p1, v5

    const/16 v6, 0xd

    aget v6, p1, v6

    const/16 v7, 0xe

    aget v7, p1, v7

    const/16 v8, 0xf

    aget v8, p1, v8

    const/16 v9, 0x10

    aget v9, p1, v9

    invoke-direct/range {v1 .. v9}, Lcom/zte/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 252
    .local v1, "nextTouch":Lcom/zte/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData nextTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zte/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v1}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setNextTouch(Lcom/zte/fingerprint/RectParcelable;)V

    .line 255
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->addMaskList(Lcom/zte/fingerprint/RectParcelable;)V

    .line 257
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->getMaskList()Ljava/util/ArrayList;

    move-result-object v11

    .line 258
    .local v11, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/RectParcelable;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 260
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zte/fingerprint/RectParcelable;

    .line 261
    .local v13, "temp":Lcom/zte/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData guidedMaskList %d: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Lcom/zte/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 264
    .end local v13    # "temp":Lcom/zte/fingerprint/RectParcelable;
    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/fingerprint/FingerprintManager;[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;
    .param p1, "x1"    # [I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/FingerprintManager;->PackGuidedData([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$GuidedData;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyUserData:I

    return v0
.end method

.method static synthetic access$600(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    return-object v0
.end method

.method private getService()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 377
    const-string v8, "FingerprintManger getService enter"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    const/4 v6, 0x0

    .line 382
    .local v6, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 383
    .local v7, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 384
    .local v3, "getService":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "fm_fingerprint_service"

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    .line 385
    if-nez v6, :cond_0

    .line 387
    const-string v8, "FingerprintManger getService enter Exception "

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager getService return null Exception"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager get service Exception"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 393
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    .restart local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-string v8, "FingerprintManger getService enter SUCCESS! "

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    new-instance v1, Lcom/zte/fingerprint/FingerprintManager$BinderDeathHandler;

    invoke-direct {v1, p0, v6}, Lcom/zte/fingerprint/FingerprintManager$BinderDeathHandler;-><init>(Lcom/zte/fingerprint/FingerprintManager;Landroid/os/IBinder;)V

    .line 395
    .local v1, "deathHandler":Lcom/zte/fingerprint/FingerprintManager$BinderDeathHandler;
    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    invoke-static {v6}, Lcom/zte/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintService;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    .line 405
    iget-object v8, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    if-nez v8, :cond_1

    .line 407
    const-string v8, "get serviceimpl interface is failed"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "get serviceimpl interface is failed"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 411
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 412
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_2

    .line 414
    const-string v8, "FingerprintManger looper is null"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager looper is null"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 418
    :cond_2
    new-instance v4, Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    invoke-direct {v4, p0, v5}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;-><init>(Lcom/zte/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    .line 419
    .local v4, "handler":Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    iput-object v4, p0, Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    .line 420
    new-instance v8, Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-direct {v8, p0}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;-><init>(Lcom/zte/fingerprint/FingerprintManager;)V

    iput-object v8, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    .line 422
    const-string v8, "FingerprintManger IFingerprintClient before"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    new-instance v8, Lcom/zte/fingerprint/FingerprintManager$1;

    invoke-direct {v8, p0}, Lcom/zte/fingerprint/FingerprintManager$1;-><init>(Lcom/zte/fingerprint/FingerprintManager;)V

    iput-object v8, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    .line 454
    :try_start_2
    const-string v8, "FingerprintManger getService open before"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v8, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v9, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v8, v9}, Lcom/zte/fingerprint/IFingerprintService;->open(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 457
    const-string v8, "FingerprintManager serviceimpl open failed"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager serviceimpl open failed"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 462
    :catch_1
    move-exception v2

    .line 464
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 465
    new-instance v8, Lcom/zte/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager serviceimpl open Exception"

    invoke-direct {v8, v9}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 460
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const/16 v8, 0x64

    return v8
.end method

.method private gobalCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 478
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    new-instance v0, Lcom/zte/fingerprint/FingerprintException;

    const-string v1, "binder is null, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    invoke-interface {v0}, Lcom/zte/fingerprint/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    new-instance v0, Lcom/zte/fingerprint/FingerprintException;

    const-string v1, "service binder is died, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    return-void
.end method

.method static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    const-string v0, ""

    .line 110
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "GooidixFP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static open()Lcom/zte/fingerprint/FingerprintManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 364
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Lcom/zte/fingerprint/FingerprintManager;

    invoke-direct {v1}, Lcom/zte/fingerprint/FingerprintManager;-><init>()V

    return-object v1

    .line 370
    :cond_0
    const-string v1, "FingerprintManger getMainLooper is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    new-instance v1, Lcom/zte/fingerprint/FingerprintException;

    const-string v2, "current getMainLooper is null"

    invoke-direct {v1, v2}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public authenticate(Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;[B[BJ)I
    .locals 8
    .param p1, "listener"    # Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;
    .param p2, "aaid"    # [B
    .param p3, "finalChallenge"    # [B
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 905
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 906
    const/16 v7, 0x65

    .line 907
    .local v7, "result":I
    const-string v0, "authenticate--------------->"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    if-nez v0, :cond_0

    .line 910
    const-string v0, "FingerprintManger identifyListener is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    new-instance v0, Lcom/zte/fingerprint/FingerprintException;

    const-string v1, "FingerprintManger identifyListener is null"

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/fingerprint/IFingerprintService;->startAuthenticate(Lcom/zte/fingerprint/IFingerprintClient;[B[BJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 918
    :goto_0
    return v7

    .line 915
    :catch_0
    move-exception v6

    .line 916
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 511
    const-string v2, "FingerprintManger cancel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 514
    const/16 v1, 0x65

    .line 517
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->cancel(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager cancel Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteFp(I)I
    .locals 4
    .param p1, "fingerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 733
    const-string v2, "FingerprintManger deleteFp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 736
    const/16 v1, 0x65

    .line 739
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zte/fingerprint/IFingerprintService;->removeTemplate(Lcom/zte/fingerprint/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 746
    return v1

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 744
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager deleteFp Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public factoryTest()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 851
    const-string v2, "FingerprintManger factoryTest"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 853
    const/16 v1, 0x65

    .line 856
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->factoryTest(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 863
    return v1

    .line 858
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 861
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager factoryTest Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFpIds()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 707
    const-string v2, "FingerprintManger getFpIds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 710
    const/4 v1, 0x0

    .line 713
    .local v1, "result":[I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->getIds(Lcom/zte/fingerprint/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 720
    return-object v1

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 718
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getIds Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 4
    .param p1, "fingerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 757
    const-string v2, "FingerprintManger getFpName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 760
    const-string v1, ""

    .line 763
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zte/fingerprint/IFingerprintService;->getFpName(Lcom/zte/fingerprint/IFingerprintClient;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    return-object v1

    .line 765
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 768
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getFpName Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRunningStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 621
    const-string v2, "FingerprintManger getRunningStatus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 624
    const/16 v1, 0x1f4

    .line 627
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->getRunningStatus(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 634
    return v1

    .line 629
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getRunningStatus Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public imageQuality()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 873
    const-string v2, "FingerprintManger imageQuality"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 875
    const/16 v1, 0x65

    .line 878
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->imageQuality(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 885
    return v1

    .line 880
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 883
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager imageQuality Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public invokeTACmd([B)[B
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Lcom/zte/fingerprint/IFingerprintService;->invokeCmd([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 938
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIDValid([B)Z
    .locals 4
    .param p1, "enrollmentID"    # [B

    .prologue
    const/4 v1, 0x0

    .line 921
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 922
    :cond_0
    const-string v2, "check id  failed because enrollmentID is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    :goto_0
    return v1

    .line 926
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    invoke-interface {v2, p1}, Lcom/zte/fingerprint/IFingerprintService;->isIDValid([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseEnrol()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 585
    const-string v2, "FingerprintManger pauseEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 588
    const/16 v1, 0x65

    .line 591
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->pauseEnrol(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 596
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager pauseEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putKey(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 645
    const-string v2, "FingerprintManger resumeEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 648
    const/16 v1, 0x65

    .line 651
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zte/fingerprint/IFingerprintService;->putKey(Lcom/zte/fingerprint/IFingerprintClient;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 658
    return v1

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 656
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager putKey Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public release()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 490
    const-string v2, "FingerprintManger release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    const/16 v1, 0x65

    .line 494
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    invoke-interface {v2}, Lcom/zte/fingerprint/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->release(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 505
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    .line 506
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 502
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager release Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resumeEnrol()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 603
    const-string v2, "FingerprintManger resumeEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 606
    const/16 v1, 0x65

    .line 609
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/IFingerprintService;->resumeEnrol(Lcom/zte/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 616
    return v1

    .line 611
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 614
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager resumeEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFpMaxCount(I)I
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 828
    const-string v2, "FingerprintManger setFpMaxCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 831
    const/16 v1, 0x65

    .line 834
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zte/fingerprint/IFingerprintService;->setFpMaxCount(Lcom/zte/fingerprint/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 841
    return v1

    .line 836
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 839
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager setFpMaxCount Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public starFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.zui.fingerprintsettings"

    .line 898
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "com.zui.fingerprintsettings.FpSettingsActivity"

    .line 899
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 900
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 901
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 902
    const/16 v3, 0x64

    return v3
.end method

.method public startEnrol(Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;Ljava/lang/String;JI)I
    .locals 7
    .param p1, "enrolListener"    # Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    .param p2, "fingerName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x76

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 540
    const-string v2, "FingerprintManger startEnrol"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 543
    if-nez p1, :cond_0

    .line 545
    const-string v2, "FingerprintManger enrolListener is null!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManger enrolListener is null"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_0
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    .line 550
    iput p5, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I

    .line 551
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->clearMaskList()V

    .line 553
    if-nez p2, :cond_1

    .line 555
    const-string v2, "FingerprintManger name is null!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    iget v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I

    invoke-interface {v2, v5, v4, v3}, Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    .line 580
    :goto_0
    return v1

    .line 560
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    .line 562
    :cond_2
    const-string v2, "FingerprintManger name is 0 or too length!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    iget v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I

    invoke-interface {v2, v5, v4, v3}, Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    goto :goto_0

    .line 568
    :cond_3
    const-string v2, "FingerprintManger begin startEnrol"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    const/16 v1, 0x65

    .line 573
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/zte/fingerprint/IFingerprintService;->startEnrol(Lcom/zte/fingerprint/IFingerprintClient;Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 578
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager startEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startIdentify(Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    .locals 6
    .param p1, "identifyListener"    # Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 674
    const-string v2, "FingerprintManger startIdentify"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 677
    if-nez p1, :cond_0

    .line 679
    const-string v2, "FingerprintManger identifyListener is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManger identifyListener is null"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    .line 684
    iput p4, p0, Lcom/zte/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 686
    const/16 v1, 0x65

    .line 689
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    int-to-long v4, p2

    invoke-interface {v2, v3, p3, v4, v5}, Lcom/zte/fingerprint/IFingerprintService;->startIdentify(Lcom/zte/fingerprint/IFingerprintClient;[IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 696
    return v1

    .line 691
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 694
    new-instance v2, Lcom/zte/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager startIdentify Exception"

    invoke-direct {v2, v3}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateFpName(ILjava/lang/String;)I
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x76

    const/4 v5, 0x0

    .line 782
    const-string v3, "FingerprintManger updateFpName"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-direct {p0}, Lcom/zte/fingerprint/FingerprintManager;->gobalCheck()V

    .line 784
    if-nez p2, :cond_0

    .line 786
    const-string v3, "FingerprintManger updateFpName is null!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    :goto_0
    return v1

    .line 793
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 794
    .local v2, "strTemp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 796
    :cond_1
    const-string v3, "FingerprintManger name is 0 or too length!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    .end local v2    # "strTemp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 803
    new-instance v3, Lcom/zte/fingerprint/FingerprintException;

    const-string v4, "FingerprintManager name length error Exception"

    invoke-direct {v3, v4}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "strTemp":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x65

    .line 809
    .local v1, "result":I
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager;->mService:Lcom/zte/fingerprint/IFingerprintService;

    iget-object v4, p0, Lcom/zte/fingerprint/FingerprintManager;->mClient:Lcom/zte/fingerprint/IFingerprintClient;

    invoke-interface {v3, v4, p1, p2}, Lcom/zte/fingerprint/IFingerprintService;->updateFpName(Lcom/zte/fingerprint/IFingerprintClient;ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 811
    :catch_1
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 814
    new-instance v3, Lcom/zte/fingerprint/FingerprintException;

    const-string v4, "FingerprintManager updateFpName Exception"

    invoke-direct {v3, v4}, Lcom/zte/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
