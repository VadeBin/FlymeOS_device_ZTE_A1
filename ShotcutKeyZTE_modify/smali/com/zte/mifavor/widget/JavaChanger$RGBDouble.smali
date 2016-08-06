.class Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/JavaChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RGBDouble"
.end annotation


# instance fields
.field public b:D

.field public g:D

.field public r:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    .line 279
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    .line 280
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    .line 281
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "r_in"    # D
    .param p3, "g_in"    # D
    .param p5, "b_in"    # D

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-wide p1, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->r:D

    .line 285
    iput-wide p3, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->g:D

    .line 286
    iput-wide p5, p0, Lcom/zte/mifavor/widget/JavaChanger$RGBDouble;->b:D

    .line 287
    return-void
.end method
