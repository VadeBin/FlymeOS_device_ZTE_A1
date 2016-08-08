.class public Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "appDetailInfo"
.end annotation


# instance fields
.field icon:I

.field info:I

.field final synthetic this$0:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V
    .locals 0
    .param p2, "icon"    # I
    .param p3, "info"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->icon:I

    .line 114
    iput p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->info:I

    .line 115
    return-void
.end method
