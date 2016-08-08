.class public Lcom/zte/fingerprint/main/DeleteDialog;
.super Landroid/app/DialogFragment;
.source "DeleteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/DeleteDialog$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/zte/fingerprint/main/DeleteDialog$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/main/DeleteDialog;)Lcom/zte/fingerprint/main/DeleteDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/zte/fingerprint/main/DeleteDialog;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/zte/fingerprint/main/DeleteDialog;->mCallback:Lcom/zte/fingerprint/main/DeleteDialog$Callback;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    move-object v0, p1

    check-cast v0, Lcom/zte/fingerprint/main/DeleteDialog$Callback;

    iput-object v0, p0, Lcom/zte/fingerprint/main/DeleteDialog;->mCallback:Lcom/zte/fingerprint/main/DeleteDialog$Callback;

    .line 17
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 19
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/DeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Delete Fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    const-string v1, "You will no longer be able to unlock the phone using this finger."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Delete"

    new-instance v3, Lcom/zte/fingerprint/main/DeleteDialog$2;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/DeleteDialog$2;-><init>(Lcom/zte/fingerprint/main/DeleteDialog;)V

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/zte/fingerprint/main/DeleteDialog$1;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/DeleteDialog$1;-><init>(Lcom/zte/fingerprint/main/DeleteDialog;)V

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
