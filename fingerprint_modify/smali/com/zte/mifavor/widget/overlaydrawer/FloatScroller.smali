.class Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;
.super Ljava/lang/Object;
.source "FloatScroller.java"


# instance fields
.field private mCurr:F

.field private mDeltaX:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinal:F

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStart:F

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 49
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mCurr:F

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 145
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    if-eqz v3, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 122
    :goto_0
    return v2

    .line 111
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 113
    .local v0, "timePassed":I
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    if-ge v0, v3, :cond_1

    .line 114
    int-to-float v3, v0

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDurationReciprocal:F

    mul-float v1, v3, v4

    .line 115
    .local v1, "x":F
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 116
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStart:F

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDeltaX:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mCurr:F

    goto :goto_0

    .line 119
    .end local v1    # "x":F
    :cond_1
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mCurr:F

    .line 120
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    goto :goto_0
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->timePassed()I

    move-result v0

    .line 156
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    .line 157
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDurationReciprocal:F

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 159
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 68
    return-void
.end method

.method public final getCurr()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mCurr:F

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    return v0
.end method

.method public final getFinal()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    return v0
.end method

.method public final getStart()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStart:F

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    return v0
.end method

.method public setFinal(F)V
    .locals 2
    .param p1, "newVal"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    .line 172
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDeltaX:F

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 174
    return-void
.end method

.method public startScroll(FFI)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "delta"    # F
    .param p3, "duration"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinished:Z

    .line 127
    iput p3, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    .line 128
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStartTime:J

    .line 129
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStart:F

    .line 130
    add-float v0, p1, p2

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mFinal:F

    .line 131
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDeltaX:F

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mDurationReciprocal:F

    .line 133
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
