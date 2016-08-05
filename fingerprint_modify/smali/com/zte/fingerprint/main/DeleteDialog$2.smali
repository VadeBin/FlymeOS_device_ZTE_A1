.class Lcom/zte/fingerprint/main/DeleteDialog$2;
.super Ljava/lang/Object;
.source "DeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/DeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/DeleteDialog;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/DeleteDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/main/DeleteDialog;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/fingerprint/main/DeleteDialog$2;->this$0:Lcom/zte/fingerprint/main/DeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/fingerprint/main/DeleteDialog$2;->this$0:Lcom/zte/fingerprint/main/DeleteDialog;

    # getter for: Lcom/zte/fingerprint/main/DeleteDialog;->mCallback:Lcom/zte/fingerprint/main/DeleteDialog$Callback;
    invoke-static {v0}, Lcom/zte/fingerprint/main/DeleteDialog;->access$000(Lcom/zte/fingerprint/main/DeleteDialog;)Lcom/zte/fingerprint/main/DeleteDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/fingerprint/main/DeleteDialog$Callback;->onDeleteAccepted()V

    .line 29
    return-void
.end method
