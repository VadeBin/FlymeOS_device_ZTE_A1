.class public Lcom/android/shotcutkey/ShotcutKeyDB$childData;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "childData"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private enabled:Z

.field private imageId:I

.field private packageName:Ljava/lang/String;

.field private subTitleId:I

.field final synthetic this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

.field private titleId:I


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShotcutKeyDB;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "imageId"    # I
    .param p3, "titleId"    # I
    .param p4, "subTitleId"    # I
    .param p5, "enabled"    # Z
    .param p6, "pn"    # Ljava/lang/String;
    .param p7, "cn"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->imageId:I

    .line 62
    iput p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->titleId:I

    .line 63
    iput p4, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->subTitleId:I

    .line 64
    iput-boolean p5, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->enabled:Z

    .line 65
    iput-object p6, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->packageName:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->className:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->enabled:Z

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->imageId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->subTitleId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->titleId:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->enabled:Z

    .line 71
    return-void
.end method
