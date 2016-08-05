.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

.field final synthetic val$groupItem:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 256
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$700(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->getChild(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$400(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    .local v0, "childItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 260
    .local v1, "children":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-boolean v3, v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 261
    .local v3, "oldIsChecked":Z
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mSlotsLeft:I
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$500(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)I

    move-result v4

    if-lez v4, :cond_1

    .line 262
    iput-boolean p2, v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 263
    iget-boolean v4, v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eq v3, v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f050072

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->showWarning(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$600(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Ljava/lang/String;)V

    .line 268
    const/4 p2, 0x0

    goto :goto_0

    .line 272
    .end local v0    # "childItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v1    # "children":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "oldIsChecked":Z
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iput-boolean p2, v4, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 273
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->notifyDataSetChanged()V

    .line 274
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;

    invoke-direct {v5, p0}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method
