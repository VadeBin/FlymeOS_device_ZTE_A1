.class Lcom/android/keyguard/FingerprintUnlock$1;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;
.source "FingerprintUnlock.java"


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
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    .line 99
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method public exposeFallback()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4
    .param p1, "millis"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    return-void
.end method

.method public reportFingerDown()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public unlock(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
