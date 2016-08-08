.class final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "retryConfigForOp001Ext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

.field public static final enum maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

.field public static final enum randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

.field public static final enum retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 163
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    const-string v1, "maxRetryCount"

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    .line 164
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    const-string v1, "retryTime"

    const v2, 0xafc8

    invoke-direct {v0, v1, v5, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    .line 165
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    const-string v1, "randomizationTime"

    invoke-direct {v0, v1, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->value:I

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForOp001Ext;->value:I

    return v0
.end method
