.class Lcom/android/bluetooth/btservice/AdapterService$3;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService;->handleWfdConcurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$checkboxLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->val$checkboxLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 691
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 692
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->val$checkboxLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x8050089

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/bluetooth/btservice/AdapterService$3$3;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/btservice/AdapterService$3$3;-><init>(Lcom/android/bluetooth/btservice/AdapterService$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/bluetooth/btservice/AdapterService$3$2;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/btservice/AdapterService$3$2;-><init>(Lcom/android/bluetooth/btservice/AdapterService$3;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/bluetooth/btservice/AdapterService$3$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/btservice/AdapterService$3$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService$3;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$802(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 730
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$800(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 731
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$800(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 733
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$800(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 734
    return-void
.end method
