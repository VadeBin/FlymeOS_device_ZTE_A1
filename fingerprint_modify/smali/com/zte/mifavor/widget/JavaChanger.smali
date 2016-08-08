.class public Lcom/zte/mifavor/widget/JavaChanger;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;,
        Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
    }
.end annotation


# static fields
.field private static mColor:I

.field private static mPalette:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x2fe

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/mifavor/widget/JavaChanger;->mPalette:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method public static HSI2RGB_neo(Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;)Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    .locals 34
    .param p0, "hsi"    # Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;

    .prologue
    .line 199
    new-instance v30, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    invoke-direct/range {v30 .. v30}, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;-><init>()V

    .line 201
    .local v30, "rgb":Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->h:D

    .line 202
    .local v8, "h":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->s:D

    move-wide/from16 v32, v0

    .line 203
    .local v32, "s":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    move-wide/from16 v26, v0

    .line 204
    .local v26, "i":D
    const-wide/16 v28, 0x0

    .line 205
    .local v28, "r":D
    const-wide/16 v24, 0x0

    .line 206
    .local v24, "g":D
    const-wide/16 v22, 0x0

    .line 208
    .local v22, "b":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v32, v12

    if-nez v12, :cond_0

    .line 209
    move-wide/from16 v28, v26

    .line 210
    move-wide/from16 v24, v26

    .line 211
    move-wide/from16 v22, v26

    .line 228
    :goto_0
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v28

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    .line 229
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    .line 230
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v22

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    .line 231
    return-object v30

    .line 214
    :cond_0
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v26, v12

    if-gez v12, :cond_1

    .line 215
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, v32

    mul-double v4, v26, v12

    .line 219
    .local v4, "q":D
    :goto_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v26

    sub-double v6, v12, v4

    .line 220
    .local v6, "p":D
    const-wide v12, 0x4076800000000000L    # 360.0

    div-double/2addr v8, v12

    .line 221
    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v2, v8, v12

    .line 222
    .local v2, "TR":D
    move-wide v10, v8

    .line 223
    .local v10, "TG":D
    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v20, v8, v12

    .line 224
    .local v20, "TB":D
    invoke-static/range {v2 .. v9}, Lcom/zte/mifavor/widget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v28

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 225
    invoke-static/range {v10 .. v17}, Lcom/zte/mifavor/widget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v24

    move-wide/from16 v12, v20

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    .line 226
    invoke-static/range {v12 .. v19}, Lcom/zte/mifavor/widget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v22

    goto :goto_0

    .line 217
    .end local v2    # "TR":D
    .end local v4    # "q":D
    .end local v6    # "p":D
    .end local v10    # "TG":D
    .end local v20    # "TB":D
    :cond_1
    add-double v12, v26, v32

    mul-double v14, v26, v32

    sub-double v4, v12, v14

    .restart local v4    # "q":D
    goto :goto_1
.end method

.method public static RGB2HSI_neo(Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;)Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
    .locals 26
    .param p0, "rgb"    # Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    .prologue
    .line 159
    new-instance v8, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;

    invoke-direct {v8}, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;-><init>()V

    .line 161
    .local v8, "hsi":Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
    const-wide/16 v6, 0x0

    .line 162
    .local v6, "h":D
    const-wide/16 v18, 0x0

    .line 163
    .local v18, "s":D
    const-wide/16 v10, 0x0

    .line 164
    .local v10, "i":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v16, v20, v22

    .line 165
    .local v16, "r":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v4, v20, v22

    .line 166
    .local v4, "g":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v2, v20, v22

    .line 169
    .local v2, "b":D
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 170
    .local v12, "max":D
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 172
    .local v14, "min":D
    cmpl-double v9, v12, v14

    if-nez v9, :cond_3

    .line 173
    const-wide/16 v6, 0x0

    .line 183
    :cond_0
    :goto_0
    add-double v20, v12, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v10, v20, v22

    .line 184
    const-wide/16 v20, 0x0

    cmpl-double v9, v10, v20

    if-eqz v9, :cond_1

    cmpl-double v9, v12, v14

    if-nez v9, :cond_7

    .line 185
    :cond_1
    const-wide/16 v18, 0x0

    .line 192
    :cond_2
    :goto_1
    iput-wide v6, v8, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->h:D

    .line 193
    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->s:D

    .line 194
    iput-wide v10, v8, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    .line 195
    return-object v8

    .line 174
    :cond_3
    cmpl-double v9, v12, v16

    if-nez v9, :cond_4

    cmpl-double v9, v4, v2

    if-ltz v9, :cond_4

    .line 175
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    sub-double v22, v4, v2

    sub-double v24, v12, v14

    div-double v22, v22, v24

    mul-double v6, v20, v22

    goto :goto_0

    .line 176
    :cond_4
    cmpl-double v9, v12, v16

    if-nez v9, :cond_5

    cmpg-double v9, v4, v2

    if-gez v9, :cond_5

    .line 177
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    sub-double v22, v4, v2

    sub-double v24, v12, v14

    div-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide v22, 0x4076800000000000L    # 360.0

    add-double v6, v20, v22

    goto :goto_0

    .line 178
    :cond_5
    cmpl-double v9, v12, v4

    if-nez v9, :cond_6

    .line 179
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    sub-double v22, v2, v16

    sub-double v24, v12, v14

    div-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x405e000000000000L    # 120.0

    add-double v6, v20, v22

    goto :goto_0

    .line 180
    :cond_6
    cmpl-double v9, v12, v2

    if-nez v9, :cond_0

    .line 181
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    sub-double v22, v16, v4

    sub-double v24, v12, v14

    div-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x406e000000000000L    # 240.0

    add-double v6, v20, v22

    goto :goto_0

    .line 186
    :cond_7
    const-wide/16 v20, 0x0

    cmpl-double v9, v10, v20

    if-lez v9, :cond_8

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v10, v20

    if-gtz v9, :cond_8

    .line 187
    sub-double v20, v12, v14

    add-double v22, v12, v14

    div-double v18, v20, v22

    goto :goto_1

    .line 188
    :cond_8
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v10, v20

    if-lez v9, :cond_2

    .line 189
    sub-double v20, v12, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v24, v12, v14

    sub-double v22, v22, v24

    div-double v18, v20, v22

    goto :goto_1
.end method

.method private static createColoredIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "srcImg"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .prologue
    const/high16 v10, -0x1000000

    const v9, 0xffffff

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 33
    .local v1, "argb":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    and-int/2addr p1, v9

    .line 36
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_2

    .line 37
    aget v0, v1, v8

    and-int/2addr v0, v9

    const v2, 0x328bde

    if-eq v0, v2, :cond_0

    aget v0, v1, v8

    and-int/2addr v0, v9

    const v2, 0xfafafa

    if-ne v0, v2, :cond_1

    .line 39
    :cond_0
    aget v0, v1, v8

    and-int/2addr v0, v10

    or-int/2addr v0, p1

    aput v0, v1, v8

    .line 36
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/zte/mifavor/widget/JavaChanger;->mPalette:[I

    aget v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v8

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget v3, v1, v8

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget v0, v0, v2

    aget v2, v1, v8

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    aput v0, v1, v8

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createColoredIconWidget(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "srcImg"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
    .param p2, "disable"    # Z

    .prologue
    const v9, 0xffffff

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 56
    .local v1, "argb":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 58
    and-int/2addr p1, v9

    .line 59
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_2

    .line 63
    aget v0, v1, v8

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_0

    .line 66
    if-eqz p2, :cond_1

    .line 68
    aget v0, v1, v8

    const/high16 v2, -0x66000000

    and-int/2addr v0, v2

    or-int/2addr v0, p1

    aput v0, v1, v8

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 70
    :cond_1
    aget v0, v1, v8

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    or-int/2addr v0, p1

    aput v0, v1, v8

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcImg"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .prologue
    .line 107
    const v0, 0xffffff

    and-int/2addr v0, p1

    sget v1, Lcom/zte/mifavor/widget/JavaChanger;->mColor:I

    if-eq v0, v1, :cond_0

    .line 108
    invoke-static {p1}, Lcom/zte/mifavor/widget/JavaChanger;->updatePalette(I)V

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/JavaChanger;->createColoredIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setColorWidget(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcImg"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
    .param p2, "disable"    # Z

    .prologue
    .line 115
    const v0, 0xffffff

    and-int/2addr v0, p1

    sget v1, Lcom/zte/mifavor/widget/JavaChanger;->mColor:I

    if-eq v0, v1, :cond_0

    .line 116
    invoke-static {p1}, Lcom/zte/mifavor/widget/JavaChanger;->updatePalette(I)V

    .line 119
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/zte/mifavor/widget/JavaChanger;->createColoredIconWidget(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setColor_neo(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "sourceImg"    # Landroid/graphics/Bitmap;
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 124
    .local v3, "argb":[I
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 126
    new-instance v5, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    move/from16 v0, p1

    int-to-double v6, v0

    move/from16 v0, p2

    int-to-double v8, v0

    move/from16 v0, p3

    int-to-double v10, v0

    invoke-direct/range {v5 .. v11}, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;-><init>(DDD)V

    .line 128
    .local v5, "rgb":Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    new-instance v17, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    invoke-direct/range {v17 .. v17}, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;-><init>()V

    .line 129
    .local v17, "rgb_change":Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    new-instance v14, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;

    invoke-direct {v14}, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;-><init>()V

    .line 130
    .local v14, "hsi_change":Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
    const/16 v16, 0x0

    .line 131
    .local v16, "r":I
    const/4 v13, 0x0

    .line 132
    .local v13, "g":I
    const/4 v12, 0x0

    .line 133
    .local v12, "b":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v3

    if-ge v15, v2, :cond_1

    .line 134
    aget v2, v3, v15

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 136
    aget v2, v3, v15

    const v4, 0xffffff

    and-int/2addr v2, v4

    const v4, 0xffffff

    if-eq v2, v4, :cond_0

    .line 138
    aget v2, v3, v15

    const/high16 v4, 0xff0000

    and-int/2addr v2, v4

    shr-int/lit8 v16, v2, 0x10

    .line 139
    aget v2, v3, v15

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v13, v2, 0x8

    .line 140
    aget v2, v3, v15

    and-int/lit16 v12, v2, 0xff

    .line 142
    invoke-static {v5}, Lcom/zte/mifavor/widget/JavaChanger;->RGB2HSI_neo(Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;)Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;

    move-result-object v14

    .line 143
    add-int v2, v16, v13

    add-int/2addr v2, v12

    int-to-double v6, v2

    const-wide v8, 0x4087e80000000000L    # 765.0

    div-double/2addr v6, v8

    iput-wide v6, v14, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    .line 144
    invoke-static {v14}, Lcom/zte/mifavor/widget/JavaChanger;->HSI2RGB_neo(Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;)Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    move-result-object v17

    .line 146
    aget v2, v3, v15

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    double-to-int v4, v6

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    double-to-int v4, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    double-to-int v4, v6

    add-int/2addr v2, v4

    aput v2, v3, v15

    .line 133
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 154
    return-object p0
.end method

.method public static toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "background"    # Landroid/graphics/Bitmap;
    .param p1, "foreground"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 83
    if-nez p0, :cond_0

    move-object v3, v4

    .line 102
    :goto_0
    return-object v3

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 88
    .local v1, "bgWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 92
    .local v0, "bgHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    .local v3, "newbmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v2, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v2, p0, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {v2, p1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 101
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static toRGB(DDDD)D
    .locals 8
    .param p0, "TColor"    # D
    .param p2, "q"    # D
    .param p4, "p"    # D
    .param p6, "h"    # D

    .prologue
    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 235
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 236
    add-double/2addr p0, v2

    .line 238
    :cond_0
    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    .line 239
    sub-double/2addr p0, v2

    .line 241
    :cond_1
    const-wide v0, 0x3fc5555555555555L    # 0.16666666666666666

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 242
    sub-double v0, p2, p4

    mul-double/2addr v0, v6

    mul-double/2addr v0, p0

    add-double p2, p4, v0

    .line 248
    .end local p2    # "q":D
    :cond_2
    :goto_0
    return-wide p2

    .line 243
    .restart local p2    # "q":D
    :cond_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_2

    .line 245
    cmpg-double v0, p0, v4

    if-gez v0, :cond_4

    .line 246
    sub-double v0, p2, p4

    mul-double/2addr v0, v6

    sub-double v2, v4, p0

    mul-double/2addr v0, v2

    add-double p2, p4, v0

    goto :goto_0

    :cond_4
    move-wide p2, p4

    .line 248
    goto :goto_0
.end method

.method private static updatePalette(I)V
    .locals 10
    .param p0, "color"    # I

    .prologue
    .line 20
    new-instance v1, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    and-int/lit16 v6, p0, 0xff

    int-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;-><init>(DDD)V

    .line 21
    .local v1, "rgb":Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    invoke-static {v1}, Lcom/zte/mifavor/widget/JavaChanger;->RGB2HSI_neo(Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;)Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;

    move-result-object v0

    .line 22
    .local v0, "hsi_change":Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
    new-instance v9, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    invoke-direct {v9}, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;-><init>()V

    .line 23
    .local v9, "rgb_change":Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v2, Lcom/zte/mifavor/widget/JavaChanger;->mPalette:[I

    array-length v2, v2

    if-ge v8, v2, :cond_0

    .line 24
    int-to-double v2, v8

    const-wide v4, 0x4087e80000000000L    # 765.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    .line 25
    invoke-static {v0}, Lcom/zte/mifavor/widget/JavaChanger;->HSI2RGB_neo(Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;)Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;

    move-result-object v9

    .line 26
    sget-object v2, Lcom/zte/mifavor/widget/JavaChanger;->mPalette:[I

    iget-wide v4, v9, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    double-to-int v3, v4

    shl-int/lit8 v3, v3, 0x10

    iget-wide v4, v9, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    iget-wide v4, v9, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    double-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v8

    .line 23
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 28
    :cond_0
    const v2, 0xffffff

    and-int/2addr v2, p0

    sput v2, Lcom/zte/mifavor/widget/JavaChanger;->mColor:I

    .line 29
    return-void
.end method
