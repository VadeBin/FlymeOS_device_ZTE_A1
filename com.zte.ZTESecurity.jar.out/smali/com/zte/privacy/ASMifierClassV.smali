.class public Lcom/zte/privacy/ASMifierClassV;
.super Ljava/lang/Object;
.source "ASMifierClassV.java"

# interfaces
.implements Lcom/zte/privacy/DexClassVisitor;


# instance fields
.field fCount:I

.field private fieldOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/privacy/ArrayOut;",
            ">;"
        }
    .end annotation
.end field

.field mCount:I

.field private methodOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/privacy/ArrayOut;",
            ">;"
        }
    .end annotation
.end field

.field protected out:Lcom/zte/privacy/ArrayOut;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "javaClassName"    # Ljava/lang/String;
    .param p3, "access_flags"    # I
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "superClass"    # Ljava/lang/String;
    .param p6, "interfaceNames"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0}, Lcom/zte/privacy/ArrayOut;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->methodOuts:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->fieldOuts:Ljava/util/List;

    .line 39
    iput v4, p0, Lcom/zte/privacy/ASMifierClassV;->fCount:I

    .line 40
    iput v4, p0, Lcom/zte/privacy/ASMifierClassV;->mCount:I

    .line 45
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "package %s;"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import com.googlecode.dex2jar.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import com.googlecode.dex2jar.visitors.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "import static com.googlecode.dex2jar.OdexOpcodes.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "public class %s {"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 51
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "public static void accept(DexFileVisitor v) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 53
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "DexClassVisitor cv=v.visit(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/zte/privacy/Escape;->classAcc(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p5}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Lcom/zte/privacy/Escape;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "if(cv!=null) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 57
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "accept(cv);"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 59
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 61
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "public static void accept(DexClassVisitor cv) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 64
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 68
    new-instance v0, Lcom/zte/privacy/ASMifierAnnotationV;

    const-string v1, "cv"

    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/ASMifierAnnotationV;-><init>(Ljava/lang/String;Lcom/zte/privacy/ArrayOut;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v5, "cv.visitEnd();"

    invoke-virtual {v4, v5}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v4}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 171
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->fieldOuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/privacy/ArrayOut;

    .line 173
    .local v3, "o":Lcom/zte/privacy/ArrayOut;
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget-object v4, v4, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    iget-object v5, v3, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v4, v3, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    .local v0, "i":I
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget-object v4, v4, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    iget-object v5, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget v5, v5, Lcom/zte/privacy/ArrayOut;->i:I

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/zte/privacy/ArrayOut;
    :cond_1
    iput-object v6, p0, Lcom/zte/privacy/ASMifierClassV;->fieldOuts:Ljava/util/List;

    .line 179
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->methodOuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/privacy/ArrayOut;

    .line 180
    .restart local v3    # "o":Lcom/zte/privacy/ArrayOut;
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget-object v4, v4, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    iget-object v5, v3, Lcom/zte/privacy/ArrayOut;->array:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v4, v3, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .restart local v0    # "i":I
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget-object v4, v4, Lcom/zte/privacy/ArrayOut;->is:Ljava/util/List;

    iget-object v5, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    iget v5, v5, Lcom/zte/privacy/ArrayOut;->i:I

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/zte/privacy/ArrayOut;
    :cond_3
    iput-object v6, p0, Lcom/zte/privacy/ASMifierClassV;->methodOuts:Ljava/util/List;

    .line 186
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    invoke-virtual {v4}, Lcom/zte/privacy/ArrayOut;->pop()V

    .line 187
    iget-object v4, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
    .locals 9
    .param p1, "accessFlags"    # I
    .param p2, "field"    # Lcom/zte/privacy/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    const-string v2, "f%03d_%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/zte/privacy/ASMifierClassV;->fCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/zte/privacy/ASMifierClassV;->fCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "fieldName":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "%s(cv);"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0}, Lcom/zte/privacy/ArrayOut;-><init>()V

    .line 82
    .local v0, "f":Lcom/zte/privacy/ArrayOut;
    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV;->fieldOuts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v2, "public static void %s(DexClassVisitor cv) {"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 85
    const-string v2, "DexFieldVisitor fv=cv.visitField(%s, %s, %s);"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/Escape;->fieldAcc(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Field;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-string v2, "if(fv != null) {"

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 89
    new-instance v2, Lcom/zte/privacy/ASMifierClassV$1;

    invoke-direct {v2, p0, v0}, Lcom/zte/privacy/ASMifierClassV$1;-><init>(Lcom/zte/privacy/ASMifierClassV;Lcom/zte/privacy/ArrayOut;)V

    return-object v2
.end method

.method public visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
    .locals 10
    .param p1, "accessFlags"    # I
    .param p2, "method"    # Lcom/zte/privacy/Method;

    .prologue
    const/16 v9, 0x5f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    const-string v2, "m%03d_%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/zte/privacy/ASMifierClassV;->mCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/zte/privacy/ASMifierClassV;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v3, "%s(cv);"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v0, Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0}, Lcom/zte/privacy/ArrayOut;-><init>()V

    .line 113
    .local v0, "m":Lcom/zte/privacy/ArrayOut;
    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV;->methodOuts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v2, "public static void %s(DexClassVisitor cv) {"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 116
    const-string v2, "DexMethodVisitor mv=cv.visitMethod(%s, %s);"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/Escape;->methodAcc(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Method;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const-string v2, "if(mv != null) {"

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/zte/privacy/ArrayOut;->push()V

    .line 120
    new-instance v2, Lcom/zte/privacy/ASMifierClassV$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/privacy/ASMifierClassV$2;-><init>(Lcom/zte/privacy/ASMifierClassV;Lcom/zte/privacy/ArrayOut;)V

    return-object v2
.end method

.method public visitSource(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/privacy/ASMifierClassV;->out:Lcom/zte/privacy/ArrayOut;

    const-string v1, "cv.visitSource(\"%s\");"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/Utf8Utils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/ArrayOut;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method
