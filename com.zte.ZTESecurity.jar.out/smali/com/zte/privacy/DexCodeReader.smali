.class Lcom/zte/privacy/DexCodeReader;
.super Ljava/lang/Object;
.source "DexCodeReader.java"

# interfaces
.implements Lcom/zte/privacy/DexOpcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/DexCodeReader$1;
    }
.end annotation


# instance fields
.field private dex:Lcom/zte/privacy/DexFileReader;

.field private in:Lcom/zte/privacy/DataIn;

.field private isStatic:Z

.field labels:Ljava/util/Map;
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

.field private method:Lcom/zte/privacy/Method;


# direct methods
.method constructor <init>(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;ZLcom/zte/privacy/Method;)V
    .locals 1
    .param p1, "dex"    # Lcom/zte/privacy/DexFileReader;
    .param p2, "in"    # Lcom/zte/privacy/DataIn;
    .param p3, "isStatic"    # Z
    .param p4, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    .line 69
    iput-object p2, p0, Lcom/zte/privacy/DexCodeReader;->in:Lcom/zte/privacy/DataIn;

    .line 70
    iput-object p4, p0, Lcom/zte/privacy/DexCodeReader;->method:Lcom/zte/privacy/Method;

    .line 71
    iput-boolean p3, p0, Lcom/zte/privacy/DexCodeReader;->isStatic:Z

    .line 72
    return-void
.end method

.method private acceptInsn(Lcom/zte/privacy/DataIn;ILcom/zte/privacy/DexOpcodeAdapter;)V
    .locals 54
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "instruction_size"    # I
    .param p3, "n"    # Lcom/zte/privacy/DexOpcodeAdapter;

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 345
    .local v46, "labelOffsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v47, v4

    .line 346
    .local v47, "nextLabelOffset":Ljava/lang/Integer;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v37

    .line 347
    .local v37, "baseOffset":I
    invoke-direct/range {p0 .. p2}, Lcom/zte/privacy/DexCodeReader;->fixIssue130(Lcom/zte/privacy/DataIn;I)V

    .line 348
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v4

    sub-int v4, v4, v37

    div-int/lit8 v41, v4, 0x2

    .local v41, "currentOffset":I
    :goto_1
    move/from16 v0, v41

    move/from16 v1, p2

    if-ge v0, v1, :cond_c

    .line 351
    const/16 v42, 0x0

    .line 352
    .local v42, "currentOffsetVisited":Z
    :goto_2
    if-eqz v47, :cond_0

    .line 353
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 354
    .local v35, "_intNextLabelOffset":I
    move/from16 v0, v35

    move/from16 v1, v41

    if-le v0, v1, :cond_4

    .line 366
    .end local v35    # "_intNextLabelOffset":I
    :cond_0
    :goto_3
    if-nez v42, :cond_1

    .line 367
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->offset(I)V

    .line 369
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v5

    .line 370
    .local v5, "opcode":I
    shr-int/lit8 v6, v5, 0x8

    .line 372
    .local v6, "uOpcodeH":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v52, v0

    .line 373
    .local v52, "uOpcodeL":I
    const/16 v4, 0xff

    move/from16 v0, v52

    if-eq v0, v4, :cond_2

    .line 374
    move/from16 v5, v52

    .line 378
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    iget v4, v4, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    invoke-static {v5, v4}, Lcom/zte/privacy/OpcodeFormat;->get(II)Lcom/zte/privacy/OpcodeFormat;

    move-result-object v44

    .line 380
    .local v44, "format":Lcom/zte/privacy/OpcodeFormat;
    sget-object v4, Lcom/zte/privacy/DexCodeReader$1;->$SwitchMap$com$zte$privacy$OpcodeFormat:[I

    invoke-virtual/range {v44 .. v44}, Lcom/zte/privacy/OpcodeFormat;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 348
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v4

    sub-int v4, v4, v37

    div-int/lit8 v41, v4, 0x2

    goto :goto_1

    .line 345
    .end local v5    # "opcode":I
    .end local v6    # "uOpcodeH":I
    .end local v37    # "baseOffset":I
    .end local v41    # "currentOffset":I
    .end local v42    # "currentOffsetVisited":Z
    .end local v44    # "format":Lcom/zte/privacy/OpcodeFormat;
    .end local v47    # "nextLabelOffset":Ljava/lang/Integer;
    .end local v52    # "uOpcodeL":I
    :cond_3
    const/16 v47, 0x0

    goto :goto_0

    .line 356
    .restart local v35    # "_intNextLabelOffset":I
    .restart local v37    # "baseOffset":I
    .restart local v41    # "currentOffset":I
    .restart local v42    # "currentOffsetVisited":Z
    .restart local v47    # "nextLabelOffset":Ljava/lang/Integer;
    :cond_4
    move/from16 v0, v35

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 357
    const/16 v42, 0x1

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->offset(I)V

    .line 359
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v47, v4

    .line 360
    :goto_5
    goto :goto_3

    .line 359
    :cond_5
    const/16 v47, 0x0

    goto :goto_5

    .line 362
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->offset(I)V

    .line 363
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v47, v4

    .line 365
    :goto_6
    goto :goto_2

    .line 363
    :cond_7
    const/16 v47, 0x0

    goto :goto_6

    .line 382
    .end local v35    # "_intNextLabelOffset":I
    .restart local v5    # "opcode":I
    .restart local v6    # "uOpcodeH":I
    .restart local v44    # "format":Lcom/zte/privacy/OpcodeFormat;
    .restart local v52    # "uOpcodeL":I
    :pswitch_0
    int-to-byte v4, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x0t(II)V

    goto :goto_4

    .line 385
    :pswitch_1
    packed-switch v5, :pswitch_data_1

    .line 412
    :goto_7
    :pswitch_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/zte/privacy/DexOpcodeAdapter;->x0x(I)V

    goto :goto_4

    .line 387
    :pswitch_3
    packed-switch v6, :pswitch_data_2

    goto :goto_7

    .line 392
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v49

    .line 393
    .local v49, "switch_size":I
    mul-int/lit8 v4, v49, 0x4

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto :goto_7

    .line 398
    .end local v49    # "switch_size":I
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v49

    .line 399
    .restart local v49    # "switch_size":I
    mul-int/lit8 v4, v49, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto :goto_7

    .line 403
    .end local v49    # "switch_size":I
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v43

    .line 404
    .local v43, "element_width":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v48

    .line 406
    .local v48, "size":I
    mul-int v4, v48, v43

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto :goto_7

    .line 416
    .end local v43    # "element_width":I
    .end local v48    # "size":I
    :pswitch_7
    int-to-byte v0, v6

    move/from16 v34, v0

    .line 417
    .local v34, "VV":I
    shr-int/lit8 v32, v34, 0x4

    .line 418
    .local v32, "B":I
    and-int/lit8 v4, v34, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v5, v4, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->x1n(III)V

    goto/16 :goto_4

    .line 422
    .end local v32    # "B":I
    .end local v34    # "VV":I
    :pswitch_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Lcom/zte/privacy/DexOpcodeAdapter;->x1x(II)V

    goto/16 :goto_4

    .line 425
    :pswitch_9
    and-int/lit8 v4, v6, 0xf

    shr-int/lit8 v7, v6, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->x2x(III)V

    goto/16 :goto_4

    .line 429
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x0bc(III)V

    goto/16 :goto_4

    .line 433
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x0t(II)V

    goto/16 :goto_4

    .line 436
    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1c(III)V

    goto/16 :goto_4

    .line 440
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1h(III)V

    goto/16 :goto_4

    .line 444
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1s(III)V

    goto/16 :goto_4

    .line 448
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1t(III)V

    goto/16 :goto_4

    .line 452
    :pswitch_10
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v51

    .line 453
    .local v51, "tmp":I
    move/from16 v0, v51

    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v7, v51, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->x2b(IIII)V

    goto/16 :goto_4

    .line 457
    .end local v51    # "tmp":I
    :pswitch_11
    and-int/lit8 v4, v6, 0xf

    shr-int/lit8 v7, v6, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7, v10}, Lcom/zte/privacy/DexOpcodeAdapter;->x2c(IIII)V

    goto/16 :goto_4

    .line 461
    :pswitch_12
    and-int/lit8 v4, v6, 0xf

    shr-int/lit8 v7, v6, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7, v10}, Lcom/zte/privacy/DexOpcodeAdapter;->x2cs(IIII)V

    goto/16 :goto_4

    .line 465
    :pswitch_13
    and-int/lit8 v4, v6, 0xf

    shr-int/lit8 v7, v6, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7, v10}, Lcom/zte/privacy/DexOpcodeAdapter;->x2s(IIII)V

    goto/16 :goto_4

    .line 469
    :pswitch_14
    and-int/lit8 v4, v6, 0xf

    shr-int/lit8 v7, v6, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7, v10}, Lcom/zte/privacy/DexOpcodeAdapter;->x2t(IIII)V

    goto/16 :goto_4

    .line 473
    :pswitch_15
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x2x(III)V

    goto/16 :goto_4

    .line 477
    :pswitch_16
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v51

    .line 478
    .restart local v51    # "tmp":I
    move/from16 v0, v51

    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v7, v51, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->x3x(IIII)V

    goto/16 :goto_4

    .line 482
    .end local v51    # "tmp":I
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x0t(II)V

    goto/16 :goto_4

    .line 485
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1c(III)V

    goto/16 :goto_4

    .line 489
    :pswitch_19
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xInt(Lcom/zte/privacy/DataIn;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->x1i(III)V

    goto/16 :goto_4

    .line 493
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xInt(Lcom/zte/privacy/DataIn;)I

    move-result v33

    .line 494
    .local v33, "BBBBBBBB":I
    sparse-switch v5, :sswitch_data_0

    .line 571
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v5, v6, v1}, Lcom/zte/privacy/DexOpcodeAdapter;->x1t(III)V

    goto/16 :goto_4

    .line 498
    :sswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->push()V

    .line 500
    add-int/lit8 v4, v33, -0x3

    mul-int/lit8 v4, v4, 0x2

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    sparse-switch v5, :sswitch_data_1

    .line 567
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    goto/16 :goto_4

    .line 504
    :sswitch_1
    const/4 v4, 0x2

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 505
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v49

    .line 506
    .restart local v49    # "switch_size":I
    move/from16 v0, v49

    new-array v8, v0, [I

    .line 507
    .local v8, "cases":[I
    move/from16 v0, v49

    new-array v9, v0, [I

    .line 508
    .local v9, "label":[I
    const/16 v45, 0x0

    .local v45, "j":I
    :goto_9
    move/from16 v0, v45

    move/from16 v1, v49

    if-ge v0, v1, :cond_8

    .line 509
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v4

    aput v4, v8, v45

    .line 508
    add-int/lit8 v45, v45, 0x1

    goto :goto_9

    .line 511
    :cond_8
    const/16 v45, 0x0

    :goto_a
    move/from16 v0, v45

    move/from16 v1, v49

    if-ge v0, v1, :cond_9

    .line 512
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v4

    aput v4, v9, v45

    .line 511
    add-int/lit8 v45, v45, 0x1

    goto :goto_a

    .line 514
    :cond_9
    const/4 v7, 0x3

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v9}, Lcom/zte/privacy/DexOpcodeAdapter;->visitLookupSwitchStmt(III[I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 567
    .end local v8    # "cases":[I
    .end local v9    # "label":[I
    .end local v45    # "j":I
    .end local v49    # "switch_size":I
    :catchall_0
    move-exception v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v4

    .line 520
    :sswitch_2
    const/4 v4, 0x2

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 521
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v49

    .line 522
    .restart local v49    # "switch_size":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v14

    .line 523
    .local v14, "first_case":I
    add-int/lit8 v4, v14, -0x1

    add-int v15, v4, v49

    .line 524
    .local v15, "last_case":I
    move/from16 v0, v49

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 525
    .local v16, "_labels":[I
    const/16 v45, 0x0

    .restart local v45    # "j":I
    :goto_b
    move/from16 v0, v45

    move/from16 v1, v49

    if-ge v0, v1, :cond_a

    .line 526
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v50

    .line 527
    .local v50, "targetOffset":I
    aput v50, v16, v45

    .line 525
    add-int/lit8 v45, v45, 0x1

    goto :goto_b

    .line 529
    .end local v50    # "targetOffset":I
    :cond_a
    const/4 v13, 0x3

    move-object/from16 v10, p3

    move v11, v5

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lcom/zte/privacy/DexOpcodeAdapter;->visitTableSwitchStmt(IIIII[I)V

    goto :goto_8

    .line 535
    .end local v14    # "first_case":I
    .end local v15    # "last_case":I
    .end local v16    # "_labels":[I
    .end local v45    # "j":I
    .end local v49    # "switch_size":I
    :sswitch_3
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 536
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v20

    .line 537
    .local v20, "elemWidth":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v21

    .line 538
    .local v21, "initLength":I
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 540
    .local v22, "values":[Ljava/lang/Object;
    packed-switch v20, :pswitch_data_3

    :cond_b
    :pswitch_1b
    move-object/from16 v17, p3

    move/from16 v18, v5

    move/from16 v19, v6

    .line 563
    invoke-virtual/range {v17 .. v22}, Lcom/zte/privacy/DexOpcodeAdapter;->visitFillArrayStmt(IIII[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 542
    :pswitch_1c
    const/16 v45, 0x0

    .restart local v45    # "j":I
    :goto_c
    move/from16 v0, v45

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 543
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readByte()I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v22, v45

    .line 542
    add-int/lit8 v45, v45, 0x1

    goto :goto_c

    .line 547
    .end local v45    # "j":I
    :pswitch_1d
    const/16 v45, 0x0

    .restart local v45    # "j":I
    :goto_d
    move/from16 v0, v45

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 548
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v22, v45

    .line 547
    add-int/lit8 v45, v45, 0x1

    goto :goto_d

    .line 552
    .end local v45    # "j":I
    :pswitch_1e
    const/16 v45, 0x0

    .restart local v45    # "j":I
    :goto_e
    move/from16 v0, v45

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 553
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v22, v45

    .line 552
    add-int/lit8 v45, v45, 0x1

    goto :goto_e

    .line 557
    .end local v45    # "j":I
    :pswitch_1f
    const/16 v45, 0x0

    .restart local v45    # "j":I
    :goto_f
    move/from16 v0, v45

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 558
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v4

    int-to-long v10, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v4

    int-to-long v12, v4

    const/16 v4, 0x20

    shl-long/2addr v12, v4

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v22, v45
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    add-int/lit8 v45, v45, 0x1

    goto :goto_f

    .line 576
    .end local v20    # "elemWidth":I
    .end local v21    # "initLength":I
    .end local v22    # "values":[Ljava/lang/Object;
    .end local v33    # "BBBBBBBB":I
    .end local v45    # "j":I
    :pswitch_20
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->x2s(IIII)V

    goto/16 :goto_4

    .line 580
    :pswitch_21
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->x2x(III)V

    goto/16 :goto_4

    .line 584
    :pswitch_22
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v51

    .line 585
    .restart local v51    # "tmp":I
    move/from16 v0, v51

    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v7, v51, 0x8

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v7, v10}, Lcom/zte/privacy/DexOpcodeAdapter;->x3x(IIII)V

    goto/16 :goto_4

    .line 589
    .end local v51    # "tmp":I
    :pswitch_23
    and-int/lit8 v30, v6, 0xf

    .line 590
    .local v30, "g":I
    shr-int/lit8 v25, v6, 0x4

    .line 591
    .local v25, "a":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v31

    .line 592
    .local v31, "bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v53

    .line 593
    .local v53, "vvvv":I
    and-int/lit8 v26, v53, 0xf

    .line 594
    .local v26, "c":I
    shr-int/lit8 v4, v53, 0x4

    and-int/lit8 v27, v4, 0xf

    .line 595
    .local v27, "d":I
    shr-int/lit8 v4, v53, 0x8

    and-int/lit8 v28, v4, 0xf

    .line 596
    .local v28, "e":I
    shr-int/lit8 v29, v53, 0xc

    .local v29, "f":I
    move-object/from16 v23, p3

    move/from16 v24, v5

    .line 597
    invoke-virtual/range {v23 .. v31}, Lcom/zte/privacy/DexOpcodeAdapter;->x5c(IIIIIIII)V

    goto/16 :goto_4

    .line 601
    .end local v25    # "a":I
    .end local v26    # "c":I
    .end local v27    # "d":I
    .end local v28    # "e":I
    .end local v29    # "f":I
    .end local v30    # "g":I
    .end local v31    # "bbbb":I
    .end local v53    # "vvvv":I
    :pswitch_24
    and-int/lit8 v30, v6, 0xf

    .line 602
    .restart local v30    # "g":I
    shr-int/lit8 v25, v6, 0x4

    .line 603
    .restart local v25    # "a":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v31

    .line 604
    .restart local v31    # "bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v53

    .line 605
    .restart local v53    # "vvvv":I
    and-int/lit8 v26, v53, 0xf

    .line 606
    .restart local v26    # "c":I
    shr-int/lit8 v4, v53, 0x4

    and-int/lit8 v27, v4, 0xf

    .line 607
    .restart local v27    # "d":I
    shr-int/lit8 v4, v53, 0x8

    and-int/lit8 v28, v4, 0xf

    .line 608
    .restart local v28    # "e":I
    shr-int/lit8 v29, v53, 0xc

    .restart local v29    # "f":I
    move-object/from16 v23, p3

    move/from16 v24, v5

    .line 609
    invoke-virtual/range {v23 .. v31}, Lcom/zte/privacy/DexOpcodeAdapter;->x5mi(IIIIIIII)V

    goto/16 :goto_4

    .line 613
    .end local v25    # "a":I
    .end local v26    # "c":I
    .end local v27    # "d":I
    .end local v28    # "e":I
    .end local v29    # "f":I
    .end local v30    # "g":I
    .end local v31    # "bbbb":I
    .end local v53    # "vvvv":I
    :pswitch_25
    and-int/lit8 v30, v6, 0xf

    .line 614
    .restart local v30    # "g":I
    shr-int/lit8 v25, v6, 0x4

    .line 615
    .restart local v25    # "a":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v31

    .line 616
    .restart local v31    # "bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v53

    .line 617
    .restart local v53    # "vvvv":I
    and-int/lit8 v26, v53, 0xf

    .line 618
    .restart local v26    # "c":I
    shr-int/lit8 v4, v53, 0x4

    and-int/lit8 v27, v4, 0xf

    .line 619
    .restart local v27    # "d":I
    shr-int/lit8 v4, v53, 0x8

    and-int/lit8 v28, v4, 0xf

    .line 620
    .restart local v28    # "e":I
    shr-int/lit8 v29, v53, 0xc

    .restart local v29    # "f":I
    move-object/from16 v23, p3

    move/from16 v24, v5

    .line 621
    invoke-virtual/range {v23 .. v31}, Lcom/zte/privacy/DexOpcodeAdapter;->x5ms(IIIIIIII)V

    goto/16 :goto_4

    .line 625
    .end local v25    # "a":I
    .end local v26    # "c":I
    .end local v27    # "d":I
    .end local v28    # "e":I
    .end local v29    # "f":I
    .end local v30    # "g":I
    .end local v31    # "bbbb":I
    .end local v53    # "vvvv":I
    :pswitch_26
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->xrc(IIII)V

    goto/16 :goto_4

    .line 629
    :pswitch_27
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->xrmi(IIII)V

    goto/16 :goto_4

    .line 633
    :pswitch_28
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/zte/privacy/DexOpcodeAdapter;->xrms(IIII)V

    goto/16 :goto_4

    .line 637
    :pswitch_29
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v38

    .line 638
    .local v38, "bbbb_bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v36

    .line 639
    .local v36, "aaaa":I
    move-object/from16 v0, p3

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/zte/privacy/DexOpcodeAdapter;->x0sc(III)V

    goto/16 :goto_4

    .line 643
    .end local v36    # "aaaa":I
    .end local v38    # "bbbb_bbbb":I
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v38

    .line 644
    .restart local v38    # "bbbb_bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v36

    .line 645
    .restart local v36    # "aaaa":I
    move-object/from16 v0, p3

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/zte/privacy/DexOpcodeAdapter;->x1c(III)V

    goto/16 :goto_4

    .line 649
    .end local v36    # "aaaa":I
    .end local v38    # "bbbb_bbbb":I
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xLong(Lcom/zte/privacy/DataIn;)J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v10, v11}, Lcom/zte/privacy/DexOpcodeAdapter;->x1l(IIJ)V

    goto/16 :goto_4

    .line 653
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v40

    .line 654
    .local v40, "cccc_cccc":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v36

    .line 655
    .restart local v36    # "aaaa":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v31

    .line 656
    .restart local v31    # "bbbb":I
    move-object/from16 v0, p3

    move/from16 v1, v36

    move/from16 v2, v31

    move/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->x2c(IIII)V

    goto/16 :goto_4

    .line 660
    .end local v31    # "bbbb":I
    .end local v36    # "aaaa":I
    .end local v40    # "cccc_cccc":I
    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xUint(Lcom/zte/privacy/DataIn;)I

    move-result v38

    .line 661
    .restart local v38    # "bbbb_bbbb":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v36

    .line 662
    .restart local v36    # "aaaa":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v39

    .line 663
    .local v39, "cccc":I
    move-object/from16 v0, p3

    move/from16 v1, v36

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/zte/privacy/DexOpcodeAdapter;->xrc(IIII)V

    goto/16 :goto_4

    .line 668
    .end local v5    # "opcode":I
    .end local v6    # "uOpcodeH":I
    .end local v36    # "aaaa":I
    .end local v38    # "bbbb_bbbb":I
    .end local v39    # "cccc":I
    .end local v42    # "currentOffsetVisited":Z
    .end local v44    # "format":Lcom/zte/privacy/OpcodeFormat;
    .end local v52    # "uOpcodeL":I
    :cond_c
    :goto_10
    if-eqz v47, :cond_d

    .line 669
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/zte/privacy/DexOpcodeAdapter;->offset(I)V

    .line 670
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 671
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "nextLabelOffset":Ljava/lang/Integer;
    check-cast v47, Ljava/lang/Integer;

    .restart local v47    # "nextLabelOffset":Ljava/lang/Integer;
    goto :goto_10

    .line 676
    :cond_d
    return-void

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 387
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 494
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch

    .line 501
    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2c -> :sswitch_1
    .end sparse-switch

    .line 540
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method private findLabels(Lcom/zte/privacy/DataIn;I)V
    .locals 19
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "instruction_size"    # I

    .prologue
    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v1

    .line 76
    .local v1, "baseOffset":I
    invoke-direct/range {p0 .. p2}, Lcom/zte/privacy/DexCodeReader;->fixIssue130(Lcom/zte/privacy/DataIn;I)V

    .line 77
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v14

    sub-int/2addr v14, v1

    div-int/lit8 v2, v14, 0x2

    .local v2, "currentOffset":I
    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_3

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v8

    .line 80
    .local v8, "opcode":I
    shr-int/lit8 v12, v8, 0x8

    .line 82
    .local v12, "uOpcodeH":I
    and-int/lit16 v13, v8, 0xff

    .line 83
    .local v13, "uOpcodeL":I
    const/16 v14, 0xff

    if-eq v13, v14, :cond_0

    .line 84
    move v8, v13

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    iget v14, v14, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    invoke-static {v8, v14}, Lcom/zte/privacy/OpcodeFormat;->get(II)Lcom/zte/privacy/OpcodeFormat;

    move-result-object v5

    .line 90
    .local v5, "format":Lcom/zte/privacy/OpcodeFormat;
    sparse-switch v8, :sswitch_data_0

    .line 176
    :try_start_0
    invoke-virtual {v5}, Lcom/zte/privacy/OpcodeFormat;->getSize()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v14

    sub-int/2addr v14, v1

    div-int/lit8 v2, v14, 0x2

    goto :goto_0

    .line 92
    :sswitch_0
    int-to-byte v14, v12

    add-int/2addr v14, v2

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/zte/privacy/DexException;

    const-string v15, "while scan for label, Posotion :%04x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v15, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v14

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    goto :goto_1

    .line 110
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xInt(Lcom/zte/privacy/DataIn;)I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    goto :goto_1

    .line 115
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/DexCodeReader;->xInt(Lcom/zte/privacy/DataIn;)I

    move-result v7

    .line 116
    .local v7, "offset":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->push()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    add-int/lit8 v14, v7, -0x3

    mul-int/lit8 v14, v14, 0x2

    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    packed-switch v8, :pswitch_data_0

    .line 144
    :goto_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 121
    :pswitch_1
    const/4 v14, 0x2

    :try_start_5
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 122
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    .line 123
    .local v10, "switch_size":I
    mul-int/lit8 v14, v10, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 124
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v10, :cond_1

    .line 125
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 127
    :cond_1
    add-int/lit8 v14, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 144
    .end local v6    # "j":I
    .end local v10    # "switch_size":I
    :catchall_0
    move-exception v14

    :try_start_6
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 132
    :pswitch_2
    const/4 v14, 0x2

    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 133
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    .line 134
    .restart local v10    # "switch_size":I
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 135
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v10, :cond_2

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v11

    .line 137
    .local v11, "targetOffset":I
    add-int v14, v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 139
    .end local v11    # "targetOffset":I
    :cond_2
    add-int/lit8 v14, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/privacy/DexCodeReader;->order(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 150
    .end local v6    # "j":I
    .end local v7    # "offset":I
    .end local v10    # "switch_size":I
    :sswitch_4
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_1

    .line 155
    :pswitch_3
    :try_start_8
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    .line 156
    .restart local v10    # "switch_size":I
    mul-int/lit8 v14, v10, 0x4

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto/16 :goto_1

    .line 161
    .end local v10    # "switch_size":I
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v10

    .line 162
    .restart local v10    # "switch_size":I
    mul-int/lit8 v14, v10, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto/16 :goto_1

    .line 166
    .end local v10    # "switch_size":I
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    .line 167
    .local v4, "element_width":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v9

    .line 169
    .local v9, "size":I
    mul-int v14, v9, v4

    add-int/lit8 v14, v14, 0x1

    and-int/lit8 v14, v14, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/zte/privacy/DataIn;->skip(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 184
    .end local v4    # "element_width":I
    .end local v5    # "format":Lcom/zte/privacy/OpcodeFormat;
    .end local v8    # "opcode":I
    .end local v9    # "size":I
    .end local v12    # "uOpcodeH":I
    .end local v13    # "uOpcodeL":I
    :cond_3
    return-void

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
    .end sparse-switch

    .line 119
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private findTryCatch(Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexCodeVisitor;II)V
    .locals 21
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "dcv"    # Lcom/zte/privacy/DexCodeVisitor;
    .param p3, "tries_size"    # I
    .param p4, "insn_size"    # I

    .prologue
    .line 222
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v18

    mul-int/lit8 v19, p3, 0x8

    add-int v5, v18, v19

    .line 223
    .local v5, "encoded_catch_handler_list":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 224
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v15

    .line 225
    .local v15, "start_addr":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v11

    .line 226
    .local v11, "insn_count":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v9

    .line 227
    .local v9, "handler_offset":I
    move/from16 v0, p4

    if-le v15, v0, :cond_0

    .line 223
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 230
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 231
    add-int v6, v15, v11

    .line 232
    .local v6, "end":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 234
    add-int v18, v5, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "catchAll":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readLeb128()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 238
    .local v14, "listSize":I
    move v8, v14

    .line 239
    .local v8, "handlerCount":I
    if-gtz v14, :cond_1

    .line 240
    neg-int v14, v14

    .line 241
    add-int/lit8 v8, v14, 0x1

    .line 242
    const/4 v4, 0x1

    .line 244
    :cond_1
    new-array v13, v8, [Lcom/zte/privacy/DexLabel;

    .line 245
    .local v13, "labels":[Lcom/zte/privacy/DexLabel;
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 246
    .local v17, "types":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    if-ge v12, v14, :cond_2

    .line 247
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    .line 248
    .local v16, "type_id":I
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    .line 249
    .local v7, "handler":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v12

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/privacy/DexLabel;

    aput-object v18, v13, v12

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 254
    .end local v7    # "handler":I
    .end local v16    # "type_id":I
    :cond_2
    if-eqz v4, :cond_3

    .line 255
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    .line 256
    .restart local v7    # "handler":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zte/privacy/DexCodeReader;->order(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/privacy/DexLabel;

    aput-object v18, v13, v14

    .line 259
    .end local v7    # "handler":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zte/privacy/DexLabel;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v13, v3}, Lcom/zte/privacy/DexCodeVisitor;->visitTryCatch(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    goto/16 :goto_1

    .end local v8    # "handlerCount":I
    .end local v12    # "k":I
    .end local v13    # "labels":[Lcom/zte/privacy/DexLabel;
    .end local v14    # "listSize":I
    .end local v17    # "types":[Ljava/lang/String;
    :catchall_0
    move-exception v18

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v18

    .line 264
    .end local v4    # "catchAll":Z
    .end local v6    # "end":I
    .end local v9    # "handler_offset":I
    .end local v11    # "insn_count":I
    .end local v15    # "start_addr":I
    :cond_4
    return-void
.end method

.method private fixIssue130(Lcom/zte/privacy/DataIn;I)V
    .locals 7
    .param p1, "in"    # Lcom/zte/privacy/DataIn;
    .param p2, "instruction_size"    # I

    .prologue
    .line 201
    const/4 v5, 0x4

    if-ge p2, v5, :cond_0

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->getCurrentPosition()I

    move-result v0

    .line 205
    .local v0, "base":I
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v2

    .line 206
    .local v2, "opcode":I
    shr-int/lit8 v3, v2, 0x8

    .line 208
    .local v3, "uOpcodeH":I
    and-int/lit16 v4, v2, 0xff

    .line 209
    .local v4, "uOpcodeL":I
    const/16 v5, 0xff

    if-eq v4, v5, :cond_1

    .line 210
    move v2, v4

    .line 213
    :cond_1
    const/16 v5, 0x32

    if-ne v2, v5, :cond_2

    and-int/lit8 v5, v3, 0xf

    shr-int/lit8 v6, v3, 0x4

    if-ne v5, v6, :cond_2

    .line 214
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readShortx()I

    move-result v1

    .line 215
    .local v1, "offset":I
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, -0x4

    invoke-interface {p1, v5}, Lcom/zte/privacy/DataIn;->skip(I)V

    goto :goto_0

    .line 217
    .end local v1    # "offset":I
    :cond_2
    invoke-interface {p1, v0}, Lcom/zte/privacy/DataIn;->move(I)V

    goto :goto_0
.end method

.method private static xInt(Lcom/zte/privacy/DataIn;)I
    .locals 2
    .param p0, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    .line 687
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v0

    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static xLong(Lcom/zte/privacy/DataIn;)J
    .locals 5
    .param p0, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    .line 679
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v2

    int-to-long v0, v2

    .line 680
    .local v0, "rs":J
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 681
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 682
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 683
    return-wide v0
.end method

.method private static xUint(Lcom/zte/privacy/DataIn;)I
    .locals 2
    .param p0, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    .line 691
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v0

    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public accept(Lcom/zte/privacy/DexCodeVisitor;I)V
    .locals 29
    .param p1, "dcv"    # Lcom/zte/privacy/DexCodeVisitor;
    .param p2, "config"    # I

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/privacy/DexCodeReader;->in:Lcom/zte/privacy/DataIn;

    .line 274
    .local v12, "in":Lcom/zte/privacy/DataIn;
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v27

    .line 275
    .local v27, "total_registers_size":I
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v23

    .line 276
    .local v23, "in_register_size":I
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 277
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v28

    .line 278
    .local v28, "tries_size":I
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v21

    .line 279
    .local v21, "debug_off":I
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v14

    .line 281
    .local v14, "instruction_size":I
    move/from16 v0, v27

    new-array v0, v0, [Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    move-object/from16 v16, v0

    .line 286
    .local v16, "localVariables":[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
    sub-int v4, v27, v23

    .line 287
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/privacy/DexCodeReader;->method:Lcom/zte/privacy/Method;

    invoke-virtual {v3}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v26

    .line 288
    .local v26, "parameterTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/zte/privacy/DexCodeReader;->isStatic:Z

    if-nez v3, :cond_2

    .line 289
    move-object/from16 v0, v26

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 290
    .local v17, "args":[I
    new-instance v3, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "this"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/privacy/DexCodeReader;->method:Lcom/zte/privacy/Method;

    invoke-virtual {v8}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v16, v4

    .line 291
    const/4 v3, 0x0

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aput v4, v17, v3

    .line 292
    const/16 v18, 0x1

    .local v18, "args_index":I
    move v4, v6

    .line 297
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :goto_0
    move-object/from16 v20, v26

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    move v6, v4

    .end local v4    # "i":I
    .restart local v6    # "i":I
    move/from16 v19, v18

    .end local v18    # "args_index":I
    .local v19, "args_index":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    aget-object v10, v20, v22

    .line 298
    .local v10, "type":Ljava/lang/String;
    new-instance v5, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;

    const/4 v7, 0x0

    const/4 v8, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arg"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v16, v6

    .line 299
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "args_index":I
    .restart local v18    # "args_index":I
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "i":I
    .restart local v4    # "i":I
    aput v6, v17, v19

    .line 300
    const-string v3, "D"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "J"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 297
    :cond_1
    add-int/lit8 v22, v22, 0x1

    move v6, v4

    .end local v4    # "i":I
    .restart local v6    # "i":I
    move/from16 v19, v18

    .end local v18    # "args_index":I
    .restart local v19    # "args_index":I
    goto :goto_1

    .line 294
    .end local v6    # "i":I
    .end local v10    # "type":Ljava/lang/String;
    .end local v17    # "args":[I
    .end local v19    # "args_index":I
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .restart local v4    # "i":I
    :cond_2
    move-object/from16 v0, v26

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 295
    .restart local v17    # "args":[I
    const/16 v18, 0x0

    .restart local v18    # "args_index":I
    goto :goto_0

    .line 304
    .end local v4    # "i":I
    .end local v18    # "args_index":I
    .restart local v6    # "i":I
    .restart local v19    # "args_index":I
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v24    # "len$":I
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/DexCodeVisitor;->visitArguments(I[I)V

    .line 308
    if-lez v28, :cond_5

    .line 309
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->push()V

    .line 311
    mul-int/lit8 v3, v14, 0x2

    :try_start_0
    invoke-interface {v12, v3}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 312
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_4

    .line 313
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 315
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v12, v1, v2, v14}, Lcom/zte/privacy/DexCodeReader;->findTryCatch(Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexCodeVisitor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 321
    :cond_5
    if-eqz v21, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_6

    .line 322
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 324
    :try_start_1
    new-instance v11, Lcom/zte/privacy/DexDebugInfoReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    move-object/from16 v15, p0

    invoke-direct/range {v11 .. v17}, Lcom/zte/privacy/DexDebugInfoReader;-><init>(Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexFileReader;ILcom/zte/privacy/DexCodeReader;[Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;[I)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/zte/privacy/DexDebugInfoReader;->accept(Lcom/zte/privacy/DexCodeVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 330
    :cond_6
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->push()V

    .line 332
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/zte/privacy/DexCodeReader;->findLabels(Lcom/zte/privacy/DataIn;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 334
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 336
    new-instance v25, Lcom/zte/privacy/DexOpcodeAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/privacy/DexCodeReader;->dex:Lcom/zte/privacy/DexFileReader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v5, v1}, Lcom/zte/privacy/DexOpcodeAdapter;-><init>(Lcom/zte/privacy/DexFileReader;Ljava/util/Map;Lcom/zte/privacy/DexCodeVisitor;)V

    .line 337
    .local v25, "n":Lcom/zte/privacy/DexOpcodeAdapter;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v12, v14, v1}, Lcom/zte/privacy/DexCodeReader;->acceptInsn(Lcom/zte/privacy/DataIn;ILcom/zte/privacy/DexOpcodeAdapter;)V

    .line 338
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DexCodeVisitor;->visitEnd()V

    .line 339
    return-void

    .line 317
    .end local v25    # "n":Lcom/zte/privacy/DexOpcodeAdapter;
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v3

    .line 326
    :catchall_1
    move-exception v3

    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v3

    .line 334
    :catchall_2
    move-exception v3

    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v3
.end method

.method order(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 701
    iget-object v0, p0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/zte/privacy/DexCodeReader;->labels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zte/privacy/DexLabel;

    invoke-direct {v2, p1}, Lcom/zte/privacy/DexLabel;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_0
    return-void
.end method
