.class public final enum Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;
.super Ljava/lang/Enum;
.source "CameraEffectHalException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectHalException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectHalStatusError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

.field public static final enum EFFECT_INITIAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    const-string v1, "EFFECT_INITIAL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;->EFFECT_INITIAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;->EFFECT_INITIAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    invoke-virtual {v0}, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;

    return-object v0
.end method
