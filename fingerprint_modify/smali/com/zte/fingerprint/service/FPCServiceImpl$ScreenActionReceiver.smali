.class public Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FPCServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenActionReceiver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isOpenVerify:Z

.field private isRegisterReceiver:Z

.field final synthetic this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 239
    const-string v0, "ScreenActionReceiver"

    iput-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->TAG:Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isRegisterReceiver:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$100(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$200(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->TAG:Ljava/lang/String;

    const-string v3, "-----------releaseFingerprint----------->"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isOpenVerify:Z

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isOpenVerify:Z

    .line 259
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$300(Lcom/zte/fingerprint/service/FPCServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver$1;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver$1;-><init>(Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.zte.fingerprints/screen"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen lock is open:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerUnlockHashtableTable:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$100(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerActionHashtableTable:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$200(Lcom/zte/fingerprint/service/FPCServiceImpl;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->openFingerprint()V

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isOpenVerify:Z

    goto :goto_0
.end method

.method public unRegisterScreenActionReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->isRegisterReceiver:Z

    .line 285
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    :cond_0
    return-void
.end method
