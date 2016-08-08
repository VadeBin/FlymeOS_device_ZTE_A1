.class public Lcom/mediatek/fmradio/FreqSelectionBar;
.super Landroid/widget/RelativeLayout;
.source "FreqSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    }
.end annotation


# static fields
.field public static final FM_FREQ_RRANGE_76TO90:I = 0x1

.field public static final FM_FREQ_RRANGE_875TO108:I

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mBitmapWidth:I


# instance fields
.field private arrLeftRight:[[I

.field private arrScreenValue:[[I

.field private mAllowTouch:Z

.field private mCurrFreq:I

.field private mFreqRange:I

.field mHandler:Landroid/os/Handler;

.field private mMaxFreq:I

.field private mMaxFreqToRight:I

.field private mMinFreq:I

.field private mMinFreqToLeft:I

.field private mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

.field private mPressDown:Z

.field private mScreenRange:I

.field private mScreenWidth:I

.field private mTouchPoint:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmapWidth:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, 0x41d00000    # 26.0f

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    .line 22
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    .line 23
    const/16 v0, 0x1a

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    .line 24
    const/16 v0, 0x2b

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    .line 25
    const/16 v0, 0x36b

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    .line 26
    const/16 v0, 0x438

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    .line 27
    const/16 v0, 0x36b

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    .line 28
    const/16 v0, 0x19b

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenRange:I

    .line 29
    const/16 v0, 0xcd

    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mFreqRange:I

    .line 31
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    .line 32
    iput-boolean v5, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mAllowTouch:Z

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    .line 36
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    .line 37
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 38
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    .line 39
    new-array v0, v7, [[I

    new-array v1, v3, [I

    const/16 v2, 0x1e0

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    .line 40
    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrScreenValue:[[I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 53
    new-instance v0, Lcom/mediatek/fmradio/FreqSelectionBar$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FreqSelectionBar$1;-><init>(Lcom/mediatek/fmradio/FreqSelectionBar;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FreqSelectionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f0201eb

    .line 81
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    sget-object v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmapWidth:I

    .line 84
    return-void

    .line 35
    :array_0
    .array-data 4
        0x1a
        0x2b
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x28
    .end array-data

    .line 36
    :array_2
    .array-data 4
        0x2
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x26
    .end array-data

    .line 37
    :array_4
    .array-data 4
        0x3b
        0x2d
    .end array-data

    :array_5
    .array-data 4
        0x62
        0x82
    .end array-data

    .line 38
    :array_6
    .array-data 4
        0x33
        0x6c
    .end array-data

    :array_7
    .array-data 4
        0x55
        0x9f
    .end array-data

    .line 39
    :array_8
    .array-data 4
        0x21c
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2d0
        0x4
    .end array-data

    .line 40
    :array_a
    .array-data 4
        0x438
        0x6
    .end array-data
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FreqSelectionBar;)Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FreqSelectionBar;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    return v0
.end method

.method private allMovePointer(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method private evaluateFreq(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "message"    # I

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 198
    .local v0, "x":F
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 199
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    int-to-float v1, v1

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    .line 205
    :goto_0
    float-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FreqSelectionBar;->layoutXToFreq(I)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    return-void

    .line 200
    :cond_0
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 201
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    goto :goto_0

    .line 203
    :cond_1
    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    goto :goto_0
.end method

.method private getArrBgeinIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrScreenValue:[[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 116
    :goto_1
    return v1

    .line 113
    :cond_0
    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    iget-object v3, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrScreenValue:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    .line 114
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrScreenValue:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 212
    sget-object v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    sget v2, Lcom/mediatek/fmradio/FreqSelectionBar;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 214
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    :cond_0
    return-void
.end method

.method public freqToLayoutX(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 121
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    if-ge p1, v1, :cond_0

    .line 122
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    .line 128
    :goto_0
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    sub-int v0, v1, v2

    .line 129
    .local v0, "currRange":I
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenRange:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mFreqRange:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    .line 130
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mTouchPoint ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrFreq ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    iget v3, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FreqSelectionBar;->invalidate()V

    .line 133
    return-void

    .line 123
    .end local v0    # "currRange":I
    :cond_0
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    if-le p1, v1, :cond_1

    .line 124
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    goto :goto_0

    .line 126
    :cond_1
    iput p1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    goto :goto_0
.end method

.method public initFreqSelectionBar(IIIII)V
    .locals 6
    .param p1, "screenWidth"    # I
    .param p2, "freqMax"    # I
    .param p3, "freqMin"    # I
    .param p4, "rangeFlag"    # I
    .param p5, "currFreq"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    iput p1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    .line 89
    iput p3, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    .line 90
    iput p2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    .line 91
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mFreqRange:I

    .line 92
    invoke-direct {p0}, Lcom/mediatek/fmradio/FreqSelectionBar;->getArrBgeinIndex()I

    move-result v0

    .line 93
    .local v0, "index":I
    if-nez p4, :cond_0

    .line 94
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    aget-object v1, v1, v0

    aget v1, v1, v5

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    .line 95
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    .line 105
    :goto_0
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    int-to-float v1, v1

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mTouchPoint:F

    .line 106
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenWidth:I

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenRange:I

    .line 107
    iput p5, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    .line 108
    invoke-virtual {p0, p5}, Lcom/mediatek/fmradio/FreqSelectionBar;->freqToLayoutX(I)V

    .line 109
    return-void

    .line 96
    :cond_0
    if-ne p4, v4, :cond_1

    .line 97
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    aget v1, v1, v5

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    .line 98
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    aget v1, v1, v4

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFreqSelectionBar false rangeFlag ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so set default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    aget-object v1, v1, v0

    aget v1, v1, v5

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    .line 103
    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->arrLeftRight:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    iput v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreqToRight:I

    goto :goto_0
.end method

.method public layoutXToFreq(I)V
    .locals 3
    .param p1, "layoutX"    # I

    .prologue
    .line 136
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreqToLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mFreqRange:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mScreenRange:I

    div-int/2addr v1, v2

    .line 137
    iget v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    .line 136
    add-int v0, v1, v2

    .line 138
    .local v0, "frequency":I
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    if-ge v0, v1, :cond_1

    .line 139
    iget v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMinFreq:I

    .line 143
    :cond_0
    :goto_0
    iput v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I

    .line 144
    return-void

    .line 140
    :cond_1
    iget v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    if-le v0, v1, :cond_0

    .line 141
    iget v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mMaxFreq:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mAllowTouch:Z

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 192
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FreqSelectionBar;->invalidate()V

    move v0, v1

    .line 193
    goto :goto_0

    .line 165
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FreqSelectionBar;->allMovePointer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    goto :goto_1

    .line 170
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FreqSelectionBar;->allMovePointer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->evaluateFreq(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 178
    :pswitch_2
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    if-eqz v2, :cond_4

    .line 179
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FreqSelectionBar;->allMovePointer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/mediatek/fmradio/FreqSelectionBar;->evaluateFreq(Landroid/view/MotionEvent;I)V

    .line 187
    :cond_4
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mPressDown:Z

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowTouchStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mAllowTouch:Z

    .line 157
    return-void
.end method

.method public setOnFrequencyChangeCallBack(Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;)V
    .locals 0
    .param p1, "onFrequencyChange"    # Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 77
    return-void
.end method
