.class public Lcom/zte/mifavor/widget/TextViewZTE;
.super Landroid/widget/TextView;
.source "TextViewZTE.java"


# instance fields
.field private mLastActionDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/mifavor/widget/TextViewZTE;->mLastActionDownTime:J

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/mifavor/widget/TextViewZTE;->mLastActionDownTime:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/mifavor/widget/TextViewZTE;->mLastActionDownTime:J

    .line 39
    return-void
.end method

.method private handleLinkMovementMethod(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 71
    .local v2, "action":I
    const/4 v11, 0x1

    if-eq v2, v11, :cond_0

    if-nez v2, :cond_4

    .line 75
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 77
    .local v9, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 81
    .local v10, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v11

    sub-int/2addr v9, v11

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v11

    add-int/2addr v9, v11

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    add-int/2addr v10, v11

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 94
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 96
    .local v6, "line":I
    int-to-float v11, v9

    invoke-virtual {v3, v6, v11}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 100
    .local v8, "off":I
    const-class v11, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v8, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 104
    .local v7, "link":[Landroid/text/style/ClickableSpan;
    array-length v11, v7

    if-eqz v11, :cond_4

    .line 106
    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 110
    .local v4, "actionUpTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/zte/mifavor/widget/TextViewZTE;->mLastActionDownTime:J

    sub-long v12, v4, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-lez v11, :cond_1

    .line 114
    const/4 v11, 0x0

    .line 137
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "actionUpTime":J
    .end local v6    # "line":I
    .end local v7    # "link":[Landroid/text/style/ClickableSpan;
    .end local v8    # "off":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :goto_0
    return v11

    .line 118
    .restart local v3    # "layout":Landroid/text/Layout;
    .restart local v4    # "actionUpTime":J
    .restart local v6    # "line":I
    .restart local v7    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v8    # "off":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v7, v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 120
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 129
    .end local v4    # "actionUpTime":J
    :cond_2
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 122
    :cond_3
    if-nez v2, :cond_2

    .line 124
    const/4 v11, 0x0

    aget-object v11, v7, v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/zte/mifavor/widget/TextViewZTE;->mLastActionDownTime:J

    goto :goto_1

    .line 137
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v7    # "link":[Landroid/text/style/ClickableSpan;
    .end local v8    # "off":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewZTE;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 49
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p0, v0, p1}, Lcom/zte/mifavor/widget/TextViewZTE;->handleLinkMovementMethod(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 61
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method
