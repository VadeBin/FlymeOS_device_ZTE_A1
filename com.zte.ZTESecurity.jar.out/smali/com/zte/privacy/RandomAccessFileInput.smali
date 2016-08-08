.class public Lcom/zte/privacy/RandomAccessFileInput;
.super Lcom/zte/privacy/DataInputDataIn;
.source "RandomAccessFileInput.java"

# interfaces
.implements Lcom/zte/privacy/DataIn;
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "isLE"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/privacy/DataInputDataIn;-><init>(Ljava/io/DataInput;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/RandomAccessFileInput;->in:Ljava/io/DataInput;

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 34
    return-void
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/RandomAccessFileInput;->in:Ljava/io/DataInput;

    check-cast v1, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public move(I)V
    .locals 4
    .param p1, "absOffset"    # I

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/RandomAccessFileInput;->in:Ljava/io/DataInput;

    check-cast v1, Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
