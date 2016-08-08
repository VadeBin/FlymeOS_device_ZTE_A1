.class Lcom/android/keyguard/FingerprintUnlock$4;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;

.field private final synthetic val$mFloatLayout:Landroid/widget/LinearLayout;

.field private final synthetic val$mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock;Landroid/widget/LinearLayout;Landroid/view/WindowManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    iput-object p2, p0, Lcom/android/keyguard/FingerprintUnlock$4;->val$mFloatLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/FingerprintUnlock$4;->val$mWindowManager:Landroid/view/WindowManager;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 588
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/FingerprintUnlock$4$1;

    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock$4;->val$mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/FingerprintUnlock$4;->val$mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/keyguard/FingerprintUnlock$4$1;-><init>(Lcom/android/keyguard/FingerprintUnlock$4;Landroid/widget/LinearLayout;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
