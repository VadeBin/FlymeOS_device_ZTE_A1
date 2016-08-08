.class public Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "groupData"
.end annotation


# instance fields
.field private childData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$childData;",
            ">;"
        }
    .end annotation
.end field

.field private imageId:I

.field final synthetic this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

.field private titleId:I


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V
    .locals 1
    .param p2, "titleId"    # I
    .param p3, "imageId"    # I

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->titleId:I

    .line 25
    iput p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->imageId:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->childData:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addChildData(Lcom/android/shotcutkey/ShotcutKeyDB$childData;)V
    .locals 1
    .param p1, "child"    # Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->childData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getChildData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$childData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->childData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildDataSize()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->childData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupImage()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->imageId:I

    return v0
.end method

.method public getGroupTitle()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->titleId:I

    return v0
.end method
