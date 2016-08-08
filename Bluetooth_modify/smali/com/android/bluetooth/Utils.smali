.class public final Lcom/android/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final BD_ADDR_LEN:I = 0x6

.field static final BD_UUID_LEN:I = 0x10

.field private static final MICROS_PER_UNIT:I = 0x271

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "valueBuf"    # [B

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 92
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static byteArrayToShort([B)S
    .locals 2
    .param p0, "valueBuf"    # [B

    .prologue
    .line 86
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method public static byteArrayToUuid([B)[Landroid/os/ParcelUuid;
    .locals 12
    .param p0, "val"    # [B

    .prologue
    .line 134
    array-length v5, p0

    div-int/lit8 v2, v5, 0x10

    .line 135
    .local v2, "numUuids":I
    new-array v4, v2, [Landroid/os/ParcelUuid;

    .line 137
    .local v4, "puuids":[Landroid/os/ParcelUuid;
    const/4 v3, 0x0

    .line 139
    .local v3, "offset":I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    new-instance v5, Landroid/os/ParcelUuid;

    new-instance v6, Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v1

    .line 145
    add-int/lit8 v3, v3, 0x10

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v4
.end method

.method public static checkCaller()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 201
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 202
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 206
    .local v4, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 207
    .local v3, "foregroundUser":I
    if-ne v3, v1, :cond_2

    move v6, v9

    .line 208
    .local v6, "ok":Z
    :goto_0
    if-nez v6, :cond_1

    .line 210
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const-string v11, "com.android.systemui"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 212
    .local v7, "systemUiUid":I
    if-eq v7, v0, :cond_0

    const/16 v10, 0x3e8

    if-ne v10, v0, :cond_3

    :cond_0
    move v6, v9

    .line 218
    .end local v7    # "systemUiUid":I
    :cond_1
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    .end local v3    # "foregroundUser":I
    :goto_2
    return v6

    .end local v6    # "ok":Z
    .restart local v3    # "foregroundUser":I
    :cond_2
    move v6, v8

    .line 207
    goto :goto_0

    .restart local v6    # "ok":Z
    .restart local v7    # "systemUiUid":I
    :cond_3
    move v6, v8

    .line 212
    goto :goto_1

    .line 214
    .end local v3    # "foregroundUser":I
    .end local v6    # "ok":Z
    .end local v7    # "systemUiUid":I
    :catch_0
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "BluetoothUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfCallerIsSelfOrForegroundUser: Exception ex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    const/4 v6, 0x0

    .line 218
    .restart local v6    # "ok":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "ok":Z
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public static checkCallerAllowManagedProfiles(Landroid/content/Context;)Z
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v6

    .line 254
    :goto_0
    return v6

    .line 231
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 232
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 233
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 235
    .local v4, "ident":J
    :try_start_0
    const-string v11, "user"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 236
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 237
    .local v9, "ui":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_4

    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 239
    .local v7, "parentUser":I
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 240
    .local v3, "foregroundUser":I
    if-eq v3, v1, :cond_1

    if-ne v3, v7, :cond_5

    :cond_1
    const/4 v6, 0x1

    .line 242
    .local v6, "ok":Z
    :goto_2
    if-nez v6, :cond_3

    .line 244
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const-string v12, "com.android.systemui"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 246
    .local v8, "systemUiUid":I
    if-eq v8, v0, :cond_2

    const/16 v11, 0x3e8

    if-ne v11, v0, :cond_6

    :cond_2
    const/4 v6, 0x1

    .line 252
    .end local v8    # "systemUiUid":I
    :cond_3
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 237
    .end local v3    # "foregroundUser":I
    .end local v6    # "ok":Z
    .end local v7    # "parentUser":I
    :cond_4
    const/16 v7, -0x2710

    goto :goto_1

    .line 240
    .restart local v3    # "foregroundUser":I
    .restart local v7    # "parentUser":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 246
    .restart local v6    # "ok":Z
    .restart local v8    # "systemUiUid":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 248
    .end local v3    # "foregroundUser":I
    .end local v6    # "ok":Z
    .end local v7    # "parentUser":I
    .end local v8    # "systemUiUid":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    .end local v10    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v11, "BluetoothUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCallerAllowManagedProfiles: Exception ex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v6, 0x0

    .line 252
    .restart local v6    # "ok":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "ok":Z
    :catchall_0
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 168
    new-array v0, p2, [B

    .line 169
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 170
    .local v1, "bytesRead":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 171
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 174
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :cond_0
    return-void
.end method

.method public static debugGetAdapterStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 161
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    const-string v0, "STATE_OFF"

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v0, "STATE_ON"

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static enforceAdminPermission(Landroid/content/ContextWrapper;)V
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 265
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static getAddressStringFromByte([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, p0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    aget-byte v2, p0, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p0, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, p0, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    aget-byte v2, p0, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "j":I
    const/4 v3, 0x6

    new-array v2, v3, [B

    .line 70
    .local v2, "output":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 72
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-object v2
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 98
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static millsToUnit(I)I
    .locals 4
    .param p0, "milliseconds"    # I

    .prologue
    .line 273
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x271

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static safeCloseStream(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BluetoothUtils"

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeCloseStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BluetoothUtils"

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static uuidToByteArray(Landroid/os/ParcelUuid;)[B
    .locals 8
    .param p0, "pUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 105
    const/16 v1, 0x10

    .line 106
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 110
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 111
    .local v4, "msb":J
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 112
    .local v2, "lsb":J
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 113
    const/16 v7, 0x8

    invoke-virtual {v0, v7, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method

.method public static uuidsToByteArray([Landroid/os/ParcelUuid;)[B
    .locals 9
    .param p0, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 118
    array-length v8, p0

    mul-int/lit8 v2, v8, 0x10

    .line 119
    .local v2, "length":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_0

    .line 124
    aget-object v8, p0, v1

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 125
    .local v3, "uuid":Ljava/util/UUID;
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 126
    .local v6, "msb":J
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 127
    .local v4, "lsb":J
    mul-int/lit8 v8, v1, 0x10

    invoke-virtual {v0, v8, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 128
    mul-int/lit8 v8, v1, 0x10

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v0, v8, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v4    # "lsb":J
    .end local v6    # "msb":J
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8
.end method
