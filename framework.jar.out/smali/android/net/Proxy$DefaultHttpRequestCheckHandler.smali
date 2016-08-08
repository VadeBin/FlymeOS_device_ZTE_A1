.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# static fields
.field private static final ZTE_SEND_MMS:Ljava/lang/String; = "android.permission.ZTE_SEND_MMS"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method private ZTECheckMMSPermission()Z
    .locals 5

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 376
    .local v0, "callingUid":I
    const-string v2, "Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZTECheckMMSPermission calling uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "android.permission.ZTE_SEND_MMS"

    invoke-static {v2, v0}, Lcom/zte/security/ZTESecurityUtils;->ZTECheckCallingPermission(Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, "checkRes":I
    if-eqz v1, :cond_0

    .line 379
    const/4 v2, 0x0

    .line 381
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkEmailSendRequest()Z
    .locals 2

    .prologue
    .line 399
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission for email"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string/jumbo v0, "sub-permission.SEND_EMAIL"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkMmsSendRequest()Z
    .locals 2

    .prologue
    .line 386
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;->ZTECheckMMSPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "sub-permission.SEND_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
