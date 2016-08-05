.class public final Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument$PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageNumber"    # I

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>(Landroid/graphics/pdf/PdfDocument$1;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 333
    if-gtz p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    if-gtz p2, :cond_1

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1
    if-gez p3, :cond_2

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageNumber must be non negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # setter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I
    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$002(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 343
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # setter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I
    invoke-static {v0, p2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$102(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 344
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # setter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I
    invoke-static {v0, p3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$602(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 345
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 371
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I
    invoke-static {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I
    invoke-static {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    # setter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$202(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    .locals 2
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 355
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentRect does not fit the page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    # setter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$202(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 362
    return-object p0
.end method
