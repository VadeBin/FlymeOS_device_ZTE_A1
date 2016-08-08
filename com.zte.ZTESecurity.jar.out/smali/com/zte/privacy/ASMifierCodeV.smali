.class public Lcom/zte/privacy/ASMifierCodeV;
.super Ljava/lang/Object;
.source "ASMifierCodeV.java"

# interfaces
.implements Lcom/zte/privacy/OdexCodeVisitor;
.implements Lcom/zte/privacy/DexOpcodes;


# instance fields
.field i:I

.field m:Lcom/zte/privacy/Out;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/Out;)V
    .locals 1
    .param p1, "m"    # Lcom/zte/privacy/Out;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/ASMifierCodeV;->i:I

    .line 32
    iput-object p1, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    .line 33
    return-void
.end method

.method private v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;
    .locals 5
    .param p1, "l"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 116
    iget-object v0, p1, Lcom/zte/privacy/DexLabel;->info:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/privacy/ASMifierCodeV;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/privacy/ASMifierCodeV;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/privacy/DexLabel;->info:Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "DexLabel %s=new DexLabel();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/zte/privacy/DexLabel;->info:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/zte/privacy/DexLabel;->info:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method op(I)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/privacy/DexOpcodeDump;->dump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v([Lcom/zte/privacy/DexLabel;)Ljava/lang/String;
    .locals 7
    .param p1, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new DexLabel[]{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 104
    .local v2, "first":Z
    move-object v0, p1

    .local v0, "arr$":[Lcom/zte/privacy/DexLabel;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 105
    .local v1, "dexLabel":Lcom/zte/privacy/DexLabel;
    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x0

    .line 110
    :goto_1
    invoke-direct {p0, v1}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    .end local v1    # "dexLabel":Lcom/zte/privacy/DexLabel;
    :cond_1
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public visitArguments(I[I)V
    .locals 5
    .param p1, "total"    # I
    .param p2, "args"    # [I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitArguments(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public visitArrayStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "formOrToReg"    # I
    .param p3, "arrayReg"    # I
    .param p4, "indexReg"    # I
    .param p5, "xt"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitArrayStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public visitBinopLitXStmt(IIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "srcReg"    # I
    .param p4, "content"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitBinopLitXStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public visitBinopStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "r1"    # I
    .param p4, "r2"    # I
    .param p5, "xt"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitBinopStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public visitClassStmt(IIILjava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitClassStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public visitClassStmt(IILjava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "saveTo"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitClassStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public visitCmpStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "bB"    # I
    .param p4, "cC"    # I
    .param p5, "xt"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitCmpStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public visitConstStmt(IILjava/lang/Object;I)V
    .locals 9
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "xt"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s); // int: 0x%08x  float:%f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    const/4 v3, 0x5

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 70
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s); // long: 0x%016x  double:%f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    const/4 v3, 0x5

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s);"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitEnd();"

    invoke-interface {v0, v1}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public visitFieldStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "fieldoff"    # I
    .param p5, "xt"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "((OdexCodeVisitor)code).visitFieldStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public visitFieldStmt(IIILcom/zte/privacy/Field;I)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "field"    # Lcom/zte/privacy/Field;
    .param p5, "xt"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitFieldStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Field;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public visitFieldStmt(IILcom/zte/privacy/Field;I)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "field"    # Lcom/zte/privacy/Field;
    .param p4, "xt"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitFieldStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Field;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public visitFillArrayStmt(IIII[Ljava/lang/Object;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "elemWidth"    # I
    .param p4, "initLength"    # I
    .param p5, "values"    # [Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitFillArrayStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Lcom/zte/privacy/Escape;->v([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public visitFilledNewArrayStmt(I[ILjava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitFilledNewArrayStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitJumpStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public visitJumpStmt(IILcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitJumpStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public visitJumpStmt(ILcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitJumpStmt(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public visitLabel(Lcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitLabel(%s);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public visitLineNumber(ILcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "line"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitLineNumber(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lcom/zte/privacy/DexLabel;
    .param p5, "end"    # Lcom/zte/privacy/DexLabel;
    .param p6, "reg"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitLocalVariable(%s,%s,%s,%s,%s,%s);"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-direct {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "cases"    # [I
    .param p5, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitLookupSwitchStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/Escape;->v([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->v([Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public visitMethodStmt(I[II)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "a"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "((OdexCodeVisitor)code).visitMethodStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public visitMethodStmt(I[ILcom/zte/privacy/Method;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitMethodStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Method;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public visitMonitorStmt(II)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "reg"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitMonitorStmt(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public visitMoveStmt(III)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitMoveStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public visitMoveStmt(IIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitMoveStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public visitReturnStmt(I)V
    .locals 5
    .param p1, "opcode"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitReturnStmt(%s);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public visitReturnStmt(III)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitReturnStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public visitReturnStmt(IILjava/lang/Object;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "cause"    # I
    .param p3, "ref"    # Ljava/lang/Object;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "((OdexCodeVisitor)code).visitReturnStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "first_case"    # I
    .param p5, "last_case"    # I
    .param p6, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitTableSwitchStmt(%s,%s,%s,%s,%s,%s);"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0, p6}, Lcom/zte/privacy/ASMifierCodeV;->v([Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    .locals 5
    .param p1, "start"    # Lcom/zte/privacy/DexLabel;
    .param p2, "end"    # Lcom/zte/privacy/DexLabel;
    .param p3, "handlers"    # [Lcom/zte/privacy/DexLabel;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitTryCatch(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/ASMifierCodeV;->v(Lcom/zte/privacy/DexLabel;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/ASMifierCodeV;->v([Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/Escape;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public visitUnopStmt(IIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitUnopStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public visitUnopStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xta"    # I
    .param p5, "xtb"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zte/privacy/ASMifierCodeV;->m:Lcom/zte/privacy/Out;

    const-string v1, "code.visitUnopStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/ASMifierCodeV;->op(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/ASMifierCodeV;->xt(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/Out;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method xt(I)Ljava/lang/String;
    .locals 1
    .param p1, "vt"    # I

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    const-string v0, "TYPE_SINGLE"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "TYPE_WIDE"

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "TYPE_OBJECT"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "TYPE_BOOLEAN"

    goto :goto_0

    .line 139
    :pswitch_4
    const-string v0, "TYPE_BYTE"

    goto :goto_0

    .line 141
    :pswitch_5
    const-string v0, "TYPE_CHAR"

    goto :goto_0

    .line 143
    :pswitch_6
    const-string v0, "TYPE_SHORT"

    goto :goto_0

    .line 145
    :pswitch_7
    const-string v0, "TYPE_INT"

    goto :goto_0

    .line 147
    :pswitch_8
    const-string v0, "TYPE_FLOAT"

    goto :goto_0

    .line 149
    :pswitch_9
    const-string v0, "TYPE_LONG"

    goto :goto_0

    .line 151
    :pswitch_a
    const-string v0, "TYPE_DOUBLE"

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
