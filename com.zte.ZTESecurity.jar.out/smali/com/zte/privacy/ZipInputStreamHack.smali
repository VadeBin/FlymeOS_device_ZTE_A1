.class public Lcom/zte/privacy/ZipInputStreamHack;
.super Ljava/util/zip/ZipInputStream;
.source "ZipInputStreamHack.java"


# static fields
.field static flagField:Ljava/lang/reflect/Field;

.field static tmpbufField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    const-class v0, Ljava/util/zip/ZipInputStream;

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/ZipInputStreamHack;->flagField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v0, Lcom/zte/privacy/ZipInputStreamHack;->flagField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    :try_start_1
    const-class v0, Ljava/util/zip/ZipInputStream;

    const-string v1, "tmpbuf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/ZipInputStreamHack;->tmpbufField:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Lcom/zte/privacy/ZipInputStreamHack;->tmpbufField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v4, Lcom/zte/privacy/ZipInputStreamHack;->flagField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_0

    .line 85
    :try_start_0
    sget-object v4, Lcom/zte/privacy/ZipInputStreamHack;->flagField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    .local v2, "flag":I
    sget-object v4, Lcom/zte/privacy/ZipInputStreamHack;->flagField:Ljava/lang/reflect/Field;

    shr-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v2    # "flag":I
    :cond_0
    :goto_0
    sget-object v4, Lcom/zte/privacy/ZipInputStreamHack;->tmpbufField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    .line 93
    :try_start_1
    sget-object v4, Lcom/zte/privacy/ZipInputStreamHack;->tmpbufField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 94
    .local v1, "buffer":[B
    const/4 v4, 0x6

    aget-byte v3, v1, v4

    .line 95
    .local v3, "flagLow8":I
    shr-int/lit8 v4, v3, 0x1

    shl-int/lit8 v3, v4, 0x1

    .line 96
    const/4 v4, 0x6

    int-to-byte v5, v3

    aput-byte v5, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "flagLow8":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    return-object v4

    .line 97
    :catch_0
    move-exception v4

    goto :goto_1

    .line 87
    :catch_1
    move-exception v4

    goto :goto_0
.end method
