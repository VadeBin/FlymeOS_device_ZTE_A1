.class public abstract Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.super Ljava/io/OutputStream;
.source "ArchiveOutputStream.java"


# static fields
.field static final BYTE_MASK:I = 0xff


# instance fields
.field private bytesWritten:J

.field private final oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    return-void
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public abstract closeArchiveEntry()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected count(I)V
    .locals 2
    .param p1, "written"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(J)V

    .line 124
    return-void
.end method

.method protected count(J)V
    .locals 3
    .param p1, "written"    # J

    .prologue
    .line 134
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    .line 137
    :cond_0
    return-void
.end method

.method public abstract createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract finish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBytesWritten()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    long-to-int v0, v0

    return v0
.end method

.method public abstract putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->write([BII)V

    .line 114
    return-void
.end method
