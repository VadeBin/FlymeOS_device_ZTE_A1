.class public Lcom/android/shotcutkey/MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyBroadcastReceiver.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_BLACK_QUICKLY:Ljava/lang/String;

.field private final ACTION_SHARE_APP:Ljava/lang/String;

.field private final ACTION_SWITCH_RECORDER_STATE:Ljava/lang/String;

.field private final CAMOUFLAGE_CALL_DELAY:I

.field private final CLICK_ACTION:Ljava/lang/String;

.field private final DOUBLE_CLICK_ACTION:Ljava/lang/String;

.field private final FLASH_STATUS:Ljava/lang/String;

.field private final FLASH_STATUS_CHANGED:Ljava/lang/String;

.field private final IS_FROM_SHOTCUT:Ljava/lang/String;

.field private final LONG_PRESS_ACTION:Ljava/lang/String;

.field private final ONOFF_STATUS:Ljava/lang/String;

.field private final SEND_FLASHLIGHT_ON_OFF:Ljava/lang/String;

.field private final SHARE_APP_CLASS_NAME:Ljava/lang/String;

.field private final SHARE_APP_PACKAGE_NAME:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGroup:I

.field private mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "myBroadcastReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const-string v0, "android.intent.action.SpecialKeyOnePress"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->CLICK_ACTION:Ljava/lang/String;

    .line 31
    const-string v0, "android.intent.action.SpecialKeyDoublePress"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->DOUBLE_CLICK_ACTION:Ljava/lang/String;

    .line 32
    const-string v0, "android.intent.action.SpecialKeyLongPress"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->LONG_PRESS_ACTION:Ljava/lang/String;

    .line 34
    const-string v0, "android.intent.action.FLASH_CHANGED"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->FLASH_STATUS_CHANGED:Ljava/lang/String;

    .line 35
    const-string v0, "android.intent.action.ONOFF_FLASH"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->SEND_FLASHLIGHT_ON_OFF:Ljava/lang/String;

    .line 36
    const-string v0, "ONOFF_FLASH"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->ONOFF_STATUS:Ljava/lang/String;

    .line 37
    const-string v0, "android.intent.action.ShotcutKeyCapture"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->ACTION_BLACK_QUICKLY:Ljava/lang/String;

    .line 38
    const-string v0, "cn.zte.recorder.switch_record_state"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->ACTION_SWITCH_RECORDER_STATE:Ljava/lang/String;

    .line 39
    const-string v0, "android.intent.action.SHARE_QUICKLY"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->ACTION_SHARE_APP:Ljava/lang/String;

    .line 41
    const-string v0, "share-app-package-name"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->SHARE_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "share-app-class-name"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->SHARE_APP_CLASS_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "FLASH_CHANGED"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->FLASH_STATUS:Ljava/lang/String;

    .line 45
    const-string v0, "isFromShotcut"

    iput-object v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->IS_FROM_SHOTCUT:Ljava/lang/String;

    .line 47
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/shotcutkey/MyBroadcastReceiver;->CAMOUFLAGE_CALL_DELAY:I

    .line 24
    return-void
.end method

.method private camreaIsTopActivity(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 236
    .line 237
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 236
    check-cast v2, Landroid/os/PowerManager;

    .line 239
    .local v2, "pm":Landroid/os/PowerManager;
    sget-boolean v4, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 240
    sget-object v4, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isInSuperLauncher() isscreenon = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    :cond_1
    :goto_0
    return v3

    .line 245
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/MyBroadcastReceiver;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 246
    .local v0, "component":Landroid/content/ComponentName;
    sget-boolean v4, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 247
    sget-object v4, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isInSuperLauncher() toppackagename = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  topclassname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 250
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    const-string v1, "com.zte.camera"

    .line 254
    .local v1, "packagename":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    .line 225
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    check-cast v0, Landroid/app/ActivityManager;

    .line 226
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 229
    .local v2, "topRunningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 231
    .end local v2    # "topRunningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized sendNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 264
    .local v5, "resources":Landroid/content/res/Resources;
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 270
    .local v3, "now":J
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    const v7, 0x7f0900b5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 273
    const v7, 0x7f0900b4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 274
    const v7, 0x7f0900b5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 275
    const v7, 0x7f02022d

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 276
    invoke-virtual {v6, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 279
    const v7, 0x1060059

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 277
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 285
    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 286
    .local v0, "n":Landroid/app/Notification;
    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 289
    const v6, 0x7f09004c

    invoke-virtual {v2, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "now":J
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "action":Ljava/lang/String;
    sget-boolean v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v17, :cond_0

    .line 57
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "onReceive() intent = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 62
    const-string v17, "android.intent.action.FLASH_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 63
    const-string v17, "FLASH_CHANGED"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 64
    .local v8, "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "FLASH_CHANGED"

    if-eqz v8, :cond_2

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    .end local v8    # "enabled":Z
    :cond_1
    :goto_1
    return-void

    .line 65
    .restart local v8    # "enabled":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 70
    .end local v8    # "enabled":Z
    :cond_3
    const/4 v11, 0x0

    .line 72
    .local v11, "isShotcutKeyEnabled":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v18, "specialkey_switch"

    .line 72
    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_4

    const/4 v11, 0x1

    .line 77
    :goto_2
    if-nez v11, :cond_5

    .line 78
    sget-boolean v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v17, :cond_1

    .line 79
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v18, "onReceive() shotcutKey is not enable!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 74
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "onReceive() "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const/4 v10, 0x0

    .line 84
    .local v10, "isKeyEnabled":Z
    const/4 v5, -0x1

    .line 85
    .local v5, "appIndex":I
    const/4 v12, 0x0

    .line 87
    .local v12, "pc":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 118
    :cond_6
    :goto_3
    sget-boolean v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v17, :cond_7

    .line 119
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "onReceive() appIndex = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",  pn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 120
    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",  cn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 119
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_7
    if-eqz v10, :cond_15

    .line 123
    if-ltz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x9

    move/from16 v0, v17

    if-lt v5, v0, :cond_9

    .line 124
    :cond_8
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "onReceive() appIndex is error : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    :sswitch_0
    const-string v17, "android.intent.action.SpecialKeyLongPress"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x2

    const/16 v19, -0x1

    .line 106
    invoke-virtual/range {v17 .. v19}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStateByGroupIdAndChildId(II)Z

    move-result v10

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v5

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v12

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/shotcutkey/MyBroadcastReceiver;->mGroup:I

    goto/16 :goto_3

    .line 87
    :sswitch_1
    const-string v17, "android.intent.action.SpecialKeyDoublePress"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x1

    const/16 v19, -0x1

    .line 97
    invoke-virtual/range {v17 .. v19}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStateByGroupIdAndChildId(II)Z

    move-result v10

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v5

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v12

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/shotcutkey/MyBroadcastReceiver;->mGroup:I

    goto/16 :goto_3

    .line 87
    :sswitch_2
    const-string v17, "android.intent.action.SpecialKeyOnePress"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x0

    const/16 v19, -0x1

    .line 89
    invoke-virtual/range {v17 .. v19}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStateByGroupIdAndChildId(II)Z

    move-result v10

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v5

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v12

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/shotcutkey/MyBroadcastReceiver;->mGroup:I

    goto/16 :goto_3

    .line 126
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_d

    .line 127
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.ONOFF_FLASH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v9, "flashIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    .line 129
    const-string v18, "FLASH_CHANGED"

    const/16 v19, 0x0

    .line 128
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 129
    const/16 v18, 0x1

    .line 128
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 129
    const/4 v8, 0x1

    .line 130
    .restart local v8    # "enabled":Z
    :goto_4
    const-string v18, "ONOFF_FLASH"

    if-eqz v8, :cond_b

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "FLASH_CHANGED"

    .line 134
    if-nez v8, :cond_c

    const/16 v17, 0x1

    .line 133
    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 129
    .end local v8    # "enabled":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 130
    .restart local v8    # "enabled":Z
    :cond_b
    const/16 v17, 0x1

    goto :goto_5

    .line 134
    :cond_c
    const/16 v17, 0x0

    goto :goto_6

    .line 135
    .end local v8    # "enabled":Z
    .end local v9    # "flashIntent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v5, v0, :cond_e

    .line 136
    new-instance v15, Landroid/content/Intent;

    .line 137
    const-string v17, "cn.zte.recorder.switch_record_state"

    .line 136
    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v15, "soundRecorderIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 140
    .end local v15    # "soundRecorderIntent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_f

    .line 142
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.SHARE_QUICKLY"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v14, "shareIntent":Landroid/content/Intent;
    const-string v17, "share-app-package-name"

    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v17, "share-app-class-name"

    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 146
    .end local v14    # "shareIntent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_10

    .line 149
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v13, "screenShotIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 151
    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 153
    .end local v13    # "screenShotIntent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v5, v0, :cond_11

    .line 154
    new-instance v16, Landroid/content/Intent;

    .line 155
    const-string v17, "com.zte.heartyservice.intent.action.startService.EXTERNAL_CLEAN_APP"

    .line 154
    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v16, "speedUpIntent":Landroid/content/Intent;
    const-string v17, "com.zte.heartyservice"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/android/shotcutkey/MyBroadcastReceiver;->sendNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 161
    .end local v16    # "speedUpIntent":Landroid/content/Intent;
    :cond_11
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v6, "appIntent":Landroid/content/Intent;
    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    const-string v17, "isFromShotcut"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_13

    .line 167
    invoke-direct/range {p0 .. p1}, Lcom/android/shotcutkey/MyBroadcastReceiver;->camreaIsTopActivity(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 169
    const-string v17, "android.intent.action.ShotcutKeyCapture"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v17, "isScreenOn"

    .line 171
    const-string v18, "isScreenOn"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 170
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v17, "isKeyguardOn"

    .line 173
    const-string v18, "iskeyguardOn"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 172
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    :cond_12
    :goto_7
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 198
    :catch_1
    move-exception v7

    .line 200
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mGroup:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/shotcutkey/ShotcutKeyDB;->initKeyValueByGroup(I)V

    .line 211
    const-string v17, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    check-cast v4, Landroid/app/ActivityManager;

    .line 212
    .local v4, "am":Landroid/app/ActivityManager;
    const-string v17, "com.android.shotcutkey"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v5, v0, :cond_14

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v17, "contact_name"

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v19, "contact_name"

    .line 176
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 175
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v17, "phone_number"

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v19, "phone_number"

    .line 179
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 178
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-wide/16 v17, 0x1388

    invoke-static/range {v17 .. v18}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_7

    .line 182
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/shotcutkey/MyBroadcastReceiver;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v5, v0, :cond_12

    .line 183
    iget-object v0, v12, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.zte.camera"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 184
    invoke-direct/range {p0 .. p1}, Lcom/android/shotcutkey/MyBroadcastReceiver;->camreaIsTopActivity(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 188
    const-string v17, "isScreenOn"

    .line 189
    const-string v18, "isScreenOn"

    .line 190
    const/16 v19, 0x0

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 188
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const-string v17, "isKeyguardOn"

    .line 192
    const-string v18, "iskeyguardOn"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 191
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_7

    .line 217
    .end local v6    # "appIntent":Landroid/content/Intent;
    :cond_15
    sget-boolean v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->DEBUG:Z

    if-eqz v17, :cond_1

    .line 218
    sget-object v17, Lcom/android/shotcutkey/MyBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v18, "key is not enabled!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    :sswitch_data_0
    .sparse-switch
        -0x77dfaa24 -> :sswitch_0
        0x128cd467 -> :sswitch_1
        0x5167b028 -> :sswitch_2
    .end sparse-switch
.end method
