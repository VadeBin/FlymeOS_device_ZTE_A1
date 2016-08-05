.class final Lcom/zte/fingerprint/datatype/FingerData$1;
.super Ljava/lang/Object;
.source "FingerData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/datatype/FingerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zte/fingerprint/datatype/FingerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/fingerprint/datatype/FingerData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    new-instance v0, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-direct {v0, p1}, Lcom/zte/fingerprint/datatype/FingerData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/datatype/FingerData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/fingerprint/datatype/FingerData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 20
    new-array v0, p1, [Lcom/zte/fingerprint/datatype/FingerData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/datatype/FingerData$1;->newArray(I)[Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v0

    return-object v0
.end method
