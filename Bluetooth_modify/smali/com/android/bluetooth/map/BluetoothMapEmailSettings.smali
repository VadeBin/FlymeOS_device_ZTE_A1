.class public Lcom/android/bluetooth/map/BluetoothMapEmailSettings;
.super Landroid/app/Activity;
.source "BluetoothMapEmailSettings.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapEmailSettings"

.field private static final V:Z


# instance fields
.field mGroups:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->setContentView(I)V

    .line 50
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->mGroups:Ljava/util/LinkedHashMap;

    .line 54
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 56
    .local v1, "listView":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->mGroups:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->getAccountsEnabledCount()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V

    .line 57
    .local v0, "adapter":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 58
    return-void
.end method
