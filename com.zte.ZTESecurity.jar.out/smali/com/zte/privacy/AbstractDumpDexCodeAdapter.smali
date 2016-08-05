.class public abstract Lcom/zte/privacy/AbstractDumpDexCodeAdapter;
.super Lcom/zte/privacy/EmptyVisitor;
.source "AbstractDumpDexCodeAdapter.java"


# static fields
.field protected static final causes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "no-error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "generic-error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "no-such-class"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "no-such-field"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "no-such-method"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "illegal-class-access"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "illegal-field-access"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "illegal-method-access"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "class-change-error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "instantiation-error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->causes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/privacy/EmptyVisitor;-><init>()V

    return-void
.end method

.method protected static toJavaClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs abstract info(ILjava/lang/String;[Ljava/lang/Object;)V
.end method

.method protected abstract labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;
.end method

.method public visitArrayStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "value"    # I
    .param p3, "array"    # I
    .param p4, "index"    # I
    .param p5, "xt"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 45
    :sswitch_0
    const-string v0, "v%d[v%d]=v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "v%d=v%d[v%d]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method public visitBinopLitXStmt(IIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "saveToReg"    # I
    .param p3, "opReg"    # I
    .param p4, "value"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    const-string v0, "v%d = v%d & %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v0, "v%d = v%d + %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "v%d = v%d %% %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :pswitch_4
    const-string v0, "v%d = v%d / %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v0, "v%d = v%d * %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    :pswitch_6
    const-string v0, "v%d = v%d >> %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 80
    :pswitch_7
    const-string v0, "v%d = v%d << %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 83
    :pswitch_8
    const-string v0, "v%d = v%d >>> %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 86
    :pswitch_9
    const-string v0, "v%d = v%d | %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :pswitch_a
    const-string v0, "v%d = v%d ^ %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0xff00d8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public visitBinopStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "saveToReg"    # I
    .param p3, "opReg"    # I
    .param p4, "opReg2"    # I
    .param p5, "xt"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const-string v0, "v%d = v%d & v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "v%d = v%d | v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v0, "v%d = v%d ^ v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "v%d = v%d - v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :pswitch_4
    const-string v0, "v%d = v%d * v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    :pswitch_5
    const-string v0, "v%d = v%d / v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    :pswitch_6
    const-string v0, "v%d = v%d + v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 119
    :pswitch_7
    const-string v0, "v%d = v%d %% v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0xff0090
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitClassStmt(IIILjava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 133
    :pswitch_1
    const-string v0, "v%d=v%d instanceof %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :pswitch_2
    const-string v0, "v%d=new %s[v%d]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public visitClassStmt(IILjava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    const-string v0, "v%d=NEW %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :pswitch_2
    const-string v0, "v%d=(%s) v%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitCmpStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "distReg"    # I
    .param p3, "bB"    # I
    .param p4, "cC"    # I
    .param p5, "xt"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 163
    :pswitch_0
    const-string v0, "v%d = v%d cmpl v%d "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :pswitch_1
    const-string v0, "v%d = v%d cmpg v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :pswitch_2
    const-string v0, "v%d = v%d cmp v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0xff002f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitConstStmt(IILjava/lang/Object;I)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "xt"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    sparse-switch p1, :sswitch_data_0

    .line 198
    const-string v0, "v%d=%s  //"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 183
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_0
    if-nez p4, :cond_0

    .line 184
    const-string v0, "v%d=0x%08x  // int:%d   float:%f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    aput-object p3, v1, v5

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "v%d=0x%016x  // long:%d   double:%f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    aput-object p3, v1, v5

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_1
    const-string v0, "v%d=\"%s\""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :sswitch_2
    const-string v0, "v%d=%s.class"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1c -> :sswitch_2
    .end sparse-switch
.end method

.method public visitFieldStmt(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "objReg"    # I
    .param p4, "fieldoff"    # I
    .param p5, "xt"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    const-string v0, "Q+ v%d=v%d.fieldoff+%04x"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "Q+ v%d.fieldoff+%04x=v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0xf2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public visitFieldStmt(IIILcom/zte/privacy/Field;I)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "regFromOrTo"    # I
    .param p3, "owner_reg"    # I
    .param p4, "field"    # Lcom/zte/privacy/Field;
    .param p5, "xt"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    sparse-switch p1, :sswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 220
    :sswitch_0
    const-string v0, "v%d=v%d.%s  //%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p4, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :sswitch_1
    const-string v0, "v%d.%s=v%d  //%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p4, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x52 -> :sswitch_0
        0x59 -> :sswitch_1
    .end sparse-switch
.end method

.method public visitFieldStmt(IILcom/zte/privacy/Field;I)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "fromOrToReg"    # I
    .param p3, "field"    # Lcom/zte/privacy/Field;
    .param p4, "xt"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 208
    :sswitch_0
    const-string v0, "%s.%s=v%d  //%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/zte/privacy/Field;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p3}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :sswitch_1
    const-string v0, "v%d=%s.%s  //%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p3}, Lcom/zte/privacy/Field;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public visitFillArrayStmt(IIII[Ljava/lang/Object;)V
    .locals 9
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "elemWidth"    # I
    .param p4, "initLength"    # I
    .param p5, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, p5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 250
    .local v4, "value":Ljava/lang/Object;
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 253
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 256
    :cond_1
    const-string v5, "v%d[0..%d]=[%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    add-int/lit8 v8, p4, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public visitFilledNewArrayStmt(I[ILjava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "regs"    # [I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 266
    const-string v1, "TEMP=new %s[%d]"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 268
    const-string v1, "TEMP[%d]=v%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public visitJumpStmt(IIILcom/zte/privacy/DexLabel;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "reg1"    # I
    .param p3, "reg2"    # I
    .param p4, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 319
    :pswitch_0
    const-string v0, "if v%d == v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    :pswitch_1
    const-string v0, "if v%d != v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :pswitch_2
    const-string v0, "if v%d <  v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :pswitch_3
    const-string v0, "if v%d >= v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :pswitch_4
    const-string v0, "if v%d >  v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 334
    :pswitch_5
    const-string v0, "if v%d <= v%d goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public visitJumpStmt(IILcom/zte/privacy/DexLabel;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 290
    :pswitch_0
    const-string v0, "if v%d == 0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :pswitch_1
    const-string v0, "if v%d != 0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :pswitch_2
    const-string v0, "if v%d <  0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :pswitch_3
    const-string v0, "if v%d >= 0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :pswitch_4
    const-string v0, "if v%d >  0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :pswitch_5
    const-string v0, "if v%d <= 0 goto %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public visitJumpStmt(ILcom/zte/privacy/DexLabel;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const-string v0, "goto %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public visitLookupSwitchStmt(IILcom/zte/privacy/DexLabel;[I[Lcom/zte/privacy/DexLabel;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "cases"    # [I
    .param p5, "label2"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    const-string v1, "switch(v%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 348
    const-string v1, "case %d: goto %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, p4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget-object v3, p5, v0

    invoke-virtual {p0, v3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    const-string v1, "default: goto %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public visitMethodStmt(I[II)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "args"    # [I
    .param p3, "a"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 357
    .local v0, "arg":I
    const/16 v5, 0x76

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "arg":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 362
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 371
    :goto_1
    return-void

    .line 365
    :sswitch_0
    const-string v5, "Q+ TEMP=taboff+%04x(%s)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 368
    :sswitch_1
    const-string v5, "Q+ TEMP=inline+%04x(%s)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, p1, v5, v6}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    :sswitch_data_0
    .sparse-switch
        0xee -> :sswitch_1
        0xf8 -> :sswitch_0
        0xfa -> :sswitch_0
    .end sparse-switch
.end method

.method public visitMethodStmt(I[ILcom/zte/privacy/Method;)V
    .locals 11
    .param p1, "opcode"    # I
    .param p2, "regs"    # [I
    .param p3, "method"    # Lcom/zte/privacy/Method;

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 383
    :pswitch_0
    const/4 v0, 0x0

    .line 384
    .local v0, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 386
    const/16 v4, 0x76

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 388
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 391
    :cond_1
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getReturnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    const-string v4, "%s.%s(%s)  //%s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, p1, v4, v5}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_2
    const-string v4, "TEMP=%s.%s(%s)  //%s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, p1, v4, v5}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 405
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1
    const/4 v0, 0x1

    .line 406
    .restart local v0    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 408
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x76

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 410
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 411
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 413
    :cond_4
    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getReturnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 414
    const-string v4, "v%d.%s(%s)  //%s"

    new-array v5, v6, [Ljava/lang/Object;

    aget v6, p2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, p1, v4, v5}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :cond_5
    const-string v4, "TEMP=v%d.%s(%s)  //%s"

    new-array v5, v6, [Ljava/lang/Object;

    aget v6, p2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p3}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, p1, v4, v5}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitMonitorStmt(II)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "reg"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 432
    :pswitch_0
    const-string v0, "lock v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :pswitch_1
    const-string v0, "unlock v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitMoveStmt(III)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "xt"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 450
    :goto_0
    :pswitch_0
    return-void

    .line 444
    :pswitch_1
    const-string v0, "v%d=TEMP"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :pswitch_2
    const-string v0, "v%d=@Exception"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public visitMoveStmt(IIII)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "toReg"    # I
    .param p3, "fromReg"    # I
    .param p4, "xt"    # I

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 461
    :pswitch_0
    const-string v0, "v%d = v%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public visitReturnStmt(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 468
    packed-switch p1, :pswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 470
    :pswitch_0
    const-string v0, "return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public visitReturnStmt(III)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "xt"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 477
    sparse-switch p1, :sswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 479
    :sswitch_0
    const-string v0, "return v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 482
    :sswitch_1
    const-string v0, "throw v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x27 -> :sswitch_1
    .end sparse-switch
.end method

.method public visitReturnStmt(IILjava/lang/Object;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "cause"    # I
    .param p3, "ref"    # Ljava/lang/Object;

    .prologue
    .line 489
    sget-object v1, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->causes:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_0

    const-string v0, "unknown"

    .line 490
    .local v0, "c":Ljava/lang/String;
    :goto_0
    const-string v1, "Q+ throw new VerificationError(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 491
    return-void

    .line 489
    .end local v0    # "c":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->causes:[Ljava/lang/String;

    aget-object v0, v1, p2

    goto :goto_0
.end method

.method public visitTableSwitchStmt(IILcom/zte/privacy/DexLabel;II[Lcom/zte/privacy/DexLabel;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "reg"    # I
    .param p3, "label"    # Lcom/zte/privacy/DexLabel;
    .param p4, "first_case"    # I
    .param p5, "last_case"    # I
    .param p6, "labels"    # [Lcom/zte/privacy/DexLabel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    const-string v1, "switch(v%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p6

    if-ge v0, v1, :cond_0

    .line 503
    const-string v1, "case %d: goto %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int v3, p4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget-object v3, p6, v0

    invoke-virtual {p0, v3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    const-string v1, "default: goto %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public visitUnopStmt(IIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "saveToReg"    # I
    .param p3, "opReg"    # I
    .param p4, "xt"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    sparse-switch p1, :sswitch_data_0

    .line 521
    :goto_0
    return-void

    .line 512
    :sswitch_0
    const-string v0, "v%d = ~v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :sswitch_1
    const-string v0, "v%d = !v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 518
    :sswitch_2
    const-string v0, "v%d = v%d.length"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0xff007b -> :sswitch_0
        0xff007c -> :sswitch_1
    .end sparse-switch
.end method

.method public visitUnopStmt(IIIII)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "saveToReg"    # I
    .param p3, "opReg"    # I
    .param p4, "xta"    # I
    .param p5, "xtb"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 525
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 527
    :pswitch_0
    packed-switch p5, :pswitch_data_1

    goto :goto_0

    .line 529
    :pswitch_1
    const-string v0, "v%d = (boolean)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 532
    :pswitch_2
    const-string v0, "v%d = (byte)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :pswitch_3
    const-string v0, "v%d = (char)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :pswitch_4
    const-string v0, "v%d = (double)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 541
    :pswitch_5
    const-string v0, "v%d = (float)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 544
    :pswitch_6
    const-string v0, "v%d = (int)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :pswitch_7
    const-string v0, "v%d = (long)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 550
    :pswitch_8
    const-string v0, "v%d = (short)v%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0xff0081
        :pswitch_0
    .end packed-switch

    .line 527
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
