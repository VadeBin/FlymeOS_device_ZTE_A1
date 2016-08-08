.class public Lcom/zte/privacy/EmptyVisitor;
.super Ljava/lang/Object;
.source "EmptyVisitor.java"

# interfaces
.implements Lcom/zte/privacy/OdexFileVisitor;
.implements Lcom/zte/privacy/DexClassVisitor;
.implements Lcom/zte/privacy/DexMethodVisitor;
.implements Lcom/zte/privacy/DexFieldVisitor;
.implements Lcom/zte/privacy/OdexCodeVisitor;
.implements Lcom/zte/privacy/DexAnnotationVisitor;
.implements Lcom/zte/privacy/OdexOpcodes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
    .locals 1
    .param p1, "access_flags"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "superClass"    # Ljava/lang/String;
    .param p4, "interfaceNames"    # [Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 196
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArguments(I[I)V
    .locals 0
    .param p1, "total"    # I
    .param p2, "args"    # [I

    .prologue
    .line 176
    return-void
.end method

.method public visitArray(Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArrayStmt(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "formOrToReg"    # I
    .param p3, "arrayReg"    # I
    .param p4, "indexReg"    # I
    .param p5, "xt"    # I

    .prologue
    .line 50
    return-void
.end method

.method public visitBinopLitXStmt(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "srcReg"    # I
    .param p4, "content"    # I

    .prologue
    .line 55
    return-void
.end method

.method public visitBinopStmt(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "r1"    # I
    .param p4, "r2"    # I
    .param p5, "xt"    # I

    .prologue
    .line 60
    return-void
.end method

.method public visitClassStmt(IIILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public visitClassStmt(IILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "saveTo"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public visitCmpStmt(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "bB"    # I
    .param p4, "cC"    # I
    .param p5, "xt"    # I

    .prologue
    .line 75
    return-void
.end method

.method public visitCode()Lcom/zte/privacy/DexCodeVisitor;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitConstStmt(IILjava/lang/Object;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "xt"    # I

    .prologue
    .line 80
    return-void
.end method

.method public visitDepedence(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checksum"    # [B

    .prologue
    .line 262
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 201
    return-void
.end method

.method public visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
    .locals 1
    .param p1, "accessFlags"    # I
    .param p2, "field"    # Lcom/zte/privacy/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitFieldStmt(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "fieldoff"    # I
    .param p5, "xt"    # I

    .prologue
    .line 228
    return-void
.end method

.method public visitFieldStmt(IIILcom/zte/privacy/Field;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "field"    # Lcom/zte/privacy/Field;
    .param p5, "xt"    # I

    .prologue
    .line 90
    return-void
.end method

.method public visitFieldStmt(IILcom/zte/privacy/Field;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "field"    # Lcom/zte/privacy/Field;
    .param p4, "xt"    # I

    .prologue
    .line 85
    return-void
.end method

.method public visitFillArrayStmt(IIII[Ljava/lang/Object;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "elemWidth"    # I
    .param p4, "initLength"    # I
    .param p5, "values"    # [Ljava/lang/Object;

    .prologue
    .line 95
    return-void
.end method

.method public visitFilledNewArrayStmt(I[ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 105
    return-void
.end method

.method public visitJumpStmt(IILcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 110
    return-void
.end method

.method public visitJumpStmt(ILcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 115
    return-void
.end method

.method public visitLabel(Lcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 181
    return-void
.end method

.method public visitLineNumber(ILcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 186
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lcom/zte/privacy/DexLabel;
    .param p5, "end"    # Lcom/zte/privacy/DexLabel;
    .param p6, "reg"    # I

    .prologue
    .line 191
    return-void
.end method

.method public visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "cases"    # [I
    .param p5, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 120
    return-void
.end method

.method public visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
    .locals 1
    .param p1, "accessFlags"    # I
    .param p2, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitMethodStmt(I[II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "a"    # I

    .prologue
    .line 223
    return-void
.end method

.method public visitMethodStmt(I[ILcom/zte/privacy/Method;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 125
    return-void
.end method

.method public visitMonitorStmt(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "reg"    # I

    .prologue
    .line 130
    return-void
.end method

.method public visitMoveStmt(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 135
    return-void
.end method

.method public visitMoveStmt(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 140
    return-void
.end method

.method public visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitReturnStmt(I)V
    .locals 0
    .param p1, "opcode"    # I

    .prologue
    .line 145
    return-void
.end method

.method public visitReturnStmt(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "xt"    # I

    .prologue
    .line 150
    return-void
.end method

.method public visitReturnStmt(IILjava/lang/Object;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "cause"    # I
    .param p3, "ref"    # Ljava/lang/Object;

    .prologue
    .line 218
    return-void
.end method

.method public visitSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 245
    return-void
.end method

.method public visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "first_case"    # I
    .param p5, "last_case"    # I
    .param p6, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    .line 156
    return-void
.end method

.method public visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lcom/zte/privacy/DexLabel;
    .param p2, "end"    # Lcom/zte/privacy/DexLabel;
    .param p3, "handlers"    # [Lcom/zte/privacy/DexLabel;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public visitUnopStmt(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 161
    return-void
.end method

.method public visitUnopStmt(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xta"    # I
    .param p5, "xtb"    # I

    .prologue
    .line 166
    return-void
.end method
