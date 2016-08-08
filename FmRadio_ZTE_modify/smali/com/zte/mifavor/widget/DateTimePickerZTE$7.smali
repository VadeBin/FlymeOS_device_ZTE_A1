.class Lcom/zte/mifavor/widget/DateTimePickerZTE$7;
.super Ljava/lang/Object;
.source "DateTimePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 2
    .param p1, "picker"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 463
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestFocus()Z

    .line 464
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1002(Lcom/zte/mifavor/widget/DateTimePickerZTE;Z)Z

    .line 465
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 466
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 467
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
