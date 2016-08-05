.class public Lcom/zte/fingerprint/manage/FPCManage;
.super Lcom/zte/fingerprint/manage/FingerprintManage;
.source "FPCManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private clearBtn:Landroid/widget/ImageButton;

.field private fingerData:Lcom/zte/fingerprint/datatype/FingerData;

.field private fingerInfo:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/ActivityZTE;)V
    .locals 1
    .param p1, "activity"    # Lcom/zte/mifavor/widget/ActivityZTE;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/manage/FingerprintManage;-><init>(Lcom/zte/mifavor/widget/ActivityZTE;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/manage/FPCManage;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/manage/FPCManage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkFingerName()V
    .locals 6

    .prologue
    .line 147
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "newName":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {v2}, Lcom/zte/fingerprint/utils/StringUtils;->hasText(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3, v2}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 157
    const-string v3, "csx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byte count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-static {v3, v4}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    .line 160
    .local v1, "mgr":Lcom/fingerprints/service/FingerprintManager;
    if-eqz v1, :cond_2

    .line 161
    const-string v3, "FingerPrint"

    const-string v4, "setIdName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v3

    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fingerprints/service/FingerprintManager;->setIdName(ILjava/lang/String;)Z

    .line 163
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "mgr":Lcom/fingerprints/service/FingerprintManager;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/manage/FPCManage;->finish()V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initComponent()V
    .locals 3

    .prologue
    .line 52
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/manage/FPCManage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->clearBtn:Landroid/widget/ImageButton;

    .line 53
    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->clearBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/fingerprint/manage/FPCManage$1;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/manage/FPCManage$1;-><init>(Lcom/zte/fingerprint/manage/FPCManage;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/manage/FPCManage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    .line 74
    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v2}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 78
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/manage/FPCManage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "saveButton":Landroid/view/View;
    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/zte/fingerprint/manage/FPCManage$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/fingerprint/manage/FPCManage$2;-><init>(Lcom/zte/fingerprint/manage/FPCManage;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/manage/FPCManage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .prologue
    const v4, 0x7f09005c

    .line 195
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 197
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005e

    new-instance v3, Lcom/zte/fingerprint/manage/FPCManage$4;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/manage/FPCManage$4;-><init>(Lcom/zte/fingerprint/manage/FPCManage;)V

    .line 198
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zte/fingerprint/manage/FPCManage$3;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/manage/FPCManage$3;-><init>(Lcom/zte/fingerprint/manage/FPCManage;)V

    .line 203
    invoke-virtual {v1, v4, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 209
    return-void
.end method


# virtual methods
.method public deleteFinger()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 174
    :try_start_0
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-static {v4, v5}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v3

    .line 175
    .local v3, "mgr":Lcom/fingerprints/service/FingerprintManager;
    if-eqz v3, :cond_2

    .line 176
    const-string v4, "FingerPrint"

    const-string v5, "deleteFingerData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 178
    invoke-virtual {v3}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v4

    array-length v2, v4

    .line 179
    .local v2, "maxCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 180
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-static {v4}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_screen"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-static {v4}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_application"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-static {v4}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_secret_zone"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/zte/fingerprint/manage/FPCManage;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.zte.fingerprint.FINGER_COUNT_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/manage/FPCManage;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "maxCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/manage/FPCManage;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v3    # "mgr":Lcom/fingerprints/service/FingerprintManager;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/fingerprint/manage/FPCManage;->showDeleteDialog()V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/utils/StringUtils;->hasText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/zte/fingerprint/manage/FPCManage;->checkFingerName()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f06005d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/manage/FPCManage;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/zte/fingerprint/manage/FPCManage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finger_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    iput-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    .line 48
    invoke-direct {p0}, Lcom/zte/fingerprint/manage/FPCManage;->initComponent()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
