.class Landroid/widget/WeatherAnimateView$1;
.super Ljava/lang/Object;
.source "WeatherAnimateView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/WeatherAnimateView;->setImageViewBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/WeatherAnimateView;

.field final synthetic val$res:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    iput-object p2, p0, Landroid/widget/WeatherAnimateView$1;->val$res:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    const-string v0, "WeatherAnimationView"

    const-string/jumbo v1, "onAnimationCancel"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    const-string v0, "WeatherAnimationView"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/WeatherAnimateView;->access$000(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    iget-object v1, p0, Landroid/widget/WeatherAnimateView$1;->val$res:Landroid/graphics/Bitmap;

    # setter for: Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/widget/WeatherAnimateView;->access$102(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/WeatherAnimateView;->access$200(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/WeatherAnimateView$1;->val$res:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/WeatherAnimateView;->access$200(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Landroid/widget/WeatherAnimateView;->access$300(Landroid/widget/WeatherAnimateView;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/WeatherAnimateView;->access$200(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Landroid/widget/WeatherAnimateView$1;->this$0:Landroid/widget/WeatherAnimateView;

    # getter for: Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Landroid/widget/WeatherAnimateView;->access$300(Landroid/widget/WeatherAnimateView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    return-void
.end method
