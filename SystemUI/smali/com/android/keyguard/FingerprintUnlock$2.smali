.class Lcom/android/keyguard/FingerprintUnlock$2;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/keyguard/FingerprintUnlock$2;)Lcom/android/keyguard/FingerprintUnlock;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iservice"    # Landroid/os/IBinder;

    .prologue
    .line 136
    const-string v1, "FPCUnlock"

    const-string v2, "connect from FingerprintUnlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    invoke-static {p2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/FingerprintUnlock;->access$1(Lcom/android/keyguard/FingerprintUnlock;Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;)V

    .line 138
    if-eqz p2, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Lcom/android/keyguard/FingerprintUnlock$2$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/FingerprintUnlock$2$1;-><init>(Lcom/android/keyguard/FingerprintUnlock$2;)V

    .line 148
    const/4 v2, 0x0

    .line 140
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$3(Lcom/android/keyguard/FingerprintUnlock;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FPCUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "linkToDeath Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    const-string v0, "FPCUnlock"

    const-string v1, "Unexpected disconnect from FingerprintUnlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method
