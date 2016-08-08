.class public interface abstract Lcom/zte/privacy/DexClassVisitor;
.super Ljava/lang/Object;
.source "DexClassVisitor.java"

# interfaces
.implements Lcom/zte/privacy/DexAnnotationAble;


# virtual methods
.method public abstract visitEnd()V
.end method

.method public abstract visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
.end method

.method public abstract visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
.end method

.method public abstract visitSource(Ljava/lang/String;)V
.end method
