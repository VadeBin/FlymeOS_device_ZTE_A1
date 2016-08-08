.class Lcom/zte/privacy/Dump$1$1;
.super Ljava/io/PrintWriter;
.source "Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/Dump$1;->get(Ljava/lang/String;)Ljava/io/PrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/Dump$1;


# direct methods
.method constructor <init>(Lcom/zte/privacy/Dump$1;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/OutputStream;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/privacy/Dump$1$1;->this$0:Lcom/zte/privacy/Dump$1;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/Dump$1$1;->this$0:Lcom/zte/privacy/Dump$1;

    iget-object v1, v1, Lcom/zte/privacy/Dump$1;->val$zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
