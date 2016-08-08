.class public Lcom/android/shotcutkey/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private flags:I

.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAppFlags()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/shotcutkey/AppInfo;->flags:I

    return v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/shotcutkey/AppInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setAppFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/shotcutkey/AppInfo;->flags:I

    .line 46
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->appName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->className:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLauncherIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->intent:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->packageName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/shotcutkey/AppInfo;->path:Ljava/lang/String;

    .line 38
    return-void
.end method
