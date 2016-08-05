.class public Lcom/zte/mifavor/widget/RadioButtonZTE;
.super Landroid/widget/RadioButton;
.source "RadioButtonZTE.java"

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
.field mDIS_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field storeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_CHECKED:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_CHECKED:[I

    return-void

    .line 75
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 81
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 84
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
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/RadioButtonZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    sget v0, Lcom/zte/extres/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/RadioButtonZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_ccl"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->RadioButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->RadioButton_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->SetColor(I)V

    .line 123
    return-void

    .line 114
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "common_controller_color"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_0
.end method

.method private SetColorForAndroid4x(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 306
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 308
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/zte/mifavor/widget/RadioButtonZTE;->storeColor:I

    if-eq v3, p1, :cond_1

    .line 309
    :cond_0
    sget v3, Lcom/zte/extres/R$drawable;->radio_zte_on:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 311
    :cond_1
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RadioButtonZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 316
    .local v2, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RadioButtonZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->radio_zte_off:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 318
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 319
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RadioButtonZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->radio_off_disabled_zte:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 321
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/zte/mifavor/widget/RadioButtonZTE;->storeColor:I

    if-eq v3, p1, :cond_3

    .line 322
    :cond_2
    sget v3, Lcom/zte/extres/R$drawable;->radio_on_disabled_zte:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 324
    :cond_3
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RadioButtonZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 329
    .restart local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 13
    .param p1, "color"    # I

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x0

    const/high16 v10, -0x76000000

    const/16 v9, 0xf

    .line 133
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 138
    .local v2, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 139
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 141
    sget-object v7, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 145
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 146
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 147
    sget-object v7, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v7, v0, v11}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 152
    sget-object v7, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_CHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 156
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 157
    sget-object v7, Lcom/zte/mifavor/widget/RadioButtonZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 160
    sget v1, Lcom/zte/extres/R$id;->off:I

    .line 161
    .local v1, "fromId":I
    sget v6, Lcom/zte/extres/R$id;->on:I

    .line 162
    .local v6, "toId":I
    const/4 v5, 0x0

    .line 163
    .local v5, "reversible":Z
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 165
    .local v3, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 167
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 170
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 171
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 174
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 175
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 178
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 179
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 181
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 182
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 186
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 193
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 194
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 197
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 198
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 201
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 202
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 205
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 206
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 209
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 210
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 213
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 217
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 220
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 221
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 224
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 225
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 227
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 230
    sget v1, Lcom/zte/extres/R$id;->on:I

    .line 231
    sget v6, Lcom/zte/extres/R$id;->off:I

    .line 232
    const/4 v5, 0x0

    .line 233
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 235
    .local v4, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 236
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 237
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 240
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 241
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 244
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 245
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 248
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 249
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 252
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 253
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 256
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 257
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 261
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 264
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 265
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 270
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 274
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 277
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 278
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 281
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 282
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 286
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 289
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 290
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 293
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 294
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_off_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 297
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 298
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 300
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 302
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RadioButtonZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 336
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 337
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
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->SetColorForAndroid50(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 95
    const/4 v2, 0x0

    goto :goto_0
.end method
