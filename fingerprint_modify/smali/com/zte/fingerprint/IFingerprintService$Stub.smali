.class public abstract Lcom/zte/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Lcom/zte/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.fingerprint.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_factoryTest:I = 0xe

.field static final TRANSACTION_getFpName:I = 0x8

.field static final TRANSACTION_getIds:I = 0x7

.field static final TRANSACTION_getRunningStatus:I = 0xb

.field static final TRANSACTION_imageQuality:I = 0xf

.field static final TRANSACTION_invokeCmd:I = 0x13

.field static final TRANSACTION_isIDValid:I = 0x12

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_pauseEnrol:I = 0x9

.field static final TRANSACTION_putKey:I = 0x10

.field static final TRANSACTION_release:I = 0x3

.field static final TRANSACTION_removeTemplate:I = 0x6

.field static final TRANSACTION_resumeEnrol:I = 0xa

.field static final TRANSACTION_setFpMaxCount:I = 0xd

.field static final TRANSACTION_startAuthenticate:I = 0x11

.field static final TRANSACTION_startEnrol:I = 0x4

.field static final TRANSACTION_startIdentify:I = 0x5

.field static final TRANSACTION_updateFpName:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Lcom/zte/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.zte.fingerprint.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/zte/fingerprint/IFingerprintService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/zte/fingerprint/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 43
    :sswitch_0
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->open(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 52
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_2
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 61
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->cancel(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 62
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_3
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 71
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->release(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 72
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_4
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 85
    .local v6, "_arg2":J
    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/zte/fingerprint/IFingerprintService$Stub;->startEnrol(Lcom/zte/fingerprint/IFingerprintClient;Ljava/lang/String;J)I

    move-result v8

    .line 86
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_result":I
    :sswitch_5
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 98
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 99
    .restart local v6    # "_arg2":J
    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/zte/fingerprint/IFingerprintService$Stub;->startIdentify(Lcom/zte/fingerprint/IFingerprintClient;[IJ)I

    move-result v8

    .line 100
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":[I
    .end local v6    # "_arg2":J
    .end local v8    # "_result":I
    :sswitch_6
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 110
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/zte/fingerprint/IFingerprintService$Stub;->removeTemplate(Lcom/zte/fingerprint/IFingerprintClient;I)I

    move-result v8

    .line 112
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_7
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->getIds(Lcom/zte/fingerprint/IFingerprintClient;)[I

    move-result-object v8

    .line 122
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 128
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":[I
    :sswitch_8
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/zte/fingerprint/IFingerprintService$Stub;->getFpName(Lcom/zte/fingerprint/IFingerprintClient;I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->pauseEnrol(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 144
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_a
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 153
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->resumeEnrol(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 154
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_b
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 163
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->getRunningStatus(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 164
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_c
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 174
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/fingerprint/IFingerprintService$Stub;->updateFpName(Lcom/zte/fingerprint/IFingerprintClient;ILjava/lang/String;)I

    move-result v8

    .line 178
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_d
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/zte/fingerprint/IFingerprintService$Stub;->setFpMaxCount(Lcom/zte/fingerprint/IFingerprintClient;I)I

    move-result v8

    .line 190
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_e
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 199
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->factoryTest(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 200
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_f
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 209
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->imageQuality(Lcom/zte/fingerprint/IFingerprintClient;)I

    move-result v8

    .line 210
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v8    # "_result":I
    :sswitch_10
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/zte/fingerprint/IFingerprintService$Stub;->putKey(Lcom/zte/fingerprint/IFingerprintClient;Ljava/lang/String;)I

    move-result v8

    .line 222
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_11
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 232
    .restart local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 234
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 236
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg3":J
    move-object v0, p0

    .line 237
    invoke-virtual/range {v0 .. v5}, Lcom/zte/fingerprint/IFingerprintService$Stub;->startAuthenticate(Lcom/zte/fingerprint/IFingerprintClient;[B[BJ)I

    move-result v8

    .line 238
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v1    # "_arg0":Lcom/zte/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":J
    .end local v8    # "_result":I
    :sswitch_12
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 247
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->isIDValid([B)Z

    move-result v8

    .line 248
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v8, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    .end local v1    # "_arg0":[B
    .end local v8    # "_result":Z
    :sswitch_13
    const-string v0, "com.zte.fingerprint.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 257
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/IFingerprintService$Stub;->invokeCmd([B)[B

    move-result-object v8

    .line 258
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
