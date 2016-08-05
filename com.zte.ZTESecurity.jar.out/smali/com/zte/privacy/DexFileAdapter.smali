.class public Lcom/zte/privacy/DexFileAdapter;
.super Ljava/lang/Object;
.source "DexFileAdapter.java"

# interfaces
.implements Lcom/zte/privacy/DexFileVisitor;


# instance fields
.field protected dfv:Lcom/zte/privacy/DexFileVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
    .locals 1
    .param p1, "access_flags"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "superClass"    # Ljava/lang/String;
    .param p4, "interfaceNames"    # [Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/privacy/DexFileAdapter;->dfv:Lcom/zte/privacy/DexFileVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/DexFileVisitor;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/privacy/DexFileAdapter;->dfv:Lcom/zte/privacy/DexFileVisitor;

    invoke-interface {v0}, Lcom/zte/privacy/DexFileVisitor;->visitEnd()V

    .line 44
    return-void
.end method
