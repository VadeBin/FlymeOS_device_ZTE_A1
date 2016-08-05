.class Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/VideoProfile;

    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 121
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 122
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 123
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 125
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-virtual {v6, v4, v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 131
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 136
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 137
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    .local v1, "height":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-virtual {v6, v5, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 144
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changeCallDataUsage(I)V

    goto :goto_0

    .line 147
    :pswitch_5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/CameraCapabilities;

    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
