.class Lcom/android/shotcutkey/SelectFunctionActivity$1;
.super Ljava/lang/Object;
.source "SelectFunctionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectFunctionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SelectFunctionActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectFunctionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, -0x1

    .line 101
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$2()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$3()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mGridView onItemClick() position = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 103
    const-string v7, ",  id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    if-ne p3, v5, :cond_3

    .line 108
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$2()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$3()Ljava/lang/String;

    move-result-object v5

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onItemClick() image = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$5(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 112
    const-string v7, ",  info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    iget-object v7, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$5(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "info"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$5(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$6(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$5(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    .line 241
    :cond_2
    :goto_0
    return-void

    .line 118
    :cond_3
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    if-ne p3, v5, :cond_4

    .line 119
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "mode"

    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$7(Lcom/android/shotcutkey/SelectFunctionActivity;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$6(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/shotcutkey/SelectAppActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v5, v3}, Lcom/android/shotcutkey/SelectFunctionActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    goto :goto_0

    .line 125
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x6

    if-ne p3, v5, :cond_7

    .line 126
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$1(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 127
    const v6, 0x7f03003b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    check-cast v1, Landroid/widget/LinearLayout;

    .line 128
    .local v1, "camouflageCalls":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 129
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$6(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Context;

    move-result-object v6

    .line 128
    invoke-direct {v5, v6}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    const v6, 0x7f09006c

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v5

    .line 133
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$8(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    new-instance v7, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;

    invoke-direct {v7, p0}, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity$1;)V

    .line 132
    invoke-virtual {v5, v6, v7}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v5

    .line 171
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$8(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09008e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    new-instance v7, Lcom/android/shotcutkey/SelectFunctionActivity$1$2;

    invoke-direct {v7, p0}, Lcom/android/shotcutkey/SelectFunctionActivity$1$2;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity$1;)V

    .line 170
    invoke-virtual {v5, v6, v7}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v0

    .line 179
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$12(Lcom/android/shotcutkey/SelectFunctionActivity;Lcom/zte/mifavor/widget/AlertDialog;)V

    .line 186
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    .line 187
    const v5, 0x7f06005b

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 186
    invoke-static {v6, v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$13(Lcom/android/shotcutkey/SelectFunctionActivity;Landroid/widget/EditText;)V

    .line 188
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$11(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 189
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "contact_name"

    .line 188
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "cn":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 191
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_5
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 194
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/shotcutkey/SelectFunctionActivity$1$3;

    invoke-direct {v6, p0}, Lcom/android/shotcutkey/SelectFunctionActivity$1$3;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    .line 212
    const v5, 0x7f06005c

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 211
    invoke-static {v6, v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$14(Lcom/android/shotcutkey/SelectFunctionActivity;Landroid/widget/EditText;)V

    .line 213
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$11(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 214
    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "phone_number"

    .line 213
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "pn":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 216
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$10(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_6
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$10(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/shotcutkey/SelectFunctionActivity$1$4;

    invoke-direct {v6, p0}, Lcom/android/shotcutkey/SelectFunctionActivity$1$4;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mCamouflageCallsDialog:Lcom/zte/mifavor/widget/AlertDialog;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$15(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    goto/16 :goto_0

    .line 238
    .end local v0    # "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .end local v1    # "camouflageCalls":Landroid/widget/LinearLayout;
    .end local v2    # "cn":Ljava/lang/String;
    .end local v4    # "pn":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    iget-object v6, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$7(Lcom/android/shotcutkey/SelectFunctionActivity;)I

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppIndexByGroupId(II)Z

    .line 239
    iget-object v5, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v5}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    goto/16 :goto_0
.end method
