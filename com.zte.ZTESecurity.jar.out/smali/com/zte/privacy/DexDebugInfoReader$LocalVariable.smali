.class public Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;
.super Ljava/lang/Object;
.source "DexDebugInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/DexDebugInfoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVariable"
.end annotation


# instance fields
.field public end:I

.field public name:Ljava/lang/String;

.field public reg:I

.field public signature:Ljava/lang/String;

.field public start:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reg"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->reg:I

    .line 82
    iput p2, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->start:I

    .line 83
    iput p3, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->end:I

    .line 84
    iput-object p4, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->name:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->type:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/zte/privacy/DexDebugInfoReader$LocalVariable;->signature:Ljava/lang/String;

    .line 87
    return-void
.end method
