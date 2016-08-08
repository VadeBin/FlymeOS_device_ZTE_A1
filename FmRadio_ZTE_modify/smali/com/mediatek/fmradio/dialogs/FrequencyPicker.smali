.class public Lcom/mediatek/fmradio/dialogs/FrequencyPicker;
.super Landroid/widget/FrameLayout;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;,
        Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;
    }
.end annotation


# instance fields
.field private mFrequency:I

.field private final mKHzPicker:Landroid/widget/NumberPicker;

.field private mKhz:I

.field private final mMHzPicker:Landroid/widget/NumberPicker;

.field private mMax:I

.field private mMhz:I

.field private mMin:I

.field private mOnFrequencyChangedListener:Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

.field private mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, 0x64

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030041

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    const v1, 0x7f06009a

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    .line 87
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 89
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$1;

    invoke-direct {v2, p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$1;-><init>(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 103
    :cond_0
    const v1, 0x7f06009b

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    .line 104
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;

    invoke-direct {v2, p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;-><init>(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateSpinnerRange()V

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->setEnabled(Z)V

    .line 128
    :cond_2
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    return-void
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    return v0
.end method

.method static synthetic access$10(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    return-void
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    return v0
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    return v0
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    return v0
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;III)I
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequencyKHz(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    return-void
.end method

.method static synthetic access$7(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->validateFrequencyRange()V

    return-void
.end method

.method static synthetic access$8(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    return v0
.end method

.method private get100KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 309
    const-string v2, "9"

    aput-object v2, v0, v1

    .line 311
    .local v0, "khzStrings":[Ljava/lang/String;
    return-object v0
.end method

.method private get200KHzStrings(I)[Ljava/lang/String;
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 315
    rem-int/lit16 v0, p1, 0xc8

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getEven200KHzStrings()[Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getOdd200KHzStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private get50KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    const/16 v1, 0x14

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "15"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "25"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 301
    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "80"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "85"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 302
    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "95"

    aput-object v2, v0, v1

    .line 304
    .local v0, "khzStrings":[Ljava/lang/String;
    return-object v0
.end method

.method private getCurrent100KHz(I)I
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 282
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit8 v0, v1, 0x64

    .line 284
    .local v0, "khz":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrent200KHz(II)I
    .locals 2
    .param p1, "frequency"    # I
    .param p2, "min"    # I

    .prologue
    .line 294
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit16 v0, v1, 0xc8

    .line 296
    .local v0, "khz":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrent50KHz(I)I
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 288
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit8 v0, v1, 0x32

    .line 290
    .local v0, "khz":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrentKHz(III)I
    .locals 1
    .param p1, "frequency"    # I
    .param p2, "min"    # I
    .param p3, "stepSize"    # I

    .prologue
    .line 243
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getCurrent100KHz(I)I

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_0
    const/16 v0, 0x32

    if-ne p3, v0, :cond_1

    .line 246
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getCurrent50KHz(I)I

    move-result v0

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getCurrent200KHz(II)I

    move-result v0

    goto :goto_0
.end method

.method private getEven200KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "8"

    aput-object v2, v0, v1

    .line 324
    .local v0, "khzStrings":[Ljava/lang/String;
    return-object v0
.end method

.method private getFrequency100KHz(I)I
    .locals 2
    .param p1, "kHz"    # I

    .prologue
    .line 261
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v0, v1, 0x64

    .line 263
    .local v0, "frequencykhz":I
    return v0
.end method

.method private getFrequency200KHz(II)I
    .locals 2
    .param p1, "kHz"    # I
    .param p2, "min"    # I

    .prologue
    .line 273
    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v0, v1, 0xc8

    .line 274
    .local v0, "frequencykhz":I
    rem-int/lit16 v1, p2, 0xc8

    if-eqz v1, :cond_0

    .line 275
    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0xc8

    add-int/lit8 v0, v1, 0x64

    .line 278
    :cond_0
    return v0
.end method

.method private getFrequency50KHz(I)I
    .locals 2
    .param p1, "kHz"    # I

    .prologue
    .line 267
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v0, v1, 0x32

    .line 269
    .local v0, "frequencykhz":I
    return v0
.end method

.method private getFrequencyKHz(III)I
    .locals 1
    .param p1, "kHz"    # I
    .param p2, "min"    # I
    .param p3, "stepSize"    # I

    .prologue
    .line 252
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequency100KHz(I)I

    move-result v0

    .line 257
    :goto_0
    return v0

    .line 254
    :cond_0
    const/16 v0, 0x32

    if-ne p3, v0, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequency50KHz(I)I

    move-result v0

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequency200KHz(II)I

    move-result v0

    goto :goto_0
.end method

.method private getKHzCount(I)I
    .locals 1
    .param p1, "stepSize"    # I

    .prologue
    .line 234
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 235
    const/16 v0, 0xa

    .line 239
    :goto_0
    return v0

    .line 236
    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 237
    const/16 v0, 0x14

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getKHzStrings(II)[Ljava/lang/String;
    .locals 1
    .param p1, "min"    # I
    .param p2, "stepSize"    # I

    .prologue
    .line 225
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->get100KHzStrings()[Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->get50KHzStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->get200KHzStrings(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOdd200KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 328
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "9"

    aput-object v2, v0, v1

    .line 330
    .local v0, "khzStrings":[Ljava/lang/String;
    return-object v0
.end method

.method private updateSpinnerRange()V
    .locals 4

    .prologue
    .line 370
    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    invoke-direct {p0, v2, v3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getKHzStrings(II)[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "khzStrings":[Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getKHzCount(I)I

    move-result v0

    .line 373
    .local v0, "khzNumSteps":I
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 375
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->get50KHzStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 380
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 381
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 383
    :cond_1
    return-void
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    .line 386
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getKHzCount(I)I

    move-result v0

    .line 387
    .local v0, "khzNumSteps":I
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateSpinnerRange()V

    .line 388
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    .line 389
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getCurrentKHz(III)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    .line 390
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    if-lt v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 393
    :cond_0
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    if-gt v1, v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 396
    :cond_1
    return-void
.end method

.method private validateFrequencyRange()V
    .locals 3

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "bUpdateSpinner":Z
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    if-ge v1, v2, :cond_0

    .line 401
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    .line 402
    const/4 v0, 0x1

    .line 404
    :cond_0
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    if-le v1, v2, :cond_1

    .line 405
    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    .line 406
    const/4 v0, 0x1

    .line 408
    :cond_1
    if-eqz v0, :cond_2

    .line 409
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateSpinners()V

    .line 411
    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 207
    return-void
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    return v0
.end method

.method public init(IIIILcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "step"    # I
    .param p4, "frequency"    # I
    .param p5, "onFrequencyChangedListener"    # Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

    .prologue
    .line 360
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    .line 361
    iput p2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    .line 362
    iput p3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    .line 363
    iput p4, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    .line 364
    iput-object p5, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

    .line 366
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateSpinners()V

    .line 367
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 218
    move-object v0, p1

    check-cast v0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;

    .line 219
    .local v0, "ss":Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->getMHz()I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    .line 221
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->getKHz()I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    .line 222
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 211
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 213
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 139
    :cond_1
    return-void
.end method

.method public updateFrequency(IIII)V
    .locals 0
    .param p1, "frequency"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "step"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I

    .line 144
    iput p2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    .line 145
    iput p3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    .line 146
    iput p4, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    .line 147
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateSpinners()V

    .line 148
    return-void
.end method

.method public updateMaxFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMax:I

    .line 343
    return-void
.end method

.method public updateMinFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I

    .line 339
    return-void
.end method

.method public updateSteps(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I

    .line 335
    return-void
.end method
