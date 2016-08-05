.class public Lcom/zte/privacy/InputStreamDataIn;
.super Lcom/zte/privacy/DataInputDataIn;
.source "InputStreamDataIn.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "isLE"    # Z

    .prologue
    .line 44
    new-instance v0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;

    invoke-direct {v0, p1}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/privacy/DataInputDataIn;-><init>(Ljava/io/DataInput;Z)V

    .line 45
    return-void
.end method

.method public static open(Ljava/io/InputStream;)Lcom/zte/privacy/InputStreamDataIn;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 16
    new-instance v0, Lcom/zte/privacy/InputStreamDataIn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/InputStreamDataIn;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method public static openApk(Ljava/io/File;)Lcom/zte/privacy/InputStreamDataIn;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/zte/privacy/InputStreamDataIn;->openApk(Ljava/io/InputStream;)Lcom/zte/privacy/InputStreamDataIn;

    move-result-object v2

    return-object v2

    .line 23
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No valid apk"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static openApk(Ljava/io/InputStream;)Lcom/zte/privacy/InputStreamDataIn;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 31
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "classes.dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v3, Lcom/zte/privacy/InputStreamDataIn;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/zte/privacy/InputStreamDataIn;-><init>(Ljava/io/InputStream;Z)V

    return-object v3

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 37
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Not valid apk"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No valid apk"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 49
    iget-object v0, p0, Lcom/zte/privacy/InputStreamDataIn;->in:Ljava/io/DataInput;

    check-cast v0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->close()V

    .line 50
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/privacy/InputStreamDataIn;->in:Ljava/io/DataInput;

    check-cast v0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->getFilePointer()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public move(I)V
    .locals 4
    .param p1, "absOffset"    # I

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/InputStreamDataIn;->in:Ljava/io/DataInput;

    check-cast v1, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method
