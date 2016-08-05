.class public Lcom/zte/privacy/DexLabel;
.super Ljava/lang/Object;
.source "DexLabel.java"


# instance fields
.field public info:Ljava/lang/Object;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/privacy/DexLabel;->offset:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/privacy/DexLabel;->offset:I

    .line 39
    iput p1, p0, Lcom/zte/privacy/DexLabel;->offset:I

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 48
    iget v0, p0, Lcom/zte/privacy/DexLabel;->offset:I

    if-ltz v0, :cond_0

    .line 49
    const-string v0, "L%04x"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/DexLabel;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "L%08x"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
