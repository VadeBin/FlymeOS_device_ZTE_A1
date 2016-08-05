.class Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchScanParams"
.end annotation


# instance fields
.field fullScanClientIf:I

.field scanMode:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;

.field truncatedScanClientIf:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 285
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 287
    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    .line 288
    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    .line 289
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    if-ne p0, p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 297
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 299
    check-cast v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .line 300
    .local v0, "other":Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
