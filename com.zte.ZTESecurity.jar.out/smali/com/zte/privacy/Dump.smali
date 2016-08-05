.class public Lcom/zte/privacy/Dump;
.super Lcom/zte/privacy/EmptyVisitor;
.source "Dump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/Dump$WriterManager;
    }
.end annotation


# instance fields
.field private class_count:I

.field deps:Ljava/lang/StringBuilder;

.field private out:Ljava/io/PrintWriter;

.field private writerManager:Lcom/zte/privacy/Dump$WriterManager;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/Dump$WriterManager;)V
    .locals 1
    .param p1, "writerManager"    # Lcom/zte/privacy/Dump$WriterManager;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/zte/privacy/EmptyVisitor;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/Dump;->class_count:I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    .line 158
    iput-object p1, p0, Lcom/zte/privacy/Dump;->writerManager:Lcom/zte/privacy/Dump$WriterManager;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/privacy/Dump;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/privacy/Dump;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .param p0, "x0"    # Lcom/zte/privacy/Dump;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    return-object p1
.end method

.method public static doData(Lcom/zte/privacy/DexFileReader;Ljava/io/File;)V
    .locals 3
    .param p0, "dexFileReader"    # Lcom/zte/privacy/DexFileReader;
    .param p1, "destJar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v1, Lcom/zte/privacy/Dump;

    new-instance v2, Lcom/zte/privacy/Dump$1;

    invoke-direct {v2, v0}, Lcom/zte/privacy/Dump$1;-><init>(Ljava/util/zip/ZipOutputStream;)V

    invoke-direct {v1, v2}, Lcom/zte/privacy/Dump;-><init>(Lcom/zte/privacy/Dump$WriterManager;)V

    invoke-virtual {p0, v1}, Lcom/zte/privacy/DexFileReader;->accept(Lcom/zte/privacy/DexFileVisitor;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 71
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 72
    return-void
.end method

.method public static doData([BLjava/io/File;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "destJar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/zte/privacy/DexFileReader;

    invoke-direct {v0, p0}, Lcom/zte/privacy/DexFileReader;-><init>([B)V

    invoke-static {v0, p1}, Lcom/zte/privacy/Dump;->doData(Lcom/zte/privacy/DexFileReader;Ljava/io/File;)V

    .line 76
    return-void
.end method

.method public static doFile(Ljava/io/File;)V
    .locals 4
    .param p0, "srcDex"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_dump.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/zte/privacy/Dump;->doFile(Ljava/io/File;Ljava/io/File;)V

    .line 80
    return-void
.end method

.method public static doFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcDex"    # Ljava/io/File;
    .param p1, "destJar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lcom/zte/privacy/DexFileReader;->readDex(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/privacy/Dump;->doData([BLjava/io/File;)V

    .line 84
    return-void
.end method

.method public static getAccDes(I)Ljava/lang/String;
    .locals 2
    .param p0, "acc"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 98
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_3
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_4

    and-int/lit16 v1, p0, 0x200

    if-nez v1, :cond_4

    .line 101
    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_4
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_5

    .line 104
    const-string v1, "annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 107
    const-string v1, "bridge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_6
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_7

    .line 110
    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    .line 113
    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    .line 116
    const-string v1, "interace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_9
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_a

    .line 119
    const-string v1, "native "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    .line 122
    const-string v1, "strict "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_b
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_c

    .line 125
    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_c
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_d

    .line 128
    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_d
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    .line 131
    const-string v1, "varargs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_e
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_f

    .line 134
    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Dump in.dexORapk out.dump.jar"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/Dump;->doFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static toJavaClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 183
    .end local p0    # "desc":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "desc":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    :sswitch_1
    const-string p0, "byte"

    goto :goto_0

    .line 168
    :sswitch_2
    const-string p0, "short"

    goto :goto_0

    .line 170
    :sswitch_3
    const-string p0, "char"

    goto :goto_0

    .line 173
    :sswitch_4
    const-string p0, "int"

    goto :goto_0

    .line 175
    :sswitch_5
    const-string p0, "long"

    goto :goto_0

    .line 177
    :sswitch_6
    const-string p0, "float"

    goto :goto_0

    .line 179
    :sswitch_7
    const-string p0, "double"

    goto :goto_0

    .line 181
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4c -> :sswitch_0
        0x53 -> :sswitch_2
        0x5b -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
    .locals 8
    .param p1, "access_flags"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "superClass"    # Ljava/lang/String;
    .param p4, "interfaceNames"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 216
    invoke-static {p2}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "javaClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/Dump;->writerManager:Lcom/zte/privacy/Dump$WriterManager;

    invoke-interface {v2, v1}, Lcom/zte/privacy/Dump$WriterManager;->get(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    .line 218
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    const-string v3, "//class:%04d  access:0x%04x\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/Dump;->class_count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/zte/privacy/Dump;->class_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 219
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    invoke-static {p1}, Lcom/zte/privacy/Dump;->getAccDes(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    and-int/lit16 v2, p1, 0x200

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    if-eqz p3, :cond_1

    .line 226
    const-string v2, "Ljava/lang/Object;"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    const-string v3, " extends "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    invoke-static {p3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    :cond_1
    if-eqz p4, :cond_2

    array-length v2, p4

    if-lez v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    const-string v3, " implements "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    aget-object v3, p4, v7

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 236
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    aget-object v3, p4, v0

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 240
    new-instance v2, Lcom/zte/privacy/Dump$2;

    invoke-direct {v2, p0}, Lcom/zte/privacy/Dump$2;-><init>(Lcom/zte/privacy/Dump;)V

    return-object v2
.end method

.method public visitDepedence(Ljava/lang/String;[B)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checksum"    # [B

    .prologue
    .line 190
    iget-object v4, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", checksum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 192
    .local v1, "element":B
    iget-object v4, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "element":B
    :cond_0
    iget-object v4, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    return-void
.end method

.method public visitEnd()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/zte/privacy/Dump;->writerManager:Lcom/zte/privacy/Dump$WriterManager;

    const-string v2, "depedence"

    invoke-interface {v1, v2}, Lcom/zte/privacy/Dump$WriterManager;->get(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 201
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/zte/privacy/Dump;->deps:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 203
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 205
    .end local v0    # "out":Ljava/io/PrintWriter;
    :cond_0
    return-void
.end method
