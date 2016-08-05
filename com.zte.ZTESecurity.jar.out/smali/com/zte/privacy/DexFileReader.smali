.class public Lcom/zte/privacy/DexFileReader;
.super Ljava/lang/Object;
.source "DexFileReader.java"


# static fields
.field private static final DEFAULT_API_LEVEL:I = 0xd

.field private static final DEX_FILE_MAGIC:[B

.field static final ENDIAN_CONSTANT:I = 0x12345678

.field private static final ODEX_FILE_MAGIC:[B

.field static final REVERSE_ENDIAN_CONSTANT:I = 0x78563412

.field public static final SKIP_ANNOTATION:I = 0x8

.field public static final SKIP_CODE:I = 0x4

.field public static final SKIP_DEBUG:I = 0x1

.field public static final SKIP_FIELD_CONSTANT:I = 0x10

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final VERSION_035:[B

.field private static final VERSION_036:[B

.field private static final isLittleEndian:Z = true

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field apiLevel:I

.field private apiLevelSetted:Z

.field private class_defs_off:I

.field private class_defs_size:I

.field private field_ids_off:I

.field private field_ids_size:I

.field private in:Lcom/zte/privacy/DataIn;

.field private method_ids_off:I

.field private method_ids_size:I

.field private final odex:Z

.field private odex_depsOffset:I

.field private odex_in:Lcom/zte/privacy/DataIn;

.field private proto_ids_off:I

.field private proto_ids_size:I

.field private string_ids_off:I

.field private string_ids_size:I

.field private type_ids_off:I

.field private type_ids_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 59
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/privacy/DexFileReader;->DEX_FILE_MAGIC:[B

    .line 60
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/privacy/DexFileReader;->ODEX_FILE_MAGIC:[B

    .line 61
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/privacy/DexFileReader;->VERSION_035:[B

    .line 62
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/privacy/DexFileReader;->VERSION_036:[B

    .line 69
    const-class v0, Lcom/zte/privacy/DexFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/DexFileReader;->log:Ljava/util/logging/Logger;

    .line 549
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/DexFileReader;->UTF8:Ljava/nio/charset/Charset;

    return-void

    .line 59
    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
    .end array-data

    .line 60
    :array_1
    .array-data 1
        0x64t
        0x65t
        0x79t
    .end array-data

    .line 61
    :array_2
    .array-data 1
        0x30t
        0x33t
        0x35t
    .end array-data

    .line 62
    :array_3
    .array-data 1
        0x30t
        0x33t
        0x36t
    .end array-data
.end method

.method public constructor <init>(Lcom/zte/privacy/DataIn;)V
    .locals 9
    .param p1, "in"    # Lcom/zte/privacy/DataIn;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v5, 0xd

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    .line 107
    iput-boolean v6, p0, Lcom/zte/privacy/DexFileReader;->apiLevelSetted:Z

    .line 152
    invoke-interface {p1, v6}, Lcom/zte/privacy/DataIn;->move(I)V

    .line 153
    invoke-interface {p1, v8}, Lcom/zte/privacy/DataIn;->readBytes(I)[B

    move-result-object v3

    .line 155
    .local v3, "magic":[B
    sget-object v5, Lcom/zte/privacy/DexFileReader;->DEX_FILE_MAGIC:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iput-boolean v6, p0, Lcom/zte/privacy/DexFileReader;->odex:Z

    .line 163
    :goto_0
    invoke-interface {p1, v7}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 164
    invoke-interface {p1, v8}, Lcom/zte/privacy/DataIn;->readBytes(I)[B

    move-result-object v4

    .line 165
    .local v4, "version":[B
    sget-object v5, Lcom/zte/privacy/DexFileReader;->VERSION_035:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/zte/privacy/DexFileReader;->VERSION_036:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    new-instance v5, Lcom/zte/privacy/DexException;

    const-string v6, "not support version."

    invoke-direct {v5, v6}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    .end local v4    # "version":[B
    :cond_0
    sget-object v5, Lcom/zte/privacy/DexFileReader;->ODEX_FILE_MAGIC:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    iput-boolean v7, p0, Lcom/zte/privacy/DexFileReader;->odex:Z

    .line 159
    iput-object p1, p0, Lcom/zte/privacy/DexFileReader;->odex_in:Lcom/zte/privacy/DataIn;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v5, Lcom/zte/privacy/DexException;

    const-string v6, "not support magic."

    invoke-direct {v5, v6}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    .restart local v4    # "version":[B
    :cond_2
    invoke-interface {p1, v7}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 170
    iget-boolean v5, p0, Lcom/zte/privacy/DexFileReader;->odex:Z

    if-eqz v5, :cond_3

    .line 171
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v0

    .line 172
    .local v0, "base":I
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 173
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->odex_depsOffset:I

    .line 174
    new-instance v2, Lcom/zte/privacy/OffsetedDataIn;

    invoke-direct {v2, p1, v0}, Lcom/zte/privacy/OffsetedDataIn;-><init>(Lcom/zte/privacy/DataIn;I)V

    .line 175
    .end local p1    # "in":Lcom/zte/privacy/DataIn;
    .local v2, "in":Lcom/zte/privacy/DataIn;
    const/16 v5, 0x8

    invoke-interface {v2, v5}, Lcom/zte/privacy/DataIn;->skip(I)V

    move-object p1, v2

    .line 181
    .end local v0    # "base":I
    .end local v2    # "in":Lcom/zte/privacy/DataIn;
    .restart local p1    # "in":Lcom/zte/privacy/DataIn;
    :cond_3
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 183
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v1

    .line 184
    .local v1, "endian_tag":I
    const v5, 0x12345678

    if-eq v1, v5, :cond_4

    .line 185
    new-instance v5, Lcom/zte/privacy/DexException;

    const-string v6, "not support endian_tag"

    invoke-direct {v5, v6}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_4
    iput-object p1, p0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 192
    const/16 v5, 0xc

    invoke-interface {p1, v5}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 194
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->string_ids_size:I

    .line 195
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->string_ids_off:I

    .line 196
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->type_ids_size:I

    .line 197
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->type_ids_off:I

    .line 198
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->proto_ids_size:I

    .line 199
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->proto_ids_off:I

    .line 200
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->field_ids_size:I

    .line 201
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->field_ids_off:I

    .line 202
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->method_ids_size:I

    .line 203
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->method_ids_off:I

    .line 204
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->class_defs_size:I

    .line 205
    invoke-interface {p1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v5

    iput v5, p0, Lcom/zte/privacy/DexFileReader;->class_defs_off:I

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Lcom/zte/ZTESecurity/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/DexFileReader;-><init>([B)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1}, Lcom/zte/ZTESecurity/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/DexFileReader;-><init>([B)V

    .line 252
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 229
    invoke-static {p1}, Lcom/zte/privacy/DexFileReader;->opDataIn([B)Lcom/zte/privacy/DataIn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/DexFileReader;-><init>(Lcom/zte/privacy/DataIn;)V

    .line 230
    return-void
.end method

.method private acceptClass(Lcom/zte/privacy/DexFileVisitor;Lcom/zte/privacy/DexClassVisitor;Ljava/lang/String;I)V
    .locals 39
    .param p1, "dv"    # Lcom/zte/privacy/DexFileVisitor;
    .param p2, "dcv"    # Lcom/zte/privacy/DexClassVisitor;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "config"    # I

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    move-object/from16 v25, v0

    .line 334
    .local v25, "in":Lcom/zte/privacy/DataIn;
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v35

    .line 335
    .local v35, "source_file_idx":I
    and-int/lit8 v4, p4, 0x1

    if-nez v4, :cond_0

    .line 337
    const/4 v4, -0x1

    move/from16 v0, v35

    if-eq v0, v4, :cond_0

    .line 338
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/zte/privacy/DexClassVisitor;->visitSource(Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v15

    .line 346
    .local v15, "annotations_off":I
    and-int/lit8 v4, p4, 0x8

    if-nez v4, :cond_6

    .line 348
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v7, "fieldAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v27, "methodAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v31, "paramAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v15, :cond_5

    .line 352
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 354
    :try_start_0
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v16

    .line 355
    .local v16, "class_annotations_off":I
    if-eqz v16, :cond_1

    .line 356
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/zte/privacy/DexAnnotationReader;->accept(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexAnnotationAble;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    .line 366
    :cond_1
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v21

    .line 367
    .local v21, "field_annotation_size":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v29

    .line 368
    .local v29, "method_annotation_size":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v33

    .line 369
    .local v33, "parameter_annotation_size":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 370
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v23

    .line 371
    .local v23, "field_idx":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v22

    .line 372
    .local v22, "field_annotations_offset":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 369
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 359
    .end local v21    # "field_annotation_size":I
    .end local v22    # "field_annotations_offset":I
    .end local v23    # "field_idx":I
    .end local v24    # "i":I
    .end local v29    # "method_annotation_size":I
    .end local v33    # "parameter_annotation_size":I
    :catch_0
    move-exception v20

    .line 360
    .local v20, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error on reading Annotation of class "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    .end local v16    # "class_annotations_off":I
    :catchall_1
    move-exception v4

    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    throw v4

    .line 374
    .restart local v16    # "class_annotations_off":I
    .restart local v21    # "field_annotation_size":I
    .restart local v24    # "i":I
    .restart local v29    # "method_annotation_size":I
    .restart local v33    # "parameter_annotation_size":I
    :cond_2
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 375
    :try_start_5
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v30

    .line 376
    .local v30, "method_idx":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v28

    .line 377
    .local v28, "method_annotation_offset":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 379
    .end local v28    # "method_annotation_offset":I
    .end local v30    # "method_idx":I
    :cond_3
    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    .line 380
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v30

    .line 381
    .restart local v30    # "method_idx":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v32

    .line 382
    .local v32, "parameter_annotation_offset":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 379
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 385
    .end local v30    # "method_idx":I
    .end local v32    # "parameter_annotation_offset":I
    :cond_4
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    .line 393
    .end local v16    # "class_annotations_off":I
    .end local v21    # "field_annotation_size":I
    .end local v24    # "i":I
    .end local v29    # "method_annotation_size":I
    .end local v33    # "parameter_annotation_size":I
    :cond_5
    :goto_3
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v17

    .line 395
    .local v17, "class_data_off":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v37

    .line 397
    .local v37, "static_values_off":I
    if-eqz v17, :cond_e

    .line 398
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 400
    :try_start_6
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v36, v0

    .line 401
    .local v36, "static_fields":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v26, v0

    .line 402
    .local v26, "instance_fields":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v19, v0

    .line 403
    .local v19, "direct_methods":I
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v38, v0

    .line 405
    .local v38, "virtual_methods":I
    const/4 v5, 0x0

    .line 407
    .local v5, "lastIndex":I
    const/16 v18, 0x0

    .line 408
    .local v18, "constant":[Ljava/lang/Object;
    and-int/lit8 v4, p4, 0x10

    if-nez v4, :cond_8

    .line 409
    if-eqz v37, :cond_8

    .line 410
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 412
    :try_start_7
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v34, v0

    .line 413
    .local v34, "size":I
    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 414
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/zte/privacy/Constant;->ReadConstant(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v18, v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 414
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 389
    .end local v5    # "lastIndex":I
    .end local v7    # "fieldAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "class_data_off":I
    .end local v18    # "constant":[Ljava/lang/Object;
    .end local v19    # "direct_methods":I
    .end local v24    # "i":I
    .end local v26    # "instance_fields":I
    .end local v27    # "methodAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v31    # "paramAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v34    # "size":I
    .end local v36    # "static_fields":I
    .end local v37    # "static_values_off":I
    .end local v38    # "virtual_methods":I
    :cond_6
    const/4 v7, 0x0

    .line 390
    .restart local v7    # "fieldAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .line 391
    .restart local v27    # "methodAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v31, 0x0

    .restart local v31    # "paramAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 418
    .restart local v5    # "lastIndex":I
    .restart local v17    # "class_data_off":I
    .restart local v18    # "constant":[Ljava/lang/Object;
    .restart local v19    # "direct_methods":I
    .restart local v24    # "i":I
    .restart local v26    # "instance_fields":I
    .restart local v34    # "size":I
    .restart local v36    # "static_fields":I
    .restart local v37    # "static_values_off":I
    .restart local v38    # "virtual_methods":I
    :cond_7
    :try_start_8
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    .line 422
    .end local v24    # "i":I
    .end local v34    # "size":I
    :cond_8
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    .line 423
    const/4 v8, 0x0

    .line 424
    .local v8, "value":Ljava/lang/Object;
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_9

    .line 425
    aget-object v8, v18, v24

    .end local v8    # "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v9, p4

    .line 427
    invoke-virtual/range {v4 .. v9}, Lcom/zte/privacy/DexFileReader;->acceptField(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/lang/Object;I)I

    move-result v5

    .line 422
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 418
    .end local v24    # "i":I
    :catchall_2
    move-exception v4

    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 446
    .end local v5    # "lastIndex":I
    .end local v18    # "constant":[Ljava/lang/Object;
    .end local v19    # "direct_methods":I
    .end local v26    # "instance_fields":I
    .end local v36    # "static_fields":I
    .end local v38    # "virtual_methods":I
    :catchall_3
    move-exception v4

    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    throw v4

    .line 430
    .restart local v5    # "lastIndex":I
    .restart local v18    # "constant":[Ljava/lang/Object;
    .restart local v19    # "direct_methods":I
    .restart local v24    # "i":I
    .restart local v26    # "instance_fields":I
    .restart local v36    # "static_fields":I
    .restart local v38    # "virtual_methods":I
    :cond_a
    const/4 v5, 0x0

    .line 431
    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 432
    const/4 v13, 0x0

    move-object/from16 v9, p0

    move v10, v5

    move-object/from16 v11, p2

    move-object v12, v7

    move/from16 v14, p4

    :try_start_9
    invoke-virtual/range {v9 .. v14}, Lcom/zte/privacy/DexFileReader;->acceptField(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/lang/Object;I)I

    move-result v5

    .line 431
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 434
    :cond_b
    const/4 v5, 0x0

    .line 435
    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v9, p0

    move v10, v5

    move-object/from16 v11, p2

    move-object/from16 v12, v27

    move-object/from16 v13, v31

    move/from16 v14, p4

    .line 436
    invoke-virtual/range {v9 .. v14}, Lcom/zte/privacy/DexFileReader;->acceptMethod(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/util/Map;I)I

    move-result v5

    .line 435
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 439
    :cond_c
    const/4 v5, 0x0

    .line 440
    const/16 v24, 0x0

    :goto_8
    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    move-object/from16 v9, p0

    move v10, v5

    move-object/from16 v11, p2

    move-object/from16 v12, v27

    move-object/from16 v13, v31

    move/from16 v14, p4

    .line 441
    invoke-virtual/range {v9 .. v14}, Lcom/zte/privacy/DexFileReader;->acceptMethod(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/util/Map;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v5

    .line 440
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 446
    :cond_d
    invoke-interface/range {v25 .. v25}, Lcom/zte/privacy/DataIn;->pop()V

    .line 449
    .end local v5    # "lastIndex":I
    .end local v18    # "constant":[Ljava/lang/Object;
    .end local v19    # "direct_methods":I
    .end local v24    # "i":I
    .end local v26    # "instance_fields":I
    .end local v36    # "static_fields":I
    .end local v38    # "virtual_methods":I
    :cond_e
    invoke-interface/range {p2 .. p2}, Lcom/zte/privacy/DexClassVisitor;->visitEnd()V

    .line 450
    return-void
.end method

.method private static opDataIn([B)Lcom/zte/privacy/DataIn;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lcom/zte/privacy/ArrayDataIn;

    invoke-static {p0}, Lcom/zte/privacy/DexFileReader;->readDex([B)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/zte/privacy/ArrayDataIn;-><init>([BZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 216
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readDex(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lcom/zte/ZTESecurity/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/privacy/DexFileReader;->readDex([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static readDex([B)[B
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 118
    const-string v2, "de"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    .end local p0    # "data":[B
    :goto_0
    return-object p0

    .line 120
    .restart local p0    # "data":[B
    :cond_0
    const-string v2, "PK"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :try_start_0
    const-string v2, "org.apache.commons.compress.archivers.zip.ZipArchiveInputStream"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    new-instance v1, Lcom/zte/privacy/CCZipExtractor;

    invoke-direct {v1}, Lcom/zte/privacy/CCZipExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v1, "ze":Lcom/zte/privacy/ZipExtractor;
    :goto_1
    const-string v2, "classes.dex"

    invoke-virtual {v1, p0, v2}, Lcom/zte/privacy/ZipExtractor;->extract([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 126
    .end local v1    # "ze":Lcom/zte/privacy/ZipExtractor;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/zte/privacy/ZipExtractor;

    invoke-direct {v1}, Lcom/zte/privacy/ZipExtractor;-><init>()V

    .restart local v1    # "ze":Lcom/zte/privacy/ZipExtractor;
    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ze":Lcom/zte/privacy/ZipExtractor;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "the src file not a .dex, .odex or zip file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public accept(Lcom/zte/privacy/DexFileVisitor;)V
    .locals 1
    .param p1, "dv"    # Lcom/zte/privacy/DexFileVisitor;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/privacy/DexFileReader;->accept(Lcom/zte/privacy/DexFileVisitor;I)V

    .line 261
    return-void
.end method

.method public accept(Lcom/zte/privacy/DexFileVisitor;I)V
    .locals 22
    .param p1, "dv"    # Lcom/zte/privacy/DexFileVisitor;
    .param p2, "config"    # I

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/privacy/DexFileReader;->odex:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/privacy/DexFileReader;->apiLevelSetted:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 274
    sget-object v17, Lcom/zte/privacy/DexFileReader;->log:Ljava/util/logging/Logger;

    const-string v18, "read an odex file without setting the apiLevel, use 13 as default."

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/privacy/DexFileReader;->odex:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/zte/privacy/OdexFileVisitor;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/privacy/DexFileReader;->odex_in:Lcom/zte/privacy/DataIn;

    .local v9, "in":Lcom/zte/privacy/DataIn;
    move-object/from16 v13, p1

    .line 279
    check-cast v13, Lcom/zte/privacy/OdexFileVisitor;

    .line 280
    .local v13, "odv":Lcom/zte/privacy/OdexFileVisitor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/privacy/DexFileReader;->odex_depsOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 282
    const/16 v17, 0xc

    :try_start_0
    move/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 283
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v14

    .line 284
    .local v14, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_1

    .line 285
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v12

    .line 286
    .local v12, "length":I
    new-instance v17, Ljava/lang/String;

    invoke-interface {v9, v12}, Lcom/zte/privacy/DataIn;->readBytes(I)[B

    move-result-object v18

    const/16 v19, 0x0

    add-int/lit8 v20, v12, -0x1

    sget-object v21, Lcom/zte/privacy/DexFileReader;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct/range {v17 .. v21}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/zte/privacy/DataIn;->readBytes(I)[B

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/zte/privacy/OdexFileVisitor;->visitDepedence(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    .end local v12    # "length":I
    :cond_1
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    .line 293
    .end local v7    # "i":I
    .end local v9    # "in":Lcom/zte/privacy/DataIn;
    .end local v13    # "odv":Lcom/zte/privacy/OdexFileVisitor;
    .end local v14    # "size":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 294
    .restart local v9    # "in":Lcom/zte/privacy/DataIn;
    const/4 v4, 0x0

    .local v4, "cid":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/privacy/DexFileReader;->class_defs_size:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/privacy/DexFileReader;->class_defs_off:I

    move/from16 v17, v0

    mul-int/lit8 v18, v4, 0x20

    add-int v8, v17, v18

    .line 296
    .local v8, "idxOffset":I
    invoke-interface {v9, v8}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 297
    const/4 v5, 0x0

    .line 299
    .local v5, "className":Ljava/lang/String;
    :try_start_1
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v3

    .line 301
    .local v3, "access_flags":I
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v16

    .line 302
    .local v16, "superclass_idx":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v15, 0x0

    .line 304
    .local v15, "superClassName":Ljava/lang/String;
    :goto_2
    const/4 v10, 0x0

    .line 306
    .local v10, "interfaceNames":[Ljava/lang/String;
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v11

    .line 307
    .local v11, "interfaces_off":I
    if-eqz v11, :cond_5

    .line 308
    invoke-interface {v9, v11}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 310
    :try_start_2
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v14

    .line 311
    .restart local v14    # "size":I
    new-array v10, v14, [Ljava/lang/String;

    .line 312
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v14, :cond_4

    .line 313
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 289
    .end local v3    # "access_flags":I
    .end local v4    # "cid":I
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "idxOffset":I
    .end local v10    # "interfaceNames":[Ljava/lang/String;
    .end local v11    # "interfaces_off":I
    .end local v14    # "size":I
    .end local v15    # "superClassName":Ljava/lang/String;
    .end local v16    # "superclass_idx":I
    .restart local v13    # "odv":Lcom/zte/privacy/OdexFileVisitor;
    :catchall_0
    move-exception v17

    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    throw v17

    .line 302
    .end local v13    # "odv":Lcom/zte/privacy/OdexFileVisitor;
    .restart local v3    # "access_flags":I
    .restart local v4    # "cid":I
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v8    # "idxOffset":I
    .restart local v16    # "superclass_idx":I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 316
    .restart local v7    # "i":I
    .restart local v10    # "interfaceNames":[Ljava/lang/String;
    .restart local v11    # "interfaces_off":I
    .restart local v14    # "size":I
    .restart local v15    # "superClassName":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    .line 320
    .end local v7    # "i":I
    .end local v14    # "size":I
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5, v15, v10}, Lcom/zte/privacy/DexFileVisitor;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;

    move-result-object v6

    .line 321
    .local v6, "dcv":Lcom/zte/privacy/DexClassVisitor;
    if-eqz v6, :cond_6

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/zte/privacy/DexFileReader;->acceptClass(Lcom/zte/privacy/DexFileVisitor;Lcom/zte/privacy/DexClassVisitor;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 326
    :cond_6
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 316
    .end local v6    # "dcv":Lcom/zte/privacy/DexClassVisitor;
    :catchall_1
    move-exception v17

    :try_start_4
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 326
    .end local v3    # "access_flags":I
    .end local v10    # "interfaceNames":[Ljava/lang/String;
    .end local v11    # "interfaces_off":I
    .end local v15    # "superClassName":Ljava/lang/String;
    .end local v16    # "superclass_idx":I
    :catchall_2
    move-exception v17

    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    throw v17

    .line 329
    .end local v5    # "className":Ljava/lang/String;
    .end local v8    # "idxOffset":I
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/DexFileVisitor;->visitEnd()V

    .line 330
    return-void
.end method

.method acceptField(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 15
    .param p1, "lastIndex"    # I
    .param p2, "dcv"    # Lcom/zte/privacy/DexClassVisitor;
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "config"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zte/privacy/DexClassVisitor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 590
    .local p3, "fieldAnnotationPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 591
    .local v9, "in":Lcom/zte/privacy/DataIn;
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v4, v10

    .line 592
    .local v4, "diff":I
    add-int v8, p1, v4

    .line 593
    .local v8, "field_id":I
    invoke-virtual {p0, v8}, Lcom/zte/privacy/DexFileReader;->getField(I)Lcom/zte/privacy/Field;

    move-result-object v6

    .line 594
    .local v6, "field":Lcom/zte/privacy/Field;
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v10

    long-to-int v7, v10

    .line 596
    .local v7, "field_access_flags":I
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v0, v7, v6, v1}, Lcom/zte/privacy/DexClassVisitor;->visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;

    move-result-object v3

    .line 597
    .local v3, "dfv":Lcom/zte/privacy/DexFieldVisitor;
    if-eqz v3, :cond_1

    .line 598
    and-int/lit8 v10, p5, 0x8

    if-nez v10, :cond_0

    .line 599
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 600
    .local v2, "annotation_offset":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 601
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 603
    :try_start_0
    invoke-static {p0, v9, v3}, Lcom/zte/privacy/DexAnnotationReader;->accept(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexAnnotationAble;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    .line 611
    .end local v2    # "annotation_offset":Ljava/lang/Integer;
    :cond_0
    invoke-interface {v3}, Lcom/zte/privacy/DexFieldVisitor;->visitEnd()V

    .line 614
    :cond_1
    return v8

    .line 604
    .restart local v2    # "annotation_offset":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .line 605
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v10, Lcom/zte/privacy/DexException;

    const-string v11, "while accept annotation in field:%s."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Lcom/zte/privacy/Field;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v5, v11, v12}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-interface {v9}, Lcom/zte/privacy/DataIn;->pop()V

    throw v10
.end method

.method acceptMethod(ILcom/zte/privacy/DexClassVisitor;Ljava/util/Map;Ljava/util/Map;I)I
    .locals 24
    .param p1, "lastIndex"    # I
    .param p2, "cv"    # Lcom/zte/privacy/DexClassVisitor;
    .param p5, "config"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zte/privacy/DexClassVisitor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 628
    .local p3, "methodAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, "parameterAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 629
    .local v12, "in":Lcom/zte/privacy/DataIn;
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 630
    .local v7, "diff":I
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 631
    .local v15, "method_access_flags":I
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .line 632
    .local v5, "code_off":I
    add-int v16, p1, v7

    .line 633
    .local v16, "method_id":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->getMethod(I)Lcom/zte/privacy/Method;

    move-result-object v14

    .line 635
    .local v14, "method":Lcom/zte/privacy/Method;
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v14}, Lcom/zte/privacy/DexClassVisitor;->visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;

    move-result-object v8

    .line 636
    .local v8, "dmv":Lcom/zte/privacy/DexMethodVisitor;
    if-eqz v8, :cond_6

    .line 637
    and-int/lit8 v19, p5, 0x8

    if-nez v19, :cond_3

    .line 638
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 639
    .local v4, "annotation_offset":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 640
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 642
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v12, v8}, Lcom/zte/privacy/DexAnnotationReader;->accept(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexAnnotationAble;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :try_start_2
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 649
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 650
    .local v17, "parameter_annotation_offset":Ljava/lang/Integer;
    if-eqz v17, :cond_3

    .line 651
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 653
    :try_start_3
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v18

    .line 654
    .local v18, "sizeJ":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 655
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v11

    .line 656
    .local v11, "field_annotation_offset":I
    invoke-interface {v12, v11}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 658
    :try_start_4
    invoke-interface {v8, v13}, Lcom/zte/privacy/DexMethodVisitor;->visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;

    move-result-object v9

    .line 659
    .local v9, "dpav":Lcom/zte/privacy/DexAnnotationAble;
    if-eqz v9, :cond_1

    .line 660
    move-object/from16 v0, p0

    invoke-static {v0, v12, v9}, Lcom/zte/privacy/DexAnnotationReader;->accept(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;Lcom/zte/privacy/DexAnnotationAble;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 667
    :cond_1
    :try_start_5
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 654
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 643
    .end local v9    # "dpav":Lcom/zte/privacy/DexAnnotationAble;
    .end local v11    # "field_annotation_offset":I
    .end local v13    # "j":I
    .end local v17    # "parameter_annotation_offset":Ljava/lang/Integer;
    .end local v18    # "sizeJ":I
    :catch_0
    move-exception v10

    .line 644
    .local v10, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v19, Lcom/zte/privacy/DexException;

    const-string v20, "while accept annotation in method:%s."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 646
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    :try_start_7
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 693
    .end local v4    # "annotation_offset":Ljava/lang/Integer;
    .end local v8    # "dmv":Lcom/zte/privacy/DexMethodVisitor;
    :catch_1
    move-exception v10

    .line 694
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v19, Lcom/zte/privacy/DexException;

    const-string v20, "while accept method:[%s]"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v19

    .line 662
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "annotation_offset":Ljava/lang/Integer;
    .restart local v8    # "dmv":Lcom/zte/privacy/DexMethodVisitor;
    .restart local v11    # "field_annotation_offset":I
    .restart local v13    # "j":I
    .restart local v17    # "parameter_annotation_offset":Ljava/lang/Integer;
    .restart local v18    # "sizeJ":I
    :catch_2
    move-exception v10

    .line 663
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v19, Lcom/zte/privacy/DexException;

    const-string v20, "while accept parameter annotation in method:[%s], parameter:[%d]"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 667
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    :try_start_9
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 671
    .end local v11    # "field_annotation_offset":I
    .end local v13    # "j":I
    .end local v18    # "sizeJ":I
    :catchall_2
    move-exception v19

    :try_start_a
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v19

    .restart local v13    # "j":I
    .restart local v18    # "sizeJ":I
    :cond_2
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 675
    .end local v4    # "annotation_offset":Ljava/lang/Integer;
    .end local v13    # "j":I
    .end local v17    # "parameter_annotation_offset":Ljava/lang/Integer;
    .end local v18    # "sizeJ":I
    :cond_3
    if-eqz v5, :cond_5

    and-int/lit8 v19, p5, 0x4

    if-nez v19, :cond_5

    .line 676
    invoke-interface {v12, v5}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 678
    :try_start_b
    invoke-interface {v8}, Lcom/zte/privacy/DexMethodVisitor;->visitCode()Lcom/zte/privacy/DexCodeVisitor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v6

    .line 679
    .local v6, "dcv":Lcom/zte/privacy/DexCodeVisitor;
    if-eqz v6, :cond_4

    .line 681
    :try_start_c
    new-instance v20, Lcom/zte/privacy/DexCodeReader;

    and-int/lit8 v19, v15, 0x8

    if-eqz v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v12, v2, v14}, Lcom/zte/privacy/DexCodeReader;-><init>(Lcom/zte/privacy/DexFileReader;Lcom/zte/privacy/DataIn;ZLcom/zte/privacy/Method;)V

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Lcom/zte/privacy/DexCodeReader;->accept(Lcom/zte/privacy/DexCodeVisitor;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 688
    :cond_4
    :try_start_d
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    .line 691
    .end local v6    # "dcv":Lcom/zte/privacy/DexCodeVisitor;
    :cond_5
    invoke-interface {v8}, Lcom/zte/privacy/DexMethodVisitor;->visitEnd()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 697
    :cond_6
    return v16

    .line 681
    .restart local v6    # "dcv":Lcom/zte/privacy/DexCodeVisitor;
    :cond_7
    const/16 v19, 0x0

    goto :goto_1

    .line 683
    :catch_3
    move-exception v10

    .line 684
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_e
    new-instance v19, Lcom/zte/privacy/DexException;

    const-string v20, "while accept code in method:[%s]"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Lcom/zte/privacy/Method;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 688
    .end local v6    # "dcv":Lcom/zte/privacy/DexCodeVisitor;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v19

    :try_start_f
    invoke-interface {v12}, Lcom/zte/privacy/DataIn;->pop()V

    throw v19
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
.end method

.method public final getClassSize()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/zte/privacy/DexFileReader;->class_defs_size:I

    return v0
.end method

.method getField(I)Lcom/zte/privacy/Field;
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 453
    iget v5, p0, Lcom/zte/privacy/DexFileReader;->field_ids_size:I

    if-ge p1, v5, :cond_0

    if-gez p1, :cond_1

    .line 454
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Id out of bound"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 457
    .local v1, "in":Lcom/zte/privacy/DataIn;
    iget v5, p0, Lcom/zte/privacy/DexFileReader;->field_ids_off:I

    mul-int/lit8 v6, p1, 0x8

    add-int v0, v5, v6

    .line 458
    .local v0, "idxOffset":I
    invoke-interface {v1, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 460
    :try_start_0
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v3

    .line 461
    .local v3, "owner_idx":I
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v4

    .line 462
    .local v4, "type_idx":I
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v2

    .line 463
    .local v2, "name_idx":I
    new-instance v5, Lcom/zte/privacy/Field;

    invoke-virtual {p0, v3}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/zte/privacy/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->pop()V

    return-object v5

    .end local v2    # "name_idx":I
    .end local v3    # "owner_idx":I
    .end local v4    # "type_idx":I
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v5
.end method

.method getMethod(I)Lcom/zte/privacy/Method;
    .locals 16
    .param p1, "method_idx"    # I

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/privacy/DexFileReader;->method_ids_size:I

    move/from16 v0, p1

    if-ge v0, v13, :cond_0

    if-gez p1, :cond_1

    .line 472
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Id out of bound"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 474
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 475
    .local v3, "in":Lcom/zte/privacy/DataIn;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/privacy/DexFileReader;->method_ids_off:I

    mul-int/lit8 v14, p1, 0x8

    add-int v2, v13, v14

    .line 476
    .local v2, "idxOffset":I
    invoke-interface {v3, v2}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 478
    :try_start_0
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v5

    .line 479
    .local v5, "owner_idx":I
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v8

    .line 480
    .local v8, "proto_idx":I
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v4

    .line 484
    .local v4, "name_idx":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/privacy/DexFileReader;->proto_ids_size:I

    if-lt v8, v13, :cond_2

    .line 485
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Id out of bound"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v4    # "name_idx":I
    .end local v5    # "owner_idx":I
    .end local v8    # "proto_idx":I
    :catchall_0
    move-exception v13

    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    throw v13

    .line 487
    .restart local v4    # "name_idx":I
    .restart local v5    # "owner_idx":I
    .restart local v8    # "proto_idx":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/privacy/DexFileReader;->proto_ids_off:I

    mul-int/lit8 v14, v8, 0xc

    add-int v9, v13, v14

    .line 488
    .local v9, "proto_off":I
    invoke-interface {v3, v9}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    const/4 v13, 0x4

    :try_start_2
    invoke-interface {v3, v13}, Lcom/zte/privacy/DataIn;->skip(I)V

    .line 491
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v11

    .line 492
    .local v11, "return_type_idx":I
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v7

    .line 494
    .local v7, "parameters_off":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, "returnType":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 497
    invoke-interface {v3, v7}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 499
    :try_start_3
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUIntx()I

    move-result v12

    .line 500
    .local v12, "size":I
    new-array v6, v12, [Ljava/lang/String;

    .line 501
    .local v6, "parameterTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_3

    .line 502
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readUShortx()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_3
    :try_start_4
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 511
    .end local v1    # "i":I
    .end local v12    # "size":I
    :goto_1
    :try_start_5
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    .line 514
    new-instance v13, Lcom/zte/privacy/Method;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/privacy/DexFileReader;->getType(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v6, v10}, Lcom/zte/privacy/Method;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 516
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    return-object v13

    .line 505
    .end local v6    # "parameterTypes":[Ljava/lang/String;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 511
    .end local v7    # "parameters_off":I
    .end local v10    # "returnType":Ljava/lang/String;
    .end local v11    # "return_type_idx":I
    :catchall_2
    move-exception v13

    :try_start_7
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 508
    .restart local v7    # "parameters_off":I
    .restart local v10    # "returnType":Ljava/lang/String;
    .restart local v11    # "return_type_idx":I
    :cond_4
    const/4 v13, 0x0

    :try_start_8
    new-array v6, v13, [Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .restart local v6    # "parameterTypes":[Ljava/lang/String;
    goto :goto_1
.end method

.method getString(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 526
    iget v6, p0, Lcom/zte/privacy/DexFileReader;->string_ids_size:I

    if-ge p1, v6, :cond_0

    if-gez p1, :cond_1

    .line 527
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Id out of bound"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 530
    .local v3, "in":Lcom/zte/privacy/DataIn;
    iget v6, p0, Lcom/zte/privacy/DexFileReader;->string_ids_off:I

    mul-int/lit8 v7, p1, 0x4

    add-int v2, v6, v7

    .line 531
    .local v2, "idxOffset":I
    invoke-interface {v3, v2}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 533
    :try_start_0
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v5

    .line 534
    .local v5, "offset":I
    invoke-interface {v3, v5}, Lcom/zte/privacy/DataIn;->pushMove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    :try_start_1
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->readULeb128()J

    move-result-wide v6

    long-to-int v4, v6

    .line 537
    .local v4, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-double v6, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {v3, v0}, Lcom/zte/privacy/Mutf8;->decode(Lcom/zte/privacy/DataIn;Ljava/lang/StringBuilder;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 542
    :try_start_2
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    return-object v6

    .line 539
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/io/UTFDataFormatException;
    :try_start_3
    new-instance v6, Lcom/zte/privacy/DexException;

    const-string v7, "fail to load string %d@%08x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v1, v7, v8}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 542
    .end local v1    # "e":Ljava/io/UTFDataFormatException;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 545
    .end local v5    # "offset":I
    :catchall_1
    move-exception v6

    invoke-interface {v3}, Lcom/zte/privacy/DataIn;->pop()V

    throw v6
.end method

.method getType(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 552
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 553
    const/4 v3, 0x0

    .line 565
    :goto_0
    return-object v3

    .line 555
    :cond_0
    iget v3, p0, Lcom/zte/privacy/DexFileReader;->type_ids_size:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 556
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Id out of bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/zte/privacy/DexFileReader;->in:Lcom/zte/privacy/DataIn;

    .line 559
    .local v1, "in":Lcom/zte/privacy/DataIn;
    iget v3, p0, Lcom/zte/privacy/DexFileReader;->type_ids_off:I

    mul-int/lit8 v4, p1, 0x4

    add-int v0, v3, v4

    .line 560
    .local v0, "idxOffset":I
    invoke-interface {v1, v0}, Lcom/zte/privacy/DataIn;->pushMove(I)V

    .line 562
    :try_start_0
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->readIntx()I

    move-result v2

    .line 563
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Lcom/zte/privacy/DexFileReader;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 565
    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->pop()V

    goto :goto_0

    .end local v2    # "offset":I
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/zte/privacy/DataIn;->pop()V

    throw v3
.end method

.method public final isOdex()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/zte/privacy/DexFileReader;->odex:Z

    return v0
.end method

.method public final setApiLevel(I)V
    .locals 1
    .param p1, "apiLevel"    # I

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/privacy/DexFileReader;->apiLevelSetted:Z

    .line 576
    iput p1, p0, Lcom/zte/privacy/DexFileReader;->apiLevel:I

    .line 577
    return-void
.end method
