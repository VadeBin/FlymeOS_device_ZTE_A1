.class Lcom/zte/privacy/DexAnnotationReader;
.super Ljava/lang/Object;
.source "DexAnnotationReader.java"


# static fields
.field private static final VISIBILITY_BUILD:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexAnnotationAble;)V
    .locals 18
    .param p0, "dex"    # Lcom/zte/privacy/DexFileReader;
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "daa"    # Lcom/zte/privacy/DexAnnotationAble;

    .prologue
    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v9

    .line 45
    .local v9, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v2

    .line 47
    .local v2, "annotation_off":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 49
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v14

    .line 50
    .local v14, "visible_i":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 51
    .local v13, "type_idx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "type":Ljava/lang/String;
    if-eqz v14, :cond_0

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v15}, Lcom/zte/privacy/DexAnnotationAble;->visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;

    move-result-object v3

    .line 53
    .local v3, "dav":Lcom/zte/privacy/DexAnnotationVisitor;
    if-eqz v3, :cond_2

    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    .line 55
    .local v10, "sizex":J
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v15, v16, v10

    if-gez v15, :cond_1

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 57
    .local v7, "name_idx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "name":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/zte/privacy/Constant;->ReadConstant(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;)Ljava/lang/Object;

    move-result-object v8

    .line 59
    .local v8, "o":Ljava/lang/Object;
    invoke-static {v3, v6, v8}, Lcom/zte/privacy/DexAnnotationReader;->doAccept(Lcom/zte/privacy/DexAnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 52
    .end local v3    # "dav":Lcom/zte/privacy/DexAnnotationVisitor;
    .end local v5    # "k":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "name_idx":I
    .end local v8    # "o":Ljava/lang/Object;
    .end local v10    # "sizex":J
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 61
    .restart local v3    # "dav":Lcom/zte/privacy/DexAnnotationVisitor;
    .restart local v5    # "k":I
    .restart local v10    # "sizex":J
    :cond_1
    invoke-interface {v3}, Lcom/zte/privacy/DexAnnotationVisitor;->visitEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v5    # "k":I
    .end local v10    # "sizex":J
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "dav":Lcom/zte/privacy/DexAnnotationVisitor;
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "type_idx":I
    .end local v14    # "visible_i":I
    :catchall_0
    move-exception v15

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v15

    .line 67
    .end local v2    # "annotation_off":I
    :cond_3
    return-void
.end method

.method private static doAccept(Lcom/zte/privacy/DexAnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p0, "dav"    # Lcom/zte/privacy/DexAnnotationVisitor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v10, p2, [Ljava/lang/Object;

    if-eqz v10, :cond_2

    .line 71
    invoke-interface {p0, p1}, Lcom/zte/privacy/DexAnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;

    move-result-object v3

    .line 72
    .local v3, "arrayVisitor":Lcom/zte/privacy/DexAnnotationVisitor;
    if-eqz v3, :cond_1

    .line 73
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "o":Ljava/lang/Object;
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 74
    .local v2, "array":[Ljava/lang/Object;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v1, v7

    .line 75
    .local v5, "e":Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v3, v10, v5}, Lcom/zte/privacy/DexAnnotationReader;->doAccept(Lcom/zte/privacy/DexAnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "e":Ljava/lang/Object;
    :cond_0
    invoke-interface {v3}, Lcom/zte/privacy/DexAnnotationVisitor;->visitEnd()V

    .line 94
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "array":[Ljava/lang/Object;
    .end local v3    # "arrayVisitor":Lcom/zte/privacy/DexAnnotationVisitor;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    :goto_1
    return-void

    .line 79
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v10, p2, Lcom/zte/privacy/Annotation;

    if-eqz v10, :cond_4

    move-object v0, p2

    .line 80
    check-cast v0, Lcom/zte/privacy/Annotation;

    .line 81
    .local v0, "ann":Lcom/zte/privacy/Annotation;
    iget-object v10, v0, Lcom/zte/privacy/Annotation;->type:Ljava/lang/String;

    invoke-interface {p0, p1, v10}, Lcom/zte/privacy/DexAnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/DexAnnotationVisitor;

    move-result-object v4

    .line 82
    .local v4, "av":Lcom/zte/privacy/DexAnnotationVisitor;
    if-eqz v4, :cond_1

    .line 83
    iget-object v10, v0, Lcom/zte/privacy/Annotation;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/privacy/Annotation$Item;

    .line 84
    .local v8, "item":Lcom/zte/privacy/Annotation$Item;
    iget-object v10, v8, Lcom/zte/privacy/Annotation$Item;->name:Ljava/lang/String;

    iget-object v11, v8, Lcom/zte/privacy/Annotation$Item;->value:Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/zte/privacy/DexAnnotationReader;->doAccept(Lcom/zte/privacy/DexAnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    .end local v8    # "item":Lcom/zte/privacy/Annotation$Item;
    :cond_3
    invoke-interface {v4}, Lcom/zte/privacy/DexAnnotationVisitor;->visitEnd()V

    goto :goto_1

    .line 88
    .end local v0    # "ann":Lcom/zte/privacy/Annotation;
    .end local v4    # "av":Lcom/zte/privacy/DexAnnotationVisitor;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    instance-of v10, p2, Lcom/zte/privacy/Field;

    if-eqz v10, :cond_5

    move-object v6, p2

    .line 89
    check-cast v6, Lcom/zte/privacy/Field;

    .line 90
    .local v6, "f":Lcom/zte/privacy/Field;
    invoke-virtual {v6}, Lcom/zte/privacy/Field;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, p1, v10, v11}, Lcom/zte/privacy/DexAnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v6    # "f":Lcom/zte/privacy/Field;
    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/zte/privacy/DexAnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
