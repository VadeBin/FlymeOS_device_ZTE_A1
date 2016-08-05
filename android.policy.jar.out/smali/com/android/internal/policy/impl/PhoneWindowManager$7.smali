.class Lcom/android/internal/policy/impl/PhoneWindowManager$7;
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
    .line 1406
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1409
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeyCount:I

    .line 1410
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->checkPowerUpForSpecialKey(I)I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    move-result v0

    .line 1411
    .local v0, "appId":I
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast SpecialKeyOnePress appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInEmode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1414
    const-string v3, "WindowManager"

    const-string v4, "key test for Emode"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    new-instance v1, Landroid/content/Intent;

    const-string v3, "zte.com.cn.emode.keyTest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v1, "emodeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1427
    .end local v1    # "emodeIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SpecialKeyOnePress"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v2, "intentt":Landroid/content/Intent;
    const-string v3, "isScreenOn"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1423
    const-string v3, "iskeyguardOn"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1424
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1425
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->setVibrator()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0
.end method
