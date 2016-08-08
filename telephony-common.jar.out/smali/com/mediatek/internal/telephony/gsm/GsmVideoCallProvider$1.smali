.class Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;
.super Landroid/os/Handler;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    # setter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$002(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 81
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 84
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 87
    :sswitch_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetZoom(F)V

    goto :goto_0

    .line 90
    :sswitch_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 93
    :sswitch_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 96
    :sswitch_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 99
    :sswitch_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onRequestCallDataUsage()V

    goto :goto_0

    .line 102
    :sswitch_a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :sswitch_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetUIMode(I)V

    goto :goto_0

    .line 109
    :sswitch_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetVTOpen()V

    goto :goto_0

    .line 113
    :sswitch_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetVTReady()V

    goto/16 :goto_0

    .line 116
    :sswitch_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetVTConnected()V

    goto/16 :goto_0

    .line 119
    :sswitch_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetVTClose()V

    goto/16 :goto_0

    .line 122
    :sswitch_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onOnDisconnected()V

    goto/16 :goto_0

    .line 125
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 126
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSwitchDisplaySurface()V

    goto/16 :goto_0

    .line 133
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 134
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetLocalView(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 139
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetPeerView(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSwitchCamera()V

    goto/16 :goto_0

    .line 146
    :sswitch_16
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetVTVisible(Z)V

    goto/16 :goto_0

    .line 149
    :sswitch_17
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onOnUserInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_e
        0x68 -> :sswitch_f
        0x69 -> :sswitch_10
        0x6a -> :sswitch_11
        0x6b -> :sswitch_12
        0x6c -> :sswitch_13
        0x6d -> :sswitch_14
        0x6e -> :sswitch_15
        0x6f -> :sswitch_16
        0x70 -> :sswitch_17
    .end sparse-switch
.end method
