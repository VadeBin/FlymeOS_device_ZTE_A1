.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;
.super Ljava/lang/Object;
.source "GsmVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    .line 38
    iput p2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 50
    instance-of v2, p1, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    .line 54
    .local v0, "s":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    iget v3, v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    iget v3, v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
