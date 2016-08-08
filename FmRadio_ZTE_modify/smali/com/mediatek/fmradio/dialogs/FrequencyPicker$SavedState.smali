.class Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/dialogs/FrequencyPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKHZ:I

.field private final mMHZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mMHZ:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mKHZ:I

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "mhz"    # I
    .param p3, "khz"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    iput p2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mMHZ:I

    .line 161
    iput p3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mKHZ:I

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getKHz()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mKHZ:I

    return v0
.end method

.method public getMHz()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mMHZ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mMHZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$SavedState;->mKHZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return-void
.end method
