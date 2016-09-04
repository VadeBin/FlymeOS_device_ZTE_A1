.class Landroid/view/ViewRootImpl$SetListOnScrollListener;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->setListOnScrollListener(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 1114
    iput-object p1, p0, Landroid/view/ViewRootImpl$SetListOnScrollListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1125
    iget-object v2, p0, Landroid/view/ViewRootImpl$SetListOnScrollListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, p2}, Landroid/view/ViewRootImpl;->setMCurrentfirstVisibleItem(Landroid/view/ViewRootImpl;I)I

    .line 1126
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    .local v0, "firstView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1129
    iget-object v2, p0, Landroid/view/ViewRootImpl$SetListOnScrollListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->getRecordSp(Landroid/view/ViewRootImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$ItemRecod;

    .line 1131
    .local v1, "itemRecord":Landroid/view/ViewRootImpl$ItemRecod;
    if-nez v1, :cond_0

    .line 1133
    new-instance v1, Landroid/view/ViewRootImpl$ItemRecod;

    .end local v1    # "itemRecord":Landroid/view/ViewRootImpl$ItemRecod;
    iget-object v2, p0, Landroid/view/ViewRootImpl$SetListOnScrollListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$ItemRecod;-><init>(Landroid/view/ViewRootImpl;)V

    .line 1135
    .restart local v1    # "itemRecord":Landroid/view/ViewRootImpl$ItemRecod;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImpl$ItemRecod;->height:I

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImpl$ItemRecod;->top:I

    .line 1137
    iget-object v2, p0, Landroid/view/ViewRootImpl$SetListOnScrollListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->getRecordSp(Landroid/view/ViewRootImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1123
    .end local v1    # "itemRecord":Landroid/view/ViewRootImpl$ItemRecod;
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1117
    return-void
.end method
