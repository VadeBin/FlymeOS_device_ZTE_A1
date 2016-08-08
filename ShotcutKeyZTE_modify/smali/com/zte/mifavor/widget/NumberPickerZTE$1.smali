.class Lcom/zte/mifavor/widget/NumberPickerZTE$1;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$000(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 701
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zte/extres/R$id;->increment:I

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x1

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    goto :goto_0
.end method
