.class public Lcom/zte/mifavor/widget/TimePickerZTE;
.super Landroid/widget/FrameLayout;
.source "TimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;,
        Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 162
    sget v5, Lcom/zte/extres/R$layout;->time_picker:I

    .line 165
    .local v5, "layoutResourceId":I
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 167
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x1

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    sget v8, Lcom/zte/extres/R$id;->hour:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 169
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 170
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 171
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const v9, -0x666667

    const v10, -0x46ffc

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 173
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$2;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$2;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 188
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 190
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 193
    sget v8, Lcom/zte/extres/R$id;->divider:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 194
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 195
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 196
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 197
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ":"

    aput-object v9, v2, v8

    .line 198
    .local v2, "divider":[Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v8, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 199
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFocusable(Z)V

    .line 200
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 201
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const v9, -0x666667

    const v10, -0x46ffc

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 204
    sget v8, Lcom/zte/extres/R$id;->minute:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 205
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 206
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 207
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const v9, -0x666667

    const v10, -0x46ffc

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 209
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 210
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 211
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 212
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 213
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$3;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$3;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 239
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 241
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 244
    new-instance v8, Ljava/text/DateFormatSymbols;

    invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    .line 247
    sget v8, Lcom/zte/extres/R$id;->amPm:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, "amPmView":Landroid/view/View;
    instance-of v8, v1, Landroid/widget/Button;

    if-eqz v8, :cond_3

    .line 249
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 250
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v8, v1

    .line 251
    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 252
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$4;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$4;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isAmPmAtStart()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 288
    sget v8, Lcom/zte/extres/R$id;->timePickerLayout:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 289
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 290
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 296
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    .line 297
    .local v7, "startMargin":I
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    .line 298
    .local v3, "endMargin":I
    if-eq v7, v3, :cond_0

    .line 299
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 300
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 304
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    .end local v3    # "endMargin":I
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "startMargin":I
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 307
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 308
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 309
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 311
    sget-object v8, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V

    .line 314
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 315
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 317
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 318
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setEnabled(Z)V

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 326
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setImportantForAccessibility(I)V

    .line 328
    :cond_2
    return-void

    .line 261
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    move-object v8, v1

    .line 262
    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 263
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 264
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 265
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const v9, -0x666667

    const v10, -0x46ffc

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 267
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 268
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 269
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 270
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$5;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$5;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 281
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 283
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 331
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 332
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 335
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    .line 336
    const/4 v3, 0x0

    .line 340
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 341
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 342
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 343
    :cond_0
    iput-char v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    .line 344
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 346
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    .line 351
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 332
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 340
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 355
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    .line 707
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;->onTimeChanged(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    .line 711
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 719
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 724
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 727
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 731
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_set_pm_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 736
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_set_am_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 741
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 506
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 508
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 509
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 517
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 520
    if-eqz p2, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    goto :goto_0

    .line 512
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 513
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 402
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 589
    .local v1, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v6, :cond_1

    const-string v5, "Hm"

    .line 590
    .local v5, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v6, 0x48

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 594
    .local v2, "hourIndex":I
    if-ne v2, v8, :cond_0

    .line 595
    const/16 v6, 0x68

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 597
    :cond_0
    if-ne v2, v8, :cond_2

    .line 599
    const-string v4, ":"

    .line 611
    .local v4, "separatorText":Ljava/lang/String;
    :goto_1
    return-void

    .line 589
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourIndex":I
    .end local v4    # "separatorText":Ljava/lang/String;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v5, "hm"

    goto :goto_0

    .line 601
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 602
    .local v3, "minuteIndex":I
    if-ne v3, v8, :cond_3

    .line 603
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 606
    .end local v4    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 745
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 749
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    .line 702
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    .line 703
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 693
    :cond_1
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 694
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v2, :cond_3

    .line 695
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 696
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0

    .line 693
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 698
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 658
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 673
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 675
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 661
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 665
    :cond_1
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 667
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 670
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 673
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 759
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 762
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 765
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 766
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 768
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 483
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 485
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 486
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 488
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 389
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 643
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 644
    const-class v0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 645
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 649
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 650
    const-class v0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 626
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 628
    const/4 v0, 0x1

    .line 629
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 630
    or-int/lit16 v0, v0, 0x80

    .line 634
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 635
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 636
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    return-void

    .line 632
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 461
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    .line 462
    .local v0, "ss":Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 463
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 464
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 465
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 455
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 456
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IILcom/zte/mifavor/widget/TimePickerZTE$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 497
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 574
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 377
    :goto_1
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 532
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 550
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 539
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    .line 540
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 541
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 548
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 549
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    .line 476
    return-void
.end method
