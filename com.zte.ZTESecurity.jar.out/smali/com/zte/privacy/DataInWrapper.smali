.class public Lcom/zte/privacy/DataInWrapper;
.super Ljava/lang/Object;
.source "DataInWrapper.java"

# interfaces
.implements Lcom/zte/privacy/DataIn;


# instance fields
.field private in:Lcom/zte/privacy/DataIn;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DataIn;)V
    .locals 0
    .param p1, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    .line 10
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public move(I)V
    .locals 1
    .param p1, "absOffset"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DataIn;->move(I)V

    .line 20
    return-void
.end method

.method public pop()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->pop()V

    .line 25
    return-void
.end method

.method public push()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->push()V

    .line 30
    return-void
.end method

.method public pushMove(I)V
    .locals 1
    .param p1, "absOffset"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 35
    return-void
.end method

.method public readByte()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readByte()I

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DataIn;->readBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readIntx()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v0

    return v0
.end method

.method public readLeb128()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readLeb128()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShortx()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v0

    return v0
.end method

.method public readUIntx()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v0

    return v0
.end method

.method public readULeb128()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUShortx()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v0

    return v0
.end method

.method public skip(I)V
    .locals 1
    .param p1, "bytes"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/privacy/DataInWrapper;->in:Lcom/zte/privacy/DataIn;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 85
    return-void
.end method
