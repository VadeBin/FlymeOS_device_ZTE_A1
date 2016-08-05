.class Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/JavaChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HSIDouble"
.end annotation


# instance fields
.field public h:D

.field public i:D

.field public s:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->h:D

    .line 261
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->s:D

    .line 262
    iput-wide v0, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    .line 263
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "h_in"    # D
    .param p3, "s_in"    # D
    .param p5, "i_in"    # D

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-wide p1, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->h:D

    .line 267
    iput-wide p3, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->s:D

    .line 268
    iput-wide p5, p0, Lcom/zte/mifavor/widget/JavaChanger$HSIDouble;->i:D

    .line 269
    return-void
.end method
