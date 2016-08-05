.class public Lcom/zte/fingerprint/datatype/FingerData;
.super Lcom/zte/fingerprint/datatype/DataInfo;
.source "FingerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/fingerprint/datatype/FingerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fingerId:I

.field private fingerPrintName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/zte/fingerprint/datatype/FingerData$1;

    invoke-direct {v0}, Lcom/zte/fingerprint/datatype/FingerData$1;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/datatype/FingerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zte/fingerprint/datatype/DataInfo;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/fingerprint/datatype/DataInfo;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerPrintName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerId:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/fingerprint/datatype/DataInfo;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerPrintName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerId:I

    return v0
.end method

.method public getFingerPrintName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerPrintName:Ljava/lang/String;

    return-object v0
.end method

.method public setFingerId(I)V
    .locals 0
    .param p1, "fingerId"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerId:I

    .line 52
    return-void
.end method

.method public setFingerPrintName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fingerPrintName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerPrintName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerPrintName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/zte/fingerprint/datatype/FingerData;->fingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
