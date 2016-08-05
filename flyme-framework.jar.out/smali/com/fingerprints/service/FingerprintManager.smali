.class public Lcom/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/FingerprintManager$CaptureCallback;,
        Lcom/fingerprints/service/FingerprintManager$EnrolCallback;,
        Lcom/fingerprints/service/FingerprintManager$EventHandler;,
        Lcom/fingerprints/service/FingerprintManager$GuidedData;,
        Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;,
        Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRect;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;,
        Lcom/fingerprints/service/FingerprintManager$GuidedResult;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field static final MSG_CAPTURE_FAILED:I = 0x13

.field static final MSG_ENROLL_EXIST:I = 0x16

.field static final MSG_ENROLL_RESET:I = 0x17

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field static final MSG_VERIFY_FINGER_DOWN:I = 0x14

.field static final MSG_VERIFY_FINGER_UP:I = 0x15

.field static final MSG_WAITING_FINGER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static mBundle:Landroid/os/Bundle;

.field private static mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private idr:Landroid/os/IBinder$DeathRecipient;

.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mClient:Lcom/fingerprints/service/IFingerprintClient;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mService:Lcom/fingerprints/service/IFingerprintService;

.field private mServiceBinder:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    new-instance v2, Lcom/fingerprints/service/FingerprintManager$1;

    invoke-direct {v2, p0}, Lcom/fingerprints/service/FingerprintManager$1;-><init>(Lcom/fingerprints/service/FingerprintManager;)V

    iput-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->idr:Landroid/os/IBinder$DeathRecipient;

    .line 627
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mServiceBinder:Landroid/os/IBinder;

    .line 629
    :try_start_0
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mServiceBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager;->idr:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v2

    iput-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    .line 636
    new-instance v1, Lcom/fingerprints/service/FingerprintManager$EventHandler;

    invoke-direct {v1, p0, p2}, Lcom/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    .line 637
    .local v1, "handler":Lcom/fingerprints/service/FingerprintManager$EventHandler;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 638
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 640
    new-instance v2, Lcom/fingerprints/service/FingerprintManager$2;

    invoke-direct {v2, p0}, Lcom/fingerprints/service/FingerprintManager$2;-><init>(Lcom/fingerprints/service/FingerprintManager;)V

    iput-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 684
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v2, v3}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 630
    .end local v1    # "handler":Lcom/fingerprints/service/FingerprintManager$EventHandler;
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handler":Lcom/fingerprints/service/FingerprintManager$EventHandler;
    :cond_0
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    .line 688
    return-void
.end method

.method private PackGuidedData()V
    .locals 50

    .prologue
    .line 265
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "progress"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 266
    .local v30, "mGuidedProgress":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "next_direction"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 267
    .local v31, "mGuidedNextDirection":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "acceptance"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 268
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "stitched"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 270
    .local v7, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "immobile"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 272
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "reject_reason"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 273
    .local v45, "reason":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskNumber"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 274
    .local v44, "mGuidedNumberOfMask":I
    const/16 v42, 0x0

    .line 275
    .local v42, "mGuidedLowCoverage":Z
    const/16 v43, 0x0

    .line 276
    .local v43, "mGuidedLowQuality":Z
    sparse-switch v45, :sswitch_data_0

    .line 288
    :goto_2
    new-instance v9, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v9, v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;-><init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V

    .line 290
    .local v9, "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/fingerprints/service/FingerprintManager$GuidedResult;-><init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V

    .line 292
    .local v4, "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    new-instance v12, Landroid/graphics/Point;

    .line 293
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    .line 294
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    .line 292
    invoke-direct {v12, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 295
    .local v12, "lastTouch_bottom_left":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    .line 296
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    .line 297
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    .line 295
    invoke-direct {v13, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 298
    .local v13, "lastTouch_bottom_right":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    .line 299
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    .line 300
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    .line 298
    invoke-direct {v14, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 301
    .local v14, "lastTouch_top_left":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    .line 302
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    .line 303
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    .line 301
    invoke-direct {v15, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 304
    .local v15, "lastTouch_top_right":Landroid/graphics/Point;
    new-instance v18, Landroid/graphics/Point;

    .line 305
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    .line 306
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    .line 304
    move-object/from16 v0, v18

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 307
    .local v18, "nextTouch_bottom_left":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    .line 308
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    .line 309
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    .line 307
    move-object/from16 v0, v19

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 310
    .local v19, "nextTouch_bottom_right":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Point;

    .line 311
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    .line 312
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    .line 310
    move-object/from16 v0, v20

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 313
    .local v20, "nextTouch_top_left":Landroid/graphics/Point;
    new-instance v21, Landroid/graphics/Point;

    .line 314
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    .line 315
    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    .line 313
    move-object/from16 v0, v21

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 316
    .local v21, "nextTouch_top_right":Landroid/graphics/Point;
    new-instance v10, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 318
    .local v10, "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v16, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 321
    .local v16, "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v40, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v44

    if-lt v0, v1, :cond_2

    .line 349
    new-instance v35, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;-><init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V

    .line 352
    .local v35, "mGuidedMaskList":Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
    new-instance v28, Lcom/fingerprints/service/FingerprintManager$GuidedData;

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    move-object/from16 v34, v16

    invoke-direct/range {v28 .. v35}, Lcom/fingerprints/service/FingerprintManager$GuidedData;-><init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V

    .line 355
    .local v28, "mGuidedData":Lcom/fingerprints/service/FingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V

    .line 356
    return-void

    .line 269
    .end local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .end local v7    # "mGuidedStitched":Z
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .end local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .end local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .end local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .end local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .end local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .end local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .end local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .end local v28    # "mGuidedData":Lcom/fingerprints/service/FingerprintManager$GuidedData;
    .end local v35    # "mGuidedMaskList":Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
    .end local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .end local v41    # "i":I
    .end local v42    # "mGuidedLowCoverage":Z
    .end local v43    # "mGuidedLowQuality":Z
    .end local v44    # "mGuidedNumberOfMask":I
    .end local v45    # "reason":I
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 271
    .restart local v7    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 279
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v42    # "mGuidedLowCoverage":Z
    .restart local v43    # "mGuidedLowQuality":Z
    .restart local v44    # "mGuidedNumberOfMask":I
    .restart local v45    # "reason":I
    :sswitch_0
    const/16 v43, 0x1

    .line 280
    goto/16 :goto_2

    .line 282
    :sswitch_1
    const/16 v42, 0x1

    .line 283
    goto/16 :goto_2

    .line 333
    .restart local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .restart local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .restart local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .restart local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .restart local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .restart local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .restart local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .restart local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .restart local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .restart local v41    # "i":I
    :cond_2
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x0

    aget v36, v5, v11

    .line 334
    .local v36, "bottomLeftX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x1

    aget v37, v5, v11

    .line 335
    .local v37, "bottomLeftY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x2

    aget v38, v5, v11

    .line 336
    .local v38, "bottomRightX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x3

    aget v39, v5, v11

    .line 337
    .local v39, "bottomRightY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x4

    aget v46, v5, v11

    .line 338
    .local v46, "topLeftX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x5

    aget v47, v5, v11

    .line 339
    .local v47, "topLeftY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x6

    aget v48, v5, v11

    .line 340
    .local v48, "topRightX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x7

    aget v49, v5, v11

    .line 341
    .local v49, "topRightY":I
    new-instance v26, Landroid/graphics/Point;

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 342
    .local v26, "pointTopLeft":Landroid/graphics/Point;
    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 343
    .local v27, "pointTopRight":Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 344
    .local v24, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    move-object/from16 v0, v25

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 345
    .local v25, "pointBottomRight":Landroid/graphics/Point;
    new-instance v22, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 347
    .local v22, "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 790
    sput-object p0, Lcom/fingerprints/service/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    return-void
.end method

.method static synthetic access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$5()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$7()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getManager()Lcom/fingerprints/service/FingerprintManager;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    goto :goto_0
.end method

.method public static open()Lcom/fingerprints/service/FingerprintManager;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 595
    :try_start_0
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 596
    .local v2, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 597
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 596
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 598
    .local v1, "getService":Ljava/lang/reflect/Method;
    new-instance v5, Lcom/fingerprints/service/FingerprintManager;

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 599
    const-string v8, "fingerprints_service"

    aput-object v8, v6, v7

    .line 598
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 599
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 598
    invoke-direct {v5, v3, v6}, Lcom/fingerprints/service/FingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V

    sput-object v5, Lcom/fingerprints/service/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 601
    sget-object v3, Lcom/fingerprints/service/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 621
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v4

    .line 604
    goto :goto_0

    .line 605
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v3, v4

    .line 621
    goto :goto_0

    .line 608
    :catch_2
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 611
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 614
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 617
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFingerData(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIdName(I)Ljava/lang/String;
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-interface {v1, p1}, Lcom/fingerprints/service/IFingerprintService;->getNameById(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 841
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIds()[I
    .locals 4

    .prologue
    .line 748
    :try_start_0
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mService===>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mClient===>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 753
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 699
    return-void
.end method

.method public setIdName(ILjava/lang/String;)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-interface {v1, p1, p2}, Lcom/fingerprints/service/IFingerprintService;->setIdName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 732
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    .locals 4
    .param p1, "identifyCallback"    # Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 773
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 776
    :cond_1
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 778
    :try_start_0
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ids:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
