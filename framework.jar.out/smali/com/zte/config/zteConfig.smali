.class public Lcom/zte/config/zteConfig;
.super Ljava/lang/Object;
.source "zteConfig.java"


# static fields
.field public static final CMCC_VER:I = 0x2

.field public static final CTCC_VER:I = 0x4

.field public static final CUCC_VER:I = 0x3

.field public static final NETWORK_VER:I = 0x1

.field public static final NORMAL_VER:I = 0x0

.field public static final PV_VER:I = 0x5

.field public static productName:Ljava/lang/String;

.field public static versionTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 22
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVersionType()I
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/zte/config/zteConfig;->getVersionTypeName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "type":Ljava/lang/String;
    const-string v1, "NT_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    .line 36
    :cond_0
    const-string v1, "CMCC_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x2

    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "CUCC_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const/4 v1, 0x3

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "CTCC_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    const/4 v1, 0x4

    goto :goto_0

    .line 42
    :cond_3
    const-string v1, "PV_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    const/4 v1, 0x5

    goto :goto_0

    .line 45
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v0, "ro.product.versiontype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    goto :goto_0
.end method
