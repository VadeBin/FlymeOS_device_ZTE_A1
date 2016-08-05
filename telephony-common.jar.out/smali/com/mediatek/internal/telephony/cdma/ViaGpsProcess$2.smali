.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;
.super Landroid/content/BroadcastReceiver;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 456
    const-string v9, "via-gps-mpc-setting-ip"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "ip":Ljava/lang/String;
    const-string v9, "via-gps-mpc-setting-port"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "port":Ljava/lang/String;
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[VIA] INTENT_VIA_GPS_MPC_SETTING_NOTIFY IP = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", PORT = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$300(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 502
    .end local v4    # "ip":Ljava/lang/String;
    .end local v7    # "port":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v9, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 463
    const/4 v9, 0x2

    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 464
    .local v1, "data":[I
    const/4 v9, 0x0

    const-string v10, "com.android.internal.telephony.via-simu-request-param"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    aput v10, v1, v9

    .line 465
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[VIA] INTENT_VIA_SIMU_REQUEST ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # invokes: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V
    invoke-static {v9, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$400(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;[I)V

    goto :goto_0

    .line 467
    .end local v1    # "data":[I
    :cond_2
    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 468
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$500(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v10

    # invokes: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->isActiveCdmaPhone(Lcom/android/internal/telephony/cdma/CDMAPhone;)Z
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$600(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;Lcom/android/internal/telephony/cdma/CDMAPhone;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 469
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "None Active CDMAPhone this = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_3
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_SUBINFO_RECORD_UPDATED this = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;

    .line 474
    .local v6, "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    if-eqz v6, :cond_4

    .line 475
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$800(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 478
    .end local v6    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    :cond_5
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 479
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    # setter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$902(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 480
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$900(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v9

    if-ge v2, v9, :cond_9

    .line 481
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    .line 482
    .local v8, "subIds":[I
    if-nez v8, :cond_7

    .line 480
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 485
    :cond_7
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v9, v8

    if-ge v5, v9, :cond_6

    .line 486
    aget v9, v8, v5

    if-lez v9, :cond_8

    .line 487
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add phone status listner slot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v6, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    aget v10, v8, v5

    invoke-direct {v6, v9, v2, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;II)V

    .line 492
    .restart local v6    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$800(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    const/16 v10, 0x41

    invoke-virtual {v9, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 485
    .end local v6    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 500
    .end local v5    # "j":I
    .end local v8    # "subIds":[I
    :cond_9
    const-string v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create Phone State Listener slotCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$900(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method
