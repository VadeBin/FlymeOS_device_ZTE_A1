.class Lcom/zte/privacy/ASMifierFileV$1;
.super Lcom/zte/privacy/ASMifierClassV;
.source "ASMifierFileV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/ASMifierFileV;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ASMifierFileV;

.field final synthetic val$n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ASMifierFileV;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # [Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zte/privacy/ASMifierFileV$1;->this$0:Lcom/zte/privacy/ASMifierFileV;

    iput-object p8, p0, Lcom/zte/privacy/ASMifierFileV$1;->val$n:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zte/privacy/ASMifierClassV;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 7

    .prologue
    const/16 v6, 0x2f

    .line 115
    invoke-super {p0}, Lcom/zte/privacy/ASMifierClassV;->visitEnd()V

    .line 116
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV$1;->out:Lcom/zte/privacy/ArrayOut;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/privacy/ASMifierFileV$1;->this$0:Lcom/zte/privacy/ASMifierFileV;

    iget-object v2, v2, Lcom/zte/privacy/ASMifierFileV;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/privacy/ASMifierFileV$1;->this$0:Lcom/zte/privacy/ASMifierFileV;

    iget-object v4, v4, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/privacy/ASMifierFileV$1;->val$n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/ASMifierFileV;->write(Lcom/zte/privacy/ArrayOut;Ljava/io/File;)V

    .line 117
    return-void
.end method
