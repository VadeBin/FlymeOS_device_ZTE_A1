.class Lcom/android/shotcutkey/MainActivity$appInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "appInfo"
.end annotation


# instance fields
.field appicon:Landroid/graphics/drawable/Drawable;

.field appname:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/shotcutkey/MainActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/MainActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$appInfo;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/shotcutkey/MainActivity$appInfo;->appicon:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object p3, p0, Lcom/android/shotcutkey/MainActivity$appInfo;->appname:Ljava/lang/String;

    .line 77
    return-void
.end method
