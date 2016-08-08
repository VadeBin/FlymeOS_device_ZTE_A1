.class Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectAppActivity;
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

.field final synthetic this$0:Lcom/android/shotcutkey/SelectAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectAppActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "an"    # Ljava/lang/String;
    .param p4, "pn"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    iput-object p3, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->appName:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->packageName:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->className:Ljava/lang/String;

    .line 173
    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->appName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
