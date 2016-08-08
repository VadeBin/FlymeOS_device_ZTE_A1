.class Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2425
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2425
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2432
    return-void
.end method
