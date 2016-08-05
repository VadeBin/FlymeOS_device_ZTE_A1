.class public Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"


# static fields
.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_HIDING:I = 0x3

.field private static final STATE_SHOWING:I = 0x1

.field private static final STATE_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ZTEIndexFastScroller"


# instance fields
.field private isStopedScroll:Z

.field private mAdapter:Landroid/widget/Adapter;

.field private mAlphaRate:F

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentSection:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHideScrollBar:Z

.field public mIndexBarTopMargin:F

.field private mIndexbarMargin:F

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIndexbarWidth:F

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIsIndexing:Z

.field private mIsScrolling:Z

.field private mIsShowPreview:Z

.field private mListContents:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mPreviewPadding:F

.field private mPreviewSize:F

.field private mScaledDensity:F

.field private mScrollerBarTextColor:I

.field private mSections:[Ljava/lang/String;

.field public mShowPreviewNotOnScrollBar:Z

.field public mShowScrollerBar:Z

.field public mState:I

.field private mTouchScroller:Z

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 43
    iput v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 44
    iput v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 45
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 46
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    .line 47
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 48
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 49
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListContents:[Ljava/lang/String;

    .line 52
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    .line 58
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    .line 59
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 60
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    .line 64
    iput v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 65
    const v0, -0x666667

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    .line 66
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 351
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    .line 73
    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 76
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    .line 77
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    .line 78
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    .line 79
    const/high16 v0, 0x42a20000    # 81.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewSize:F

    .line 80
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    return p1
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    return p1
.end method

.method static synthetic access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    return p1
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    return-void
.end method

.method private contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 318
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0

    .line 320
    :cond_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0
.end method

.method private fade(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 349
    return-void
.end method

.method private getItemTextThumbs(I)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    instance-of v0, v4, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 113
    .local v0, "isZteAdapter":Z
    if-eqz v0, :cond_1

    .line 114
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    check-cast v2, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 115
    .local v2, "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "thumbsText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 122
    .end local v0    # "isZteAdapter":Z
    .end local v1    # "thumbsText":Ljava/lang/String;
    .end local v2    # "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    :cond_0
    :goto_0
    return-object v3

    .line 119
    .restart local v0    # "isZteAdapter":Z
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getListIndexInCenter()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method private getSectionByListPos(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSectionByPoint(F)I
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 326
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 284
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 288
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 296
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 297
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 305
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 307
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 128
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v8, "indexbarPaint":Landroid/graphics/Paint;
    const v18, 0x999999

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/high16 v19, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v7, "indexPaint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    const/high16 v18, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 138
    .local v16, "sectionHeight":F
    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v19

    sub-float v18, v18, v19

    sub-float v18, v16, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v10, v18, v19

    .line 139
    .local v10, "paddingTop":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_0

    .line 141
    const v18, -0xf97827

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v6

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v9, v18, v19

    .line 146
    .local v9, "paddingLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    move/from16 v21, v0

    add-float v20, v20, v21

    int-to-float v0, v6

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    add-float v20, v20, v10

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    sub-float v20, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 143
    .end local v9    # "paddingLeft":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 152
    .end local v6    # "i":I
    .end local v7    # "indexPaint":Landroid/graphics/Paint;
    .end local v8    # "indexbarPaint":Landroid/graphics/Paint;
    .end local v10    # "paddingTop":F
    .end local v16    # "sectionHeight":F
    :cond_1
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 153
    .local v11, "previewPaint":Landroid/graphics/Paint;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v14, "previewTextPaint":Landroid/graphics/Paint;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    const/high16 v18, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v19

    add-float v18, v18, v19

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v19

    sub-float v13, v18, v19

    .line 161
    .local v13, "previewSize":F
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v13

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v13

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v13

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v13

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v21, v21, v13

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 166
    .local v12, "previewRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/zte/extres/R$drawable;->fastscroll_label_zte_light:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    .local v5, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 168
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getListIndexInCenter()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getItemTextThumbs(I)Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, "thumbText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v18, v0

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 173
    .local v15, "previewTextWidth":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v20, v13, v15

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "previewPaint":Landroid/graphics/Paint;
    .end local v12    # "previewRect":Landroid/graphics/RectF;
    .end local v13    # "previewSize":F
    .end local v14    # "previewTextPaint":Landroid/graphics/Paint;
    .end local v15    # "previewTextWidth":F
    .end local v17    # "thumbText":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 179
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "previewPaint":Landroid/graphics/Paint;
    .restart local v12    # "previewRect":Landroid/graphics/RectF;
    .restart local v13    # "previewSize":F
    .restart local v14    # "previewTextPaint":Landroid/graphics/Paint;
    .restart local v17    # "thumbText":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    :cond_4
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 182
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 184
    .restart local v15    # "previewTextWidth":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 185
    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v19, v13, v15

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v20, v0

    add-float v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 273
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    .line 258
    iput p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    .line 259
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    add-float/2addr v2, v3

    int-to-float v3, p1

    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 263
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 252
    :goto_0
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():nocase"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 253
    :cond_0
    :goto_1
    return v0

    .line 198
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 202
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_1

    .line 203
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 205
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 206
    const-string v1, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :cond_1
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 211
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false2"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_4

    .line 219
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 221
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 240
    :cond_3
    :goto_2
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_MOVE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 241
    goto/16 :goto_1

    .line 223
    :cond_4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 237
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 243
    :pswitch_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 244
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 245
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 246
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-nez v2, :cond_0

    .line 249
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 276
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 277
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    .line 281
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 267
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 269
    :cond_0
    return-void
.end method
