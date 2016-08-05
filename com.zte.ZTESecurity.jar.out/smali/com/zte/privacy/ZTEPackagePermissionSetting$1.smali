.class final Lcom/zte/privacy/ZTEPackagePermissionSetting$1;
.super Ljava/lang/Object;
.source "ZTEPackagePermissionSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPackagePermissionSetting;
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
        "Lcom/zte/privacy/ZTEPackagePermissionSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zte/privacy/ZTEPackagePermissionSetting;-><init>(Landroid/os/Parcel;Lcom/zte/privacy/ZTEPackagePermissionSetting$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPackagePermissionSetting$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/zte/privacy/ZTEPackagePermissionSetting;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPackagePermissionSetting$1;->newArray(I)[Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method
