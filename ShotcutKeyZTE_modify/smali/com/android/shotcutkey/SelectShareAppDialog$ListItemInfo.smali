.class Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
.super Ljava/lang/Object;
.source "SelectShareAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectShareAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemInfo"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private checked:Z

.field private className:Ljava/lang/String;

.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppDialog;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectShareAppDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "an"    # Ljava/lang/String;
    .param p4, "pn"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;
    .param p6, "enabled"    # Z
    .param p7, "checked"    # Z

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 250
    iput-object p3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->appName:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->packageName:Ljava/lang/String;

    .line 252
    iput-object p5, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->className:Ljava/lang/String;

    .line 253
    iput-boolean p6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->enabled:Z

    .line 254
    iput-boolean p7, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->checked:Z

    .line 255
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->checked:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->enabled:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->checked:Z

    .line 287
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->enabled:Z

    .line 279
    return-void
.end method
