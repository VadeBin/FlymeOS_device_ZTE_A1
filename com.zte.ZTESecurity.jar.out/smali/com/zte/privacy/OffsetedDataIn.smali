.class public Lcom/zte/privacy/OffsetedDataIn;
.super Lcom/zte/privacy/DataInWrapper;
.source "OffsetedDataIn.java"


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DataIn;I)V
    .locals 0
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "offset"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zte/privacy/DataInWrapper;-><init>(Lcom/zte/privacy/DataIn;)V

    .line 29
    invoke-super {p0, p2}, Lcom/zte/privacy/DataInWrapper;->move(I)V

    .line 30
    iput p2, p0, Lcom/zte/privacy/OffsetedDataIn;->offset:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/zte/privacy/DataInWrapper;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/zte/privacy/OffsetedDataIn;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public move(I)V
    .locals 1
    .param p1, "absOffset"    # I

    .prologue
    .line 40
    iget v0, p0, Lcom/zte/privacy/OffsetedDataIn;->offset:I

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/zte/privacy/DataInWrapper;->move(I)V

    .line 41
    return-void
.end method

.method public pushMove(I)V
    .locals 1
    .param p1, "absOffset"    # I

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/privacy/OffsetedDataIn;->offset:I

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/zte/privacy/DataInWrapper;->pushMove(I)V

    .line 46
    return-void
.end method
