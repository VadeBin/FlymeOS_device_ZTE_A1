.class public Lcom/zte/privacy/DexMethodAdapter;
.super Ljava/lang/Object;
.source "DexMethodAdapter.java"

# interfaces
.implements Lcom/zte/privacy/DexMethodVisitor;


# instance fields
.field protected mv:Lcom/zte/privacy/DexMethodVisitor;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DexMethodVisitor;)V
    .locals 0
    .param p1, "mv"    # Lcom/zte/privacy/DexMethodVisitor;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zte/privacy/DexMethodAdapter;->mv:Lcom/zte/privacy/DexMethodVisitor;

    .line 32
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/privacy/DexMethodAdapter;->mv:Lcom/zte/privacy/DexMethodVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexMethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitCode()Lcom/zte/privacy/DexCodeVisitor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/privacy/DexMethodAdapter;->mv:Lcom/zte/privacy/DexMethodVisitor;

    invoke-interface {v0}, Lcom/zte/privacy/DexMethodVisitor;->visitCode()Lcom/zte/privacy/DexCodeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/privacy/DexMethodAdapter;->mv:Lcom/zte/privacy/DexMethodVisitor;

    invoke-interface {v0}, Lcom/zte/privacy/DexMethodVisitor;->visitEnd()V

    .line 62
    return-void
.end method

.method public visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/privacy/DexMethodAdapter;->mv:Lcom/zte/privacy/DexMethodVisitor;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DexMethodVisitor;->visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;

    move-result-object v0

    return-object v0
.end method
