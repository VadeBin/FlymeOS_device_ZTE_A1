.class public Lcom/zte/privacy/ASMifierAnnotationV;
.super Ljava/lang/Object;
.source "ASMifierAnnotationV.java"

# interfaces
.implements Lcom/zte/privacy/DexAnnotationVisitor;


# instance fields
.field i:I

.field out:Lcom/zte/privacy/ArrayOut;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zte/privacy/ArrayOut;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/zte/privacy/ArrayOut;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v4, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 29
    iput-object p2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    .line 30
    const-string v0, "{"

    invoke-virtual {p2, v0}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 32
    const-string v0, "DexAnnotationVisitor av%02d = %s.visitAnnotation(%s, %s);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const-string v0, "if(av%02d != null) {"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 36
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "av%02d.visit(%s, %s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 50
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 52
    iget v1, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 53
    .local v1, "old":I
    iget v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 54
    .local v0, "n":I
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "DexAnnotationVisitor av%02d = av%02d.visitAnnotation(%s, %s);"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "if(av%02d != null) {"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 57
    return-object p0
.end method

.method public visitArray(Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 64
    iget v1, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 65
    .local v1, "old":I
    iget v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 66
    .local v0, "n":I
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "DexAnnotationVisitor av%02d = av%02d.visitArray(%s);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "if(av%02d != null) {"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v2, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v2}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 69
    return-object p0
.end method

.method public visitEnd()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "av%02d.visitEnd();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    .line 76
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 77
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 79
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/privacy/ASMifierAnnotationV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "av%02d.visitEnum(%s, %s, %s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/ASMifierAnnotationV;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method
