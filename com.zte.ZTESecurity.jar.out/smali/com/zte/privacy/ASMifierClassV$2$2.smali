.class Lcom/zte/privacy/ASMifierClassV$2$2;
.super Lcom/zte/privacy/ASMifierCodeV;
.source "ASMifierClassV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/ASMifierClassV$2;->visitCode()Lcom/zte/privacy/DexCodeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/privacy/ASMifierClassV$2;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ASMifierClassV$2;Lcom/zte/privacy/Out;)V
    .locals 0
    .param p2, "x0"    # Lcom/zte/privacy/Out;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/privacy/ASMifierClassV$2$2;->this$1:Lcom/zte/privacy/ASMifierClassV$2;

    invoke-direct {p0, p2}, Lcom/zte/privacy/ASMifierCodeV;-><init>(Lcom/zte/privacy/Out;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/zte/privacy/ASMifierCodeV;->visitEnd()V

    .line 149
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2$2;->m:Lcom/zte/privacy/Out;

    invoke-interface {v0}, Lcom/zte/privacy/Out;->pop()V

    .line 150
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2$2;->m:Lcom/zte/privacy/Out;

    const-string v1, "}"

    invoke-interface {v0, v1}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;)V

    .line 151
    return-void
.end method
