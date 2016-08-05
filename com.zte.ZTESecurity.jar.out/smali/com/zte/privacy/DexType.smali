.class public Lcom/zte/privacy/DexType;
.super Ljava/lang/Object;
.source "DexType.java"


# instance fields
.field public final desc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zte/privacy/DexType;->desc:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/privacy/DexType;->desc:Ljava/lang/String;

    return-object v0
.end method
