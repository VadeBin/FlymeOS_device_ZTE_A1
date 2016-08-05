.class Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForP2pDisableState"
.end annotation


# instance fields
.field private mTransitionToState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6712
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 6716
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6717
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 6733
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    .line 6736
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20084

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6737
    return-void

    .line 6719
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 6722
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 6725
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 6729
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 6717
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_2
        0x20012 -> :sswitch_1
        0x20048 -> :sswitch_3
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 6740
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6742
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 6773
    const/4 v0, 0x0

    .line 6775
    :goto_0
    return v0

    .line 6745
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6746
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "state == ScanModeState, setWifiState(WIFI_STATE_DISABLED)"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6747
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6750
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 6769
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$9100()I

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6770
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 6742
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_1
        0x2000c -> :sswitch_1
        0x2000d -> :sswitch_1
        0x2000e -> :sswitch_1
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_1
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_1
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_1
        0x2004b -> :sswitch_1
        0x20050 -> :sswitch_1
        0x20054 -> :sswitch_1
        0x20055 -> :sswitch_1
        0x2005a -> :sswitch_1
        0x20085 -> :sswitch_0
        0x24006 -> :sswitch_1
    .end sparse-switch
.end method
