.class public Lcom/zte/mifavor/widget/ZTEIndexListView;
.super Landroid/widget/ListView;
.source "ZTEIndexListView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZTEIndexListView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFastScrollEnabled:Z

.field private mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    .line 22
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    .line 22
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    .line 22
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEIndexListView;)Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexListView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 112
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->onSizeChanged(IIII)V

    .line 114
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/ZTEIndexListView$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/ZTEIndexListView$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 17
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    .line 45
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->hide()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    goto :goto_0
.end method

.method public setIndexBarTopMargin(F)V
    .locals 1
    .param p1, "margin"    # F

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput p1, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 133
    :cond_0
    return-void
.end method

.method public showPreviewNotOnScrollBar(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    .line 126
    :cond_0
    return-void
.end method

.method public showScrollerBar(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    .line 120
    :cond_0
    return-void
.end method
