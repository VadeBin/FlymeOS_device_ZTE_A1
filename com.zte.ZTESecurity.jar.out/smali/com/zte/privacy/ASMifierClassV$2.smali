.class Lcom/zte/privacy/ASMifierClassV$2;
.super Ljava/lang/Object;
.source "ASMifierClassV.java"

# interfaces
.implements Lcom/zte/privacy/DexMethodVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/ASMifierClassV;->visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ASMifierClassV;

.field final synthetic val$m:Lcom/zte/privacy/ArrayOut;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ASMifierClassV;Lcom/zte/privacy/ArrayOut;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zte/privacy/ASMifierClassV$2;->this$0:Lcom/zte/privacy/ASMifierClassV;

    iput-object p2, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 124
    new-instance v0, Lcom/zte/privacy/ASMifierAnnotationV;

    const-string v1, "mv"

    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/ASMifierAnnotationV;-><init>(Ljava/lang/String;Lcom/zte/privacy/ArrayOut;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public visitCode()Lcom/zte/privacy/DexCodeVisitor;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "DexCodeVisitor code=mv.visitCode();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "if(code != null) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 144
    new-instance v0, Lcom/zte/privacy/ASMifierClassV$2$2;

    iget-object v1, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ASMifierClassV$2$2;-><init>(Lcom/zte/privacy/ASMifierClassV$2;Lcom/zte/privacy/Out;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "mv.visitEnd();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 159
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 161
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    const-string v1, "DexAnnotationAble pv%02d = mv.visitParameterAnnotation(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/zte/privacy/ASMifierClassV$2$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/privacy/ASMifierClassV$2$1;-><init>(Lcom/zte/privacy/ASMifierClassV$2;I)V

    return-object v0
.end method
