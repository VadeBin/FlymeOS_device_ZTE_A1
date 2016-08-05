.class Lcom/android/internal/policy/impl/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x258

    .line 1297
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggeredForShot:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyTriggered:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1302
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyTime:J
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyLongPress:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1305
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1308
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyHandled:Z

    .line 1309
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    iput v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyCount:I

    .line 1311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mipop.cropimage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v0, "mipopShutScreen":Landroid/content/Intent;
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1319
    .end local v0    # "mipopShutScreen":Landroid/content/Intent;
    .end local v2    # "now":J
    :cond_0
    return-void
.end method
