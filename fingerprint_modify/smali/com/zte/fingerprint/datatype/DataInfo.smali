.class public abstract Lcom/zte/fingerprint/datatype/DataInfo;
.super Ljava/lang/Object;
.source "DataInfo.java"


# instance fields
.field private dataTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/datatype/DataInfo;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/DataInfo;->dataTag:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getDataTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/DataInfo;->dataTag:Ljava/lang/String;

    return-object v0
.end method

.method public setDataTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataTag"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/DataInfo;->dataTag:Ljava/lang/String;

    .line 27
    return-void
.end method
