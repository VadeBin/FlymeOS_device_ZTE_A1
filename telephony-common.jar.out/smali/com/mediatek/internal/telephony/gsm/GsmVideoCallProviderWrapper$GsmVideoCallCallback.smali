.class final Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;
.super Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsmVideoCallCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(I)V
    .locals 3
    .param p1, "dataUsage"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 92
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 77
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 78
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 79
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 80
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 82
    return-void
.end method
