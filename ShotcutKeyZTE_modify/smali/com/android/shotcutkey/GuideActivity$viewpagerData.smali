.class Lcom/android/shotcutkey/GuideActivity$viewpagerData;
.super Ljava/lang/Object;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "viewpagerData"
.end annotation


# instance fields
.field private mHaveButton:Z

.field private mImageId:I

.field final synthetic this$0:Lcom/android/shotcutkey/GuideActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/GuideActivity;IZ)V
    .locals 0
    .param p2, "image"    # I
    .param p3, "hasButton"    # Z

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->this$0:Lcom/android/shotcutkey/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p2, p0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mImageId:I

    .line 90
    iput-boolean p3, p0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mHaveButton:Z

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/GuideActivity$viewpagerData;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mImageId:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/GuideActivity$viewpagerData;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mHaveButton:Z

    return v0
.end method
