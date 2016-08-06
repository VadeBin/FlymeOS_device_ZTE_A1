.class public Lcom/android/shotcutkey/ShotcutKeyDB$appData;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "appData"
.end annotation


# instance fields
.field appicon:I

.field appname:I

.field final synthetic this$0:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V
    .locals 0
    .param p2, "icon"    # I
    .param p3, "name"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appicon:I

    .line 124
    iput p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    .line 125
    return-void
.end method
