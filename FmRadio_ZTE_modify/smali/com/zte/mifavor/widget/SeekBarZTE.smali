.class public Lcom/zte/mifavor/widget/SeekBarZTE;
.super Landroid/widget/SeekBar;
.source "SeekBarZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final NORMAL:[I

.field public static final STATE_DISABLE:[I

.field public static final STATE_DISABLE_PRESSED:[I

.field public static final STATE_ENABLE:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I


# instance fields
.field private final DEFAULT_COLOR:I

.field mBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mNORMAL_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mPRESS_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field mSELECTED_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mSecondDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field primaryDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field secondDrawable:Landroid/graphics/drawable/ScaleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const v4, -0x101009e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    .line 73
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE_PRESSED:[I

    .line 77
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    .line 81
    new-array v0, v2, [I

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    .line 87
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE:[I

    .line 92
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_SELECTED:[I

    return-void

    .line 73
    :array_0
    .array-data 4
        -0x101009e
        0x10100a7
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x10100a1
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    sget v0, Lcom/zte/extres/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, -0xb2aaa3

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v4, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->DEFAULT_COLOR:I

    .line 124
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_ccl"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    .line 138
    return-void

    .line 128
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "common_controller_color"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_0
.end method


# virtual methods
.method public ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "color"    # I

    .prologue
    const/16 v13, 0xff

    const/4 v12, 0x0

    const/16 v11, 0xf

    const/16 v10, 0x11

    .line 171
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 174
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 175
    .local v0, "Drstate":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setConstantSize(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_off_mtrl_alpha:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 179
    .local v1, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 180
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 181
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 182
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE_PRESSED:[I

    invoke-virtual {v3, v8, v1, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 185
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_off_mtrl_alpha:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 186
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 187
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 188
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 189
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    invoke-virtual {v3, v8, v1, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 192
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 193
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 194
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 195
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    sget v9, Lcom/zte/extres/R$id;->pressed:I

    invoke-virtual {v3, v8, v1, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 198
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 199
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 200
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    sget v9, Lcom/zte/extres/R$id;->not_pressed:I

    invoke-virtual {v3, v8, v1, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 203
    sget v2, Lcom/zte/extres/R$id;->not_pressed:I

    .line 204
    .local v2, "fromId":I
    sget v7, Lcom/zte/extres/R$id;->pressed:I

    .line 205
    .local v7, "toId":I
    const/4 v6, 0x0

    .line 206
    .local v6, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 208
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 209
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 210
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 211
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 213
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_001:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 214
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 215
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 216
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_002:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 219
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 220
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 221
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_003:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 224
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 225
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 226
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 227
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_004:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 228
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 229
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 230
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 232
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 234
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 235
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 239
    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 242
    sget v2, Lcom/zte/extres/R$id;->pressed:I

    .line 243
    sget v7, Lcom/zte/extres/R$id;->not_pressed:I

    .line 244
    const/4 v6, 0x0

    .line 245
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 247
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 248
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 249
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 250
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 252
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_001:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 253
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 254
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 255
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 257
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_002:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 258
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 259
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 260
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 262
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_003:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 264
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 265
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 267
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_004:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 268
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 269
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 270
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 272
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 274
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 275
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 278
    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 279
    return-object v3
.end method

.method public ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 284
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/zte/mifavor/widget/JavaChanger;->setColorWidget(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public SetColor(I)V
    .locals 12
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 143
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 147
    .local v4, "r":Landroid/content/res/Resources;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light_holo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 149
    .local v3, "prgtem":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$color;->secondary_text_material_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 150
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 151
    new-instance v5, Landroid/graphics/drawable/ScaleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v5, v3, v8, v6, v7}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 152
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v9

    aput-object v0, v1, v10

    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v5, v1, v11

    .line 156
    .local v1, "draws":[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 160
    .local v2, "ids":[I
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 161
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v6, 0x1020000

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 162
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000f

    invoke-virtual {v5, v10, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 163
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    invoke-virtual {v5, v11, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 164
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v0    # "bagtem":Landroid/graphics/drawable/Drawable;
    .end local v1    # "draws":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "ids":[I
    .end local v3    # "prgtem":Landroid/graphics/drawable/Drawable;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColorJB(I)V

    goto :goto_0

    .line 156
    nop

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public SetColorJB(I)V
    .locals 14
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 294
    .local v5, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_disabled_zte:I

    const/4 v12, 0x1

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 296
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_pressed_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_SELECTED:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_focused_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_normal_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 305
    .local v8, "r":Landroid/content/res/Resources;
    sget v10, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light_holo:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v10, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 316
    .local v7, "prgtem":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 318
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/JavaChanger;->setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 319
    .local v2, "btDrawable":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    invoke-direct {v6, v2, v10}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 321
    .local v6, "ninepatch2":Landroid/graphics/NinePatch;
    new-instance v9, Lcom/zte/mifavor/widget/NinePatchDrawable;

    invoke-direct {v9, v6}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    .line 323
    .local v9, "testNinePatch":Lcom/zte/mifavor/widget/NinePatchDrawable;
    new-instance v10, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 327
    const/4 v10, 0x3

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v11, v3, v10

    .line 331
    .local v3, "draws":[Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x3

    new-array v4, v10, [I

    fill-array-data v4, :array_0

    .line 335
    .local v4, "ids":[I
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v10, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 336
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x0

    const/high16 v12, 0x1020000

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 337
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x1

    const v12, 0x102000f

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 338
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x2

    const v12, 0x102000d

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 339
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void

    .line 331
    nop

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    const/4 v2, 0x0

    goto :goto_0
.end method
