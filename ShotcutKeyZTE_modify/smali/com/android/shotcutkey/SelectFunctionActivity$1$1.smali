.class Lcom/android/shotcutkey/SelectFunctionActivity$1$1;
.super Ljava/lang/Object;
.source "SelectFunctionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectFunctionActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectFunctionActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 138
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$3()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, ",   phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$10(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$11(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "contact_name"

    .line 152
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$11(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "phone_number"

    .line 158
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$10(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I
    invoke-static {v1}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$7(Lcom/android/shotcutkey/SelectFunctionActivity;)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppIndexByGroupId(II)Z

    .line 167
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$1$1;->this$1:Lcom/android/shotcutkey/SelectFunctionActivity$1;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity$1;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity$1;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity$1;)Lcom/android/shotcutkey/SelectFunctionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    .line 168
    return-void
.end method
