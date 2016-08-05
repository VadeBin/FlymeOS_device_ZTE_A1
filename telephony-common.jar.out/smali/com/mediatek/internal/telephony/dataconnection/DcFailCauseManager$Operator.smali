.class public final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum OP001Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum OP002Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field private static final lookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v3, "NONE"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 102
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v3, "OP001Ext"

    invoke-direct {v2, v3, v6, v5}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP001Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 103
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v3, "OP002Ext"

    invoke-direct {v2, v3, v7, v6}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP002Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 100
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    aput-object v3, v2, v5

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP001Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    aput-object v3, v2, v6

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP002Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    aput-object v3, v2, v7

    sput-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    .line 109
    const-class v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 110
    .local v1, "op":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v1    # "op":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    :cond_0
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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->value:I

    .line 118
    return-void
.end method

.method public static get(I)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->value:I

    return v0
.end method
