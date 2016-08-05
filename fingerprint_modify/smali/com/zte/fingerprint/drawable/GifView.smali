.class public Lcom/zte/fingerprint/drawable/GifView;
.super Landroid/view/View;
.source "GifView.java"


# instance fields
.field private movie:Landroid/graphics/Movie;

.field private movieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lcom/zte/fingerprint/drawable/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/drawable/GifView;->movie:Landroid/graphics/Movie;

    .line 20
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, "curTime":J
    iget-wide v6, p0, Lcom/zte/fingerprint/drawable/GifView;->movieStart:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 27
    iput-wide v0, p0, Lcom/zte/fingerprint/drawable/GifView;->movieStart:J

    .line 29
    :cond_0
    iget-object v5, p0, Lcom/zte/fingerprint/drawable/GifView;->movie:Landroid/graphics/Movie;

    if-eqz v5, :cond_1

    .line 30
    iget-object v5, p0, Lcom/zte/fingerprint/drawable/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 31
    .local v2, "duration":I
    iget-wide v6, p0, Lcom/zte/fingerprint/drawable/GifView;->movieStart:J

    sub-long v6, v0, v6

    int-to-long v8, v2

    rem-long/2addr v6, v8

    long-to-int v4, v6

    .line 32
    .local v4, "relTime":I
    iget-object v5, p0, Lcom/zte/fingerprint/drawable/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v5, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 34
    :try_start_0
    iget-object v5, p0, Lcom/zte/fingerprint/drawable/GifView;->movie:Landroid/graphics/Movie;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/drawable/GifView;->invalidate()V

    .line 41
    .end local v2    # "duration":I
    .end local v4    # "relTime":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    return-void

    .line 35
    .restart local v2    # "duration":I
    .restart local v4    # "relTime":I
    :catch_0
    move-exception v3

    .line 36
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
