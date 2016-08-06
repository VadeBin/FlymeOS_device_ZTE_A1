.class Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DateTimePickerZTE;
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
            "Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mHour:I

.field private final mMinute:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1228
    new-instance v0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1202
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mYear:I

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMonth:I

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mDay:I

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mHour:I

    .line 1207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMinute:I

    .line 1208
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/DateTimePickerZTE$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$1;

    .prologue
    .line 1175
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIII)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1191
    iput p2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mYear:I

    .line 1192
    iput p3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMonth:I

    .line 1193
    iput p4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mDay:I

    .line 1194
    iput p5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mHour:I

    .line 1195
    iput p6, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMinute:I

    .line 1196
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIIILcom/zte/mifavor/widget/DateTimePickerZTE$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$1;

    .prologue
    .line 1175
    invoke-direct/range {p0 .. p6}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIIII)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1175
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1700(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1175
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1175
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1218
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1219
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    return-void
.end method
