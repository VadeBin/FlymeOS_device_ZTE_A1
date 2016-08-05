.class public Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "DateTimePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;
.implements Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;,
        Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDateCallBack:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;

.field private final mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimeCallback:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;

.field private mTitleNeedsUpdate:Z

.field private tvWeekday:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "datecallBack"    # Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;
    .param p4, "timecallBack"    # Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I
    .param p8, "hourOfDay"    # I
    .param p9, "minute"    # I
    .param p10, "is24HourView"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 132
    iput-object p3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateCallBack:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;

    .line 133
    iput-object p4, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTimeCallback:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;

    .line 134
    iput p8, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mInitialHourOfDay:I

    .line 135
    iput p9, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mInitialMinute:I

    .line 136
    iput-boolean p10, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mIs24HourView:Z

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    .line 140
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    sget v4, Lcom/zte/extres/R$string;->date_time_done:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 142
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->setIcon(I)V

    .line 144
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/zte/extres/R$layout;->datetime_picker_dialogzte:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->setView(Landroid/view/View;)V

    .line 148
    sget v3, Lcom/zte/extres/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iput-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .line 149
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v3, p5, p6, p7, p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->init(IIILcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 150
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 151
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget v4, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 152
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget v4, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 153
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v3, p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;)V

    .line 154
    sget v3, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    .line 155
    invoke-direct {p0, p5, p6, p7}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->updateTitle(III)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;
    .param p3, "timecallBack"    # Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "hourOfDay"    # I
    .param p8, "minute"    # I
    .param p9, "is24HourView"    # Z

    .prologue
    .line 109
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V

    .line 110
    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateCallBack:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->clearFocus()V

    .line 208
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateCallBack:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/DateTimePickerZTE;III)V

    .line 211
    :cond_0
    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTimeCallback:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->clearFocus()V

    .line 172
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTimeCallback:Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE$OnTimeSetListener;->onTimeSet(Lcom/zte/mifavor/widget/DateTimePickerZTE;II)V

    .line 175
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 221
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 223
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 224
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 225
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 241
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 243
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 244
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void

    .line 235
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 237
    sget v1, Lcom/zte/extres/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Lcom/zte/mifavor/widget/DateTimePickerZTE;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tryNotifyDateSet()V

    .line 164
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tryNotifyTimeSet()V

    .line 165
    return-void
.end method

.method public onDateChanged(Lcom/zte/mifavor/widget/DateTimePickerZTE;III)V
    .locals 1
    .param p1, "view"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->init(IIILcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 179
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->updateTitle(III)V

    .line 180
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v5, "year"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 267
    .local v4, "year":I
    const-string v5, "month"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 268
    .local v3, "month":I
    const-string v5, "day"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "day":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v5, v4, v3, v0, p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->init(IIILcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 270
    const-string v5, "hour"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "hour":I
    const-string v5, "minute"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 272
    .local v2, "minute":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    const-string v6, "is24hour"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 273
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 274
    iget-object v5, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 275
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 254
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v1, "month"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v1, "day"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v1, "hour"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v1, "minute"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tryNotifyDateSet()V

    .line 216
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->tryNotifyTimeSet()V

    .line 217
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 218
    return-void
.end method

.method public onTimeChanged(Lcom/zte/mifavor/widget/DateTimePickerZTE;II)V
    .locals 0
    .param p1, "view"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setColor(I)V

    .line 161
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateDate(III)V

    .line 200
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 203
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerDialogZTE;->mDateTimePicker:Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 204
    return-void
.end method
