.class public Lcom/zte/mifavor/preference/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v7, 0x7fffffff

    const/high16 v6, -0x80000000

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 43
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_0

    if-nez v4, :cond_2

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 45
    .local v5, "widthSize":I
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceImageView;->getMaxWidth()I

    move-result v3

    .line 46
    .local v3, "maxWidth":I
    if-eq v3, v7, :cond_2

    if-lt v3, v5, :cond_1

    if-nez v4, :cond_2

    .line 48
    :cond_1
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    .end local v3    # "maxWidth":I
    .end local v5    # "widthSize":I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 53
    .local v0, "heightMode":I
    if-eq v0, v6, :cond_3

    if-nez v0, :cond_5

    .line 54
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 55
    .local v1, "heightSize":I
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceImageView;->getMaxHeight()I

    move-result v2

    .line 56
    .local v2, "maxHeight":I
    if-eq v2, v7, :cond_5

    if-lt v2, v1, :cond_4

    if-nez v0, :cond_5

    .line 58
    :cond_4
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    .end local v1    # "heightSize":I
    .end local v2    # "maxHeight":I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 63
    return-void
.end method
