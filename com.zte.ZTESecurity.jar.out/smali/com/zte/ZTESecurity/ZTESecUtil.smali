.class public Lcom/zte/ZTESecurity/ZTESecUtil;
.super Ljava/lang/Object;
.source "ZTESecUtil.java"


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CHANGE_NETWORK_STATE:Ljava/lang/String; = "android.permission.CHANGE_NETWORK_STATE"

.field private static final CHANGE_WIFI_STATE:Ljava/lang/String; = "android.permission.CHANGE_WIFI_STATE"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PHONE_INFO_VALUE:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_TABLE:Ljava/lang/String; = "empty_table"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final SEND_MMS:Ljava/lang/String; = "android.permission.ZTE_SEND_MMS"

.field private static final SEND_SMS:Ljava/lang/String; = "android.permission.SEND_SMS"

.field private static final TAG:Ljava/lang/String; = "ZTESecUtil"

.field private static final _ID:Ljava/lang/String; = "_id"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static sInstance:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->sInstance:Lcom/zte/ZTESecurity/ZTESecUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private createDatabase()V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 285
    sget-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS empty_table (_id INTEGER PRIMARY KEY AUTOINCREMENT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p2, :cond_2

    .line 367
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->sInstance:Lcom/zte/ZTESecurity/ZTESecUtil;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-direct {v0}, Lcom/zte/ZTESecurity/ZTESecUtil;-><init>()V

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->sInstance:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 57
    :cond_0
    sget-object v0, Lcom/zte/ZTESecurity/ZTESecUtil;->sInstance:Lcom/zte/ZTESecurity/ZTESecUtil;

    return-object v0
.end method

.method private static getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;
    .locals 3

    .prologue
    .line 42
    const-string v2, "privacy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v1

    const/4 v1, 0x0

    .line 44
    .local v1, "mService":Lcom/zte/privacy/IZTEPrivacyManager;
    return-object v1
.end method


# virtual methods
.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPermissionsSafe()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 117
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 123
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v3, v1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v3, v1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enforceCallPhonePermission()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 63
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 66
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 68
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.CALL_PHONE"

    invoke-interface {v0, v3, v1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v2, 0x0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 341
    return-void
.end method

.method public enforceCameraPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 267
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 280
    .end local v1    # "res":I
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public enforceChangeBluetoothPermission(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 187
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 188
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 194
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v0, v3, v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkNeedAskPermission(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enforceChangeNetworkPermission(IZ)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 206
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 212
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v3, v1, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkNeedAskSysPermission(Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enforceChangeWifiPermission(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 170
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 176
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v3, v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkNeedAskPermission(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enforcePrivacyNetAccessPermission(Ljava/lang/String;I)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 156
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkNetworkAccessPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 316
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 319
    :cond_1
    if-eqz p1, :cond_2

    .line 320
    if-eqz p2, :cond_0

    .line 325
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v0, p2, v3}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 332
    .end local v1    # "res":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public enforcePrivacyRecordingPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 231
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 234
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 238
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkRecordingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 239
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 246
    .end local v1    # "res":I
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public enforcePrivacySendMmsPermission()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 302
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v2

    .line 305
    :cond_1
    :try_start_0
    const-string v3, "android.permission.ZTE_SEND_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 311
    .end local v1    # "res":I
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public enforceReadLocationPermission()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 79
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 83
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 85
    .local v2, "uid":I
    :try_start_0
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v4, v2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v4, v2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public enforceReadPhoneInfoPermission()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 97
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 103
    .local v2, "uid":I
    :try_start_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v4, v2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "resultOfCheck":I
    if-eqz v1, :cond_0

    .line 105
    const-string v3, "Unknown"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v1    # "resultOfCheck":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public enforceSendMessagePermission()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v0

    .line 138
    .local v0, "mPrivacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 144
    .local v1, "uid":I
    :try_start_0
    const-string v3, "android.permission.SEND_SMS"

    invoke-interface {v0, v3, v1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getDefaultEmptyCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 291
    sget-object v1, Lcom/zte/ZTESecurity/ZTESecUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/zte/ZTESecurity/ZTESecUtil;->createDatabase()V

    .line 294
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 295
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "empty_table"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 296
    sget-object v1, Lcom/zte/ZTESecurity/ZTESecUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8
.end method

.method public isCameraPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
