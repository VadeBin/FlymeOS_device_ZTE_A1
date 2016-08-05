.class public Lcom/zte/privacy/DexCodeAdapter;
.super Ljava/lang/Object;
.source "DexCodeAdapter.java"

# interfaces
.implements Lcom/zte/privacy/DexCodeVisitor;


# instance fields
.field protected dcv:Lcom/zte/privacy/DexCodeVisitor;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DexCodeVisitor;)V
    .locals 0
    .param p1, "dcv"    # Lcom/zte/privacy/DexCodeVisitor;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    .line 35
    return-void
.end method


# virtual methods
.method public visitArguments(I[I)V
    .locals 1
    .param p1, "total"    # I
    .param p2, "args"    # [I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexCodeVisitor;->visitArguments(I[I)V

    .line 161
    return-void
.end method

.method public visitArrayStmt(IIIII)V
    .locals 6
    .param p1, "opAget"    # I
    .param p2, "formOrToReg"    # I
    .param p3, "arrayReg"    # I
    .param p4, "indexReg"    # I
    .param p5, "xt"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    .line 40
    return-void
.end method

.method public visitBinopLitXStmt(IIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "bB"    # I
    .param p4, "cC"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopLitXStmt(IIII)V

    .line 45
    return-void
.end method

.method public visitBinopStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "r1"    # I
    .param p4, "r2"    # I
    .param p5, "xt"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    .line 50
    return-void
.end method

.method public visitClassStmt(IIILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IIILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public visitClassStmt(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCheckCast"    # I
    .param p2, "saveTo"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public visitCmpStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "bB"    # I
    .param p4, "cC"    # I
    .param p5, "xt"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    .line 65
    return-void
.end method

.method public visitConstStmt(IILjava/lang/Object;I)V
    .locals 1
    .param p1, "opConst"    # I
    .param p2, "toReg"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "xt"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 70
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0}, Lcom/zte/privacy/DexCodeVisitor;->visitEnd()V

    .line 166
    return-void
.end method

.method public visitFieldStmt(IIILcom/zte/privacy/Field;I)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "field"    # Lcom/zte/privacy/Field;
    .param p5, "xt"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    .line 80
    return-void
.end method

.method public visitFieldStmt(IILcom/zte/privacy/Field;I)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "field"    # Lcom/zte/privacy/Field;
    .param p4, "xt"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    .line 75
    return-void
.end method

.method public visitFillArrayStmt(IIII[Ljava/lang/Object;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "elemWidth"    # I
    .param p4, "initLength"    # I
    .param p5, "values"    # [Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFillArrayStmt(IIII[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public visitFilledNewArrayStmt(I[ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitFilledNewArrayStmt(I[ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V

    .line 95
    return-void
.end method

.method public visitJumpStmt(IILcom/zte/privacy/DexLabel;)V
    .locals 1
    .param p1, "opConst"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(IILcom/zte/privacy/DexLabel;)V

    .line 100
    return-void
.end method

.method public visitJumpStmt(ILcom/zte/privacy/DexLabel;)V
    .locals 1
    .param p1, "opGoto"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(ILcom/zte/privacy/DexLabel;)V

    .line 105
    return-void
.end method

.method public visitLabel(Lcom/zte/privacy/DexLabel;)V
    .locals 1
    .param p1, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DexCodeVisitor;->visitLabel(Lcom/zte/privacy/DexLabel;)V

    .line 171
    return-void
.end method

.method public visitLineNumber(ILcom/zte/privacy/DexLabel;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexCodeVisitor;->visitLineNumber(ILcom/zte/privacy/DexLabel;)V

    .line 176
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lcom/zte/privacy/DexLabel;
    .param p5, "end"    # Lcom/zte/privacy/DexLabel;
    .param p6, "reg"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zte/privacy/DexCodeVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V

    .line 181
    return-void
.end method

.method public visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "cases"    # [I
    .param p5, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V

    .line 110
    return-void
.end method

.method public visitMethodStmt(I[ILcom/zte/privacy/Method;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitMethodStmt(I[ILcom/zte/privacy/Method;)V

    .line 115
    return-void
.end method

.method public visitMonitorStmt(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "reg"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexCodeVisitor;->visitMonitorStmt(II)V

    .line 120
    return-void
.end method

.method public visitMoveStmt(III)V
    .locals 1
    .param p1, "opConst"    # I
    .param p2, "toReg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(III)V

    .line 125
    return-void
.end method

.method public visitMoveStmt(IIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(IIII)V

    .line 130
    return-void
.end method

.method public visitReturnStmt(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(I)V

    .line 135
    return-void
.end method

.method public visitReturnStmt(III)V
    .locals 1
    .param p1, "opConst"    # I
    .param p2, "reg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(III)V

    .line 140
    return-void
.end method

.method public visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "first_case"    # I
    .param p5, "last_case"    # I
    .param p6, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zte/privacy/DexCodeVisitor;->visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V

    .line 146
    return-void
.end method

.method public visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lcom/zte/privacy/DexLabel;
    .param p2, "end"    # Lcom/zte/privacy/DexLabel;
    .param p3, "handlers"    # [Lcom/zte/privacy/DexLabel;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public visitUnopStmt(IIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    .line 151
    return-void
.end method

.method public visitUnopStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xta"    # I
    .param p5, "xtb"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zte/privacy/DexCodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    .line 186
    return-void
.end method
