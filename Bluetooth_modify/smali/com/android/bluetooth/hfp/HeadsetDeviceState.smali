.class Lcom/android/bluetooth/hfp/HeadsetDeviceState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mBatteryCharge:I

.field mRoam:I

.field mService:I

.field mSignal:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "roam"    # I
    .param p3, "signal"    # I
    .param p4, "batteryCharge"    # I

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    .line 378
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    .line 379
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    .line 380
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    .line 381
    return-void
.end method
