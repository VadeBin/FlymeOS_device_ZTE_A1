.class Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;
.super Ljava/lang/Object;
.source "Avrcp.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControllerWeak"
.end annotation


# instance fields
.field private final mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 5
    .param p1, "clearing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 217
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 218
    const/16 v3, 0x68

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 218
    goto :goto_0
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 255
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 256
    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 258
    :cond_0
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 227
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 228
    const/16 v1, 0x64

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, -0x1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 231
    :cond_0
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 237
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 238
    const/16 v1, 0x64

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 241
    :cond_0
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 3
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 246
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 247
    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_0
    return-void
.end method
