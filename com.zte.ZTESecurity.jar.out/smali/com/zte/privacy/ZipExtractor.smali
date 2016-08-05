.class public Lcom/zte/privacy/ZipExtractor;
.super Ljava/lang/Object;
.source "ZipExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v2, Lcom/zte/privacy/ZipInputStreamHack;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/zte/privacy/ZipInputStreamHack;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 34
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v2}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 41
    new-instance v3, Ljava/io/IOException;

    const-string v4, "can\'t find classes.dex in the zip"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/zte/ZTESecurity/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_1
.end method
