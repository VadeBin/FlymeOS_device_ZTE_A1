.class public final Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NinePatchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NinePatchState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mChangingConfigurations:I

.field final mDither:Z

.field final mNinePatch:Landroid/graphics/NinePatch;

.field final mOpticalInsets:Landroid/graphics/Insets;

.field final mPadding:Landroid/graphics/Rect;

.field mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 400
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 401
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 405
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;
    .param p4, "dither"    # Z
    .param p5, "autoMirror"    # Z

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 396
    const/16 v0, 0xa0

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 409
    iput-object p1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 410
    iput-object p2, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 411
    invoke-static {p3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 412
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 413
    iput-boolean p5, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 414
    return-void
.end method

.method constructor <init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;)V
    .locals 1
    .param p1, "state"    # Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 396
    const/16 v0, 0xa0

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 420
    iget-object v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 422
    iget-object v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 423
    iget-object v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 424
    iget-boolean v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mDither:Z

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 425
    iget v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 426
    iget v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 427
    iget-boolean v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 428
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    return v0
.end method

.method public getNinePatch()Landroid/graphics/NinePatch;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Lcom/zte/mifavor/widget/NinePatchDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 446
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Lcom/zte/mifavor/widget/NinePatchDrawable$1;)V

    return-object v0
.end method
