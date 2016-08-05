.class public Lcom/zte/ZTESecurity/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 5
    const/16 v1, 0x5c

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 7
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 12
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_1
    return-object p0
.end method
