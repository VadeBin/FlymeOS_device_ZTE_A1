.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
.super Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.source "GsmVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;
    }
.end annotation


# static fields
.field public static final MSG_ERROR_CAMERA:I = 0x8003

.field public static final MSG_ERROR_CODEC:I = 0x8004

.field public static final MSG_ERROR_SERVER_DIED:I = 0x8002

.field public static final MSG_ERROR_SERVICE:I = 0x8001

.field public static final MSG_NOTIFY_CALL_END:I = 0xa

.field public static final MSG_NOTIFY_CAM_CAP_CHANGED:I = 0x4007

.field public static final MSG_NOTIFY_CLOSE:I = 0x1001

.field public static final MSG_NOTIFY_CONNECTED:I = 0x1004

.field public static final MSG_NOTIFY_DATA_USAGE_CHANGED:I = 0x4006

.field public static final MSG_NOTIFY_DISCONNECTED:I = 0x1005

.field public static final MSG_NOTIFY_HANDLE_CALL_SESSION_EVT:I = 0x4003

.field public static final MSG_NOTIFY_LOCAL_SIZE_CHANGED:I = 0x4005

.field public static final MSG_NOTIFY_OPEN:I = 0x1002

.field public static final MSG_NOTIFY_PEER_CAMERA_CLOSE:I = 0x3

.field public static final MSG_NOTIFY_PEER_CAMERA_OPEN:I = 0x2

.field public static final MSG_NOTIFY_PEER_SIZE_CHANGED:I = 0x4004

.field public static final MSG_NOTIFY_READY:I = 0x1003

.field public static final MSG_NOTIFY_RECEIVE_FIRSTFRAME:I = 0x1

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_COMPLETE:I = 0x9

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x8

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x6

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x7

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_UNKNOWN:I = 0x5

.field public static final MSG_NOTIFY_RECV_SESSION_CONFIG_REQ:I = 0x4001

.field public static final MSG_NOTIFY_RECV_SESSION_CONFIG_RSP:I = 0x4002

.field public static final MSG_NOTIFY_SNAPSHOT_DONE:I = 0x4

.field public static final MSG_NOTIFY_START_COUNTER:I = 0x1007

.field public static final QUIT_THREAD:I = 0x8000000

.field public static final SET_VT_CLOSE:I = 0x0

.field public static final SET_VT_CONNECTED:I = 0x3

.field public static final SET_VT_OPEN:I = 0x1

.field public static final SET_VT_READY:I = 0x2

.field static final TAG:Ljava/lang/String; = "GsmVTProvider"

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field private static mDefaultId:I


# instance fields
.field private mClosingVTService:Z

.field private mEndCallLock:Ljava/lang/Integer;

.field private mId:I

.field mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

.field private mStartVTSMALFail:Z

.field mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

.field private mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "ro.mtk_vt3g324m_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "mtk_vt_client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 72
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 76
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mEndCallLock:Ljava/lang/Integer;

    .line 78
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mClosingVTService:Z

    .line 79
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mStartVTSMALFail:Z

    .line 102
    const-string v0, "GsmVTProvider"

    const-string v1, "New GsmVTProvider without id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 106
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    .line 107
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 72
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 76
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mEndCallLock:Ljava/lang/Integer;

    .line 78
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mClosingVTService:Z

    .line 79
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mStartVTSMALFail:Z

    .line 84
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New GsmVTProvider id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 87
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    .line 89
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->onSetVTOpen()V

    .line 95
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 98
    :cond_0
    return-void
.end method

.method public static native closeVTService()I
.end method

.method public static native initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nGetCameraParameters(I)Ljava/lang/String;
.end method

.method public static native nGetCameraSensorCount(I)I
.end method

.method public static native nInitialization(I)I
.end method

.method public static native nRequestCallDataUsage(I)I
.end method

.method public static native nRequestCameraCapabilities(I)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(ILjava/lang/String;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native onUserInput(Ljava/lang/String;)V
.end method

.method public static native openVTService(I)I
.end method

.method public static postEventFromNative(IIIILjava/lang/Object;)V
    .locals 4
    .param p0, "what"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 473
    const-string v1, "GsmVTProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventFromNative ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v0

    .line 477
    .local v0, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 478
    return-void
.end method

.method public static native setEM(III)V
.end method

.method public static native setEndCallFlag()V
.end method

.method public static native setLocalView(ILjava/lang/String;)V
.end method

.method public static native setPeerView(ILjava/lang/String;)I
.end method

.method public static native setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I
.end method

.method public static native startVTService()I
.end method

.method public static native stopVTService()I
.end method

.method public static native switchCamera()I
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    return v0
.end method

.method public getParameters()Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    .locals 4

    .prologue
    .line 444
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v2, v3, :cond_0

    .line 445
    const-string v2, "GsmVTProvider"

    const-string v3, "getParameters, vtmanager state error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    .line 449
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;-><init>()V

    .line 450
    .local v0, "p":Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nGetCameraParameters(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->unflatten(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->dump()V

    goto :goto_0
.end method

.method public onOnDisconnected()V
    .locals 3

    .prologue
    .line 322
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTDisconnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v2, :cond_0

    .line 325
    const-string v1, "GsmVTProvider"

    const-string v2, "onDisconnected, VT Manager alreay closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEndCallFlag()V

    .line 330
    const-string v1, "GsmVTProvider"

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-eq v1, v2, :cond_1

    .line 332
    const-string v1, "GsmVTProvider"

    const-string v2, "onDisconnected, VT Manager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->stopVTService()I

    move-result v0

    .line 336
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 337
    const-string v1, "GsmVTProvider"

    const-string v2, "onDisconnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->READY:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 342
    const-string v1, "GsmVTProvider"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v1, 0x1005

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 345
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTDisconnected finish"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOnUserInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v0, v1, :cond_0

    .line 421
    const-string v0, "GsmVTProvider"

    const-string v1, "onUserInput, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 184
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 187
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 349
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->setLocalSurface(Landroid/view/Surface;)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->setPeerSurface(Landroid/view/Surface;)V

    .line 352
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 175
    return-void
.end method

.method public onSetLocalView(ILjava/lang/String;)V
    .locals 3
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "GsmVTProvider"

    const-string v1, "onSetLocalView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 361
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v0, v2, :cond_0

    .line 362
    monitor-exit v1

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setLocalView(ILjava/lang/String;)V

    .line 365
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSetPauseImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public onSetPeerView(ILjava/lang/String;)V
    .locals 2
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string v0, "GsmVTProvider"

    const-string v1, "setPeerView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v0, v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setPeerView(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 172
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onSetVTClose()V
    .locals 4

    .prologue
    .line 294
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v2, :cond_0

    .line 297
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTCloseImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->deinit()V

    .line 302
    const/16 v1, 0x1001

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mClosingVTService:Z

    .line 307
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 308
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->closeVTService()I

    move-result v0

    .line 309
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 310
    const-string v1, "GsmVTProvider"

    const-string v3, "setVTCloseImpl, error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    monitor-exit v2

    goto :goto_0

    .line 316
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 313
    .restart local v0    # "ret":I
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mStartVTSMALFail:Z

    .line 315
    const-string v1, "GsmVTProvider"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const-string v1, "GsmVTProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVTClose finish, mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetVTConnected()V
    .locals 3

    .prologue
    .line 270
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v2, :cond_1

    .line 276
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->startVTService()I

    move-result v0

    .line 281
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 282
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 286
    const-string v1, "GsmVTProvider"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v1, 0x1004

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 290
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTConnected finish"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetVTOpen()V
    .locals 8

    .prologue
    const/16 v7, 0x1c

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTOpen start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v3, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 204
    invoke-static {v4, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 205
    invoke-static {v4, v4, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 206
    const/4 v1, 0x2

    invoke-static {v4, v1, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 207
    invoke-static {v4, v5, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 208
    const/4 v1, 0x4

    invoke-static {v4, v1, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 209
    const/4 v1, 0x5

    invoke-static {v4, v1, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 210
    const/4 v1, 0x6

    invoke-static {v4, v1, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 211
    invoke-static {v5, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 212
    invoke-static {v5, v4, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 213
    const/4 v1, 0x4

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 214
    const/4 v1, 0x4

    invoke-static {v1, v4, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 215
    const/4 v1, 0x5

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 216
    const/4 v1, 0x6

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 217
    const/4 v1, 0x7

    invoke-static {v1, v4, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 218
    invoke-static {v6, v3, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 219
    invoke-static {v6, v4, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 220
    const/4 v1, 0x2

    invoke-static {v6, v1, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 221
    invoke-static {v6, v5, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 222
    const/16 v1, 0x9

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setEM(III)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-eq v1, v2, :cond_0

    .line 225
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTOpen, mState != State.CLOSE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->init(Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 230
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mClosingVTService:Z

    .line 232
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->openVTService(I)I

    move-result v0

    .line 233
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 234
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTOpenImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->OPEN:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 238
    const-string v1, "GsmVTProvider"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v1, 0x1002

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 241
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTOpen finish"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetVTReady()V
    .locals 3

    .prologue
    .line 245
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTReady start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->OPEN:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-eq v1, v2, :cond_0

    .line 248
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTReadyImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I

    move-result v0

    .line 254
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mStartVTSMALFail:Z

    .line 256
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTReadyImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->READY:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 261
    const-string v1, "GsmVTProvider"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getCameraSettings()V

    .line 265
    const/16 v1, 0x1003

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 266
    const-string v1, "GsmVTProvider"

    const-string v2, "setVTReady finish"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetVTVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 394
    const-string v0, "GsmVTProvider"

    const-string v2, " => setVTVisible()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v0, v2, :cond_0

    .line 417
    :goto_0
    return-void

    .line 398
    :cond_0
    if-nez p1, :cond_1

    .line 399
    const-string v0, "GsmVTProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " => setVTVisible() - isVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localS=null, peerS= null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    .line 416
    :goto_1
    const-string v0, "GsmVTProvider"

    const-string v1, " <= setVTVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    if-nez v0, :cond_2

    .line 403
    const-string v0, "GsmVTProvider"

    const-string v1, "error setVTVisible, null == mSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_3

    .line 407
    const-string v0, "GsmVTProvider"

    const-string v1, "error setVTVisible, null == getPeerSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_4

    .line 411
    const-string v0, "GsmVTProvider"

    const-string v1, "error setVTVisible, null == getSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_4
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_1
.end method

.method public onSetZoom(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 181
    return-void
.end method

.method public onSwitchCamera()V
    .locals 4

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "ret":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 379
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v3, :cond_1

    .line 380
    const-string v1, "GsmVTProvider"

    const-string v3, "onSwitchCamera, VT Manager alreay closed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v2

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->switchCamera()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mSettings:Lcom/mediatek/internal/telephony/gsm/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getCameraSettings()V

    .line 385
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    const-string v1, "GsmVTProvider"

    const-string v2, "onSwitchCamera, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSwitchDisplaySurface()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public setId(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/16 v3, -0x2710

    .line 110
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    if-ne v0, v3, :cond_0

    .line 114
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 115
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 116
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->onSetVTOpen()V

    .line 120
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    if-ne v0, v3, :cond_0

    .line 121
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 124
    :cond_0
    return-void
.end method

.method public setParameters(Lcom/mediatek/internal/telephony/gsm/CameraParamters;)V
    .locals 2
    .param p1, "params"    # Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .prologue
    .line 428
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v0, v1, :cond_0

    .line 429
    const-string v0, "GsmVTProvider"

    const-string v1, "setParameters, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    return-void

    .line 433
    :cond_0
    if-nez p1, :cond_1

    .line 434
    const-string v0, "GsmVTProvider"

    const-string v1, "setParameters: params == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, "GsmVTProvider"

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCameraParameters(ILjava/lang/String;)I

    .line 440
    const-string v0, "GsmVTProvider"

    const-string v1, "setParameters ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateParameters(Lcom/mediatek/internal/telephony/gsm/CameraParamters;)Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    .locals 3
    .param p1, "p"    # Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .prologue
    .line 457
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mState:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    if-ne v1, v2, :cond_0

    .line 458
    const-string v1, "GsmVTProvider"

    const-string v2, "updateParameters, vtmanager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 p1, 0x0

    .line 469
    .end local p1    # "p":Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    :goto_0
    return-object p1

    .line 462
    .restart local p1    # "p":Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    :cond_0
    if-nez p1, :cond_1

    .line 463
    const-string v1, "GsmVTProvider"

    const-string v2, "updateParameters: p == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nGetCameraParameters(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->unflatten(Ljava/lang/String;)V

    goto :goto_0
.end method
