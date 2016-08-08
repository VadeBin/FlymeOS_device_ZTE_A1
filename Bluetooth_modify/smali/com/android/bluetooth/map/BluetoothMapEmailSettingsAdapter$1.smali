.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$000(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 87
    .local v0, "group":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$100(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mGroupStatus:[I
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$200(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)[I

    move-result-object v1

    const/4 v2, 0x1

    aput v2, v1, p1

    .line 90
    :cond_0
    return-void
.end method
