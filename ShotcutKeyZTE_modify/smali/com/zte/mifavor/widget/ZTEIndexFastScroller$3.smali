.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;
.super Landroid/os/Handler;
.source "ZTEIndexFastScroller.java"


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
    .line 351
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F

    .line 360
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x2

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 361
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result v1

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 362
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x3

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F

    .line 375
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 376
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 377
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const-wide/16 v1, 0xa

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$800(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
