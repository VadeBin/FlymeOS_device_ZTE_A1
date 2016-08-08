.class public Lcom/zte/fingerprint/service/GoodixServiceImpl;
.super Lcom/zte/fingerprint/service/FingerprintServiceInterface;
.source "GoodixServiceImpl.java"

# interfaces
.implements Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    }
.end annotation


# static fields
.field private static final PRI_APP_HEARTY_SERVICE_INDEX:I

.field private static final privilegeApp:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private UpLock:Ljava/lang/Object;

.field private callbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private down:Z

.field private fManager:Lcom/zte/fingerprint/FingerprintManager;

.field private final log:Z

.field private pm:Landroid/os/PowerManager;

.field private privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

.field private vb:Landroid/os/Vibrator;

.field private final verifyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.zte.heartyservice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeApp:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->log:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->verifyLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    .line 44
    sget-object v0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeApp:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iput-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 45
    const-string v0, "FingerprintUnlockService"

    iput-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/fingerprint/service/GoodixServiceImpl;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/fingerprint/service/GoodixServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->isSystemUI(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/zte/fingerprint/service/GoodixServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/fingerprint/service/GoodixServiceImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->wakeupLock(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->checkStop()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->vb:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->isFingerprintUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->isFingerprintEnabled()Z

    move-result v0

    return v0
.end method

.method private checkStop()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPrivilegeCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "stop identify"

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->stopAuth()V

    .line 272
    :cond_0
    return-void
.end method

.method private getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    .locals 7

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "callback":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v4

    .line 507
    :try_start_0
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 508
    .local v2, "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v2, :cond_2

    .line 509
    move-object v1, v2

    .line 513
    .end local v2    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 515
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 516
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-object v1, v0

    .line 517
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 519
    :cond_1
    return-object v1

    .line 507
    .restart local v2    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    .end local v2    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 517
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivilegeAppIndex(I)I
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 56
    const/4 v1, -0x1

    .line 57
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeApp:[Ljava/lang/String;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    .line 59
    sget-object v3, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeApp:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    move v1, v0

    .line 64
    :cond_0
    return v1

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPrivilegeCallbackCount()I
    .locals 5

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "count":I
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 260
    .local v1, "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v1, :cond_0

    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_1
    return v0
.end method

.method private isFingerprintEnabled()Z
    .locals 3

    .prologue
    .line 368
    const-string v0, "true"

    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.zte.fingerprints/enabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFingerprintUnlockEnabled()Z
    .locals 3

    .prologue
    .line 493
    const-string v0, "true"

    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.zte.fingerprints/screen"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSystemUI(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logCallBacks()V
    .locals 6

    .prologue
    .line 241
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 243
    .local v0, "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 249
    :try_start_1
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 250
    .restart local v0    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    goto :goto_1

    .line 254
    .end local v0    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 247
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 254
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    return-void
.end method

.method private wakeupLock(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 523
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->pm:Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "TAG"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 524
    .local v0, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 527
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 276
    new-instance v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 308
    new-instance v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->receiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "com.zte.fingerprints.EnrolActivityFinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->vb:Landroid/os/Vibrator;

    .line 342
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->pm:Landroid/os/PowerManager;

    .line 344
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->stopAuth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onIdentified(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    .line 388
    .local v0, "callback":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIdentified pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 390
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    if-eqz v3, :cond_0

    .line 392
    :try_start_0
    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v3, p1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->unlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :cond_0
    :goto_1
    return-void

    .line 388
    :cond_1
    const-string v3, "no callback"

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 396
    .local v2, "ne":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "onIdentified but callback unregistered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onNoMatch()V
    .locals 5

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    .line 406
    .local v0, "callback":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNoMatch pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 408
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    if-eqz v3, :cond_0

    .line 410
    :try_start_0
    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v3}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->reportFailedAttempt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    const-string v3, "no callback"

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 413
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 414
    .local v2, "ne":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "onNoMatch but callback unregistered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResult(III)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I

    .prologue
    .line 480
    const-string v0, "csx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 488
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->onNoMatch()V

    .line 490
    :goto_0
    :pswitch_1
    return-void

    .line 483
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->onIdentified(IZ)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStatus(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 425
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 453
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openFingerprint()V
    .locals 6

    .prologue
    .line 354
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->verifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    invoke-static {}, Lcom/zte/fingerprint/FingerprintManager;->open()Lcom/zte/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;

    .line 358
    const-string v1, "start identify"

    invoke-direct {p0, v1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v3, v4, v5}, Lcom/zte/fingerprint/FingerprintManager;->startIdentify(Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 365
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Lcom/zte/fingerprint/FingerprintException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 12
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    const/4 v11, -0x1

    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 70
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register Unlock pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPrivilegeAppIndex(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 72
    .local v2, "index":I
    if-eq v2, v11, :cond_1

    .line 75
    :try_start_1
    invoke-interface {p1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;II)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v5, v5, v2

    iput-object p1, v5, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 95
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logCallBacks()V

    .line 126
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->openFingerprint()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "index":I
    .end local v4    # "uid":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 93
    .restart local v2    # "index":I
    .restart local v4    # "uid":I
    :cond_0
    :try_start_6
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v4, v8, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    aput-object v7, v5, v2

    goto :goto_1

    .line 95
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5

    .line 97
    :cond_1
    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 98
    :try_start_8
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->isSystemUI(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, p0, v4, v8, v9}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "cbIndex":I
    if-eq v0, v11, :cond_3

    .line 104
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 105
    .local v3, "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    iput-object p1, v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 109
    :goto_3
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    :try_start_9
    iget-object v5, v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v5}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;

    invoke-direct {v7, p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 123
    :goto_4
    :try_start_a
    monitor-exit v6

    goto :goto_2

    .end local v0    # "cbIndex":I
    .end local v3    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 107
    .restart local v0    # "cbIndex":I
    :cond_3
    :try_start_c
    new-instance v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, p1}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .restart local v3    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    goto :goto_3

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4
.end method

.method public declared-synchronized registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 12
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .prologue
    const/4 v11, -0x1

    .line 156
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 157
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register Action pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPrivilegeAppIndex(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 159
    .local v2, "index":I
    if-eq v2, v11, :cond_1

    .line 161
    :try_start_1
    invoke-interface {p1}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/zte/fingerprint/service/GoodixServiceImpl$3;

    invoke-direct {v6, p0, v4, v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl$3;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;II)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :try_start_3
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v5, v5, v2

    iput-object p1, v5, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 181
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logCallBacks()V

    .line 212
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->openFingerprint()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "index":I
    .end local v4    # "uid":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 179
    .restart local v2    # "index":I
    .restart local v4    # "uid":I
    :cond_0
    :try_start_6
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v4, p1, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    aput-object v7, v5, v2

    goto :goto_1

    .line 181
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5

    .line 183
    :cond_1
    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    :try_start_8
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->isSystemUI(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, p0, v4, v8, v9}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 189
    .local v0, "cbIndex":I
    if-eq v0, v11, :cond_3

    .line 190
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 191
    .local v3, "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    iput-object p1, v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 195
    :goto_3
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 198
    :try_start_9
    iget-object v5, v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    invoke-interface {v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/service/GoodixServiceImpl$4;

    invoke-direct {v7, p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl$4;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 209
    :goto_4
    :try_start_a
    monitor-exit v6

    goto :goto_2

    .end local v0    # "cbIndex":I
    .end local v3    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 193
    .restart local v0    # "cbIndex":I
    :cond_3
    :try_start_c
    new-instance v3, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, p1, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .restart local v3    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    goto :goto_3

    .line 206
    :catch_1
    move-exception v1

    .line 207
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4
.end method

.method public stopAuth()V
    .locals 4

    .prologue
    .line 372
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->verifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 373
    :try_start_0
    const-string v1, "csx"

    const-string v3, "stop identify"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintManager;->cancel()I

    .line 377
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintManager;->release()I
    :try_end_1
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->fManager:Lcom/zte/fingerprint/FingerprintManager;

    .line 383
    :cond_0
    monitor-exit v2

    .line 384
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "e":Lcom/zte/fingerprint/FingerprintException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 10
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    const/4 v9, -0x1

    .line 131
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 132
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister Unlock pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPrivilegeAppIndex(I)I

    move-result v1

    .line 134
    .local v1, "index":I
    if-eq v1, v9, :cond_0

    .line 135
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 137
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 138
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v6, 0x0

    aput-object v6, v4, v1

    .line 139
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logCallBacks()V

    .line 151
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->checkStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    .end local v1    # "index":I
    .end local v3    # "uid":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 141
    .restart local v1    # "index":I
    .restart local v3    # "uid":I
    :cond_0
    :try_start_5
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    :try_start_6
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v6, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, p0, v3, v7, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 143
    .local v0, "cIndex":I
    if-eq v0, v9, :cond_1

    .line 144
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 145
    .local v2, "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 146
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 148
    .end local v2    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cIndex":I
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 10
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .prologue
    const/4 v9, -0x1

    .line 217
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 218
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister Action pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPrivilegeAppIndex(I)I

    move-result v1

    .line 220
    .local v1, "index":I
    if-eq v1, v9, :cond_0

    .line 221
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 223
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 224
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v6, 0x0

    aput-object v6, v4, v1

    .line 225
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->logCallBacks()V

    .line 237
    invoke-direct {p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->checkStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .end local v1    # "index":I
    .end local v3    # "uid":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 227
    .restart local v1    # "index":I
    .restart local v3    # "uid":I
    :cond_0
    :try_start_5
    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 228
    :try_start_6
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    new-instance v6, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, p0, v3, v7, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, "cIndex":I
    if-eq v0, v9, :cond_1

    .line 230
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 231
    .local v2, "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 232
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 234
    .end local v2    # "pair":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cIndex":I
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
