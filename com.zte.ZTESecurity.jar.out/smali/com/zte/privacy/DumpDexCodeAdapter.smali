.class public Lcom/zte/privacy/DumpDexCodeAdapter;
.super Lcom/zte/privacy/AbstractDumpDexCodeAdapter;
.source "DumpDexCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    }
.end annotation


# instance fields
.field private isStatic:Z

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/privacy/DexLabel;",
            ">;"
        }
    .end annotation
.end field

.field private lines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/zte/privacy/DexLabel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lcom/zte/privacy/Method;

.field private out:Ljava/io/PrintWriter;

.field private trys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/zte/privacy/Method;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "m"    # Lcom/zte/privacy/Method;
    .param p3, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->labels:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->lines:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->method:Lcom/zte/privacy/Method;

    .line 65
    iput-object p3, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    .line 66
    iput-boolean p1, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->isStatic:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs info(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "s":Ljava/lang/String;
    if-gez p1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v2, "%-20s|%5s|%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, ""

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v2, "%-20s|%5s|%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/DexOpcodeDump;->dump(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, ""

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method protected labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;
    .locals 3
    .param p1, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->labels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 82
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->labels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public visitArguments(I[I)V
    .locals 12
    .param p1, "total"    # I
    .param p2, "args"    # [I

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "i":I
    iget-boolean v7, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->isStatic:Z

    if-nez v7, :cond_0

    .line 93
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget v5, p2, v1

    .line 94
    .local v5, "reg":I
    iget-object v7, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->method:Lcom/zte/privacy/Method;

    invoke-virtual {v7}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "type":Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v8, "%20s:v%d   //%s\n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "this"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v1, v2

    .line 97
    .end local v2    # "i":I
    .end local v5    # "reg":I
    .end local v6    # "type":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->method:Lcom/zte/privacy/Method;

    invoke-virtual {v7}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 98
    .restart local v6    # "type":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v5, p2, v2

    .line 99
    .restart local v5    # "reg":I
    invoke-static {v6}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    iget-object v7, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v8, "%20s:v%d   //%s\n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 97
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 102
    .end local v5    # "reg":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public visitLabel(Lcom/zte/privacy/DexLabel;)V
    .locals 14
    .param p1, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "find":Z
    iget-object v8, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;

    .line 113
    .local v6, "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    iget-object v8, v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->end:Lcom/zte/privacy/DexLabel;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    const/4 v8, -0x1

    const-string v9, " } // TC_%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v9, v10}, Lcom/zte/privacy/DumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v0, 0x1

    .line 120
    .end local v6    # "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    :cond_1
    iget-object v8, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->lines:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 121
    .local v4, "line":Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 122
    iget-object v8, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v9, "%-20s|%5s: line %d\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "LABEL"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, p1}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    :goto_0
    if-nez v0, :cond_3

    .line 127
    iget-object v8, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;

    .line 128
    .restart local v6    # "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    iget-object v8, v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->start:Lcom/zte/privacy/DexLabel;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 129
    const/4 v8, -0x1

    const-string v9, "try { // TC_%d "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v9, v10}, Lcom/zte/privacy/DumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .end local v6    # "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    :cond_3
    return-void

    .line 124
    :cond_4
    iget-object v8, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v9, "%-20s|%5s:\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "LABEL"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, p1}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 132
    .restart local v6    # "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->handlers:[Lcom/zte/privacy/DexLabel;

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 133
    iget-object v8, v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->types:[Ljava/lang/String;

    aget-object v7, v8, v2

    .line 134
    .local v7, "type":Ljava/lang/String;
    iget-object v8, v6, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->handlers:[Lcom/zte/privacy/DexLabel;

    aget-object v1, v8, v2

    .line 135
    .local v1, "handler":Lcom/zte/privacy/DexLabel;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 136
    move-object v5, v7

    .line 137
    .local v5, "t":Ljava/lang/String;
    const/4 v8, -0x1

    const-string v9, "catch(%s) // TC_%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-nez v5, :cond_6

    const-string v5, "all"

    .end local v5    # "t":Ljava/lang/String;
    :cond_6
    aput-object v5, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v9, v10}, Lcom/zte/privacy/DumpDexCodeAdapter;->info(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 132
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public visitLineNumber(ILcom/zte/privacy/DexLabel;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "label"    # Lcom/zte/privacy/DexLabel;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->lines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
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
    .line 171
    iget-object v0, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v1, "LOCAL_VARIABLE L%s ~ L%s v%d -> %s // %s \n"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p4}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, p5}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 173
    return-void
.end method

.method public visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    .locals 10
    .param p1, "start"    # Lcom/zte/privacy/DexLabel;
    .param p2, "end"    # Lcom/zte/privacy/DexLabel;
    .param p3, "handlers"    # [Lcom/zte/privacy/DexLabel;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 147
    new-instance v3, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;-><init>(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V

    .line 148
    .local v3, "tc":Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
    iget-object v5, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v5, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->trys:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 150
    .local v2, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p4

    if-ge v1, v5, :cond_1

    .line 151
    aget-object v4, p4, v1

    .line 152
    .local v4, "type":Ljava/lang/String;
    aget-object v0, p3, v1

    .line 153
    .local v0, "handler":Lcom/zte/privacy/DexLabel;
    if-nez v4, :cond_0

    .line 154
    iget-object v5, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v6, "TR_%d L%s ~ L%s > L%s all\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0, p2}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 150
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/zte/privacy/DumpDexCodeAdapter;->out:Ljava/io/PrintWriter;

    const-string v6, "TR_%d L%s ~ L%s > L%s %s\n"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0, p2}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/DumpDexCodeAdapter;->labelToString(Lcom/zte/privacy/DexLabel;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 161
    .end local v0    # "handler":Lcom/zte/privacy/DexLabel;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/privacy/AbstractDumpDexCodeAdapter;->visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V

    .line 162
    return-void
.end method
