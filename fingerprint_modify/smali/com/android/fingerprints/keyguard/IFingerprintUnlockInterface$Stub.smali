.class public abstract Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;
.super Landroid/os/Binder;
.source "IFingerprintUnlockInterface.java"

# interfaces
.implements Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_registerFingerActionCallback:I = 0x5

.field static final TRANSACTION_startUi:I = 0x1

.field static final TRANSACTION_stopUi:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x4

.field static final TRANSACTION_unregisterFingerActionCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p0, p0, v0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;
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
    const-string v1, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->startUi(Landroid/os/IBinder;IIII)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 60
    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_2
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->stopUi()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 67
    goto :goto_0

    .line 71
    :sswitch_3
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    move-result-object v1

    .line 74
    .local v1, "_arg0":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    invoke-virtual {p0, v1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 76
    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :sswitch_4
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg0":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    invoke-virtual {p0, v1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 85
    goto :goto_0

    .line 89
    .end local v1    # "_arg0":Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    :sswitch_5
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    invoke-virtual {p0, v1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 94
    goto :goto_0

    .line 98
    .end local v1    # "_arg0":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    :sswitch_6
    const-string v0, "com.android.fingerprints.keyguard.IFingerprintUnlockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    move-result-object v1

    .line 101
    .restart local v1    # "_arg0":Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    invoke-virtual {p0, v1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 103
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
