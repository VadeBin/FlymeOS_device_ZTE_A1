.class public Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2

.field static final TAG:Ljava/lang/String; = "GsmVideoCallProviderWrapper"


# instance fields
.field private final mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V
    .locals 3
    .param p1, "VideoProvider"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 163
    const-string v0, "GsmVideoCallProviderWrapper"

    const-string v1, "New GsmVideoCallProviderWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 167
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onOnDisconnected()V
    .locals 1

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOnUserInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->onUserInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRequestCameraCapabilities()V
    .locals 1

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRequestConnectionDataUsage()V
    .locals 1

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 1
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetLocalView(ILjava/lang/String;)V
    .locals 1
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setLocalView(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetPauseImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetPeerView(ILjava/lang/String;)V
    .locals 1
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPeerView(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetUIMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setUIMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetVTClose()V
    .locals 1

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setVTClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetVTConnected()V
    .locals 1

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setVTConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetVTOpen()V
    .locals 1

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setVTOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetVTReady()V
    .locals 1

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setVTReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetVTVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setVTVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSwitchCamera()V
    .locals 1

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSwitchDisplaySurface()V
    .locals 1

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->switchDisplaySurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method
