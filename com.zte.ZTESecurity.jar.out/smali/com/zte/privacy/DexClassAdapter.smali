.class public Lcom/zte/privacy/DexClassAdapter;
.super Ljava/lang/Object;
.source "DexClassAdapter.java"

# interfaces
.implements Lcom/zte/privacy/DexClassVisitor;


# instance fields
.field protected dcv:Lcom/zte/privacy/DexClassVisitor;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DexClassVisitor;)V
    .locals 0
    .param p1, "dcv"    # Lcom/zte/privacy/DexClassVisitor;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    .line 34
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    invoke-interface {v0}, Lcom/zte/privacy/DexClassVisitor;->visitEnd()V

    .line 54
    return-void
.end method

.method public visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
    .locals 1
    .param p1, "accessFlags"    # I
    .param p2, "field"    # Lcom/zte/privacy/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/DexClassVisitor;->visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
    .locals 1
    .param p1, "accessFlags"    # I
    .param p2, "method"    # Lcom/zte/privacy/Method;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/DexClassVisitor;->visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/privacy/DexClassAdapter;->dcv:Lcom/zte/privacy/DexClassVisitor;

    invoke-interface {v0, p1}, Lcom/zte/privacy/DexClassVisitor;->visitSource(Ljava/lang/String;)V

    .line 85
    return-void
.end method
