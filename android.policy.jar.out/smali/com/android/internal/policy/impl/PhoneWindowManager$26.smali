.class Lcom/android/internal/policy/impl/PhoneWindowManager$26;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/graphics/drawable/AnimationDrawable$AnimationListener;


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

.field final synthetic val$anim:Landroid/widget/ImageView;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManager;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 5407
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->val$anim:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 5419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->val$anim:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5420
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    .line 5422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureKeyCode:I

    .line 5423
    return-void
.end method
