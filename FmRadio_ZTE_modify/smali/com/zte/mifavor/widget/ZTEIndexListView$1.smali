.class Lcom/zte/mifavor/widget/ZTEIndexListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZTEIndexListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ZTEIndexListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexListView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->access$000(Lcom/zte/mifavor/widget/ZTEIndexListView;)Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->show()V

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
