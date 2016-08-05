.class Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 1039
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->access$1102(Lcom/mediatek/epdg/EpdgConnection;I)I

    .line 1040
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;
    invoke-static {v0}, Lcom/mediatek/epdg/EpdgConnection;->access$1300(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v4, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->sendMessageDelayed(IJ)V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v4, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const/16 v1, 0x15

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->access$1400(Lcom/mediatek/epdg/EpdgConnection;I)V

    .line 1051
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1055
    const/4 v0, 0x1

    .line 1057
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1081
    const/4 v0, 0x0

    .line 1084
    :goto_0
    return v0

    .line 1059
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/mediatek/epdg/EpdgConnection;->access$1500(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Message;)V

    goto :goto_0

    .line 1062
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1600(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1700(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1065
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1800(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1900(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1069
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->disconnect()V
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgConnection;->access$2000(Lcom/mediatek/epdg/EpdgConnection;)V

    .line 1071
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1072
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1800(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$2100(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1075
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->disconnect()V
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgConnection;->access$2000(Lcom/mediatek/epdg/EpdgConnection;)V

    .line 1076
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v3, 0x43b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1800(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$2200(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1057
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x10 -> :sswitch_1
        0x12 -> :sswitch_2
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
    .end sparse-switch
.end method
