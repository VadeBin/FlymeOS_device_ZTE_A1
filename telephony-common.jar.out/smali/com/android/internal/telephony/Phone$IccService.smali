.class public final enum Lcom/android/internal/telephony/Phone$IccService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$IccService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum CFIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum EPLMN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum FDN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum MWIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum OPL:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum PNN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SMSP:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPDI:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2245
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "CHV1_DISABLE_FUNCTION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    .line 2246
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SPN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    .line 2247
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "PNN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    .line 2248
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "OPL"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    .line 2249
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "MWIS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    .line 2250
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "CFIS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    .line 2251
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SPDI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    .line 2252
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "EPLMN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    .line 2253
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SMSP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    .line 2254
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "FDN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->FDN:Lcom/android/internal/telephony/Phone$IccService;

    .line 2255
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "UNSUPPORTED_SERVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    .line 2244
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$IccService;

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->FDN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

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
    .line 2244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IccService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2244
    const-class v0, Lcom/android/internal/telephony/Phone$IccService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$IccService;
    .locals 1

    .prologue
    .line 2244
    sget-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$IccService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 3

    .prologue
    .line 2258
    const/4 v0, -0x1

    .line 2259
    .local v0, "nIndex":I
    sget-object v1, Lcom/android/internal/telephony/Phone$1;->$SwitchMap$com$android$internal$telephony$Phone$IccService:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2296
    :goto_0
    return v0

    .line 2261
    :pswitch_0
    const/4 v0, 0x0

    .line 2262
    goto :goto_0

    .line 2264
    :pswitch_1
    const/4 v0, 0x1

    .line 2265
    goto :goto_0

    .line 2267
    :pswitch_2
    const/4 v0, 0x2

    .line 2268
    goto :goto_0

    .line 2270
    :pswitch_3
    const/4 v0, 0x3

    .line 2271
    goto :goto_0

    .line 2273
    :pswitch_4
    const/4 v0, 0x4

    .line 2274
    goto :goto_0

    .line 2276
    :pswitch_5
    const/4 v0, 0x5

    .line 2277
    goto :goto_0

    .line 2279
    :pswitch_6
    const/4 v0, 0x6

    .line 2280
    goto :goto_0

    .line 2282
    :pswitch_7
    const/4 v0, 0x7

    .line 2283
    goto :goto_0

    .line 2285
    :pswitch_8
    const/16 v0, 0x8

    .line 2286
    goto :goto_0

    .line 2288
    :pswitch_9
    const/16 v0, 0x9

    .line 2289
    goto :goto_0

    .line 2291
    :pswitch_a
    const/16 v0, 0xa

    .line 2292
    goto :goto_0

    .line 2259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
