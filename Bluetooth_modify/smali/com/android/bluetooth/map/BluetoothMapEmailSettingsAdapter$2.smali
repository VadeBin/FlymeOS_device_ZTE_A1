.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

.field final synthetic val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$groupPosition:I

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 132
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$groupPosition:I

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v5

    .line 133
    .local v5, "parentGroup":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-boolean v4, v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 134
    .local v4, "oldIsChecked":Z
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iput-boolean p2, v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 135
    if-eqz p2, :cond_6

    .line 136
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->getChild(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;
    invoke-static {v7, v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$400(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 138
    .local v0, "childIndex":I
    const/4 v3, 0x1

    .line 139
    .local v3, "isAllChildClicked":Z
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mSlotsLeft:I
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$500(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_5

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 142
    if-eq v2, v0, :cond_4

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 144
    .local v6, "siblings":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-boolean v7, v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-nez v7, :cond_4

    .line 145
    const/4 v3, 0x0

    .line 146
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v2    # "i":I
    .end local v6    # "siblings":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 159
    iput-boolean v11, v5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 160
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v11, :cond_1

    .line 161
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Z)Z

    .line 179
    .end local v0    # "childIndex":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v3    # "isAllChildClicked":Z
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-boolean v7, v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eq v7, v4, :cond_3

    .line 181
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    .line 184
    :cond_3
    return-void

    .line 141
    .restart local v0    # "childIndex":I
    .restart local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isAllChildClicked":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    iget-object v8, v8, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f050072

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->showWarning(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$600(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    .line 156
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iput-boolean v10, v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    goto :goto_1

    .line 169
    .end local v0    # "childIndex":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v3    # "isAllChildClicked":Z
    :cond_6
    iget-boolean v7, v5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eqz v7, :cond_7

    .line 170
    iput-boolean v10, v5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 171
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Z)Z

    .line 172
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 174
    :cond_7
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v7, v11}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Z)Z

    .line 175
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
