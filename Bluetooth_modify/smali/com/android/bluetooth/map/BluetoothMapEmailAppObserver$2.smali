.class Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapEmailAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->createReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 205
    const-string v6, "[MAP]BluetoothMapEmailAppObserver"

    const-string v7, "onReceive\n"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 209
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "packageName":Ljava/lang/String;
    const-string v6, "[MAP]BluetoothMapEmailAppObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The installed package is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->access$100(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 213
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    invoke-virtual {v6, v5, v9}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->createAppItem(Landroid/content/pm/ResolveInfo;Z)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v1

    .line 214
    .local v1, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    if-eqz v1, :cond_0

    .line 215
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    .line 217
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;

    move-result-object v3

    .line 218
    .local v3, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->access$200(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v1    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 224
    .restart local v2    # "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4    # "packageName":Ljava/lang/String;
    const-string v6, "[MAP]BluetoothMapEmailAppObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The removed package is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-static {v6, v4}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->access$300(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v1

    .line 228
    .restart local v1    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    if-eqz v1, :cond_0

    .line 229
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    .line 230
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->access$200(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
