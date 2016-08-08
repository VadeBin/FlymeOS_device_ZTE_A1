.class Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
.super Ljava/lang/Object;
.source "ScanFilterQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanFilterQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field public addr_type:B

.field public address:Ljava/lang/String;

.field public company:I

.field public company_mask:I

.field public data:[B

.field public data_mask:[B

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanFilterQueue;

.field public type:B

.field public uuid:Ljava/util/UUID;

.field public uuid_mask:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->this$0:Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 75
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 78
    .local v0, "other":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-byte v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    if-ne v3, v4, :cond_4

    iget-byte v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
