.class Lcom/zte/mifavor/widget/DateTimePickerZTE$2;
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
    .line 249
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 9
    .param p1, "picker"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 251
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 252
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 254
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$300(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 256
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 257
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 277
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$600(Lcom/zte/mifavor/widget/DateTimePickerZTE;III)V

    .line 279
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$700(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 280
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$800(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 281
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DateTimePickerZTE;->notifyDateChanged()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$900(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 282
    return-void

    .line 258
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 263
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 264
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 265
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 266
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 267
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$500(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 272
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 274
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
