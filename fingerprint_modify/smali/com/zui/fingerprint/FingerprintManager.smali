.class public Lcom/zui/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;,
        Lcom/zui/fingerprint/FingerprintManager$EventHandler;,
        Lcom/zui/fingerprint/FingerprintManager$GuidedData;,
        Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;,
        Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;,
        Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
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
.field private mAuthenticateListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

.field private mClient:Lcom/zui/fingerprint/IFingerprintClient;

.field private mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

.field private mEnrolUserData:I

.field private mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

.field private mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

.field private mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

.field private mIdentifyUserData:I

.field private mService:Lcom/zui/fingerprint/IFingerprintService;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    .line 103
    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    .line 104
    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 105
    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 106
    iput v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    .line 107
    iput v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 473
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->getService()I

    .line 474
    return-void
.end method

.method private PackGuidedData([I)Z
    .locals 14
    .param p1, "enrolInfo"    # [I

    .prologue
    .line 239
    array-length v2, p1

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    .line 241
    const-string v2, "PackGuidedData enrolInfo is not 17"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2

    .line 245
    :cond_0
    const/4 v2, 0x0

    aget v12, p1, v2

    .line 246
    .local v12, "progress":I
    const-string v2, "PackGuidedData progress = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v12}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setProgress(I)V

    .line 249
    new-instance v0, Lcom/zui/fingerprint/RectParcelable;

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

    invoke-direct/range {v0 .. v8}, Lcom/zui/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 250
    .local v0, "lastTouch":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData lastTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setLastTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 253
    new-instance v1, Lcom/zui/fingerprint/RectParcelable;

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

    invoke-direct/range {v1 .. v9}, Lcom/zui/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 254
    .local v1, "nextTouch":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData nextTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v1}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setNextTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 257
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->addMaskList(Lcom/zui/fingerprint/RectParcelable;)V

    .line 259
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->getMaskList()Ljava/util/ArrayList;

    move-result-object v11

    .line 260
    .local v11, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zui/fingerprint/RectParcelable;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 262
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/fingerprint/RectParcelable;

    .line 263
    .local v13, "temp":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData guidedMaskList %d: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 266
    .end local v13    # "temp":Lcom/zui/fingerprint/RectParcelable;
    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/fingerprint/FingerprintManager;[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;
    .param p1, "x1"    # [I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/zui/fingerprint/FingerprintManager;->PackGuidedData([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$GuidedData;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zui/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    return v0
.end method

.method static synthetic access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    return v0
.end method

.method static synthetic access$600(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    return-object v0
.end method

.method private getService()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 379
    const-string v8, "FingerprintManger getService enter"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    const/4 v6, 0x0

    .line 384
    .local v6, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 385
    .local v7, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 386
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

    .line 387
    if-nez v6, :cond_0

    .line 389
    const-string v8, "FingerprintManger getService enter Exception "

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager getService return null Exception"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager get service Exception"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 395
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    .restart local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-string v8, "FingerprintManger getService enter SUCCESS! "

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v1, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;

    invoke-direct {v1, p0, v6}, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;-><init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/IBinder;)V

    .line 397
    .local v1, "deathHandler":Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;
    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    invoke-static {v6}, Lcom/zui/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/fingerprint/IFingerprintService;

    move-result-object v8

    iput-object v8, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    .line 407
    iget-object v8, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    if-nez v8, :cond_1

    .line 409
    const-string v8, "get serviceimpl interface is failed"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "get serviceimpl interface is failed"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 413
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 414
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_2

    .line 416
    const-string v8, "FingerprintManger looper is null"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager looper is null"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 420
    :cond_2
    new-instance v4, Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    invoke-direct {v4, p0, v5}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;-><init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    .line 421
    .local v4, "handler":Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    iput-object v4, p0, Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    .line 422
    new-instance v8, Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-direct {v8, p0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;-><init>(Lcom/zui/fingerprint/FingerprintManager;)V

    iput-object v8, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    .line 424
    const-string v8, "FingerprintManger IFingerprintClient before"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v8, Lcom/zui/fingerprint/FingerprintManager$1;

    invoke-direct {v8, p0}, Lcom/zui/fingerprint/FingerprintManager$1;-><init>(Lcom/zui/fingerprint/FingerprintManager;)V

    iput-object v8, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    .line 456
    :try_start_2
    const-string v8, "FingerprintManger getService open before"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v8, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v8, v9}, Lcom/zui/fingerprint/IFingerprintService;->open(Lcom/zui/fingerprint/IFingerprintClient;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 459
    const-string v8, "FingerprintManager serviceimpl open failed"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager serviceimpl open failed"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 464
    :catch_1
    move-exception v2

    .line 466
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 467
    new-instance v8, Lcom/zui/fingerprint/FingerprintException;

    const-string v9, "FingerprintManager serviceimpl open Exception"

    invoke-direct {v8, v9}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 462
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const/16 v8, 0x64

    return v8
.end method

.method private gobalCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 480
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "binder is null, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    invoke-interface {v0}, Lcom/zui/fingerprint/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "service binder is died, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    return-void
.end method

.method static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    const-string v0, ""

    .line 112
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "GooidixFP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public static open()Lcom/zui/fingerprint/FingerprintManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 366
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Lcom/zui/fingerprint/FingerprintManager;

    invoke-direct {v1}, Lcom/zui/fingerprint/FingerprintManager;-><init>()V

    return-object v1

    .line 372
    :cond_0
    const-string v1, "FingerprintManger getMainLooper is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    new-instance v1, Lcom/zui/fingerprint/FingerprintException;

    const-string v2, "current getMainLooper is null"

    invoke-direct {v1, v2}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public authenticate(Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;[B[BJ)I
    .locals 8
    .param p1, "listener"    # Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;
    .param p2, "aaid"    # [B
    .param p3, "finalChallenge"    # [B
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 907
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    .line 908
    const/16 v7, 0x65

    .line 909
    .local v7, "result":I
    const-string v0, "authenticate--------------->"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;

    if-nez v0, :cond_0

    .line 912
    const-string v0, "FingerprintManger identifyListener is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "FingerprintManger identifyListener is null"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zui/fingerprint/IFingerprintService;->startAuthenticate(Lcom/zui/fingerprint/IFingerprintClient;[B[BJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 920
    :goto_0
    return v7

    .line 917
    :catch_0
    move-exception v6

    .line 918
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 513
    const-string v2, "FingerprintManger cancel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 516
    const/16 v1, 0x65

    .line 519
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->cancel(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 524
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager cancel Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteFp(I)I
    .locals 4
    .param p1, "fingerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 735
    const-string v2, "FingerprintManger deleteFp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 738
    const/16 v1, 0x65

    .line 741
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zui/fingerprint/IFingerprintService;->removeTemplate(Lcom/zui/fingerprint/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    return v1

    .line 743
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 746
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager deleteFp Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public factoryTest()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 853
    const-string v2, "FingerprintManger factoryTest"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 855
    const/16 v1, 0x65

    .line 858
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->factoryTest(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 865
    return v1

    .line 860
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 863
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager factoryTest Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFpIds()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 709
    const-string v2, "FingerprintManger getFpIds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 712
    const/4 v1, 0x0

    .line 715
    .local v1, "result":[I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->getIds(Lcom/zui/fingerprint/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 722
    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 720
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getIds Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 4
    .param p1, "fingerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 759
    const-string v2, "FingerprintManger getFpName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 762
    const-string v1, ""

    .line 765
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zui/fingerprint/IFingerprintService;->getFpName(Lcom/zui/fingerprint/IFingerprintClient;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 772
    return-object v1

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 770
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getFpName Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRunningStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 623
    const-string v2, "FingerprintManger getRunningStatus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 626
    const/16 v1, 0x1f4

    .line 629
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->getRunningStatus(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 634
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getRunningStatus Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public imageQuality()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 875
    const-string v2, "FingerprintManger imageQuality"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 877
    const/16 v1, 0x65

    .line 880
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->imageQuality(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 887
    return v1

    .line 882
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 885
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager imageQuality Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public invokeTACmd([B)[B
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Lcom/zui/fingerprint/IFingerprintService;->invokeCmd([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 940
    :goto_0
    return-object v1

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 940
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIDValid([B)Z
    .locals 4
    .param p1, "enrollmentID"    # [B

    .prologue
    const/4 v1, 0x0

    .line 923
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 924
    :cond_0
    const-string v2, "check id  failed because enrollmentID is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    :goto_0
    return v1

    .line 928
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    invoke-interface {v2, p1}, Lcom/zui/fingerprint/IFingerprintService;->isIDValid([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseEnrol()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 587
    const-string v2, "FingerprintManger pauseEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 590
    const/16 v1, 0x65

    .line 593
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->pauseEnrol(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    return v1

    .line 595
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 598
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager pauseEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putKey(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 647
    const-string v2, "FingerprintManger resumeEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 650
    const/16 v1, 0x65

    .line 653
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zui/fingerprint/IFingerprintService;->putKey(Lcom/zui/fingerprint/IFingerprintClient;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 658
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager putKey Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public release()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v2, "FingerprintManger release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    const/16 v1, 0x65

    .line 496
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    invoke-interface {v2}, Lcom/zui/fingerprint/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->release(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 507
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    .line 508
    return v1

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 504
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager release Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resumeEnrol()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 605
    const-string v2, "FingerprintManger resumeEnrol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 608
    const/16 v1, 0x65

    .line 611
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/IFingerprintService;->resumeEnrol(Lcom/zui/fingerprint/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 618
    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 616
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager resumeEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFpMaxCount(I)I
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 830
    const-string v2, "FingerprintManger setFpMaxCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 833
    const/16 v1, 0x65

    .line 836
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Lcom/zui/fingerprint/IFingerprintService;->setFpMaxCount(Lcom/zui/fingerprint/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 843
    return v1

    .line 838
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 841
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager setFpMaxCount Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public starFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 898
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.zui.fingerprintsettings"

    .line 900
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "com.zui.fingerprintsettings.FpSettingsActivity"

    .line 901
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 902
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 903
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 904
    const/16 v3, 0x64

    return v3
.end method

.method public startEnrol(Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;Ljava/lang/String;JI)I
    .locals 7
    .param p1, "enrolListener"    # Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    .param p2, "fingerName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x76

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 542
    const-string v2, "FingerprintManger startEnrol"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 545
    if-nez p1, :cond_0

    .line 547
    const-string v2, "FingerprintManger enrolListener is null!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManger enrolListener is null"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_0
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    .line 552
    iput p5, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    .line 553
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->clearMaskList()V

    .line 555
    if-nez p2, :cond_1

    .line 557
    const-string v2, "FingerprintManger name is null!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    iget v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    invoke-interface {v2, v5, v4, v3}, Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    .line 582
    :goto_0
    return v1

    .line 562
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    .line 564
    :cond_2
    const-string v2, "FingerprintManger name is 0 or too length!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    iget v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    invoke-interface {v2, v5, v4, v3}, Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    goto :goto_0

    .line 570
    :cond_3
    const-string v2, "FingerprintManger begin startEnrol"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    const/16 v1, 0x65

    .line 575
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/zui/fingerprint/IFingerprintService;->startEnrol(Lcom/zui/fingerprint/IFingerprintClient;Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 580
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager startEnrol Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startIdentify(Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    .locals 6
    .param p1, "identifyListener"    # Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 676
    const-string v2, "FingerprintManger startIdentify"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 679
    if-nez p1, :cond_0

    .line 681
    const-string v2, "FingerprintManger identifyListener is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManger identifyListener is null"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 685
    :cond_0
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 686
    iput p4, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 688
    const/16 v1, 0x65

    .line 691
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    int-to-long v4, p2

    invoke-interface {v2, v3, p3, v4, v5}, Lcom/zui/fingerprint/IFingerprintService;->startIdentify(Lcom/zui/fingerprint/IFingerprintClient;[IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 696
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager startIdentify Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateFpName(ILjava/lang/String;)I
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x76

    const/4 v5, 0x0

    .line 784
    const-string v3, "FingerprintManger updateFpName"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 786
    if-nez p2, :cond_0

    .line 788
    const-string v3, "FingerprintManger updateFpName is null!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    :goto_0
    return v1

    .line 795
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 796
    .local v2, "strTemp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 798
    :cond_1
    const-string v3, "FingerprintManger name is 0 or too length!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    .end local v2    # "strTemp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 805
    new-instance v3, Lcom/zui/fingerprint/FingerprintException;

    const-string v4, "FingerprintManager name length error Exception"

    invoke-direct {v3, v4}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 808
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "strTemp":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x65

    .line 811
    .local v1, "result":I
    :try_start_1
    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Lcom/zui/fingerprint/IFingerprintService;

    iget-object v4, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Lcom/zui/fingerprint/IFingerprintClient;

    invoke-interface {v3, v4, p1, p2}, Lcom/zui/fingerprint/IFingerprintService;->updateFpName(Lcom/zui/fingerprint/IFingerprintClient;ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 813
    :catch_1
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 816
    new-instance v3, Lcom/zui/fingerprint/FingerprintException;

    const-string v4, "FingerprintManager updateFpName Exception"

    invoke-direct {v3, v4}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
