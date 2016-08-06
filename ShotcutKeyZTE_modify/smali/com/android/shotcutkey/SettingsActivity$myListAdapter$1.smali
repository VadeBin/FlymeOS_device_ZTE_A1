.class Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v4, 0xfa

    .line 191
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$6()Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStopTrackingTouch() progress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string v3, ",  mSeekbar.getMax() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-static {v3}, Lcom/android/shotcutkey/SettingsActivity;->access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/SeekBarZTE;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$3(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "specialkey_doubleclick_interval_threshold"

    .line 200
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 199
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v4, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "specialkey_doubleclick_interval_threshold"

    .line 204
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "specialkey_doubleclick_interval_threshold"

    .line 210
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-static {v3}, Lcom/android/shotcutkey/SettingsActivity;->access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/SeekBarZTE;->getMax()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    sub-int/2addr v3, v4

    .line 208
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
