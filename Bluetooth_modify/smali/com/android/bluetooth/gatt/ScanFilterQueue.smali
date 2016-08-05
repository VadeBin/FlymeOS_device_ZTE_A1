.class Lcom/android/bluetooth/gatt/ScanFilterQueue;
.super Ljava/lang/Object;
.source "ScanFilterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_ALL:B = 0x0t

.field private static final MAX_LEN_PER_FIELD:I = 0x1a

.field public static final TYPE_DEVICE_ADDRESS:I = 0x0

.field public static final TYPE_LOCAL_NAME:I = 0x4

.field public static final TYPE_MANUFACTURER_DATA:I = 0x5

.field public static final TYPE_SERVICE_DATA:I = 0x6

.field public static final TYPE_SERVICE_DATA_CHANGED:I = 0x1

.field public static final TYPE_SERVICE_UUID:I = 0x2

.field public static final TYPE_SOLICIT_UUID:I = 0x3


# instance fields
.field private mEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    return-void
.end method

.method private concate(Landroid/os/ParcelUuid;[B)[B
    .locals 6
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 246
    if-nez p2, :cond_1

    move v3, v4

    :goto_0
    add-int/lit8 v1, v3, 0x2

    .line 248
    .local v1, "dataLen":I
    const/16 v3, 0x1a

    if-le v1, v3, :cond_2

    .line 249
    const/4 v0, 0x0

    .line 261
    :cond_0
    :goto_1
    return-object v0

    .line 246
    .end local v1    # "dataLen":I
    :cond_1
    array-length v3, p2

    goto :goto_0

    .line 251
    .restart local v1    # "dataLen":I
    :cond_2
    new-array v0, v1, [B

    .line 253
    .local v0, "concated":[B
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    .line 256
    .local v2, "uuidValue":I
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 257
    const/4 v3, 0x1

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 258
    if-eqz p2, :cond_0

    .line 259
    const/4 v3, 0x2

    array-length v5, p2

    invoke-static {p2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1
.end method


# virtual methods
.method addDeviceAddress(Ljava/lang/String;B)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # B

    .prologue
    .line 92
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 93
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 94
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    .line 95
    iput-byte p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    .line 96
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method addManufacturerData(II[B[B)V
    .locals 2
    .param p1, "company"    # I
    .param p2, "company_mask"    # I
    .param p3, "data"    # [B
    .param p4, "data_mask"    # [B

    .prologue
    .line 147
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 148
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 149
    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    .line 150
    iput p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    .line 151
    iput-object p3, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 152
    iput-object p4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method addManufacturerData(I[B)V
    .locals 3
    .param p1, "company"    # I
    .param p2, "data"    # [B

    .prologue
    .line 136
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 137
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 138
    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    .line 139
    const v1, 0xffff

    iput v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    .line 140
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 141
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 142
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method addName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 130
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 131
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method addScanFilter(Landroid/bluetooth/le/ScanFilter;)V
    .locals 7
    .param p1, "filter"    # Landroid/bluetooth/le/ScanFilter;

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addName(Ljava/lang/String;)V

    .line 210
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 211
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addDeviceAddress(Ljava/lang/String;B)V

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 214
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v3

    if-nez v3, :cond_7

    .line 215
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;)V

    .line 221
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 222
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v3

    if-nez v3, :cond_8

    .line 223
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(I[B)V

    .line 229
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    .line 231
    .local v2, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v0

    .line 232
    .local v0, "serviceData":[B
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object v1

    .line 233
    .local v1, "serviceDataMask":[B
    if-nez v1, :cond_6

    .line 234
    array-length v3, v0

    new-array v1, v3, [B

    .line 235
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 237
    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object v0

    .line 238
    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object v1

    .line 239
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addServiceData([B[B)V

    goto :goto_0

    .line 217
    .end local v0    # "serviceData":[B
    .end local v1    # "serviceDataMask":[B
    .end local v2    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_1

    .line 225
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v3

    const v4, 0xffff

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(II[B[B)V

    goto :goto_2
.end method

.method addServiceChanged()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 101
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 102
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method addServiceData([B[B)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "dataMask"    # [B

    .prologue
    .line 157
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 158
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 159
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 160
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method addSolicitUuid(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 122
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 123
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 124
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 125
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method addUuid(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 107
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 108
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 109
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 110
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method addUuid(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "uuid_mask"    # Ljava/util/UUID;

    .prologue
    .line 114
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 115
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 116
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 117
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 118
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 188
    return-void
.end method

.method clearUuids()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 181
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    iget-byte v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 184
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    :cond_1
    return-void
.end method

.method getFeatureSelection()I
    .locals 5

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "selc":I
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 196
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    const/4 v3, 0x1

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 197
    goto :goto_0

    .line 198
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    :cond_0
    return v2
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 170
    .local v0, "entry":Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
