.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const v2, 0x11002

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState: shouldn\'t happen but ignore msg.what=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 570
    :goto_0
    return v7

    .line 506
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1102(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v4

    const-string v5, "hi"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto :goto_0

    .line 521
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1102(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 530
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    move v6, v7

    .line 532
    .local v6, "val":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x44007

    if-eqz v6, :cond_1

    move v3, v7

    :cond_1
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .end local v6    # "val":Z
    :cond_2
    move v6, v3

    .line 530
    goto :goto_1

    .line 536
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v1

    if-ne v0, v1, :cond_5

    :cond_3
    move v6, v7

    .line 539
    .restart local v6    # "val":Z
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x44009

    if-eqz v6, :cond_4

    move v3, v7

    :cond_4
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v6    # "val":Z
    :cond_5
    move v6, v3

    .line 536
    goto :goto_2

    .line 545
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "DefaultState: unhandle REQ_PRECHECK_DONE"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x4400d

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 552
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "DefaultState: get DC switch state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x4400f

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->convertState(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 559
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "DefaultState: EVENT_DATA_DETACHED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsAttached:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1402(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    goto/16 :goto_0

    .line 504
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x44006 -> :sswitch_3
        0x44008 -> :sswitch_4
        0x4400b -> :sswitch_7
        0x4400c -> :sswitch_5
        0x4400e -> :sswitch_6
    .end sparse-switch
.end method
