.class Lcom/zte/mifavor/widget/DateTimePickerZTE$4;
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
    .line 369
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 372
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1002(Lcom/zte/mifavor/widget/DateTimePickerZTE;Z)Z

    .line 376
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 380
    return-void

    .line 375
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
