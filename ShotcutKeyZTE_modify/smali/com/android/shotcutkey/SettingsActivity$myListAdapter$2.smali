.class Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 239
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$6()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST_SHAKE onCheckedChanged() switch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "specialkey_shake_switch"

    .line 248
    const/4 v2, 0x1

    .line 246
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "specialkey_shake_switch"

    .line 253
    const/4 v2, 0x0

    .line 251
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method