.class public Lcom/zte/privacy/ASMifierFileV;
.super Ljava/lang/Object;
.source "ASMifierFileV.java"

# interfaces
.implements Lcom/zte/privacy/OdexFileVisitor;


# instance fields
.field dir:Ljava/io/File;

.field file:Lcom/zte/privacy/ArrayOut;

.field i:I

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "dex2jar.gen"

    iput-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0}, Lcom/zte/privacy/ArrayOut;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    .line 41
    iput v4, p0, Lcom/zte/privacy/ASMifierFileV;->i:I

    .line 68
    if-nez p1, :cond_1

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->dir:Ljava/io/File;

    .line 73
    :goto_0
    if-eqz p2, :cond_0

    .line 74
    iput-object p2, p0, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "package %s;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import com.googlecode.dex2jar.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import com.googlecode.dex2jar.visitors.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import static org.apache.commons.codec.binary.Hex.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "public class Main {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 82
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "public static void accept(DexFileVisitor v) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 85
    return-void

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/zte/privacy/ASMifierFileV;->dir:Ljava/io/File;

    goto :goto_0
.end method

.method public static doData([BLjava/io/File;)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "destdir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/zte/privacy/DexFileReader;

    invoke-direct {v0, p0}, Lcom/zte/privacy/DexFileReader;-><init>([B)V

    new-instance v1, Lcom/zte/privacy/ASMifierFileV;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/zte/privacy/ASMifierFileV;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/privacy/DexFileReader;->accept(Lcom/zte/privacy/DexFileVisitor;)V

    .line 45
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
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asmifier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/zte/privacy/ASMifierFileV;->doFile(Ljava/io/File;Ljava/io/File;)V

    .line 49
    return-void
.end method

.method public static doFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcDex"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lcom/zte/privacy/DexFileReader;->readDex(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/privacy/ASMifierFileV;->doData([BLjava/io/File;)V

    .line 53
    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 57
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ASMifier 1.dex 2.dex ... n.dex"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 61
    .local v3, "s":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asmifier "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/zte/privacy/ASMifierFileV;->doFile(Ljava/io/File;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static write(Lcom/zte/privacy/ArrayOut;Ljava/io/File;)V
    .locals 7
    .param p0, "out"    # Lcom/zte/privacy/ArrayOut;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 91
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 92
    iget-object v6, p0, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    .local v4, "p":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 94
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_0
    iget-object v6, p0, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "j":I
    .end local v4    # "p":I
    :cond_1
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p1, v6, v3}, Lcom/zte/ZTESecurity/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_2
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
    .locals 9
    .param p1, "access_flags"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "superClass"    # Ljava/lang/String;
    .param p4, "interfaceNames"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x5f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C%04d_"

    new-array v2, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/zte/privacy/ASMifierFileV;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/zte/privacy/ASMifierFileV;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "n":Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "%s.accept(v);"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lcom/zte/privacy/ASMifierFileV$1;

    iget-object v2, p0, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/zte/privacy/ASMifierFileV$1;-><init>(Lcom/zte/privacy/ASMifierFileV;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitDepedence(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checksum"    # [B

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "((OdexFileVisitor)v).visitDepedence(%s,decodeHex(%s.toCharArray()));"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    invoke-static {p2}, Lcom/zte/ZTESecurity/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public visitEnd()V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 125
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 127
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/zte/privacy/ASMifierFileV;->file:Lcom/zte/privacy/ArrayOut;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/privacy/ASMifierFileV;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/privacy/ASMifierFileV;->pkgName:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Main.java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/ASMifierFileV;->write(Lcom/zte/privacy/ArrayOut;Ljava/io/File;)V

    .line 129
    return-void
.end method
