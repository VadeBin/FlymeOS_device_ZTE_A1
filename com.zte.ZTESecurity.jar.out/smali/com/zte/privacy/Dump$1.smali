.class final Lcom/zte/privacy/Dump$1;
.super Ljava/lang/Object;
.source "Dump.java"

# interfaces
.implements Lcom/zte/privacy/Dump$WriterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/Dump;->doData(Lcom/zte/privacy/DexFileReader;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/privacy/Dump$1;->val$zos:Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dump.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    iget-object v3, p0, Lcom/zte/privacy/Dump$1;->val$zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 55
    new-instance v3, Lcom/zte/privacy/Dump$1$1;

    iget-object v4, p0, Lcom/zte/privacy/Dump$1;->val$zos:Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, p0, v4}, Lcom/zte/privacy/Dump$1$1;-><init>(Lcom/zte/privacy/Dump$1;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 65
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
