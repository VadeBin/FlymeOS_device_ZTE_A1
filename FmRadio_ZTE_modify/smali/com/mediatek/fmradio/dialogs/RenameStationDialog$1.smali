.class Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;
.super Ljava/lang/Object;
.source "RenameStationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

.field private final synthetic val$stationName:Ljava/lang/String;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    iput-object p2, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->val$stationName:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x0

    .line 121
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->val$v:Landroid/view/View;

    .line 122
    const v8, 0x7f06005a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/EditText;

    .line 123
    .local v4, "mTV":Landroid/widget/EditText;
    const-string v5, ""

    .line 124
    .local v5, "nName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 128
    .local v3, "length":I
    const/4 v6, 0x0

    .line 129
    .local v6, "pos":I
    :goto_0
    if-lt v6, v3, :cond_1

    .line 154
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    # invokes: Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->isSameNameExist(Ljava/lang/String;)Z
    invoke-static {v7, v5}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->access$0(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 158
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->val$stationName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 160
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    invoke-virtual {v7}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    const v9, 0x7f0900c4

    invoke-virtual {v8, v9}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 166
    const-string v8, "mShowing"

    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 167
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 168
    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 130
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, "c":C
    const/16 v7, 0x5c

    if-eq v0, v7, :cond_2

    const/16 v7, 0x3a

    if-eq v0, v7, :cond_2

    const/16 v7, 0x3f

    if-eq v0, v7, :cond_2

    const/16 v7, 0x27

    if-eq v0, v7, :cond_2

    const/16 v7, 0x2a

    if-eq v0, v7, :cond_2

    const/16 v7, 0x2f

    if-eq v0, v7, :cond_2

    const/16 v7, 0x3e

    if-eq v0, v7, :cond_2

    const/16 v7, 0x3c

    if-eq v0, v7, :cond_2

    const/16 v7, 0x7c

    if-ne v0, v7, :cond_3

    .line 132
    :cond_2
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    invoke-virtual {v7}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    const v9, 0x7f0900c3

    invoke-virtual {v8, v9}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 135
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 138
    const-string v8, "mShowing"

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 139
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 140
    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 143
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 171
    .end local v0    # "c":C
    :catch_1
    move-exception v1

    .line 175
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 184
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 186
    const-string v8, "mShowing"

    .line 185
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 187
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 188
    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_2
    iget-object v7, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
    invoke-static {v7}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->access$1(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;)Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;->renameStationDone()V

    goto/16 :goto_1

    .line 190
    :catch_2
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
