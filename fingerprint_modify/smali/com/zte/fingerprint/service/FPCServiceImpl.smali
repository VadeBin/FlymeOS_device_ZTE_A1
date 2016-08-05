.class public Lcom/zte/fingerprint/service/FPCServiceImpl;
.super Lcom/zte/fingerprint/service/FingerprintServiceInterface;
.source "FPCServiceImpl.java"

# interfaces
.implements Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mFingerActionHashtableTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/fingerprints/keyguard/IFingerActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerIds:[I

.field private mFingerUnlockHashtableTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "FingerprintUnlockService"

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/fingerprint/service/FPCServiceImpl;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;
    .param p1, "x1"    # [I

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/fingerprint/service/FPCServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public fingerDown()V
    .locals 6

    .prologue
    .line 160
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "------------fingerDown--------------->"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 164
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 167
    .local v3, "fingerActionCallback":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v3, v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;"
    .end local v3    # "fingerActionCallback":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    :cond_0
    return-void
.end method

.method public fingerUp()V
    .locals 6

    .prologue
    .line 177
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "------------fingerUp--------------->"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 180
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 183
    .local v3, "fingerActionCallback":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v3, v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerActionCallback;>;"
    .end local v3    # "fingerActionCallback":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->registerScreenActionReceiver(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "=============onDisconnect()================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onIdentified(IZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 192
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "onIdentified==========================>"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 196
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 197
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 199
    .local v3, "fingerprintUnlockCallback":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->unlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;"
    .end local v3    # "fingerprintUnlockCallback":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :cond_0
    return-void
.end method

.method public onNoMatch()V
    .locals 6

    .prologue
    .line 211
    iget-object v4, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 212
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 213
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 215
    .local v3, "fingerprintUnlockCallback":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :try_start_0
    invoke-interface {v3}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->reportFailedAttempt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;>;"
    .end local v3    # "fingerprintUnlockCallback":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :cond_0
    return-void
.end method

.method public openFingerprint()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->getManager()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 145
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    array-length v0, v0

    if-nez v0, :cond_3

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    invoke-virtual {v0, p0, v1}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "======registerCallback============"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "mClientId":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------------->\u6ce8\u518c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mFingerUnlockHashtableTable.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/zte/fingerprint/service/FPCServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$1;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "clientId":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action---------------------->\u6ce8\u518c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mFingerActionHashtableTable.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/zte/fingerprint/service/FPCServiceImpl$3;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$3;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public registerScreenActionReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    new-instance v1, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method public releaseFingerprint()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 139
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I

    .line 65
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "clientId":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------------->\u53cd\u6ce8\u518c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mFingerUnlockHashtableTable.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "-----------releaseFingerprint----------->"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/zte/fingerprint/service/FPCServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$2;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_0
    return-void
.end method

.method public unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "clientId":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action---------------------->\u53cd\u6ce8\u518c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mFingerActionHashtableTable.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "-----------releaseFingerprint----------->"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/zte/fingerprint/service/FPCServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$4;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method
