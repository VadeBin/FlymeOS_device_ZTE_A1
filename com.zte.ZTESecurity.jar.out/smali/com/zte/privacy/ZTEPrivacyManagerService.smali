.class public Lcom/zte/privacy/ZTEPrivacyManagerService;
.super Lcom/zte/privacy/IZTEPrivacyManager$Stub;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;,
        Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;,
        Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;
    }
.end annotation


# static fields
.field private static final APP_PERMISSION_ASK:I = 0x2

.field private static final APP_PERMISSION_DEFAULT:I = -0x2

.field private static final APP_PERMISSION_DENIED:I = 0x1

.field private static final APP_PERMISSION_GRANTED:I = 0x0

.field private static final DEBUG:Z = false

.field private static final KILL_APPLICATION_MSG:I = 0x3

.field private static final SEND_ANTI_PHONE_EVENT_MSG:I = 0x4

.field private static final SEND_APP_LOCK_MSG:I = 0x1

.field private static final SEND_PERMISSION_EVENT_MSG:I = 0x0

.field private static final SET_NOTIFICATION_ENABLED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManagerService"


# instance fields
.field private mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

.field private mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

.field private mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

.field private mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

.field private mUninstallReceiver:Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

.field private final permissionCheckSync:Ljava/lang/Object;

.field private final securityExtentionVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-direct {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    .line 39
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    .line 40
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    .line 41
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    .line 42
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    .line 43
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->securityExtentionVersion:I

    .line 115
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;

    invoke-direct {v0, p0}, Lcom/zte/privacy/ZTEPrivacyManagerService$1;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    .line 448
    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "in ZTEPrivacyManagerService!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    .line 451
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    .line 452
    new-instance v0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    .line 453
    new-instance v0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    .line 454
    new-instance v0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    .line 455
    new-instance v0, Lcom/zte/privacy/ZTEPermissionEventUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEPermissionEventUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    .line 456
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

    invoke-direct {v0, p0}, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mUninstallReceiver:Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

    .line 457
    return-void
.end method

.method static synthetic access$000(Lcom/zte/privacy/ZTEPrivacyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearAllPackagePermissionSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;
    .locals 1
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;
    .locals 1
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAppLockStrategyUtils;
    .locals 1
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->doKillApplication(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/privacy/ZTEPrivacyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->doSetNotificationEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkCallerIsValidate()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ZTE_HEARTYSERVICE_MANAGEMENT"

    const-string v2, "ZTEPrivacyManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private checkUserPolicyPermission(Ljava/lang/String;I)I
    .locals 7
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "mPkgname":Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    invoke-virtual {v4, v0, p1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->permissionNeedControled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    :goto_0
    return v2

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "mPolicy":I
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v4

    .line 296
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 297
    if-nez v1, :cond_1

    .line 300
    monitor-exit v4

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 301
    :cond_1
    if-ne v6, v1, :cond_2

    .line 304
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1, v2, v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 305
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 307
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 308
    goto :goto_0
.end method

.method private clearAllPackagePermissionSettings()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->clearAllPackagePermissionSettings()V

    .line 222
    return-void
.end method

.method private doKillApplication(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 358
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method

.method private doSetNotificationEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 74
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 77
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "ZTEPrivacyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch doSetNotificationEnabled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "retDefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    .line 227
    .local v0, "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    if-nez v0, :cond_1

    .line 228
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 229
    const/4 v1, -0x2

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    goto :goto_0

    .line 237
    :cond_2
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    :cond_3
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    goto :goto_0

    .line 240
    :cond_4
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    goto :goto_0

    .line 242
    :cond_5
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    goto :goto_0

    .line 244
    :cond_6
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 245
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    goto :goto_0

    .line 246
    :cond_7
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 247
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    goto :goto_0

    .line 248
    :cond_8
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 249
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    goto :goto_0

    .line 250
    :cond_9
    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 251
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    goto :goto_0

    .line 252
    :cond_a
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 253
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    goto :goto_0

    .line 254
    :cond_b
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 255
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    goto :goto_0

    .line 256
    :cond_c
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 257
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    goto/16 :goto_0

    .line 258
    :cond_d
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 259
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    goto/16 :goto_0

    .line 260
    :cond_e
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 262
    :cond_f
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    goto/16 :goto_0

    .line 263
    :cond_10
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 264
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    goto/16 :goto_0

    .line 265
    :cond_11
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 266
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    goto/16 :goto_0

    .line 267
    :cond_12
    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 268
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    goto/16 :goto_0

    .line 269
    :cond_13
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 270
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    goto/16 :goto_0

    .line 271
    :cond_14
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 272
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    goto/16 :goto_0

    .line 273
    :cond_15
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 274
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    goto/16 :goto_0

    .line 275
    :cond_16
    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 276
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    goto/16 :goto_0

    .line 277
    :cond_17
    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 278
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    goto/16 :goto_0

    .line 279
    :cond_18
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 280
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    goto/16 :goto_0

    .line 281
    :cond_19
    const-string v2, "android.permission.ZTE_SEND_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I

    goto/16 :goto_0
.end method

.method private sendPermissionCheckEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "enable"    # Z
    .param p5, "subId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 170
    .local v7, "msg":Landroid/os/Message;
    new-instance v0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;IZII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method private sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "needNotify"    # Z

    .prologue
    .line 156
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    invoke-virtual {v1, p1, p2}, Lcom/zte/privacy/ZTEPermissionEventUtils;->needSendBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 1
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->savePackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 218
    return-void
.end method


# virtual methods
.method public KillApplication(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method public addLockedPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 419
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->addLockedPackage(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public areNotificationEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 191
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 194
    .local v2, "sService":Landroid/app/INotificationManager;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 195
    .local v0, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 196
    const-string v3, "areNotificationsEnabledForPackageInt"

    invoke-static {v2, v3, v0}, Lcom/zte/common/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 197
    .local v1, "res":Z
    return v1
.end method

.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkUserPolicyPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkNeedAskPermission(Ljava/lang/String;IZ)I
    .locals 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 461
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "mPkgname":Ljava/lang/String;
    const-string v7, "com.zte.heartyservice"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    invoke-virtual {v7, v2, p1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->permissionNeedControled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 465
    :cond_0
    const/4 v7, 0x0

    .line 504
    :goto_0
    return v7

    .line 468
    :cond_1
    const/4 v3, 0x0

    .line 470
    .local v3, "mPolicy":I
    const/4 v4, 0x0

    .line 472
    .local v4, "retDefault":Z
    iget-object v7, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 473
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 474
    .local v5, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 475
    .local v6, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.zte.heartyservice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 476
    const/4 v4, 0x1

    .line 481
    .end local v6    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v8, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v8

    .line 482
    :try_start_0
    invoke-direct {p0, v2, p1, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    .line 483
    if-nez v3, :cond_4

    .line 486
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 487
    :cond_4
    const/4 v7, 0x1

    if-ne v7, v3, :cond_5

    .line 490
    const/4 v7, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-direct {p0, v2, p1, v7, v9}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 491
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_0

    .line 492
    :cond_5
    const/4 v7, 0x2

    if-ne v7, v3, :cond_6

    .line 495
    const/4 v7, 0x2

    invoke-direct {p0, v2, p1, v7, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 496
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_0

    .line 497
    :cond_6
    const/4 v7, -0x2

    if-ne v7, v3, :cond_7

    .line 500
    const/4 v7, -0x2

    invoke-direct {p0, v2, p1, v7, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 501
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_0

    .line 503
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public checkNeedAskSysPermission(Ljava/lang/String;IIZ)I
    .locals 13
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "subId"    # I
    .param p4, "enable"    # Z

    .prologue
    .line 508
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "mPkgname":Ljava/lang/String;
    const-string v0, "com.zte.heartyservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 514
    :cond_0
    const/4 v8, 0x0

    .line 516
    .local v8, "mPolicy":I
    const/4 v9, 0x0

    .line 518
    .local v9, "retDefault":Z
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 519
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 520
    .local v10, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 521
    .local v11, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, "com.zte.heartyservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const/4 v9, 0x1

    .line 527
    .end local v11    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    iget-object v12, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v12

    .line 528
    :try_start_0
    invoke-direct {p0, v1, p1, v9}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v8

    .line 529
    if-nez v8, :cond_3

    .line 532
    const/4 v0, 0x0

    monitor-exit v12

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_3
    const/4 v0, 0x1

    if-ne v0, v8, :cond_4

    .line 536
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 537
    const/4 v0, -0x1

    monitor-exit v12

    goto :goto_0

    .line 538
    :cond_4
    const/4 v0, 0x2

    if-ne v0, v8, :cond_5

    .line 541
    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionCheckEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 542
    const/4 v0, -0x1

    monitor-exit v12

    goto :goto_0

    .line 543
    :cond_5
    const/4 v0, -0x2

    if-ne v0, v8, :cond_6

    .line 546
    const/4 v3, -0x2

    move-object v0, p0

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionCheckEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 547
    const/4 v0, -0x1

    monitor-exit v12

    goto :goto_0

    .line 549
    :cond_6
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public checkNetworkAccessPermission(Ljava/lang/String;I)V
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 333
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "mPkgname":Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 341
    .local v1, "mPolicy":I
    if-ne v4, v1, :cond_0

    .line 342
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, v2, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 344
    :cond_0
    monitor-exit v3

    .line 345
    return-void

    .line 344
    .end local v1    # "mPolicy":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public checkRecordingPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0, p2}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->needRefuseRecording(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 429
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->clearAllLockedPackages()V

    .line 430
    return-void
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->deletePackagePermissionSetting(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public enforceAppLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 415
    return-void
.end method

.method public getAdapter()Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    return-object v0
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->getAllLockedPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAntiPhoneRecordingSetting()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->getAntiPRSetting()I

    move-result v0

    return v0
.end method

.method public getPackageNameByUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "mPkgname":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 316
    aget-object v0, v1, v3

    .line 321
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x3

    return v0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 424
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->removeLockedPackage(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 2
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "savePackageSetting:: setting is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    goto :goto_0
.end method

.method public sendAntiPhoneRecordingBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public setAntiPhoneRecordingSetting(I)V
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 383
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->setAntiPRSetting(I)V

    .line 384
    return-void
.end method

.method public setNotificationsEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 184
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method
