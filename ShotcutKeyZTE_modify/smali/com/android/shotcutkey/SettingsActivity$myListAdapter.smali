.class Lcom/android/shotcutkey/SettingsActivity$myListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/android/shotcutkey/SettingsActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/shotcutkey/SettingsActivity;Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;-><init>(Lcom/android/shotcutkey/SettingsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)Lcom/android/shotcutkey/SettingsActivity;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity;->access$0(Lcom/android/shotcutkey/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/SettingsActivity;->access$0(Lcom/android/shotcutkey/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ViewHolder"
        }
    .end annotation

    .prologue
    const/16 v11, 0xfa

    const v10, 0x7f06005f

    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 139
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$1(Lcom/android/shotcutkey/SettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f030047

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    new-instance v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    const/4 v7, 0x0

    invoke-direct {v1, v4, v7}, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;-><init>(Lcom/android/shotcutkey/SettingsActivity;Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;)V

    .line 141
    .local v1, "holder":Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;
    const v4, 0x7f06003c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->title:Landroid/widget/TextView;

    .line 143
    const v4, 0x7f06005e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 142
    iput-object v4, v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->subTitle:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v7, v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$0(Lcom/android/shotcutkey/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 150
    const-string v8, "title"

    .line 149
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-nez p1, :cond_3

    .line 152
    iget-object v4, v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    const v4, 0x7f060072

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/widget/SeekBarZTE;

    invoke-static {v5, v4}, Lcom/android/shotcutkey/SettingsActivity;->access$2(Lcom/android/shotcutkey/SettingsActivity;Lcom/zte/mifavor/widget/SeekBarZTE;)V

    .line 158
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$3(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 159
    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "specialkey_doubleclick_interval_threshold"

    .line 160
    iget-object v6, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1f4

    .line 158
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "progress":I
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$5()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    # getter for: Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SettingsActivity;->access$6()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LIST_RESPONSE_SPEED mSeekbar.progress  :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 166
    if-lt v2, v11, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 168
    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "specialkey_doubleclick_interval_threshold"

    .line 167
    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;

    move-result-object v4

    new-instance v5, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$1;-><init>(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 300
    .end local v2    # "progress":I
    :cond_1
    :goto_1
    return-object p2

    .line 171
    .restart local v2    # "progress":I
    :cond_2
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 172
    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "specialkey_doubleclick_interval_threshold"

    .line 173
    iget-object v6, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-static {v6}, Lcom/android/shotcutkey/SettingsActivity;->access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->getMax()I

    move-result v6

    sub-int/2addr v6, v2

    .line 171
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 215
    .end local v2    # "progress":I
    :cond_3
    iget-object v7, v1, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->subTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$0(Lcom/android/shotcutkey/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 216
    const-string v8, "subTitle"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 215
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v4, 0x7f060071

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 220
    if-ne p1, v5, :cond_5

    .line 222
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 221
    check-cast v3, Lcom/zte/mifavor/widget/SwitchZTE;

    .line 225
    .local v3, "switchButton":Lcom/zte/mifavor/widget/SwitchZTE;
    :try_start_0
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 226
    iget-object v7, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "specialkey_shake_switch"

    .line 224
    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {v3, v6}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_2
    new-instance v4, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$2;-><init>(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_2

    .line 257
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v3    # "switchButton":Lcom/zte/mifavor/widget/SwitchZTE;
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 259
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 258
    check-cast v3, Lcom/zte/mifavor/widget/SwitchZTE;

    .line 262
    .restart local v3    # "switchButton":Lcom/zte/mifavor/widget/SwitchZTE;
    :try_start_1
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 263
    iget-object v7, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "specialkey_switch"

    .line 261
    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_4
    new-instance v4, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$3;

    invoke-direct {v4, p0}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter$3;-><init>(Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    :cond_6
    move v4, v6

    .line 264
    goto :goto_3

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    # getter for: Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v4}, Lcom/android/shotcutkey/SettingsActivity;->access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_4
.end method
