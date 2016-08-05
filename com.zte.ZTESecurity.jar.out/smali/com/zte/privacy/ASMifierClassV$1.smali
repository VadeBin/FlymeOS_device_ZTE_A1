.class Lcom/zte/privacy/ASMifierClassV$1;
.super Ljava/lang/Object;
.source "ASMifierClassV.java"

# interfaces
.implements Lcom/zte/privacy/DexFieldVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/ASMifierClassV;->visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ASMifierClassV;

.field final synthetic val$f:Lcom/zte/privacy/ArrayOut;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ASMifierClassV;Lcom/zte/privacy/ArrayOut;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zte/privacy/ASMifierClassV$1;->this$0:Lcom/zte/privacy/ASMifierClassV;

    iput-object p2, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 93
    new-instance v0, Lcom/zte/privacy/ASMifierAnnotationV;

    const-string v1, "fv"

    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/ASMifierAnnotationV;-><init>(Ljava/lang/String;Lcom/zte/privacy/ArrayOut;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    const-string v1, "fv.visitEnd();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 100
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 102
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$1;->val$f:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 103
    return-void
.end method
