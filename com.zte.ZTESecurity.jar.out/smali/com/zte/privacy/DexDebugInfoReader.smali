.class Lcom/zte/privacy/DexDebugInfoReader;
.super Ljava/lang/Object;
.source "DexDebugInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    }
.end annotation


# static fields
.field public static final DBG_ADVANCE_LINE:I = 0x2

.field public static final DBG_ADVANCE_PC:I = 0x1

.field public static final DBG_END_LOCAL:I = 0x5

.field public static final DBG_END_SEQUENCE:I = 0x0

.field public static final DBG_FIRST_SPECIAL:I = 0xa

.field public static final DBG_LINE_BASE:I = -0x4

.field public static final DBG_LINE_RANGE:I = 0xf

.field public static final DBG_RESTART_LOCAL:I = 0x6

.field public static final DBG_SET_EPILOGUE_BEGIN:I = 0x8

.field public static final DBG_SET_FILE:I = 0x9

.field public static final DBG_SET_PROLOGUE_END:I = 0x7

.field public static final DBG_START_LOCAL:I = 0x3

.field public static final DBG_START_LOCAL_EXTENDED:I = 0x4


# instance fields
.field args:[I

.field private codeReader:Lcom/zte/privacy/DexCodeReader;

.field private dex:Lcom/zte/privacy/DexFileReader;

.field private in:Lcom/zte/privacy/DataIn;

.field private instruction_size:I

.field variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexFileReader;ILcom/zte/privacy/DexCodeReader;[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;[I)V
    .locals 0
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "dex"    # Lcom/zte/privacy/DexFileReader;
    .param p3, "instruction_size"    # I
    .param p4, "codeReader"    # Lcom/zte/privacy/DexCodeReader;
    .param p5, "localVariables"    # [Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    .param p6, "args"    # [I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/zte/privacy/DexDebugInfoReader;->in:Lcom/zte/privacy/DataIn;

    .line 57
    iput-object p2, p0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    .line 58
    iput p3, p0, Lcom/zte/privacy/DexDebugInfoReader;->instruction_size:I

    .line 59
    iput-object p4, p0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    .line 60
    iput-object p5, p0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    .line 61
    iput-object p6, p0, Lcom/zte/privacy/DexDebugInfoReader;->args:[I

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lcom/zte/privacy/DexCodeVisitor;)V
    .locals 28
    .param p1, "dcv"    # Lcom/zte/privacy/DexCodeVisitor;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexDebugInfoReader;->in:Lcom/zte/privacy/DataIn;

    move-object/from16 v16, v0

    .line 98
    .local v16, "in":Lcom/zte/privacy/DataIn;
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v18, v0

    .line 100
    .local v18, "line":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v25, v0

    .line 101
    .local v25, "szParams":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->args:[I

    array-length v5, v5

    move/from16 v0, v25

    if-ne v0, v5, :cond_0

    const/16 v20, 0x0

    .line 102
    .local v20, "offset":I
    :goto_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v25

    if-ge v14, v0, :cond_2

    .line 103
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v24, v5, -0x1

    .line 104
    .local v24, "string_offset":I
    if-gez v24, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader;->args:[I

    add-int v7, v14, v20

    aget v6, v6, v7

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 102
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 101
    .end local v14    # "i":I
    .end local v20    # "offset":I
    .end local v24    # "string_offset":I
    :cond_0
    const/16 v20, 0x1

    goto :goto_0

    .line 107
    .restart local v14    # "i":I
    .restart local v20    # "offset":I
    .restart local v24    # "string_offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, "psName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader;->args:[I

    add-int v7, v14, v20

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->name:Ljava/lang/String;

    goto :goto_2

    .line 112
    .end local v22    # "psName":Ljava/lang/String;
    .end local v24    # "string_offset":I
    :cond_2
    const/4 v4, 0x0

    .line 114
    .local v4, "pcOffset":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitLineNumber(ILcom/zte/privacy/DexLabel;)V

    .line 119
    :cond_3
    :goto_3
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v21

    .line 120
    .local v21, "opcode":I
    packed-switch v21, :pswitch_data_0

    .line 191
    add-int/lit8 v12, v21, -0xa

    .line 192
    .local v12, "adjustedOpcode":I
    rem-int/lit8 v5, v12, 0xf

    add-int/lit8 v5, v5, -0x4

    add-int v18, v18, v5

    .line 193
    div-int/lit8 v5, v12, 0xf

    if-eqz v5, :cond_3

    .line 194
    div-int/lit8 v5, v12, 0xf

    add-int/2addr v4, v5

    .line 195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lcom/zte/privacy/DexCodeVisitor;->visitLineNumber(ILcom/zte/privacy/DexLabel;)V

    goto :goto_3

    .line 124
    .end local v12    # "adjustedOpcode":I
    :pswitch_1
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v20, v0

    .line 125
    add-int v4, v4, v20

    .line 127
    goto :goto_3

    .line 129
    :pswitch_2
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readLeb128()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v20, v0

    .line 130
    add-int v18, v18, v20

    .line 132
    goto :goto_3

    .line 134
    :pswitch_3
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v3, v6

    .line 135
    .local v3, "regNum":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v19, v5, -0x1

    .line 136
    .local v19, "nameIdx":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v26, v5, -0x1

    .line 137
    .local v26, "typeIdx":I
    if-ltz v19, :cond_3

    if-ltz v26, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 139
    new-instance v2, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v2, "localVariable":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    aput-object v2, v5, v3

    goto/16 :goto_3

    .line 146
    .end local v2    # "localVariable":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    .end local v3    # "regNum":I
    .end local v19    # "nameIdx":I
    .end local v26    # "typeIdx":I
    :pswitch_4
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v3, v6

    .line 147
    .restart local v3    # "regNum":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v19, v5, -0x1

    .line 148
    .restart local v19    # "nameIdx":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v26, v5, -0x1

    .line 149
    .restart local v26    # "typeIdx":I
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/lit8 v23, v5, -0x1

    .line 150
    .local v23, "sigIdx":I
    if-ltz v19, :cond_3

    if-ltz v26, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 152
    new-instance v2, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/privacy/DexDebugInfoReader;->dex:Lcom/zte/privacy/DexFileReader;

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v2    # "localVariable":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    aput-object v2, v5, v3

    goto/16 :goto_3

    .line 159
    .end local v2    # "localVariable":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    .end local v3    # "regNum":I
    .end local v19    # "nameIdx":I
    .end local v23    # "sigIdx":I
    .end local v26    # "typeIdx":I
    :pswitch_5
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v3, v6

    .line 160
    .restart local v3    # "regNum":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    aget-object v27, v5, v3

    .line 161
    .local v27, "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 162
    move-object/from16 v0, v27

    iput v4, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->end:I

    .line 164
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->type:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->signature:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v0, v27

    iget v9, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->start:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, v27

    iget v11, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->reg:I

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/zte/privacy/DexCodeVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V

    goto/16 :goto_3

    .line 170
    .end local v3    # "regNum":I
    .end local v27    # "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    :pswitch_6
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v3, v6

    .line 171
    .restart local v3    # "regNum":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    aget-object v27, v5, v3

    .line 172
    .restart local v27    # "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    move-object/from16 v0, v27

    iput v4, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->start:I

    .line 173
    const/4 v5, -0x1

    move-object/from16 v0, v27

    iput v5, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->end:I

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    goto/16 :goto_3

    .line 186
    .end local v3    # "regNum":I
    .end local v27    # "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    :pswitch_7
    invoke-interface/range {v16 .. v16}, Lcom/zte/privacy/DataIn;->readULeb128()J

    goto/16 :goto_3

    .line 201
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/privacy/DexDebugInfoReader;->variableList:[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    .local v13, "arr$":[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    aget-object v27, v13, v15

    .line 202
    .restart local v27    # "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    if-eqz v27, :cond_4

    move-object/from16 v0, v27

    iget v5, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->end:I

    if-gez v5, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zte/privacy/DexDebugInfoReader;->instruction_size:I

    invoke-virtual {v5, v6}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 205
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->type:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->signature:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v0, v27

    iget v9, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->start:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexDebugInfoReader;->codeReader:Lcom/zte/privacy/DexCodeReader;

    iget-object v5, v5, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zte/privacy/DexDebugInfoReader;->instruction_size:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, v27

    iget v11, v0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->reg:I

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/zte/privacy/DexCodeVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;I)V

    .line 201
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 209
    .end local v27    # "v":Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    :cond_5
    return-void

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
