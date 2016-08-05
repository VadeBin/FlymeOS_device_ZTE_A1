.class Lcom/android/keyguard/FingerprintUnlock$4$1;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/FingerprintUnlock$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/FingerprintUnlock$4;

.field private final synthetic val$mFloatLayout:Landroid/widget/LinearLayout;

.field private final synthetic val$mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock$4;Landroid/widget/LinearLayout;Landroid/view/WindowManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$4;

    iput-object p2, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->val$mFloatLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->val$mWindowManager:Landroid/view/WindowManager;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->val$mFloatLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->val$mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4$1;->val$mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 597
    return-void
.end method
