.class Lcom/android/internal/policy/impl/PhoneWindowManager$25;
.super Landroid/widget/ImageView;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->PlayGestureAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 5384
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 5386
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 5387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    .line 5388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 5391
    :cond_0
    return-void
.end method
