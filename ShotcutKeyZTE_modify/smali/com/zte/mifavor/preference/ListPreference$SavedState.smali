.class Lcom/zte/mifavor/preference/ListPreference$SavedState;
.super Lcom/zte/mifavor/preference/Preference$BaseSavedState;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/ListPreference;
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
            "Lcom/zte/mifavor/preference/ListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/zte/mifavor/preference/ListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/preference/ListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/preference/ListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 341
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 336
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    return-void
.end method
