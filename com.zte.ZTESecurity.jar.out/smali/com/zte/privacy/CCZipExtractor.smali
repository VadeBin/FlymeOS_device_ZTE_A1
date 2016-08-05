.class public Lcom/zte/privacy/CCZipExtractor;
.super Lcom/zte/privacy/ZipExtractor;
.source "CCZipExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zte/privacy/ZipExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public extract([BLjava/lang/String;)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .local v2, "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .local v0, "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 41
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 43
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    .line 39
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 50
    new-instance v3, Ljava/io/IOException;

    const-string v4, "can\'t find classes.dex in the zip"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v0    # "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v2    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .restart local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .end local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .restart local v2    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .restart local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    goto :goto_1
.end method
