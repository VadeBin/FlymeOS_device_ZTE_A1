.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    .line 91
    packed-switch p2, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result v1

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 101
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x3

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 104
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
