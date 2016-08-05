.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2052
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2053
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio changed on disconnected device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2107
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio State Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bad state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2059
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 2062
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2064
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2065
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "stopping ring and request focus for call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 2068
    :cond_2
    const/4 v1, 0x2

    .line 2069
    .local v1, "newAudioMode":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2070
    .local v0, "currMode":I
    if-eq v0, v1, :cond_3

    .line 2072
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2074
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioMode Setting audio mode from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2078
    :cond_3
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "hfp_enable=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioWbs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2081
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "Setting sampling rate as 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=16000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2088
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_enable=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v6, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2091
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2085
    :cond_4
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "Setting sampling rate as 8000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=8000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 2094
    .end local v0    # "currMode":I
    .end local v1    # "newAudioMode":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2095
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v5, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2099
    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2100
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2101
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2057
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2029
    packed-switch p1, :pswitch_data_0

    .line 2044
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :goto_0
    return-void

    .line 2031
    :pswitch_0
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "Connected disconnects."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2037
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2038
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2040
    :cond_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2029
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .prologue
    .line 2018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.headsetclient.extra.RESULT_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    iget v1, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 2021
    const-string v1, "android.bluetooth.headsetclient.extra.CME_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2023
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2024
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2025
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1559
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1562
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2114
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1566
    monitor-enter p0

    :try_start_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected process message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 2012
    const/4 v0, 0x0

    .line 2014
    :goto_0
    monitor-exit p0

    return v0

    .line 1576
    :sswitch_0
    :try_start_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1577
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2014
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1582
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1587
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1566
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1593
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 1596
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 1597
    .local v8, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1602
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v8}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 1611
    .end local v8    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1617
    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1622
    :sswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->startVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1624
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x5

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1626
    :cond_3
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1631
    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->stopVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1633
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x6

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1635
    :cond_4
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1640
    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1641
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1644
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1649
    :sswitch_8
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfp_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1652
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1655
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x8

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1660
    :sswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1661
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x9

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1663
    :cond_7
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Cannot redial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1667
    :sswitch_a
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1668
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0xa

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1670
    :cond_8
    const-string v1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1674
    :sswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialMemoryNative(I)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1675
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0xb

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1677
    :cond_9
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1681
    :sswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1684
    :sswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1687
    :sswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1690
    :sswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1693
    :sswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1696
    :sswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1699
    :sswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendDtmfNative(B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1700
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x11

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1702
    :cond_a
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t send DTMF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1706
    :sswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->retrieveSubscriberInfoNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1707
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x34

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1709
    :cond_b
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1713
    :sswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestLastVoiceTagNumberNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1714
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x13

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1716
    :cond_c
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t get last VTAG number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1720
    :sswitch_15
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    goto/16 :goto_1

    .line 1723
    :sswitch_16
    const/4 v11, 0x0

    .line 1724
    .local v11, "intent":Landroid/content/Intent;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1729
    .local v10, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2006
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1731
    :pswitch_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Connection state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1736
    :pswitch_1
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Audio state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1741
    :pswitch_2
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Network state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1745
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1749
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1751
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1752
    const-string v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    :cond_d
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1757
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentOperatorNameNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1762
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x33

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1764
    :cond_e
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t querry operator name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1769
    :pswitch_3
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Roaming state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1773
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1777
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1780
    :pswitch_4
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1784
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1785
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1788
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1791
    :pswitch_5
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1795
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1799
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1802
    :pswitch_6
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Operator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1806
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1810
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1813
    :pswitch_7
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Voice recognition state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1818
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1821
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1822
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1826
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1829
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallSetupIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1832
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallHeldIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1835
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateRespAndHold(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1838
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateClip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1841
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCallWaiting(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1844
    :pswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1846
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1847
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1849
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1850
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1854
    :pswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    iget-object v3, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget v4, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    :goto_2
    iget v5, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_3
    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x0

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    goto :goto_3

    .line 1864
    :pswitch_10
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_11

    .line 1865
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1867
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1868
    :cond_11
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1870
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1869
    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 1874
    :pswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1877
    .local v13, "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v13, :cond_13

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_14

    .line 1878
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1882
    :cond_14
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: command result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queuedAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1964
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1888
    :sswitch_17
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_15

    .line 1889
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    .line 1890
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1897
    :cond_15
    :goto_5
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1901
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1902
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1893
    :cond_16
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    goto :goto_5

    .line 1905
    :sswitch_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1908
    :sswitch_19
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_17

    .line 1909
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1911
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v0

    if-nez v0, :cond_19

    .line 1912
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 1914
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1916
    :cond_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1918
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1922
    :cond_19
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1932
    :sswitch_1a
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1a

    .line 1933
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1935
    :cond_1a
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1941
    :sswitch_1b
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1942
    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1944
    .local v6, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    invoke-static {v0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 1946
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1948
    .end local v6    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1b
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1952
    :sswitch_1c
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v0, :cond_0

    .line 1953
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1971
    .end local v13    # "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :pswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1972
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1976
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1979
    :pswitch_13
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1980
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NUMBER"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1982
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1983
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1986
    :pswitch_14
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "start ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1988
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ring already playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1991
    :cond_1c
    const/4 v12, 0x1

    .line 1992
    .local v12, "newAudioMode":I
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    .line 1993
    .local v7, "currMode":I
    if-eq v7, v12, :cond_1d

    .line 1995
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 1997
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode Setting audio mode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 2001
    :cond_1d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1574
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x34 -> :sswitch_13
        0x64 -> :sswitch_16
    .end sparse-switch

    .line 1729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_e
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 1885
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_17
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0xe -> :sswitch_1a
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x32 -> :sswitch_18
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1b
        0x36 -> :sswitch_1
    .end sparse-switch
.end method
