.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mId_record:I

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mbrightnessMode:[I

.field private mcolor_record:[I

.field private mmode_record:[I

.field private moffMS_record:[I

.field private monMS_record:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 41
    iput v5, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    .line 42
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mcolor_record:[I

    .line 43
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mmode_record:[I

    .line 44
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->monMS_record:[I

    .line 45
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->moffMS_record:[I

    .line 46
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mbrightnessMode:[I

    .line 226
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 288
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 305
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 265
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mcolor_record:[I

    aput v5, v1, v0

    .line 274
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mmode_record:[I

    aput v5, v1, v0

    .line 275
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->monMS_record:[I

    aput v5, v1, v0

    .line 276
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->moffMS_record:[I

    aput v5, v1, v0

    .line 277
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mbrightnessMode:[I

    aput v5, v1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    return v0
.end method

.method static synthetic access$172(Lcom/android/server/lights/LightsService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    return v0
.end method

.method static synthetic access$176(Lcom/android/server/lights/LightsService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/lights/LightsService;->mId_record:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mcolor_record:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mmode_record:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->monMS_record:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->moffMS_record:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mbrightnessMode:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method private static native finalize_native(J)V
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 302
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 303
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "hardware"

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 285
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 286
    return-void
.end method
