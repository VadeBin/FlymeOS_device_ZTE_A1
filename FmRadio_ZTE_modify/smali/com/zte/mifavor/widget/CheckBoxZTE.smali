.class public Lcom/zte/mifavor/widget/CheckBoxZTE;
.super Landroid/widget/CheckBox;
.source "CheckBoxZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final STATE_DISABLE_CHECKED:[I

.field public static final STATE_DISABLE_UNCHECKED:[I

.field public static final STATE_ENABLE_CHECKED:[I

.field public static final STATE_ENABLE_UNCHECKED:[I

.field static mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field static mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private final DEFAULT_COLOR:I

.field mDIS_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field storeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    return-void

    .line 95
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 101
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 104
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/CheckBoxZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    sget v0, Lcom/zte/extres/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/CheckBoxZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, -0xb2aaa3

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput v4, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->DEFAULT_COLOR:I

    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_ccl"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->CheckBox:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColor(I)V

    .line 144
    return-void

    .line 135
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

.method private SetColorForAndroid4x(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 328
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 330
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_off_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 332
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->storeColor:I

    if-eq p1, v3, :cond_1

    .line 333
    :cond_0
    sget v3, Lcom/zte/extres/R$drawable;->btn_check_on_zte_light:I

    invoke-virtual {p0, v3, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 335
    :cond_1
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 341
    .local v2, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 344
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_off_disabled_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 346
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->storeColor:I

    if-eq p1, v3, :cond_3

    .line 347
    :cond_2
    sget v3, Lcom/zte/extres/R$drawable;->btn_check_on_disabled_zte_light:I

    invoke-virtual {p0, v3, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 349
    :cond_3
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 351
    .restart local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->requestLayout()V

    .line 354
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->invalidate()V

    .line 356
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 13
    .param p1, "color"    # I

    .prologue
    const/16 v12, 0x42

    const/4 v11, 0x0

    const/high16 v10, -0x76000000

    const/16 v9, 0xf

    .line 154
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 159
    .local v2, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 160
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 162
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 167
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 168
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 172
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 173
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 178
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 181
    sget v1, Lcom/zte/extres/R$id;->off:I

    .line 182
    .local v1, "fromId":I
    sget v6, Lcom/zte/extres/R$id;->on:I

    .line 183
    .local v6, "toId":I
    const/4 v5, 0x0

    .line 184
    .local v5, "reversible":Z
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 186
    .local v3, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 188
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 192
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 195
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 196
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 199
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 200
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 202
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 203
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 207
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 210
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 211
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 214
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 215
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 218
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 219
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 222
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 223
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 226
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 227
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 230
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 231
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 234
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 237
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 238
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 246
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 248
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 251
    sget v1, Lcom/zte/extres/R$id;->on:I

    .line 252
    sget v6, Lcom/zte/extres/R$id;->off:I

    .line 253
    const/4 v5, 0x0

    .line 254
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 256
    .local v4, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 257
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 258
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 261
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 262
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 265
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 266
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 270
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 274
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 277
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 278
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 281
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 282
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 286
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 290
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 291
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 294
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 295
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 298
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 302
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 303
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 306
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 307
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 310
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 311
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 314
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 315
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 318
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 319
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 321
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 323
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 360
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 361
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/zte/mifavor/widget/JavaChanger;->setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public SetColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid50(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method
