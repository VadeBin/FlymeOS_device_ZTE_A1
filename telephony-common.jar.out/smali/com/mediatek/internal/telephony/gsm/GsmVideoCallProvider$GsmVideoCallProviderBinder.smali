.class final Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;
.super Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsmVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 234
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 235
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 236
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public setLocalView(ILjava/lang/String;)V
    .locals 3
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 246
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 247
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public setPeerView(ILjava/lang/String;)V
    .locals 3
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 253
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 254
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    return-void
.end method

.method public setUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

.method public setVTConnected()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public setVTOpen()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method public setVTReady()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method

.method public switchDisplaySurface()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    return-void
.end method
