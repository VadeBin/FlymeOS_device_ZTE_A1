.class Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mArg:Ljava/lang/String;

.field mCommand:Ljava/lang/String;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 428
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    .line 429
    iput-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    .line 430
    return-void
.end method
