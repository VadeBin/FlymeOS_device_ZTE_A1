.class public Lcom/android/bluetooth/opp/BluetoothOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppReceiver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppReceiver"

.field private static final V:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "action":Ljava/lang/String;
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive::action = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const/16 v2, 0xc

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 78
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Received BLUETOOTH_STATE_CHANGED_ACTION, BLUETOOTH_STATE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v2, :cond_0

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 88
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v18, "in1":Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v2, 0x10000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v18    # "in1":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    :cond_2
    const-string v2, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v19

    .line 105
    .local v19, "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "BT off, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_3
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/bluetooth/BluetoothDevice;

    .line 112
    .local v23, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received BT device selected intent, bt device: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    .line 118
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "deviceName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v9

    .line 121
    .local v9, "batchSize":I
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v2, :cond_4

    .line 122
    const v2, 0x7f05004b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v13, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 127
    .local v27, "toastMsg":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    .end local v27    # "toastMsg":Ljava/lang/String;
    :cond_4
    const v2, 0x7f05004a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "toastMsg":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v9    # "batchSize":I
    .end local v13    # "deviceName":Ljava/lang/String;
    .end local v19    # "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    .end local v23    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v27    # "toastMsg":Ljava/lang/String;
    :cond_5
    const-string v2, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Receiver ACTION_INCOMING_FILE_CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 132
    .local v30, "uri":Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v17, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 139
    .local v20, "notMgr":Landroid/app/NotificationManager;
    if-eqz v20, :cond_1

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v17    # "in":Landroid/content/Intent;
    .end local v20    # "notMgr":Landroid/app/NotificationManager;
    .end local v30    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v2, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Receiver INCOMING_FILE_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const v2, 0x7f05001e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 149
    :cond_7
    const-string v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.btopp.intent.action.LIST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 151
    :cond_8
    const-string v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver open for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_2
    new-instance v28, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 159
    .local v28, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 160
    .restart local v30    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v28

    .line 161
    if-nez v28, :cond_a

    .line 162
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    .end local v28    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v30    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver list for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 166
    .restart local v28    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .restart local v30    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 169
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v2, v3, v5, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 171
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    :goto_3
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 181
    .restart local v20    # "notMgr":Landroid/app/NotificationManager;
    if-eqz v20, :cond_1

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 183
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    .end local v20    # "notMgr":Landroid/app/NotificationManager;
    :cond_b
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .restart local v17    # "in":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 185
    .end local v17    # "in":Landroid/content/Intent;
    .end local v28    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v30    # "uri":Landroid/net/Uri;
    :cond_c
    const-string v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 186
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Received ACTION_OPEN_OUTBOUND_TRANSFER."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .restart local v17    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    const-string v2, "direction"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 192
    .end local v17    # "in":Landroid/content/Intent;
    :cond_d
    const-string v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 193
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Received ACTION_OPEN_INBOUND_TRANSFER."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .restart local v17    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    const-string v2, "direction"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    .end local v17    # "in":Landroid/content/Intent;
    :cond_e
    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 200
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Received ACTION_OPEN_RECEIVED_FILES."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v17    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    const-string v2, "direction"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v2, "android.btopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 207
    .end local v17    # "in":Landroid/content/Intent;
    :cond_f
    const-string v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 208
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver hide for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 211
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 212
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 213
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 214
    .local v26, "statusColumn":I
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 215
    .local v25, "status":I
    const-string v2, "visibility"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 216
    .local v36, "visibilityColumn":I
    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 217
    .local v35, "visibility":I
    const-string v2, "confirm"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 219
    .local v33, "userConfirmationColumn":I
    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 220
    .local v32, "userConfirmation":I
    if-nez v32, :cond_10

    if-nez v35, :cond_10

    .line 222
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v34, "values":Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Action_hide received and db updated"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v25    # "status":I
    .end local v26    # "statusColumn":I
    .end local v32    # "userConfirmation":I
    .end local v33    # "userConfirmationColumn":I
    .end local v34    # "values":Landroid/content/ContentValues;
    .end local v35    # "visibility":I
    .end local v36    # "visibilityColumn":I
    :cond_10
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 230
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_11
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 231
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Receiver ACTION_COMPLETE_HIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v29, "updateValues":Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    .end local v29    # "updateValues":Landroid/content/ContentValues;
    :cond_12
    const-string v2, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 237
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver Transfer Complete Intent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v27, 0x0

    .line 240
    .restart local v27    # "toastMsg":Ljava/lang/String;
    new-instance v28, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 241
    .restart local v28    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v28

    .line 242
    if-nez v28, :cond_13

    .line 243
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_13
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    if-eqz v2, :cond_17

    .line 249
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v16, "handoverIntent":Landroid/content/Intent;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 251
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    :goto_4
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_ID"

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v2, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "btopp.invokecarrier"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCarrierName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 263
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_15

    .line 266
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->originalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "filePath":Ljava/lang/String;
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    .end local v15    # "filePath":Ljava/lang/String;
    :goto_5
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :goto_6
    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_14
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 270
    :cond_15
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 275
    :cond_16
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 282
    .end local v16    # "handoverIntent":Landroid/content/Intent;
    :cond_17
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 283
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_19

    .line 284
    const v2, 0x7f050023

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 298
    :cond_18
    :goto_7
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toast msg == "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v27, :cond_1

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 285
    :cond_19
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 286
    const v2, 0x7f050020

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_7

    .line 290
    :cond_1a
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 291
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_1b

    .line 292
    const v2, 0x7f050025

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_7

    .line 294
    :cond_1b
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 295
    const v2, 0x7f050031

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_7

    .line 302
    .end local v27    # "toastMsg":Ljava/lang/String;
    .end local v28    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    :cond_1c
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "received test Intent.ACTION_MEDIA_EJECT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "uri"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "direction"

    aput-object v6, v4, v5

    const-string v5, "status == 192"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 308
    .restart local v11    # "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_1d

    .line 309
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "cursor == null !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_1d
    const/4 v14, -0x1

    .line 313
    .local v14, "direction":I
    const/4 v15, 0x0

    .line 314
    .restart local v15    # "filePath":Ljava/lang/String;
    const/16 v30, 0x0

    .line 315
    .restart local v30    # "uri":Landroid/net/Uri;
    const/16 v24, 0x0

    .line 316
    .local v24, "root":Ljava/lang/String;
    const-string v10, "/storage/sdcardx"

    .line 317
    .local v10, "commonRoot":Ljava/lang/String;
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 319
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor != null, cursor.count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v2, "direction"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 321
    const-string v2, "uri"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 322
    .local v31, "uriStr":Ljava/lang/String;
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uriStr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, 0x1

    if-ne v14, v2, :cond_20

    .line 325
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 356
    :cond_1e
    :goto_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "direction = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " filepath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " root = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v2, -0x1

    if-eq v14, v2, :cond_1

    if-eqz v15, :cond_1

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 363
    .local v22, "path":Landroid/net/Uri;
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->getInstance()Lcom/android/bluetooth/opp/BluetoothOppService;

    move-result-object v21

    .line 365
    .local v21, "oppService":Lcom/android/bluetooth/opp/BluetoothOppService;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v21, :cond_1

    .line 366
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "sdcard is removed, stop task"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v2, 0x1

    if-ne v14, v2, :cond_25

    .line 369
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v2, :cond_1f

    .line 370
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 377
    :cond_1f
    :goto_9
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 327
    .end local v21    # "oppService":Lcom/android/bluetooth/opp/BluetoothOppService;
    .end local v22    # "path":Landroid/net/Uri;
    :cond_20
    if-nez v14, :cond_1e

    .line 328
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 329
    const-string v2, "content"

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 330
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 331
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->originalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 332
    .local v12, "cursor1":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 335
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 336
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 338
    :cond_21
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 339
    if-eqz v15, :cond_1

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 343
    goto/16 :goto_8

    .end local v4    # "projection":[Ljava/lang/String;
    .end local v12    # "cursor1":Landroid/database/Cursor;
    :cond_22
    const-string v2, "file"

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 344
    move-object/from16 v15, v31

    .line 345
    const-string v2, "file:///"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "file:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_8

    .line 347
    :cond_23
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "other type, do not process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v31    # "uriStr":Ljava/lang/String;
    :cond_24
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 353
    const-string v2, "[Bluetooth.OPP]BluetoothOppReceiver"

    const-string v3, "there is no running task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    .restart local v21    # "oppService":Lcom/android/bluetooth/opp/BluetoothOppService;
    .restart local v22    # "path":Landroid/net/Uri;
    .restart local v31    # "uriStr":Ljava/lang/String;
    :cond_25
    if-nez v14, :cond_1f

    .line 373
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v2, :cond_1f

    .line 374
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto/16 :goto_9
.end method
