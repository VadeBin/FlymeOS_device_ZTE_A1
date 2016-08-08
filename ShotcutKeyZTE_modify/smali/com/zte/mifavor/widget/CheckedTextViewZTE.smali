.class public Lcom/zte/mifavor/widget/CheckedTextViewZTE;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextViewZTE.java"


# static fields
.field public static final STATE_DISABLE_CHECKED:[I

.field public static final STATE_DISABLE_UNCHECKED:[I

.field public static final STATE_ENABLE_CHECKED:[I

.field public static final STATE_ENABLE_UNCHECKED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_CHECKED:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_CHECKED:[I

    return-void

    .line 42
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 48
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 51
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "color"    # I

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x0

    const/high16 v10, -0x76000000

    const/16 v9, 0xf

    .line 89
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 94
    .local v2, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 97
    sget-object v7, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 102
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 103
    sget-object v7, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    sget-object v7, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_CHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 112
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 113
    sget-object v7, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 116
    sget v1, Lcom/zte/extres/R$id;->off:I

    .line 117
    .local v1, "fromId":I
    sget v6, Lcom/zte/extres/R$id;->on:I

    .line 118
    .local v6, "toId":I
    const/4 v5, 0x0

    .line 119
    .local v5, "reversible":Z
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 121
    .local v3, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 123
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 127
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 131
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 135
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 138
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 142
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 145
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 146
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 149
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 150
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 153
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 154
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 157
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 158
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 162
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 166
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 168
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 169
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 172
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 173
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 176
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 177
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 180
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 181
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 183
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 186
    sget v1, Lcom/zte/extres/R$id;->on:I

    .line 187
    sget v6, Lcom/zte/extres/R$id;->off:I

    .line 188
    const/4 v5, 0x0

    .line 189
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 191
    .local v4, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 192
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 193
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 197
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 200
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 201
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 204
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 205
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 208
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 209
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 213
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 217
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 220
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 221
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 225
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 226
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 229
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 230
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 234
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 237
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 238
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 246
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 249
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 250
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 253
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 254
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 256
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 258
    return-object v2
.end method
