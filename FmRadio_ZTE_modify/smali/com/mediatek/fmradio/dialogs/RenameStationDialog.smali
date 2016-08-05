.class public Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
.super Landroid/app/DialogFragment;
.source "RenameStationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
    }
.end annotation


# static fields
.field private static final STATION_NAME:Ljava/lang/String; = "station_name"


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;

.field private mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;

    .line 65
    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->isSameNameExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;)Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;

    return-object v0
.end method

.method private isSameNameExist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    const/4 v7, 0x0

    .line 243
    .local v7, "isExist":Z
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 245
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v5

    .line 246
    const-string v3, "COLUMN_STATION_NAME=?"

    .line 247
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 243
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 250
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 253
    const/4 v7, 0x1

    .line 256
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1
    return v7

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    throw v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    .locals 3
    .param p0, "stationName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    invoke-direct {v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;-><init>()V

    .line 79
    .local v1, "fragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "station_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "station_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "stationName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f03003a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "v":Landroid/view/View;
    const v4, 0x7f06005a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/EditText;

    .line 111
    .local v0, "editTextStationName":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 113
    new-instance v4, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    const v5, 0x7f0900c2

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v4

    .line 117
    const v5, 0x7f090058

    .line 118
    new-instance v6, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;Landroid/view/View;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4, v5, v6}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v4

    .line 198
    const v5, 0x7f090059

    new-instance v6, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$2;

    invoke-direct {v6, p0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog$2;-><init>(Lcom/mediatek/fmradio/dialogs/RenameStationDialog;)V

    invoke-virtual {v4, v5, v6}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v4

    .line 113
    iput-object v4, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    .line 218
    iget-object v4, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 219
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 220
    iget-object v4, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    return-object v4
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 231
    const-string v3, "mShowing"

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 232
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->mRenameDialog:Lcom/zte/mifavor/widget/AlertDialog;

    .line 235
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 233
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
