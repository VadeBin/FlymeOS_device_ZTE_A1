.class Lcom/android/server/AlarmManagerService$3;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1280
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    :goto_0
    return-void

    .line 1288
    :cond_0
    const/4 v2, 0x0

    .line 1289
    .local v2, "opti":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 1290
    aget-object v1, p3, v2

    .line 1291
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 1307
    .end local v1    # "opt":Ljava/lang/String;
    :cond_1
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 1308
    aget-object v0, p3, v2

    .line 1309
    .local v0, "cmd":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1310
    const-string v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1311
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1294
    .end local v0    # "cmd":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1295
    const-string v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1296
    const-string v3, "alarm manager dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    const-string v3, "  log  [on/off]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    const-string v3, "  Example:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    const-string v3, "  $adb shell dumpsys alarm log on"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    const-string v3, "  $adb shell dumpsys alarm log off"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1316
    .end local v1    # "opt":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1271
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1275
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageFromAmsImpl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1247
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manual remove option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 1250
    return-void
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeFromAmsImpl(Ljava/lang/String;)V

    .line 1261
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;
    .param p10, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1200
    if-eqz p9, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/AlarmManagerService;->ztesetImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1212
    return-void

    .line 1206
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setAppAlignMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1320
    if-nez p2, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1300()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->addRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1300()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->addRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 1328
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1300()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->addRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 1216
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SET_TIME"

    const-string v3, "setTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1221
    :cond_0
    const-string v1, "AlarmManager"

    const-string v2, "Not setting time since no alarm driver is available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :goto_0
    return v0

    .line 1225
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1226
    :try_start_0
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKernelTime  setTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I
    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;JJ)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1233
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SET_TIME_ZONE"

    const-string v4, "setTimeZone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1239
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    return-void

    .line 1241
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
