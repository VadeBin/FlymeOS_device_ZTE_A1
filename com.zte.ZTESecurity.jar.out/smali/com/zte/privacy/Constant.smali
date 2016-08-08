.class Lcom/zte/privacy/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadConstant(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;)Ljava/lang/Object;
    .locals 19
    .param p0, "dex"    # Lcom/zte/privacy/DexFileReader;
    .param p1, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    .line 52
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v6

    .line 53
    .local v6, "b":I
    and-int/lit8 v14, v6, 0x1f

    .line 54
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    .line 126
    :pswitch_0
    new-instance v16, Lcom/zte/privacy/DexException;

    const-string v17, "Not support yet."

    invoke-direct/range {v16 .. v17}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 56
    :pswitch_1
    new-instance v5, Ljava/lang/Byte;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Byte;-><init>(B)V

    .line 123
    :cond_0
    :goto_0
    return-object v5

    .line 59
    :pswitch_2
    new-instance v5, Ljava/lang/Short;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance v5, Ljava/lang/Integer;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 65
    :pswitch_4
    new-instance v5, Ljava/lang/Long;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 68
    :pswitch_5
    new-instance v5, Ljava/lang/Character;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    .line 71
    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 74
    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readFloatBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    const/16 v18, 0x20

    shr-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    .line 77
    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readFloatBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_0

    .line 80
    :pswitch_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 83
    :pswitch_a
    new-instance v5, Ljava/lang/Boolean;

    shr-int/lit8 v16, v6, 0x5

    and-int/lit8 v16, v16, 0x3

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 87
    :pswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    .line 88
    .local v15, "type_id":I
    new-instance v5, Lcom/zte/privacy/DexType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/zte/privacy/DexType;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .end local v15    # "type_id":I
    :pswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v5

    goto/16 :goto_0

    .line 95
    :pswitch_d
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 96
    .local v9, "method_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/zte/privacy/DexFileReader;->getMethod(I)Lcom/zte/privacy/Method;

    move-result-object v5

    goto/16 :goto_0

    .line 100
    .end local v9    # "method_id":I
    :pswitch_e
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/zte/privacy/Constant;->readUIntBits(Lcom/zte/privacy/DataIn;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 101
    .local v7, "field_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v5

    goto/16 :goto_0

    .line 104
    .end local v7    # "field_id":I
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 105
    .local v13, "size":I
    new-array v5, v13, [Ljava/lang/Object;

    .line 106
    .local v5, "array":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v13, :cond_0

    .line 107
    invoke-static/range {p0 .. p1}, Lcom/zte/privacy/Constant;->ReadConstant(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v5, v8

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 113
    .end local v5    # "array":[Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v13    # "size":I
    :pswitch_10
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v2, v0

    .line 114
    .local v2, "_type":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "_typeString":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 116
    .restart local v13    # "size":I
    new-instance v4, Lcom/zte/privacy/Annotation;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v4, v3, v0}, Lcom/zte/privacy/Annotation;-><init>(Ljava/lang/String;Z)V

    .line 117
    .local v4, "ann":Lcom/zte/privacy/Annotation;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v13, :cond_2

    .line 118
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 119
    .local v11, "nameid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "nameString":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/zte/privacy/Constant;->ReadConstant(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;)Ljava/lang/Object;

    move-result-object v12

    .line 121
    .local v12, "o":Ljava/lang/Object;
    iget-object v0, v4, Lcom/zte/privacy/Annotation;->items:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/zte/privacy/Annotation$Item;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v12}, Lcom/zte/privacy/Annotation$Item;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v10    # "nameString":Ljava/lang/String;
    .end local v11    # "nameid":I
    .end local v12    # "o":Ljava/lang/Object;
    :cond_2
    move-object v5, v4

    .line 123
    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static readFloatBits(Lcom/zte/privacy/DataIn;I)J
    .locals 7
    .param p0, "in"    # Lcom/zte/privacy/DataIn;
    .param p1, "before"    # I

    .prologue
    .line 150
    shr-int/lit8 v4, p1, 0x5

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v0, v4, 0x1

    .line 151
    .local v0, "bytes":I
    const-wide/16 v2, 0x0

    .line 152
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v1, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    rsub-int/lit8 v4, v0, 0x8

    mul-int/lit8 v4, v4, 0x8

    shl-long/2addr v2, v4

    .line 156
    return-wide v2
.end method

.method public static readIntBits(Lcom/zte/privacy/DataIn;I)J
    .locals 8
    .param p0, "in"    # Lcom/zte/privacy/DataIn;
    .param p1, "before"    # I

    .prologue
    .line 131
    shr-int/lit8 v3, p1, 0x5

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v3, 0x1

    .line 132
    .local v1, "length":I
    const-wide/16 v4, 0x0

    .line 133
    .local v4, "value":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 134
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v3

    int-to-long v6, v3

    mul-int/lit8 v3, v0, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    rsub-int/lit8 v3, v1, 0x8

    mul-int/lit8 v2, v3, 0x8

    .line 137
    .local v2, "shift":I
    shl-long v6, v4, v2

    shr-long/2addr v6, v2

    return-wide v6
.end method

.method public static readUIntBits(Lcom/zte/privacy/DataIn;I)J
    .locals 7
    .param p0, "in"    # Lcom/zte/privacy/DataIn;
    .param p1, "before"    # I

    .prologue
    .line 141
    shr-int/lit8 v4, p1, 0x5

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v1, v4, 0x1

    .line 142
    .local v1, "length":I
    const-wide/16 v2, 0x0

    .line 143
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-wide v2
.end method
