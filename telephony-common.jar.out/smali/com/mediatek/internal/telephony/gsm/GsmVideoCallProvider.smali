.class public abstract Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.super Ljava/lang/Object;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;
    }
.end annotation


# static fields
.field private static final MSG_MTK_BASE:I = 0x64

.field private static final MSG_ON_DISCONNECTED:I = 0x69

.field private static final MSG_ON_USER_INPUT:I = 0x70

.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY:I = 0x6a

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_LOCAL_VIEW:I = 0x6c

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PEER_VIEW:I = 0x6d

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_UI_MODE:I = 0x64

.field private static final MSG_SET_VT_CLOSE:I = 0x68

.field private static final MSG_SET_VT_CONNECTED:I = 0x67

.field private static final MSG_SET_VT_OPEN:I = 0x65

.field private static final MSG_SET_VT_READY:I = 0x66

.field private static final MSG_SET_VT_VISIBLE:I = 0x6f

.field private static final MSG_SET_ZOOM:I = 0x6

.field private static final MSG_SWITCH_CAMERA:I = 0x6e

.field private static final MSG_SWITCH_DISPLAY_SURFACE:I = 0x6b


# instance fields
.field private final mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

.field private mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

.field private final mProviderHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    .line 274
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public changeCallDataUsage(I)V
    .locals 1
    .param p1, "dataUsage"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changeCallDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 1
    .param p1, "CameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changePeerDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract onOnDisconnected()V
.end method

.method public abstract onOnUserInput(Ljava/lang/String;)V
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetLocalView(ILjava/lang/String;)V
.end method

.method public abstract onSetPauseImage(Ljava/lang/String;)V
.end method

.method public abstract onSetPeerView(ILjava/lang/String;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetUIMode(I)V
.end method

.method public abstract onSetVTClose()V
.end method

.method public abstract onSetVTConnected()V
.end method

.method public abstract onSetVTOpen()V
.end method

.method public abstract onSetVTReady()V
.end method

.method public abstract onSetVTVisible(Z)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public abstract onSwitchCamera()V
.end method

.method public abstract onSwitchDisplaySurface()V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method
