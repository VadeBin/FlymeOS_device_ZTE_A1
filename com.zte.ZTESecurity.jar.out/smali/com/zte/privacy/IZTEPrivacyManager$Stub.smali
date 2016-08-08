.class public abstract Lcom/zte/privacy/IZTEPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "IZTEPrivacyManager.java"

# interfaces
.implements Lcom/zte/privacy/IZTEPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/IZTEPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.privacy.IZTEPrivacyManager"

.field static final TRANSACTION_addLockedPackage:I = 0xb

.field static final TRANSACTION_areNotificationEnabled:I = 0x11

.field static final TRANSACTION_checkCallingPermission:I = 0x2

.field static final TRANSACTION_checkNeedAskPermission:I = 0x12

.field static final TRANSACTION_checkNeedAskSysPermission:I = 0x13

.field static final TRANSACTION_checkNetworkAccessPermission:I = 0x6

.field static final TRANSACTION_checkRecordingPermission:I = 0x7

.field static final TRANSACTION_clearAllLockedPackages:I = 0xe

.field static final TRANSACTION_clearPackagePermissionSetting:I = 0x5

.field static final TRANSACTION_enforceAppLocked:I = 0xa

.field static final TRANSACTION_getAllLockedPackages:I = 0xf

.field static final TRANSACTION_getAntiPhoneRecordingSetting:I = 0x8

.field static final TRANSACTION_getPackageSetting:I = 0x4

.field static final TRANSACTION_getSecurityExtentionVersion:I = 0x1

.field static final TRANSACTION_isPackageLocked:I = 0xd

.field static final TRANSACTION_removeLockedPackage:I = 0xc

.field static final TRANSACTION_savePackageSetting:I = 0x3

.field static final TRANSACTION_setAntiPhoneRecordingSetting:I = 0x9

.field static final TRANSACTION_setNotificationsEnabled:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p0, p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.zte.privacy.IZTEPrivacyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/privacy/IZTEPrivacyManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/zte/privacy/IZTEPrivacyManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getSecurityExtentionVersion()I

    move-result v4

    .line 49
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v4

    .line 61
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    sget-object v6, Lcom/zte/privacy/ZTEPackagePermissionSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .line 75
    .local v0, "_arg0":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    goto :goto_1

    .line 81
    .end local v0    # "_arg0":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :sswitch_4
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v4

    .line 85
    .local v4, "_result":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v4, p3, v7}, Lcom/zte/privacy/ZTEPackagePermissionSetting;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :sswitch_5
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->clearPackagePermissionSetting(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkNetworkAccessPermission(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_7
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkRecordingPermission(Ljava/lang/String;I)I

    move-result v4

    .line 123
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_8
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getAntiPhoneRecordingSetting()I

    move-result v4

    .line 131
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v4    # "_result":I
    :sswitch_9
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->setAntiPhoneRecordingSetting(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->enforceAppLocked(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->addLockedPackage(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->removeLockedPackage(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->isPackageLocked(Ljava/lang/String;)Z

    move-result v4

    .line 177
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->clearAllLockedPackages()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    :sswitch_f
    const-string v6, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getAllLockedPackages()Ljava/util/List;

    move-result-object v5

    .line 192
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 198
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 203
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->setNotificationsEnabled(Ljava/lang/String;Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_3
    move v1, v6

    .line 202
    goto :goto_2

    .line 209
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->areNotificationEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 213
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v7

    .line 226
    .local v2, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkNeedAskPermission(Ljava/lang/String;IZ)I

    move-result v4

    .line 227
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":I
    :cond_5
    move v2, v6

    .line 225
    goto :goto_3

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_13
    const-string v8, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v3, v7

    .line 242
    .local v3, "_arg3":Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkNeedAskSysPermission(Ljava/lang/String;IIZ)I

    move-result v4

    .line 243
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":I
    :cond_6
    move v3, v6

    .line 241
    goto :goto_4

    .line 38
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
