.class Landroid/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 504
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 505
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 506
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v0, v0, Landroid/widget/VideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v0, v0, Landroid/widget/VideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v1, v1, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v2, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 508
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 510
    :cond_0
    return-void
.end method
