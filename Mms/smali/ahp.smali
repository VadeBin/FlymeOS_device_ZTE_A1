.class public Lahp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahp$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:I

.field public static c:[Ljava/lang/String;

.field public static d:[Laia$a;

.field public static e:I

.field public static f:I

.field public static g:Z

.field public static h:[Z

.field public static i:I

.field public static j:I

.field private static k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lahp$a;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lahp$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lahp;->a:Z

    .line 51
    const/4 v0, 0x1

    sput v0, Lahp;->b:I

    .line 52
    sput-object v2, Lahp;->c:[Ljava/lang/String;

    .line 54
    sput-object v2, Lahp;->d:[Laia$a;

    .line 55
    sput v1, Lahp;->e:I

    .line 56
    sput v1, Lahp;->f:I

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lahp;->k:Ljava/util/HashSet;

    .line 75
    sput-boolean v1, Lahp;->g:Z

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lahp;->l:Ljava/util/HashSet;

    .line 78
    sput-object v2, Lahp;->h:[Z

    .line 79
    sput v1, Lahp;->i:I

    .line 80
    sput v1, Lahp;->j:I

    return-void
.end method

.method public static a()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    sget v2, Lahp;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 184
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUseableSlotId mSlotState[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->d:[Laia$a;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUseableSlotId mSlotState[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->d:[Laia$a;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v2, Lahp;->d:[Laia$a;

    aget-object v2, v2, v0

    sget-object v3, Laia$a;->d:Laia$a;

    if-ne v2, v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    .prologue
    .line 579
    invoke-static {p0, p1}, Laia;->a(J)I

    move-result v0

    .line 580
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v0}, Lahp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 370
    sget v1, Lahp;->e:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 371
    if-nez p0, :cond_0

    .line 372
    const-string v1, "DualSimMessageUtils"

    const-string v2, " intent is null in DualSimMessageUtils.getSlotIdFromIntent !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 378
    :cond_1
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not has extra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 385
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    const-string v1, "-10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/16 v0, -0xa

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    sget-boolean v1, Lahp;->a:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lahp;->l()[Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 160
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    sget-object v2, Lahp;->d:[Laia$a;

    aget-object v2, v2, v0

    sget-object v3, Laia$a;->b:Laia$a;

    if-ne v2, v3, :cond_0

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    sget-boolean v1, Lahp;->a:Z

    if-eqz v1, :cond_0

    .line 170
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 572
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 574
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "subscription"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 276
    const-string v0, ""

    .line 278
    invoke-static {p0, p1}, Laia;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 279
    if-nez v1, :cond_0

    .line 280
    const-string v1, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimNameBySlotId slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p1}, Laia;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, ""

    .line 292
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_1
    return-object v0

    .line 284
    :cond_1
    sget-boolean v1, Lcom/android/mms/MmsApp;->b:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 285
    const v1, #com.android.mms:string@no_sim_cdma#t

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_2
    const v1, #com.android.mms:string@no_sim#t

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :pswitch_0
    const v0, #com.android.mms:string@change_sim1_title#t

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :pswitch_1
    const v0, #com.android.mms:string@change_sim2_title#t

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 300
    :pswitch_2
    const-string v0, ""

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lahp$a;)V
    .locals 2

    .prologue
    .line 352
    sget-object v1, Lahp;->k:Ljava/util/HashSet;

    monitor-enter v1

    .line 353
    :try_start_0
    sget-object v0, Lahp;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Lahp;->j()V

    .line 84
    invoke-static {p0}, Lahp;->b(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 444
    invoke-static {}, Lahp;->j()V

    .line 445
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServiceStateValues slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", voiceRegState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataRegState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-boolean v2, Lahp;->a:Z

    if-eqz v2, :cond_4

    .line 448
    sget-boolean v2, Lcom/android/mms/MmsApp;->b:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-static {p0}, Lahp;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    if-ne p2, v5, :cond_0

    if-eq p3, v5, :cond_1

    :cond_0
    move p2, v0

    .line 459
    :cond_1
    :goto_0
    invoke-static {p1}, Lahp;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    if-eq p2, v5, :cond_5

    .line 462
    sget-object v2, Lahp;->h:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    .line 463
    sget-object v0, Lahp;->h:[Z

    aput-boolean v1, v0, p1

    move v0, v1

    .line 472
    :cond_2
    :goto_1
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateServiceStateValues needUpdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz v0, :cond_3

    .line 474
    invoke-static {}, Lahp;->c()V

    .line 477
    :cond_3
    return-void

    .line 455
    :cond_4
    const-string v2, "DualSimMessageUtils"

    const-string v3, "updateServiceStateValues set single slot device\'s slotId to be 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 456
    goto :goto_0

    .line 467
    :cond_5
    sget-object v2, Lahp;->h:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_2

    .line 468
    sget-object v2, Lahp;->h:[Z

    aput-boolean v0, v2, p1

    move v0, v1

    .line 469
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lahp;->j()V

    .line 132
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsiSlotValues slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lahp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "READY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IMSI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOADED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_0
    sget-object v0, Lahp;->c:[Ljava/lang/String;

    invoke-static {p0, p1}, Laia;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 137
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsiSlotValues IMSI_SLOT_VALUES["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lahp;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    :goto_0
    invoke-static {p0}, Lahp;->f(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lahp;->b()V

    .line 146
    :cond_2
    return-void

    .line 138
    :cond_3
    const-string v0, "ABSENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lahp;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 140
    sget-object v0, Lahp;->h:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 141
    invoke-static {}, Lahp;->c()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JI)V
    .locals 3

    .prologue
    .line 517
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceStates subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v0, Lahp;->h:[Z

    invoke-static {p0, p1, p2}, Lahp;->a(Landroid/content/Context;J)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 519
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceStates mServiceStates["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lahp;->h:[Z

    aget-boolean v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public static a(Landroid/widget/ImageView;IIZ)V
    .locals 8

    .prologue
    const/16 v0, -0xa

    const/4 v7, 0x6

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 223
    if-ne p1, v6, :cond_3

    if-ne p2, v0, :cond_3

    move v4, v1

    .line 224
    :goto_0
    if-nez p1, :cond_4

    if-ne p2, v0, :cond_4

    move v0, v1

    .line 225
    :goto_1
    sget-boolean v3, Lahp;->a:Z

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    .line 226
    :cond_0
    if-ltz p2, :cond_5

    move v3, v1

    .line 227
    :goto_2
    if-eqz v3, :cond_6

    if-nez p3, :cond_6

    sget v3, Lahp;->e:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    sget v3, Lahp;->i:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    move v3, v1

    .line 229
    :goto_3
    packed-switch p1, :pswitch_data_0

    .line 239
    :pswitch_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_7

    .line 243
    :cond_1
    :goto_4
    if-nez v1, :cond_8

    .line 244
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    :cond_2
    :goto_5
    return-void

    :cond_3
    move v4, v2

    .line 223
    goto :goto_0

    :cond_4
    move v0, v2

    .line 224
    goto :goto_1

    :cond_5
    move v3, v2

    .line 226
    goto :goto_2

    :cond_6
    move v3, v2

    .line 227
    goto :goto_3

    :pswitch_1
    move v1, v2

    .line 234
    goto :goto_4

    .line 236
    :pswitch_2
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    .line 239
    goto :goto_4

    .line 246
    :cond_8
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    sparse-switch p2, :sswitch_data_0

    goto :goto_5

    .line 263
    :sswitch_0
    sget-boolean v0, Lcom/android/mms/MmsApp;->n:Z

    if-nez v0, :cond_15

    .line 264
    if-ne p1, v6, :cond_13

    const v0, #com.android.mms:drawable@cma_list_sim_cloud#t

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 249
    :sswitch_1
    sget-boolean v0, Lcom/android/mms/MmsApp;->n:Z

    if-nez v0, :cond_b

    .line 250
    if-ne p1, v6, :cond_9

    const v0, #com.android.mms:drawable@cma_list_sim1#t

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_9
    if-ne p1, v7, :cond_a

    const v0, #com.android.mms:drawable@sim1_noti#t

    goto :goto_7

    :cond_a
    const v0, #com.android.mms:drawable@sim1_list#t

    goto :goto_7

    .line 252
    :cond_b
    if-ne p1, v6, :cond_c

    const v0, #com.android.mms:drawable@cma_list_sim1_large#t

    :goto_8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_c
    if-ne p1, v7, :cond_d

    const v0, #com.android.mms:drawable@sim1_noti#t

    goto :goto_8

    :cond_d
    const v0, #com.android.mms:drawable@sim1_list_large#t

    goto :goto_8

    .line 256
    :sswitch_2
    sget-boolean v0, Lcom/android/mms/MmsApp;->n:Z

    if-nez v0, :cond_10

    .line 257
    if-ne p1, v6, :cond_e

    const v0, #com.android.mms:drawable@cma_list_sim2#t

    :goto_9
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_e
    if-ne p1, v7, :cond_f

    const v0, #com.android.mms:drawable@sim2_noti#t

    goto :goto_9

    :cond_f
    const v0, #com.android.mms:drawable@sim2_list#t

    goto :goto_9

    .line 259
    :cond_10
    if-ne p1, v6, :cond_11

    const v0, #com.android.mms:drawable@cma_list_sim2_large#t

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_11
    if-ne p1, v7, :cond_12

    const v0, #com.android.mms:drawable@sim2_noti#t

    goto :goto_a

    :cond_12
    const v0, #com.android.mms:drawable@sim2_list_large#t

    goto :goto_a

    .line 264
    :cond_13
    if-ne p1, v7, :cond_14

    const v0, #com.android.mms:drawable@sim_cloud_noti#t

    goto :goto_6

    :cond_14
    const v0, #com.android.mms:drawable@sim_cloud_list#t

    goto :goto_6

    .line 266
    :cond_15
    if-ne p1, v6, :cond_16

    const v0, #com.android.mms:drawable@cma_list_sim_cloud_large#t

    :goto_b
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_16
    if-ne p1, v7, :cond_17

    const v0, #com.android.mms:drawable@sim_cloud_noti#t

    goto :goto_b

    :cond_17
    const v0, #com.android.mms:drawable@sim_cloud_list_large#t

    goto :goto_b

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    sget v0, Lahp;->b:I

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 523
    .line 524
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOn subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {p1, p2}, Laia;->c(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 531
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    new-array v8, v11, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    new-array v9, v11, [Ljava/lang/Object;

    long-to-int v11, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "com.android.mms"

    aput-object v10, v9, v12

    invoke-static/range {v0 .. v9}, Laiw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 548
    :goto_0
    return v0

    .line 534
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 536
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    long-to-int v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Laiw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

# hxs modify begin
# sn isRadioOn failed to get radio state for sub
    #check-cast v0, Ljava/lang/Boolean;

    #invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #move-result v0

    const/4 v0, 0x1
# hxs modify end

    goto :goto_0

    .line 540
    :cond_1
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Laiw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 545
    :cond_2
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOn failed to get radio state for sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ITelephony is null or subId is valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const/16 v0, -0xa

    if-ne p0, v0, :cond_0

    .line 327
    const-string v0, "-10"

    .line 332
    :goto_0
    return-object v0

    .line 328
    :cond_0
    invoke-static {p0}, Lahp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lahp;->l()[Ljava/lang/String;

    move-result-object v0

    .line 330
    aget-object v0, v0, p0

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 307
    invoke-static {p0, p1}, Laia;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClearSimNameBySlotId simName is null, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    const v0, #com.android.mms:string@sim1#t

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :pswitch_1
    const v0, #com.android.mms:string@sim2#t

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :pswitch_2
    const-string v0, ""

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    sget v1, Lahp;->e:I

    sput v1, Lahp;->f:I

    .line 202
    sput v0, Lahp;->e:I

    .line 203
    :goto_0
    sget-object v1, Lahp;->d:[Laia$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 204
    sget-object v1, Lahp;->d:[Laia$a;

    aget-object v1, v1, v0

    sget-object v2, Laia$a;->d:Laia$a;

    if-ne v1, v2, :cond_0

    .line 205
    sget v1, Lahp;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lahp;->e:I

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentUseableSimCount LAST_TIME_USEABLE_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lahp;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CURRENT_USEABLE_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lahp;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v0, Lahp;->f:I

    sget v1, Lahp;->e:I

    if-eq v0, v1, :cond_2

    .line 210
    invoke-static {}, Lahp;->m()V

    .line 212
    :cond_2
    return-void
.end method

.method public static b(Lahp$a;)V
    .locals 2

    .prologue
    .line 358
    sget-object v1, Lahp;->k:Ljava/util/HashSet;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lahp;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v1

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lahp;->k()V

    .line 113
    const/4 v0, 0x0

    :goto_0
    sget v1, Lahp;->b:I

    if-ge v0, v1, :cond_1

    .line 114
    invoke-static {p0, v0}, Laia;->a(Landroid/content/Context;I)Laia$a;

    move-result-object v1

    .line 115
    sget-object v2, Lahp;->d:[Laia$a;

    aput-object v1, v2, v0

    .line 116
    sget-object v2, Lahp;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Laia;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 117
    sget-object v2, Lahp;->d:[Laia$a;

    aget-object v2, v2, v0

    sget-object v3, Laia$a;->b:Laia$a;

    if-eq v2, v3, :cond_0

    .line 118
    invoke-static {v0}, Laia;->a(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lahp;->a(Landroid/content/Context;JI)V

    .line 120
    :cond_0
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimInfoCache slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", IMSI_SLOT_VALUES["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lahp;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mServiceStates["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lahp;->h:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lahp;->b()V

    .line 124
    invoke-static {}, Lahp;->c()V

    .line 125
    return-void
.end method

.method public static c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 503
    sget v1, Lahp;->i:I

    sput v1, Lahp;->j:I

    .line 504
    sput v0, Lahp;->i:I

    .line 505
    :goto_0
    sget-object v1, Lahp;->h:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 506
    sget-object v1, Lahp;->h:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 507
    sget v1, Lahp;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lahp;->i:I

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentNotRadioOffSimCount LAST_TITME_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lahp;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CURRENT_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lahp;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget v0, Lahp;->j:I

    sget v1, Lahp;->i:I

    if-eq v0, v1, :cond_2

    .line 512
    invoke-static {}, Lahp;->n()V

    .line 514
    :cond_2
    return-void
.end method

.method public static c(Lahp$a;)V
    .locals 2

    .prologue
    .line 491
    sget-object v1, Lahp;->l:Ljava/util/HashSet;

    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v0, Lahp;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(I)Z
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lahp;->d:[Laia$a;

    aget-object v0, v0, p0

    sget-object v1, Laia$a;->d:Laia$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 393
    sget v1, Lahp;->e:I

    if-lt v1, v0, :cond_0

    invoke-static {}, Lady;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lady;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lni;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lady;->c(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 553
    sget v2, Lahp;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 554
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotRadioOffSlotId mServiceStates[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->h:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlotState[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->d:[Laia$a;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mServiceStates[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->h:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlotState[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lahp;->d:[Laia$a;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v2, Lahp;->h:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lahp;->d:[Laia$a;

    aget-object v2, v2, v0

    sget-object v3, Laia$a;->d:Laia$a;

    if-ne v2, v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    sget-object v0, Lahp;->h:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lahp;->d:[Laia$a;

    aget-object v0, v0, v1

    sget-object v2, Laia$a;->d:Laia$a;

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 559
    goto :goto_0

    .line 561
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Lahp$a;)V
    .locals 2

    .prologue
    .line 497
    sget-object v1, Lahp;->l:Ljava/util/HashSet;

    monitor-enter v1

    .line 498
    :try_start_0
    sget-object v0, Lahp;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 402
    invoke-static {p0}, Lahp;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const v0, #com.android.mms:string@open_flyme_title#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    const v0, #com.android.mms:string@open_flyme_sub_title#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    const v0, #com.android.mms:layout@delete_thread_dialog_view#t

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 407
    const v0, #com.android.mms:id@message#t

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    const v0, #com.android.mms:id@delete_locked#t

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 411
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 412
    const v4, #com.android.mms:string@no_tip_next_time#t

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 413
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #com.android.mms:string@yes#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lahr;

    invoke-direct {v4, p0, v0}, Lahr;-><init>(Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #com.android.mms:string@no#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lahq;

    invoke-direct {v4, p0, v0}, Lahq;-><init>(Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 433
    :cond_0
    return-void
.end method

.method public static e()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 605
    sget-object v1, Lahp;->d:[Laia$a;

    aget-object v1, v1, v0

    sget-object v2, Laia$a;->d:Laia$a;

    if-ne v1, v2, :cond_0

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, #com.android.mms:string@sim_open#t

    const v4, #com.android.mms:string@sim_close#t

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 589
    invoke-static {v5}, Lahp;->c(I)Z

    .line 590
    invoke-static {v6}, Lahp;->c(I)Z

    .line 592
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 593
    const-string v1, "pref_key_sim1_auto_download_roaming_switch"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 595
    const-string v3, "pref_key_sim2_auto_download_roaming_switch"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 598
    if-eqz v1, :cond_0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 599
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_1
    const v3, #com.android.mms:string@sim_status#t

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 629
    .line 630
    const/4 v0, 0x0

    :goto_0
    sget v1, Lahp;->b:I

    if-ge v0, v1, :cond_0

    .line 631
    invoke-static {p0, v0}, Laia;->a(Landroid/content/Context;I)Laia$a;

    move-result-object v1

    .line 632
    sget-object v2, Lahp;->d:[Laia$a;

    aput-object v1, v2, v0

    .line 633
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlotStateCache slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    return-void
.end method

.method public static f()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 613
    sget v0, Lahp;->i:I

    if-ne v0, v1, :cond_0

    sget v0, Lahp;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lahp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lahp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 648
    if-nez p0, :cond_0

    .line 655
    :goto_0
    return v0

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_on_cdma_rat_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 653
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 654
    :cond_1
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is4GDataOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 621
    sget v0, Lahp;->i:I

    if-eqz v0, :cond_0

    sget v0, Lahp;->e:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 625
    sget v0, Lahp;->e:I

    if-lez v0, :cond_0

    sget v0, Lahp;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 88
    sget-boolean v0, Lahp;->g:Z

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/android/mms/MmsApp;->c()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->g()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v2, "isMultiSimEnabled"

    invoke-static {v0, v2}, Laiw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lahp;->a:Z

    .line 91
    const-string v0, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " initDeviceMode IS_MULTI_SIM_DEVICE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lahp;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-boolean v0, Lahp;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    sput v0, Lahp;->b:I

    .line 93
    sget v0, Lahp;->b:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lahp;->c:[Ljava/lang/String;

    .line 94
    sget v0, Lahp;->b:I

    new-array v0, v0, [Laia$a;

    sput-object v0, Lahp;->d:[Laia$a;

    .line 95
    sget v0, Lahp;->b:I

    new-array v0, v0, [Z

    sput-object v0, Lahp;->h:[Z

    .line 96
    sput-boolean v1, Lahp;->g:Z

    .line 98
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method private static k()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 102
    :goto_0
    sget v2, Lahp;->b:I

    if-ge v0, v2, :cond_0

    .line 103
    sget-object v2, Lahp;->d:[Laia$a;

    sget-object v3, Laia$a;->b:Laia$a;

    aput-object v3, v2, v0

    .line 104
    sget-object v2, Lahp;->h:[Z

    aput-boolean v1, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private static l()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lahp;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lahp;->g:Z

    .line 176
    invoke-static {}, Lcom/android/mms/MmsApp;->c()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lahp;->a(Landroid/content/Context;)V

    .line 178
    :cond_0
    sget-object v0, Lahp;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private static m()V
    .locals 4

    .prologue
    .line 342
    sget-object v1, Lahp;->k:Ljava/util/HashSet;

    monitor-enter v1

    .line 343
    :try_start_0
    sget-object v0, Lahp;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 344
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp$a;

    .line 346
    sget v2, Lahp;->f:I

    sget v3, Lahp;->e:I

    invoke-interface {v0, v2, v3}, Lahp$a;->a(II)V

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 348
    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->simChange()V

    .line 349
    return-void
.end method

.method private static n()V
    .locals 4

    .prologue
    .line 481
    sget-object v1, Lahp;->l:Ljava/util/HashSet;

    monitor-enter v1

    .line 482
    :try_start_0
    sget-object v0, Lahp;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 483
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp$a;

    .line 486
    sget v2, Lahp;->j:I

    sget v3, Lahp;->i:I

    invoke-interface {v0, v2, v3}, Lahp$a;->a(II)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 488
    :cond_0
    return-void
.end method
