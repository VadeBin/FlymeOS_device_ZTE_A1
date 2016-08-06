.class Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;
.super Ljava/lang/Object;
.source "SelectShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectShareAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemInfo"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectShareAppActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "an"    # Ljava/lang/String;
    .param p4, "pn"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->this$0:Lcom/android/shotcutkey/SelectShareAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 179
    iput-object p3, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->appName:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->packageName:Ljava/lang/String;

    .line 181
    iput-object p5, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->className:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
