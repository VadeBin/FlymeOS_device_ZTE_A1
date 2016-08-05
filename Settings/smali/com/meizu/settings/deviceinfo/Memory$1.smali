.class Lcom/meizu/settings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/Memory$1;->this$0:Lcom/meizu/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
# hxs modify begin
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const-string v5, "Memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received storage state changed notification that "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed state from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory$1;->this$0:Lcom/meizu/settings/deviceinfo/Memory;

    # getter for: Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/Memory;->getMStorageManager(Lcom/meizu/settings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory$1;->this$0:Lcom/meizu/settings/deviceinfo/Memory;

    # getter for: Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/Memory;->access$300(Lcom/meizu/settings/deviceinfo/Memory;)Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->setStorageVolume(Landroid/os/storage/StorageVolume;)V

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory$1;->this$0:Lcom/meizu/settings/deviceinfo/Memory;

    # getter for: Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/Memory;->access$300(Lcom/meizu/settings/deviceinfo/Memory;)Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory$1;->this$0:Lcom/meizu/settings/deviceinfo/Memory;

    # invokes: Lcom/meizu/settings/deviceinfo/Memory;->checkIfDlgShowing()V
    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/Memory;->doCheckIfDlgShowing(Lcom/meizu/settings/deviceinfo/Memory;)V

    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    return-void

    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
# hxs modify end
