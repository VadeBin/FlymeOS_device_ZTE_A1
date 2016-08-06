.class Lcom/zte/mifavor/widget/DateTimePickerZTE$5;
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
    .line 409
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 7
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 411
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 412
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1300(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v1

    .line 413
    .local v1, "minValue":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1300(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v0

    .line 414
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 415
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 416
    .local v2, "newHour":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 417
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v6, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1002(Lcom/zte/mifavor/widget/DateTimePickerZTE;Z)Z

    .line 418
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 429
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 430
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 417
    goto :goto_0

    .line 421
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 422
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 423
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 424
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v6, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1002(Lcom/zte/mifavor/widget/DateTimePickerZTE;Z)Z

    .line 425
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 427
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$1400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 424
    goto :goto_2
.end method
