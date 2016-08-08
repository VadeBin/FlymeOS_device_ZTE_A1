.class Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;
.super Ljava/lang/Object;
.source "MenuDrawer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1046
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1047
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget-object v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_1

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1052
    :cond_1
    return-void
.end method
