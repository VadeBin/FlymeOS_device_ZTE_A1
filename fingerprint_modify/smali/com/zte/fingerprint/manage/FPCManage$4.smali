.class Lcom/zte/fingerprint/manage/FPCManage$4;
.super Ljava/lang/Object;
.source "FPCManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/FPCManage;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/FPCManage;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/FPCManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/FPCManage;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zte/fingerprint/manage/FPCManage$4;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 201
    return-void
.end method
