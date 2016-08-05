.class public Lcom/zte/privacy/ArrayOut;
.super Ljava/lang/Object;
.source "ArrayOut.java"

# interfaces
.implements Lcom/zte/privacy/Out;


# instance fields
.field public array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field public is:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/ArrayOut;->i:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public pop()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/zte/privacy/ArrayOut;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/privacy/ArrayOut;->i:I

    .line 51
    return-void
.end method

.method public push()V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/zte/privacy/ArrayOut;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/privacy/ArrayOut;->i:I

    .line 35
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    iget v1, p0, Lcom/zte/privacy/ArrayOut;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public varargs s(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 45
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 46
    return-void
.end method
