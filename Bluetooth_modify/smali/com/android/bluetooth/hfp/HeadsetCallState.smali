.class Lcom/android/bluetooth/hfp/HeadsetCallState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mCallState:I

.field mNumActive:I

.field mNumHeld:I

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    .line 393
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    .line 394
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    .line 395
    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    .line 396
    iput p5, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    .line 397
    return-void
.end method
