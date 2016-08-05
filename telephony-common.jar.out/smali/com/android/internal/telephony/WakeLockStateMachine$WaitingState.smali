.class Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 204
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 227
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 209
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "deferring message until return to idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # invokes: Lcom/android/internal/telephony/WakeLockStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$400(Lcom/android/internal/telephony/WakeLockStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "broadcast complete, returning to idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    invoke-static {v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$500(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$600(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 219
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "mWakeLock released while still in WaitingState!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method
