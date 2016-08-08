.class Lcom/zte/privacy/DexOpcodeAdapter;
.super Ljava/lang/Object;
.source "DexOpcodeAdapter.java"

# interfaces
.implements Lcom/zte/privacy/OdexOpcodes;
.implements Lcom/zte/privacy/DexInternalOpcode;


# instance fields
.field private dcv:Lcom/zte/privacy/DexCodeVisitor;

.field private dex:Lcom/zte/privacy/DexFileReader;

.field private labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zte/privacy/DexLabel;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method constructor <init>(Lcom/zte/privacy/DexFileReader;Ljava/util/Map;Lcom/zte/privacy/DexCodeVisitor;)V
    .locals 0
    .param p1, "dex"    # Lcom/zte/privacy/DexFileReader;
    .param p3, "dcv"    # Lcom/zte/privacy/DexCodeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/privacy/DexFileReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zte/privacy/DexLabel;",
            ">;",
            "Lcom/zte/privacy/DexCodeVisitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "labels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/zte/privacy/DexLabel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    .line 45
    iput-object p2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->labels:Ljava/util/Map;

    .line 46
    iput-object p3, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    .line 47
    return-void
.end method

.method private getLabel(I)Lcom/zte/privacy/DexLabel;
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->labels:Ljava/util/Map;

    iget v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->offset:I

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/DexLabel;

    return-object v0
.end method

.method private reBuildArgs(I[ILcom/zte/privacy/Method;)[I
    .locals 12
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "m"    # Lcom/zte/privacy/Method;

    .prologue
    .line 801
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/16 v10, 0x71

    if-ne p1, v10, :cond_2

    const/4 v10, 0x0

    :goto_0
    add-int v8, v11, v10

    .line 802
    .local v8, "realSize":I
    array-length v10, p2

    if-eq v8, v10, :cond_4

    .line 803
    new-array v7, v8, [I

    .line 804
    .local v7, "nArgs":[I
    const/4 v1, 0x0

    .line 805
    .local v1, "i":I
    const/4 v4, 0x0

    .line 806
    .local v4, "j":I
    const/16 v10, 0x71

    if-eq p1, v10, :cond_0

    .line 807
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget v10, p2, v4

    aput v10, v7, v1

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    move v1, v2

    .line 809
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v9, v0, v3

    .line 810
    .local v9, "t":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v10, p2, v4

    aput v10, v7, v2

    .line 811
    const-string v10, "J"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "D"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    const/4 v10, 0x2

    :goto_2
    add-int/2addr v4, v10

    .line 809
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 801
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "j":I
    .end local v6    # "len$":I
    .end local v7    # "nArgs":[I
    .end local v8    # "realSize":I
    .end local v9    # "t":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 811
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "i$":I
    .restart local v4    # "j":I
    .restart local v6    # "len$":I
    .restart local v7    # "nArgs":[I
    .restart local v8    # "realSize":I
    .restart local v9    # "t":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "j":I
    .end local v6    # "len$":I
    .end local v7    # "nArgs":[I
    .end local v9    # "t":Ljava/lang/String;
    :cond_4
    move-object v7, p2

    .line 815
    :cond_5
    return-object v7
.end method


# virtual methods
.method offset(I)V
    .locals 2
    .param p1, "currentOffset"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->offset:I

    .line 55
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v0

    .line 56
    .local v0, "label":Lcom/zte/privacy/DexLabel;
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v1, v0}, Lcom/zte/privacy/DexCodeVisitor;->visitLabel(Lcom/zte/privacy/DexLabel;)V

    .line 59
    :cond_0
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
    .line 62
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFillArrayStmt(IIII[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public visitLookupSwitchStmt(III[I[I)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "defaultOffset"    # I
    .param p4, "cases"    # [I
    .param p5, "iLabel"    # [I

    .prologue
    .line 66
    array-length v0, p5

    new-array v5, v0, [Lcom/zte/privacy/DexLabel;

    .line 67
    .local v5, "labels":[Lcom/zte/privacy/DexLabel;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p5

    if-ge v6, v0, :cond_0

    .line 68
    aget v0, p5, v6

    invoke-direct {p0, v0}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v0

    aput-object v0, v5, v6

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-direct {p0, p3}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V

    .line 71
    return-void
.end method

.method public visitTableSwitchStmt(IIIII[I)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "aA"    # I
    .param p3, "defaultOffset"    # I
    .param p4, "first_case"    # I
    .param p5, "last_case"    # I
    .param p6, "iLabel"    # [I

    .prologue
    .line 74
    array-length v0, p6

    new-array v6, v0, [Lcom/zte/privacy/DexLabel;

    .line 75
    .local v6, "labels":[Lcom/zte/privacy/DexLabel;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p6

    if-ge v7, v0, :cond_0

    .line 76
    aget v0, p6, v7

    invoke-direct {p0, v0}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v0

    aput-object v0, v6, v7

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-direct {p0, p3}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/zte/privacy/DexCodeVisitor;->visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V

    .line 79
    return-void
.end method

.method public x0bc(III)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 820
    packed-switch p1, :pswitch_data_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 824
    :pswitch_0
    shr-int/lit8 v1, p2, 0x6

    packed-switch v1, :pswitch_data_1

    .line 835
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 826
    :pswitch_1
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v0

    .line 837
    :goto_1
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v1, v1, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v1, Lcom/zte/privacy/OdexCodeVisitor;

    and-int/lit8 v2, p2, 0x3f

    invoke-interface {v1, p1, v2, v0}, Lcom/zte/privacy/OdexCodeVisitor;->visitReturnStmt(IILjava/lang/Object;)V

    goto :goto_0

    .line 829
    :pswitch_2
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v0

    .line 830
    .local v0, "ref":Lcom/zte/privacy/Field;
    goto :goto_1

    .line 832
    .end local v0    # "ref":Lcom/zte/privacy/Field;
    :pswitch_3
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getMethod(I)Lcom/zte/privacy/Method;

    move-result-object v0

    .line 833
    .local v0, "ref":Lcom/zte/privacy/Method;
    goto :goto_1

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0xed
        :pswitch_0
    .end packed-switch

    .line 824
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public x0sc(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 979
    return-void
.end method

.method public x0t(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x28

    invoke-direct {p0, p2}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(ILcom/zte/privacy/DexLabel;)V

    .line 102
    return-void

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x0x(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(I)V

    .line 123
    :sswitch_1
    return-void

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xe -> :sswitch_0
        0xf1 -> :sswitch_0
    .end sparse-switch
.end method

.method public x1c(III)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x67

    const/16 v3, 0x60

    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 214
    :goto_0
    return-void

    .line 133
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    goto :goto_0

    .line 137
    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IILjava/lang/String;)V

    goto :goto_0

    .line 141
    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IILjava/lang/String;)V

    goto :goto_0

    .line 147
    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 153
    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v6}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 159
    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 163
    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 167
    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 171
    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 175
    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 181
    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 187
    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v6}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 193
    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 197
    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 201
    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 205
    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 209
    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
        0x1f -> :sswitch_2
        0x22 -> :sswitch_3
        0x60 -> :sswitch_4
        0x61 -> :sswitch_5
        0x62 -> :sswitch_6
        0x63 -> :sswitch_7
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0x69 -> :sswitch_d
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0x6c -> :sswitch_10
        0x6d -> :sswitch_11
        0xe5 -> :sswitch_4
        0xe6 -> :sswitch_b
        0xea -> :sswitch_5
        0xeb -> :sswitch_c
        0xfd -> :sswitch_6
        0xfe -> :sswitch_d
        0xff -> :sswitch_1
        0x1ff -> :sswitch_2
        0x3ff -> :sswitch_3
        0x14ff -> :sswitch_4
        0x15ff -> :sswitch_5
        0x16ff -> :sswitch_6
        0x17ff -> :sswitch_7
        0x18ff -> :sswitch_8
        0x19ff -> :sswitch_9
        0x1aff -> :sswitch_a
        0x1bff -> :sswitch_b
        0x1cff -> :sswitch_c
        0x1dff -> :sswitch_d
        0x1eff -> :sswitch_e
        0x1fff -> :sswitch_f
        0x20ff -> :sswitch_10
        0x21ff -> :sswitch_11
        0xf9ff -> :sswitch_4
        0xfaff -> :sswitch_5
        0xfbff -> :sswitch_6
        0xfcff -> :sswitch_b
        0xfdff -> :sswitch_c
        0xfeff -> :sswitch_d
    .end sparse-switch
.end method

.method public x1h(III)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    const/16 v4, 0x14

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    shl-int/lit8 v1, p3, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 227
    :goto_0
    return-void

    .line 222
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    int-to-long v2, p3

    const/16 v1, 0x30

    shl-long/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public x1i(III)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_0

    .line 238
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 240
    :goto_0
    return-void

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x14

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public x1l(IIJ)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # J

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x14

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 250
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public x1n(III)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x14

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 267
    return-void

    .line 260
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public x1s(III)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    const/16 v4, 0x14

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 278
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    .line 280
    :goto_0
    return-void

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitConstStmt(IILjava/lang/Object;I)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public x1t(III)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "offset"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-direct {p0, p3}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(IILcom/zte/privacy/DexLabel;)V

    .line 295
    return-void

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x1x(II)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "a"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    const/16 v1, 0xa

    const/4 v2, 0x2

    .line 298
    sparse-switch p1, :sswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v1, p2, v4}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(III)V

    .line 330
    :goto_0
    return-void

    .line 303
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v1, p2, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(III)V

    goto :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(III)V

    goto :goto_0

    .line 309
    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0xd

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(III)V

    goto :goto_0

    .line 312
    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v3, p2, v4}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(III)V

    goto :goto_0

    .line 315
    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v3, p2, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(III)V

    goto :goto_0

    .line 318
    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, v3, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(III)V

    goto :goto_0

    .line 321
    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitReturnStmt(III)V

    goto :goto_0

    .line 325
    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexCodeVisitor;->visitMonitorStmt(II)V

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x1d -> :sswitch_8
        0x1e -> :sswitch_8
        0x27 -> :sswitch_7
    .end sparse-switch
.end method

.method public x2b(IIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/high16 v1, -0xff0000

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopLitXStmt(IIII)V

    .line 350
    return-void

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0xd8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x2c(IIII)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x59

    const/16 v1, 0x52

    .line 353
    sparse-switch p1, :sswitch_data_0

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IIILjava/lang/String;)V

    .line 433
    :goto_0
    return-void

    .line 360
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitClassStmt(IIILjava/lang/String;)V

    goto :goto_0

    .line 366
    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 372
    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v2, p2

    move v3, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 378
    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v2, p2

    move v3, p3

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 382
    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x3

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 386
    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 390
    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 394
    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto :goto_0

    .line 400
    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 406
    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 412
    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 416
    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x3

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 420
    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x4

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 424
    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x5

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 428
    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v4

    const/4 v5, 0x6

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitFieldStmt(IIILcom/zte/privacy/Field;I)V

    goto/16 :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x52 -> :sswitch_2
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
        0x55 -> :sswitch_5
        0x56 -> :sswitch_6
        0x57 -> :sswitch_7
        0x58 -> :sswitch_8
        0x59 -> :sswitch_9
        0x5a -> :sswitch_a
        0x5b -> :sswitch_b
        0x5c -> :sswitch_c
        0x5d -> :sswitch_d
        0x5e -> :sswitch_e
        0x5f -> :sswitch_f
        0xe3 -> :sswitch_2
        0xe4 -> :sswitch_9
        0xe7 -> :sswitch_4
        0xe8 -> :sswitch_3
        0xe9 -> :sswitch_a
        0xfc -> :sswitch_b
        0x2ff -> :sswitch_0
        0x4ff -> :sswitch_1
        0x6ff -> :sswitch_2
        0x7ff -> :sswitch_3
        0x8ff -> :sswitch_4
        0x9ff -> :sswitch_5
        0xaff -> :sswitch_6
        0xbff -> :sswitch_7
        0xcff -> :sswitch_8
        0xdff -> :sswitch_9
        0xeff -> :sswitch_a
        0xfff -> :sswitch_b
        0x10ff -> :sswitch_c
        0x11ff -> :sswitch_d
        0x12ff -> :sswitch_e
        0x13ff -> :sswitch_f
        0xf3ff -> :sswitch_2
        0xf4ff -> :sswitch_3
        0xf5ff -> :sswitch_4
        0xf6ff -> :sswitch_9
        0xf7ff -> :sswitch_a
        0xf8ff -> :sswitch_b
    .end sparse-switch
.end method

.method public x2cs(IIII)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0xf5

    const/16 v1, 0xf2

    .line 845
    packed-switch p1, :pswitch_data_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 847
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 852
    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 857
    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 862
    :pswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 867
    :pswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 872
    :pswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v0, v0, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v0, Lcom/zte/privacy/OdexCodeVisitor;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/OdexCodeVisitor;->visitFieldStmt(IIIII)V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0xf2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public x2s(IIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 436
    packed-switch p1, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xff0008

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopLitXStmt(IIII)V

    .line 450
    return-void

    .line 436
    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x2t(IIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 453
    packed-switch p1, :pswitch_data_0

    .line 463
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-direct {p0, p4}, Lcom/zte/privacy/DexOpcodeAdapter;->getLabel(I)Lcom/zte/privacy/DexLabel;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/zte/privacy/DexCodeVisitor;->visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V

    .line 465
    return-void

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x2x(III)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 468
    sparse-switch p1, :sswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(IIII)V

    .line 589
    :goto_0
    return-void

    .line 477
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(IIII)V

    goto :goto_0

    .line 482
    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitMoveStmt(IIII)V

    goto :goto_0

    .line 485
    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v1, 0x21

    const/4 v2, 0x7

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    goto :goto_0

    .line 489
    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/high16 v1, -0xff0000

    sub-int v1, p1, v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    goto :goto_0

    .line 493
    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfefffe

    sub-int v1, p1, v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    goto :goto_0

    .line 496
    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff007b

    const/16 v2, 0x8

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    goto :goto_0

    .line 499
    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff007b

    const/16 v2, 0xa

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIII)V

    goto :goto_0

    .line 502
    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto :goto_0

    .line 505
    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto :goto_0

    .line 508
    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto :goto_0

    .line 511
    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto :goto_0

    .line 514
    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 517
    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 520
    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 523
    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 526
    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 529
    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 532
    :sswitch_12
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 535
    :sswitch_13
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 538
    :sswitch_14
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 541
    :sswitch_15
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 544
    :sswitch_16
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitUnopStmt(IIIII)V

    goto/16 :goto_0

    .line 557
    :sswitch_17
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffe0

    sub-int v1, p1, v1

    const/4 v5, 0x7

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 570
    :sswitch_18
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffd5

    sub-int v1, p1, v1

    const/16 v5, 0x9

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 577
    :sswitch_19
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffca

    sub-int v1, p1, v1

    const/16 v5, 0x8

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 584
    :sswitch_1a
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffc5

    sub-int v1, p1, v1

    const/16 v5, 0xa

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x21 -> :sswitch_3
        0x7b -> :sswitch_4
        0x7c -> :sswitch_4
        0x7d -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_6
        0x80 -> :sswitch_7
        0x81 -> :sswitch_8
        0x82 -> :sswitch_9
        0x83 -> :sswitch_a
        0x84 -> :sswitch_b
        0x85 -> :sswitch_c
        0x86 -> :sswitch_d
        0x87 -> :sswitch_e
        0x88 -> :sswitch_f
        0x89 -> :sswitch_10
        0x8a -> :sswitch_11
        0x8b -> :sswitch_12
        0x8c -> :sswitch_13
        0x8d -> :sswitch_14
        0x8e -> :sswitch_15
        0x8f -> :sswitch_16
        0xb0 -> :sswitch_17
        0xb1 -> :sswitch_17
        0xb2 -> :sswitch_17
        0xb3 -> :sswitch_17
        0xb4 -> :sswitch_17
        0xb5 -> :sswitch_17
        0xb6 -> :sswitch_17
        0xb7 -> :sswitch_17
        0xb8 -> :sswitch_17
        0xb9 -> :sswitch_17
        0xba -> :sswitch_17
        0xbb -> :sswitch_18
        0xbc -> :sswitch_18
        0xbd -> :sswitch_18
        0xbe -> :sswitch_18
        0xbf -> :sswitch_18
        0xc0 -> :sswitch_18
        0xc1 -> :sswitch_18
        0xc2 -> :sswitch_18
        0xc3 -> :sswitch_18
        0xc4 -> :sswitch_18
        0xc5 -> :sswitch_18
        0xc6 -> :sswitch_19
        0xc7 -> :sswitch_19
        0xc8 -> :sswitch_19
        0xc9 -> :sswitch_19
        0xca -> :sswitch_19
        0xcb -> :sswitch_1a
        0xcc -> :sswitch_1a
        0xcd -> :sswitch_1a
        0xce -> :sswitch_1a
        0xcf -> :sswitch_1a
    .end sparse-switch
.end method

.method public x3x(IIII)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/16 v2, 0x4b

    const/16 v1, 0x44

    .line 592
    sparse-switch p1, :sswitch_data_0

    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff002f

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    .line 693
    :goto_0
    return-void

    .line 597
    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0030

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    goto :goto_0

    .line 600
    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff002f

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    goto :goto_0

    .line 603
    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0030

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    goto :goto_0

    .line 606
    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, 0xff0031

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitCmpStmt(IIIII)V

    goto :goto_0

    .line 609
    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 612
    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 615
    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 618
    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x3

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 621
    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 624
    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 627
    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto :goto_0

    .line 630
    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 633
    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x1

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 636
    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x2

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 639
    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x3

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 642
    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x4

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 645
    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x5

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 648
    :sswitch_12
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/4 v5, 0x6

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitArrayStmt(IIIII)V

    goto/16 :goto_0

    .line 661
    :sswitch_13
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/high16 v1, -0xff0000

    sub-int v1, p1, v1

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 674
    :sswitch_14
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfefff5

    sub-int v1, p1, v1

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 681
    :sswitch_15
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffea

    sub-int v1, p1, v1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 688
    :sswitch_16
    iget-object v0, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const v1, -0xfeffe5

    sub-int v1, p1, v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/DexCodeVisitor;->visitBinopStmt(IIIII)V

    goto/16 :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_2
        0x30 -> :sswitch_3
        0x31 -> :sswitch_4
        0x44 -> :sswitch_5
        0x45 -> :sswitch_6
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x48 -> :sswitch_9
        0x49 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4b -> :sswitch_c
        0x4c -> :sswitch_d
        0x4d -> :sswitch_e
        0x4e -> :sswitch_f
        0x4f -> :sswitch_10
        0x50 -> :sswitch_11
        0x51 -> :sswitch_12
        0x90 -> :sswitch_13
        0x91 -> :sswitch_13
        0x92 -> :sswitch_13
        0x93 -> :sswitch_13
        0x94 -> :sswitch_13
        0x95 -> :sswitch_13
        0x96 -> :sswitch_13
        0x97 -> :sswitch_13
        0x98 -> :sswitch_13
        0x99 -> :sswitch_13
        0x9a -> :sswitch_13
        0x9b -> :sswitch_14
        0x9c -> :sswitch_14
        0x9d -> :sswitch_14
        0x9e -> :sswitch_14
        0x9f -> :sswitch_14
        0xa0 -> :sswitch_14
        0xa1 -> :sswitch_14
        0xa2 -> :sswitch_14
        0xa3 -> :sswitch_14
        0xa4 -> :sswitch_14
        0xa5 -> :sswitch_14
        0xa6 -> :sswitch_15
        0xa7 -> :sswitch_15
        0xa8 -> :sswitch_15
        0xa9 -> :sswitch_15
        0xaa -> :sswitch_15
        0xab -> :sswitch_16
        0xac -> :sswitch_16
        0xad -> :sswitch_16
        0xae -> :sswitch_16
        0xaf -> :sswitch_16
    .end sparse-switch
.end method

.method public x5c(IIIIIIII)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "e"    # I
    .param p6, "f"    # I
    .param p7, "g"    # I
    .param p8, "b"    # I

    .prologue
    .line 697
    packed-switch p2, :pswitch_data_0

    .line 717
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 699
    :pswitch_0
    const/4 v5, 0x0

    new-array v1, v5, [I

    .line 719
    .local v1, "args":[I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 746
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 702
    .end local v1    # "args":[I
    :pswitch_1
    const/4 v5, 0x1

    new-array v1, v5, [I

    const/4 v5, 0x0

    aput p3, v1, v5

    .line 703
    .restart local v1    # "args":[I
    goto :goto_0

    .line 705
    .end local v1    # "args":[I
    :pswitch_2
    const/4 v5, 0x2

    new-array v1, v5, [I

    const/4 v5, 0x0

    aput p3, v1, v5

    const/4 v5, 0x1

    aput p4, v1, v5

    .line 706
    .restart local v1    # "args":[I
    goto :goto_0

    .line 708
    .end local v1    # "args":[I
    :pswitch_3
    const/4 v5, 0x3

    new-array v1, v5, [I

    const/4 v5, 0x0

    aput p3, v1, v5

    const/4 v5, 0x1

    aput p4, v1, v5

    const/4 v5, 0x2

    aput p5, v1, v5

    .line 709
    .restart local v1    # "args":[I
    goto :goto_0

    .line 711
    .end local v1    # "args":[I
    :pswitch_4
    const/4 v5, 0x4

    new-array v1, v5, [I

    const/4 v5, 0x0

    aput p3, v1, v5

    const/4 v5, 0x1

    aput p4, v1, v5

    const/4 v5, 0x2

    aput p5, v1, v5

    const/4 v5, 0x3

    aput p6, v1, v5

    .line 712
    .restart local v1    # "args":[I
    goto :goto_0

    .line 714
    .end local v1    # "args":[I
    :pswitch_5
    const/4 v5, 0x5

    new-array v1, v5, [I

    const/4 v5, 0x0

    aput p3, v1, v5

    const/4 v5, 0x1

    aput p4, v1, v5

    const/4 v5, 0x2

    aput p5, v1, v5

    const/4 v5, 0x3

    aput p6, v1, v5

    const/4 v5, 0x4

    aput p7, v1, v5

    .line 715
    .restart local v1    # "args":[I
    goto :goto_0

    .line 721
    :sswitch_0
    iget-object v5, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    iget-object v6, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v1, v6}, Lcom/zte/privacy/DexCodeVisitor;->visitFilledNewArrayStmt(I[ILjava/lang/String;)V

    .line 748
    :goto_1
    return-void

    .line 729
    :sswitch_1
    iget-object v5, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/zte/privacy/DexFileReader;->getMethod(I)Lcom/zte/privacy/Method;

    move-result-object v3

    .line 730
    .local v3, "m":Lcom/zte/privacy/Method;
    const/16 v5, 0xf0

    if-ne v5, p1, :cond_0

    .line 733
    const/16 v5, 0x70

    :try_start_0
    invoke-direct {p0, v5, v1, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->reBuildArgs(I[ILcom/zte/privacy/Method;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 739
    .local v4, "nArgs":[I
    iget-object v5, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v6, 0x70

    invoke-interface {v5, v6, v4, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitMethodStmt(I[ILcom/zte/privacy/Method;)V

    goto :goto_1

    .line 734
    .end local v4    # "nArgs":[I
    :catch_0
    move-exception v2

    .line 735
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/zte/privacy/DexException;

    const-string v6, "while rebuild argements for 0xF0 OP_INVOKE_DIRECT_EMPTY @0x%04x, this is typically because of a wrong apiLevel. current apiLevel is %d."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/privacy/DexOpcodeAdapter;->offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    iget v9, v9, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v2, v6, v7}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 741
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p1, v1, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->reBuildArgs(I[ILcom/zte/privacy/Method;)[I

    move-result-object v4

    .line 742
    .restart local v4    # "nArgs":[I
    iget-object v5, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v5, p1, v4, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitMethodStmt(I[ILcom/zte/privacy/Method;)V

    goto :goto_1

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 719
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method public x5mi(IIIIIIII)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "e"    # I
    .param p6, "f"    # I
    .param p7, "g"    # I
    .param p8, "b"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    packed-switch p2, :pswitch_data_0

    .line 901
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 883
    :pswitch_0
    new-array v0, v2, [I

    .line 903
    .local v0, "args":[I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 910
    :cond_0
    :goto_1
    return-void

    .line 886
    .end local v0    # "args":[I
    :pswitch_1
    new-array v0, v3, [I

    aput p3, v0, v2

    .line 887
    .restart local v0    # "args":[I
    goto :goto_0

    .line 889
    .end local v0    # "args":[I
    :pswitch_2
    new-array v0, v4, [I

    aput p3, v0, v2

    aput p4, v0, v3

    .line 890
    .restart local v0    # "args":[I
    goto :goto_0

    .line 892
    .end local v0    # "args":[I
    :pswitch_3
    new-array v0, v5, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    .line 893
    .restart local v0    # "args":[I
    goto :goto_0

    .line 895
    .end local v0    # "args":[I
    :pswitch_4
    new-array v0, v6, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    aput p6, v0, v5

    .line 896
    .restart local v0    # "args":[I
    goto :goto_0

    .line 898
    .end local v0    # "args":[I
    :pswitch_5
    const/4 v1, 0x5

    new-array v0, v1, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    aput p6, v0, v5

    aput p7, v0, v6

    .line 899
    .restart local v0    # "args":[I
    goto :goto_0

    .line 905
    :pswitch_6
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v1, v1, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v1, Lcom/zte/privacy/OdexCodeVisitor;

    invoke-interface {v1, p1, v0, p8}, Lcom/zte/privacy/OdexCodeVisitor;->visitMethodStmt(I[II)V

    goto :goto_1

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 903
    :pswitch_data_1
    .packed-switch 0xee
        :pswitch_6
    .end packed-switch
.end method

.method public x5ms(IIIIIIII)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "e"    # I
    .param p6, "f"    # I
    .param p7, "g"    # I
    .param p8, "b"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 914
    packed-switch p2, :pswitch_data_0

    .line 934
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :pswitch_0
    new-array v0, v2, [I

    .line 936
    .local v0, "args":[I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 944
    :cond_0
    :goto_1
    :pswitch_1
    return-void

    .line 919
    .end local v0    # "args":[I
    :pswitch_2
    new-array v0, v3, [I

    aput p3, v0, v2

    .line 920
    .restart local v0    # "args":[I
    goto :goto_0

    .line 922
    .end local v0    # "args":[I
    :pswitch_3
    new-array v0, v4, [I

    aput p3, v0, v2

    aput p4, v0, v3

    .line 923
    .restart local v0    # "args":[I
    goto :goto_0

    .line 925
    .end local v0    # "args":[I
    :pswitch_4
    new-array v0, v5, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    .line 926
    .restart local v0    # "args":[I
    goto :goto_0

    .line 928
    .end local v0    # "args":[I
    :pswitch_5
    new-array v0, v6, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    aput p6, v0, v5

    .line 929
    .restart local v0    # "args":[I
    goto :goto_0

    .line 931
    .end local v0    # "args":[I
    :pswitch_6
    const/4 v1, 0x5

    new-array v0, v1, [I

    aput p3, v0, v2

    aput p4, v0, v3

    aput p5, v0, v4

    aput p6, v0, v5

    aput p7, v0, v6

    .line 932
    .restart local v0    # "args":[I
    goto :goto_0

    .line 939
    :pswitch_7
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v1, v1, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v1, Lcom/zte/privacy/OdexCodeVisitor;

    invoke-interface {v1, p1, v0, p8}, Lcom/zte/privacy/OdexCodeVisitor;->visitMethodStmt(I[II)V

    goto :goto_1

    .line 914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 936
    :pswitch_data_1
    .packed-switch 0xf8
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public xrc(IIII)V
    .locals 11
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    const/16 v8, 0xf0

    .line 751
    new-array v0, p2, [I

    .line 752
    .local v0, "args":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 753
    add-int v6, p4, v2

    aput v6, v0, v2

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 796
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 758
    :sswitch_0
    iget-object v6, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    const/16 v7, 0x24

    iget-object v8, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v8, p3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v0, v8}, Lcom/zte/privacy/DexCodeVisitor;->visitFilledNewArrayStmt(I[ILjava/lang/String;)V

    .line 798
    :goto_1
    return-void

    .line 773
    :sswitch_1
    if-eq p1, v8, :cond_1

    const v6, 0xf2ff

    if-ne p1, v6, :cond_2

    .line 774
    :cond_1
    const/16 v5, 0x70

    .line 779
    .local v5, "nOpcode":I
    :goto_2
    iget-object v6, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v6, p3}, Lcom/zte/privacy/DexFileReader;->getMethod(I)Lcom/zte/privacy/Method;

    move-result-object v3

    .line 780
    .local v3, "m":Lcom/zte/privacy/Method;
    if-ne p1, v8, :cond_4

    .line 783
    :try_start_0
    invoke-direct {p0, v5, v0, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->reBuildArgs(I[ILcom/zte/privacy/Method;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 789
    .local v4, "nArgs":[I
    iget-object v6, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v6, v5, v4, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitMethodStmt(I[ILcom/zte/privacy/Method;)V

    goto :goto_1

    .line 776
    .end local v3    # "m":Lcom/zte/privacy/Method;
    .end local v4    # "nArgs":[I
    .end local v5    # "nOpcode":I
    :cond_2
    shr-int/lit8 v6, p1, 0x4

    const/16 v7, 0xff

    if-ne v6, v7, :cond_3

    const/16 v6, 0x22ff

    :goto_3
    add-int/lit8 v6, v6, -0x6e

    sub-int v5, p1, v6

    .restart local v5    # "nOpcode":I
    goto :goto_2

    .end local v5    # "nOpcode":I
    :cond_3
    const/16 v6, 0x74

    goto :goto_3

    .line 784
    .restart local v3    # "m":Lcom/zte/privacy/Method;
    .restart local v5    # "nOpcode":I
    :catch_0
    move-exception v1

    .line 785
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/zte/privacy/DexException;

    const-string v7, "while rebuild argements for 0xF0 OP_INVOKE_OBJECT_INIT_RANGE @0x%04x, this is typically because of a wrong apiLevel. current apiLevel is %d."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/zte/privacy/DexOpcodeAdapter;->offset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dex:Lcom/zte/privacy/DexFileReader;

    iget v10, v10, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v1, v7, v8}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 791
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v5, v0, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->reBuildArgs(I[ILcom/zte/privacy/Method;)[I

    move-result-object v4

    .line 792
    .restart local v4    # "nArgs":[I
    iget-object v6, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    invoke-interface {v6, v5, v4, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitMethodStmt(I[ILcom/zte/privacy/Method;)V

    goto :goto_1

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x74 -> :sswitch_1
        0x75 -> :sswitch_1
        0x76 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x5ff -> :sswitch_0
        0x22ff -> :sswitch_1
        0x23ff -> :sswitch_1
        0x24ff -> :sswitch_1
        0x25ff -> :sswitch_1
        0x26ff -> :sswitch_1
        0xf2ff -> :sswitch_1
    .end sparse-switch
.end method

.method public xrmi(IIII)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 963
    new-array v0, p2, [I

    .line 964
    .local v0, "args":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 965
    add-int v2, p4, v1

    aput v2, v0, v1

    .line 964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 974
    :cond_1
    :goto_1
    return-void

    .line 969
    :pswitch_0
    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v2, v2, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v2, Lcom/zte/privacy/OdexCodeVisitor;

    const/16 v3, 0xee

    invoke-interface {v2, v3, v0, p3}, Lcom/zte/privacy/OdexCodeVisitor;->visitMethodStmt(I[II)V

    goto :goto_1

    .line 967
    :pswitch_data_0
    .packed-switch 0xef
        :pswitch_0
    .end packed-switch
.end method

.method public xrms(IIII)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 947
    new-array v0, p2, [I

    .line 948
    .local v0, "args":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 949
    add-int v2, p4, v1

    aput v2, v0, v1

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 960
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 954
    :pswitch_1
    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    instance-of v2, v2, Lcom/zte/privacy/OdexCodeVisitor;

    if-eqz v2, :cond_1

    .line 955
    iget-object v2, p0, Lcom/zte/privacy/DexOpcodeAdapter;->dcv:Lcom/zte/privacy/DexCodeVisitor;

    check-cast v2, Lcom/zte/privacy/OdexCodeVisitor;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3, v0, p3}, Lcom/zte/privacy/OdexCodeVisitor;->visitMethodStmt(I[II)V

    goto :goto_1

    .line 951
    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
