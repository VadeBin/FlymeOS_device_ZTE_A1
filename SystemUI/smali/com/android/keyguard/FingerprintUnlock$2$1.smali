.class Lcom/android/keyguard/FingerprintUnlock$2$1;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/FingerprintUnlock$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/FingerprintUnlock$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$2;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "FPCUnlock"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock$2;->access$0(Lcom/android/keyguard/FingerprintUnlock$2;)Lcom/android/keyguard/FingerprintUnlock;

    move-result-object v0

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->diedCleanUp()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$2(Lcom/android/keyguard/FingerprintUnlock;)V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$2;->this$0:Lcom/android/keyguard/FingerprintUnlock;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock$2;->access$0(Lcom/android/keyguard/FingerprintUnlock$2;)Lcom/android/keyguard/FingerprintUnlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintUnlock;->start()Z

    .line 146
    return-void
.end method
