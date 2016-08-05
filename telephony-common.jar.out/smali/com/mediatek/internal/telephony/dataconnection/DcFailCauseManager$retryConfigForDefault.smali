.class final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "retryConfigForDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v1, "maxRetryCount"

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 148
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v1, "retryTime"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 149
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v1, "randomizationTime"

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->value:I

    .line 155
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->value:I

    return v0
.end method
