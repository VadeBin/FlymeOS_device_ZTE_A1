.class public final enum Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;
.super Ljava/lang/Enum;
.source "GsmVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

.field public static final enum CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

.field public static final enum CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

.field public static final enum OPEN:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

.field public static final enum READY:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->OPEN:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->READY:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CLOSE:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->OPEN:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->READY:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->CONNECTED:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->$VALUES:[Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->$VALUES:[Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/gsm/GsmVTProvider$State;

    return-object v0
.end method
