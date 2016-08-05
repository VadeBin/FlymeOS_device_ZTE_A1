.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1106
    if-nez p2, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIntentReceiver Receive action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1110
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1111
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1112
    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v8, "slot"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1114
    .local v4, "slot":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIntentReceiver ACTION_SIM_STATE_CHANGED slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 1117
    const-string v8, "UiccController"

    const-string v9, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1121
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "iccType":Ljava/lang/String;
    :goto_1
    const-string v8, "READY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "USIM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1125
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v11, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->openIccApplication(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1121
    .end local v2    # "iccType":Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 1127
    .end local v4    # "slot":I
    .end local v5    # "stateExtra":Ljava/lang/String;
    :cond_4
    const-string v8, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1128
    const-string v8, "persist.radio.simswitch"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1129
    .local v3, "phoneIdFor3G":I
    if-lez v3, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-le v3, v8, :cond_6

    .line 1130
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive ACTION_RESET_MODEM: invalid phone id."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phone "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " will reset modem"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1134
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1135
    .end local v3    # "phoneIdFor3G":I
    :cond_7
    const-string v8, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1136
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v6

    .line 1137
    .local v6, "svlteSlotId":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1138
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive ACTION_SET_RADIO_TECHNOLOGY_START oldSvlteSlotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  svlteSlotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSetRadioDone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1141
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "START: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_a

    .line 1143
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1142
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1141
    .end local v1    # "i":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 1143
    .restart local v1    # "i":I
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 1145
    :cond_a
    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    .line 1146
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 1147
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1150
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1151
    const/4 v1, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_c

    .line 1152
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v8, v1

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1155
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1156
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v6, v8, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    .line 1180
    :cond_d
    :goto_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "END: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1181
    const/4 v1, 0x0

    :goto_8
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 1182
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1181
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1157
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    if-eq v8, v6, :cond_d

    .line 1158
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    .line 1159
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1162
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1164
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1165
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteIndex(I)V

    .line 1166
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 1167
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v10, v8, v9

    .line 1177
    :goto_a
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1178
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v6, v8, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    goto/16 :goto_6

    .line 1169
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v8, v6

    .line 1170
    if-nez v6, :cond_11

    .line 1171
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v10, v8, v9

    goto :goto_a

    .line 1173
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v10, v8, v9

    goto :goto_a

    .line 1180
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1182
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1184
    .end local v1    # "i":I
    .end local v6    # "svlteSlotId":I
    :cond_14
    const-string v8, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1185
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    if-nez v8, :cond_15

    .line 1186
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1188
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v6

    .line 1189
    .restart local v6    # "svlteSlotId":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "svlteSlotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1190
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive ACTION_SET_RADIO_TECHNOLOGY_DONE mSetRadioDone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bSetTrm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1192
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "START: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_b
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1193
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_18

    .line 1194
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1192
    .end local v1    # "i":I
    :cond_16
    const/4 v8, 0x0

    goto :goto_b

    .line 1194
    .restart local v1    # "i":I
    :cond_17
    const/4 v8, 0x0

    goto :goto_d

    .line 1196
    :cond_18
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    new-array v7, v8, [Lcom/android/internal/telephony/CommandsInterface;

    .line 1198
    .local v7, "tempCis":[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v8, -0x1

    if-ne v6, v8, :cond_19

    .line 1199
    const/4 v1, 0x0

    :goto_e
    array-length v8, v7

    if-ge v1, v8, :cond_1a

    .line 1200
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v8, v7, v1

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1203
    :cond_19
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1b

    .line 1204
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v7, v8

    .line 1214
    :cond_1a
    :goto_f
    const/4 v1, 0x0

    :goto_10
    array-length v8, v7

    if-ge v1, v8, :cond_1e

    .line 1215
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v8, v7, v1

    if-eqz v8, :cond_1d

    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_11
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1214
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1206
    :cond_1b
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v8, v7, v6

    .line 1207
    if-nez v6, :cond_1c

    .line 1208
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v7, v8

    goto :goto_f

    .line 1210
    :cond_1c
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v7, v8

    goto :goto_f

    .line 1215
    :cond_1d
    const/4 v8, 0x0

    goto :goto_11

    .line 1217
    :cond_1e
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_23

    .line 1218
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    :cond_1f
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_22

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 1220
    :cond_20
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v9, "at least one CI changed"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1221
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot[0].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1222
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1223
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1224
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-nez v8, :cond_21

    .line 1225
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v9, "sorry, at least one change as null, unSetCis/setCis limitation, abort"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    :cond_21
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v7, v10

    aput-object v10, v8, v9

    .line 1252
    :cond_22
    :goto_12
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "END: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_2a

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_13
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1253
    const/4 v1, 0x0

    :goto_14
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 1254
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_15
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1232
    :cond_23
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_24

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_24
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_25
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_26

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_26
    const/4 v8, 0x1

    aget-object v8, v7, v8

    if-eqz v8, :cond_22

    const/4 v8, 0x1

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 1236
    :cond_27
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v9, "at least one CI changed"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1237
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot[0].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1238
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot[1].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1239
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1240
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1241
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCis[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1242
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempCis[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1243
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_28

    const/4 v8, 0x1

    aget-object v8, v7, v8

    if-nez v8, :cond_29

    .line 1244
    :cond_28
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v9, "sorry, at least one change as null, unSetCis/setCis limitation, abort"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1248
    :cond_29
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v7, v10

    aput-object v10, v8, v9

    .line 1249
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v7, v10

    aput-object v10, v8, v9

    goto/16 :goto_12

    .line 1252
    :cond_2a
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 1254
    :cond_2b
    const/4 v8, 0x0

    goto/16 :goto_15
.end method
