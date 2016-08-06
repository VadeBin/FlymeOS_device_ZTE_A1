.class public Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "appDataLauncher"
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
    .line 132
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;->appicon:I

    .line 134
    iput p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;->appname:I

    .line 135
    return-void
.end method
