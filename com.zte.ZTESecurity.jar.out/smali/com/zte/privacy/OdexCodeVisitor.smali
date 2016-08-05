.class public interface abstract Lcom/zte/privacy/OdexCodeVisitor;
.super Ljava/lang/Object;
.source "OdexCodeVisitor.java"

# interfaces
.implements Lcom/zte/privacy/DexCodeVisitor;


# static fields
.field public static final VerificatioError_AccessClass:I = 0x5

.field public static final VerificatioError_AccessField:I = 0x6

.field public static final VerificatioError_AccessMethod:I = 0x7

.field public static final VerificatioError_ClassChange:I = 0x8

.field public static final VerificatioError_Generic:I = 0x1

.field public static final VerificatioError_Instantiation:I = 0x9

.field public static final VerificatioError_NoClass:I = 0x2

.field public static final VerificatioError_NoField:I = 0x3

.field public static final VerificatioError_NoMethod:I = 0x4

.field public static final VerificatioError_None:I


# virtual methods
.method public abstract visitFieldStmt(IIIII)V
.end method

.method public abstract visitMethodStmt(I[II)V
.end method

.method public abstract visitReturnStmt(IILjava/lang/Object;)V
.end method
