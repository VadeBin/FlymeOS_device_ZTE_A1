.class public Lcom/zte/mifavor/widget/SwitchZTE;
.super Landroid/widget/Switch;
.source "SwitchZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final STATE_DISABLE_CHECKED:[I

.field public static final STATE_DISABLE_UNCHECKED:[I

.field public static final STATE_ENABLE_CHECKED:[I

.field public static final STATE_ENABLE_UNCHECKED:[I

.field public static final STATE_THMB_CHECKED:[I

.field public static final STATE_THMB_UNCHECKED:[I

.field static mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field static mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDIS_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOnActionBar:Z

.field storeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_UNCHECKED:[I

    .line 120
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_CHECKED:[I

    return-void

    .line 104
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 110
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 113
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    .line 117
    :array_4
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 120
    :array_5
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    sget v0, Lcom/zte/extres/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 170
    iput-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_ccl"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->Switch_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 182
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColor(I)V

    .line 185
    return-void

    .line 176
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

.method private SetColorForActionBar()V
    .locals 17

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "color_ccd"

    sget v16, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, "color":I
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 213
    .local v6, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 214
    .local v8, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 215
    .local v9, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/NinePatchDrawable;

    .line 216
    .local v10, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/NinePatchDrawable;

    .line 218
    .local v11, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 219
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 220
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 221
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 223
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 224
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 225
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 226
    const/high16 v14, -0x22000000

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 227
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 228
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 230
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 231
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 232
    const/high16 v14, -0x22000000

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 233
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 234
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 239
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 240
    .local v7, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 241
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 246
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 247
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 251
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 252
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 253
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 256
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 257
    const/16 v14, 0x7d

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 258
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 259
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 261
    sget v2, Lcom/zte/extres/R$id;->off:I

    .line 262
    .local v2, "fromId":I
    sget v13, Lcom/zte/extres/R$id;->on:I

    .line 263
    .local v13, "toId":I
    const/4 v12, 0x0

    .line 264
    .local v12, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 266
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 267
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 269
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 272
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 273
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 274
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 277
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 278
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 279
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 282
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 283
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 284
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 287
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 288
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 289
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 292
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 293
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 294
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 297
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 298
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 302
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 303
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 304
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 307
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 308
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 309
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 312
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 313
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 314
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 317
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 318
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 319
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 322
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 323
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 324
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 325
    invoke-virtual {v3, v2, v13, v4, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 328
    sget v2, Lcom/zte/extres/R$id;->on:I

    .line 329
    sget v13, Lcom/zte/extres/R$id;->off:I

    .line 330
    const/4 v12, 0x0

    .line 331
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 333
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 334
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 335
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 336
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 339
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 340
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 341
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 344
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 345
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 346
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 349
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 350
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 351
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 354
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 355
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 356
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 359
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 360
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 361
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 364
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 365
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 366
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 369
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 370
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 371
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 374
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 375
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 376
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 379
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 380
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 381
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 384
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 385
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 386
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 389
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 390
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 391
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 393
    invoke-virtual {v3, v2, v13, v5, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    return-void
.end method

.method private SetColorForAndroid4x(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 588
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 590
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 592
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_1

    .line 593
    :cond_0
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 595
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 599
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 600
    .local v3, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 601
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 603
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_3

    .line 604
    :cond_2
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 606
    :cond_3
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 608
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 612
    .local v2, "mTempThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 614
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 616
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 618
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 620
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 400
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 401
    .local v4, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 402
    .local v6, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 403
    .local v7, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 404
    .local v8, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 406
    .local v9, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 407
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 408
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 409
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 411
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 412
    const/16 v12, 0x4c

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 413
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v4, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 414
    const/high16 v12, -0x22000000

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 415
    const/16 v12, 0x4c

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 416
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 417
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 418
    const/16 v12, 0x1a

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 419
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v4, v12, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 420
    const/high16 v12, -0x22000000

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 421
    const/16 v12, 0x1a

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 422
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 424
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 427
    .local v1, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 428
    .local v5, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 429
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 430
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 434
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 435
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 436
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 439
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 440
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 441
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 444
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 445
    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 446
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 447
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 449
    sget v0, Lcom/zte/extres/R$id;->off:I

    .line 450
    .local v0, "fromId":I
    sget v11, Lcom/zte/extres/R$id;->on:I

    .line 451
    .local v11, "toId":I
    const/4 v10, 0x0

    .line 452
    .local v10, "reversible":Z
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 454
    .local v2, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 455
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 456
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 457
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 460
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 461
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 462
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 465
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 466
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 467
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 470
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 471
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 472
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 475
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 476
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 477
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 480
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 481
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 482
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 485
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 486
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 487
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 490
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 491
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 492
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 495
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 496
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 497
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 500
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 501
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 502
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 505
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 506
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 507
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 510
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 511
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 512
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 513
    invoke-virtual {v1, v0, v11, v2, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 516
    sget v0, Lcom/zte/extres/R$id;->on:I

    .line 517
    sget v11, Lcom/zte/extres/R$id;->off:I

    .line 518
    const/4 v10, 0x0

    .line 519
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 521
    .local v3, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 522
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 523
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 524
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 526
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 527
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 528
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 529
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 532
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 533
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 534
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 537
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 538
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 539
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 542
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 543
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 544
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 547
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 548
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 549
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 552
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 553
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 554
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 557
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 558
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 559
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 562
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 563
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 564
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 567
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 568
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 569
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 572
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 573
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 574
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 577
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 578
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 579
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 581
    invoke-virtual {v1, v0, v11, v3, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 583
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 628
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 629
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
    .line 195
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(I)V

    goto :goto_0

    .line 201
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setSwitchMinWidth(I)V

    .line 202
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbTextPadding(I)V

    .line 203
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setSwitchPadding(I)V

    .line 204
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public SetOnActionBar(Z)V
    .locals 1
    .param p1, "onActionBar"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 189
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 192
    :cond_0
    return-void
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 131
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 131
    const/4 v2, 0x0

    goto :goto_0
.end method
