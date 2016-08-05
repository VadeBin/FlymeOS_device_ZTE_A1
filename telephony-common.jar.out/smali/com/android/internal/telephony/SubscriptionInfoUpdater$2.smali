.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v14, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, "slotId":I
    const-string v8, ""

    .line 222
    .local v8, "simStatus":Ljava/lang/String;
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 224
    :cond_0
    const-string v13, "phone"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 227
    const/4 v13, -0x1

    if-ne v9, v13, :cond_1

    .line 317
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 235
    :cond_2
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 236
    const-string v13, "ABSENT"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v15, 0x4

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 316
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v14, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_5
    const-string v13, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 242
    const-string v13, "LOCKED"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 243
    const-string v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v15, 0x5

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 246
    .end local v7    # "reason":Ljava/lang/String;
    :cond_6
    const-string v13, "LOADED"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v15, 0x3

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v14, 0xa

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$202(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    goto :goto_1

    .line 250
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :cond_8
    const-string v13, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 254
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300()I

    move-result v13

    if-ge v3, v13, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->clearIccId(I)V
    invoke-static {v13, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 257
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 258
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sUpdateIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600()Landroid/content/Intent;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 259
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$700()Landroid/content/Context;

    move-result-object v13

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sUpdateIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 261
    .end local v3    # "i":I
    :cond_a
    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .line 263
    .local v11, "subIdList":[I
    move-object v2, v11

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v6, :cond_3

    aget v10, v2, v4

    .line 264
    .local v10, "subId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubName(I)V
    invoke-static {v13, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$800(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 266
    .end local v2    # "arr$":[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "subId":I
    .end local v11    # "subIdList":[I
    :cond_b
    const-string v13, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 267
    const-string v13, "phone"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Common Slot] NO_CHANTED, slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v15, 0x67

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 271
    :cond_c
    const-string v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 272
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v12

    .line 273
    .local v12, "svlteSlotId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "oldSvlteSlotId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I
    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", svlteSlotId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v13

    if-eq v13, v12, :cond_3

    .line 275
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    array-length v13, v13

    if-ge v3, v13, :cond_d

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lte ci:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nlte ci:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " active ci:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 283
    :cond_d
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    array-length v13, v13

    if-ge v3, v13, :cond_3

    .line 284
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100()[I

    move-result-object v13

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v14, v3

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unregister for mCis["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v15

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 292
    .end local v3    # "i":I
    .end local v12    # "svlteSlotId":I
    :cond_e
    const-string v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 293
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v12

    .line 294
    .restart local v12    # "svlteSlotId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "oldSvlteSlotId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I
    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", svlteSlotId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v13

    if-eq v13, v12, :cond_3

    .line 296
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    array-length v13, v13

    if-ge v3, v13, :cond_f

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v14, v3

    .line 299
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 300
    .local v5, "index":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v15, 0x66

    invoke-interface {v13, v14, v15, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v15, 0x65

    invoke-interface {v13, v14, v15, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mCis["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v15

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lte ci:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nlte ci:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "svlte"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " active ci:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 312
    .end local v5    # "index":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I
    invoke-static {v13, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$902(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    goto/16 :goto_1
.end method
