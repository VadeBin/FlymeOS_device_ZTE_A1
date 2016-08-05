.class Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 570
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 571
    return-void
.end method


# virtual methods
.method public containSpecificMedia(Ljava/util/List;I)Z
    .locals 6
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 585
    if-nez p1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 586
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 591
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 592
    .local v1, "mediaType":Ljava/lang/String;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 595
    :cond_2
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x200

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 590
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    .end local v1    # "mediaType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public convertToLocalTime(Ljava/lang/String;)[J
    .locals 9
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 4114
    const/4 v5, 0x0

    .line 4115
    .local v5, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 4116
    const-string v6, ","

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 4117
    .local v4, "timeArray":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v8, :cond_0

    .line 4118
    new-array v5, v8, [J

    .line 4119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4120
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4121
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4123
    :try_start_0
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 4124
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4119
    .end local v0    # "date":Ljava/util/Date;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4125
    :catch_0
    move-exception v2

    .line 4126
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 4127
    const/4 v5, 0x0

    goto :goto_1

    .line 4132
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "timeArray":[Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method public convertToSeverTime([J)Ljava/lang/String;
    .locals 6
    .param p1, "timeSlot"    # [J

    .prologue
    .line 4136
    const/4 v3, 0x0

    .line 4137
    .local v3, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 4138
    :cond_0
    const/4 v4, 0x0

    .line 4150
    :goto_0
    return-object v4

    .line 4140
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 4141
    new-instance v0, Ljava/util/Date;

    aget-wide v4, p1, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4142
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4143
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4144
    if-nez v2, :cond_2

    .line 4145
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 4140
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4147
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    move-object v4, v3

    .line 4150
    goto :goto_0
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 10
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;

    .prologue
    .line 2030
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2031
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2033
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2034
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2035
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2037
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_b

    .line 2038
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2039
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2041
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2042
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2044
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2045
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2047
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2048
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2050
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2051
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2053
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2054
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2056
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2057
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2059
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2060
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2062
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2063
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2065
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2066
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2069
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2070
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 2071
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 2072
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2076
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2079
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2080
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_c

    .line 2081
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2082
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2084
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2088
    :cond_c
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2089
    return-object v3
.end method

.method public copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 10
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "requestedServiceClass"    # I
    .param p4, "phoneId"    # I

    .prologue
    .line 2122
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2123
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2173
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v8, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2176
    const/4 v3, 0x0

    .line 2251
    :goto_0
    return-object v3

    .line 2179
    :cond_0
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2180
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2181
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2183
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_f

    .line 2184
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2185
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2187
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2188
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2190
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2191
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2193
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2194
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2196
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2197
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2199
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2200
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2202
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2203
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2205
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2206
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2208
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2209
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2211
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2212
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2215
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2216
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_c

    .line 2217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_c

    .line 2218
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2219
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2217
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2224
    .end local v0    # "i":I
    :cond_c
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2241
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2242
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_e

    .line 2243
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2244
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2246
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2249
    :cond_e
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_0

    .line 2228
    .end local v6    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_f
    invoke-static {p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-nez v8, :cond_d

    .line 2229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .restart local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "audio"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    const-string v8, "video"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_d

    .line 2233
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 2235
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2232
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V
    .locals 7
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "allow"    # Z

    .prologue
    .line 2093
    const/4 v0, 0x0

    .line 2094
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x0

    .line 2095
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2096
    .local v3, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4

    .line 2098
    .local v4, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2099
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2102
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto :goto_0

    .line 2104
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2105
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2106
    .local v2, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2107
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2108
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    goto :goto_0

    .line 2110
    .end local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 2111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2112
    .restart local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2113
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2114
    invoke-virtual {v0, p3}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_0
.end method

.method public getMediaType(I)Ljava/lang/String;
    .locals 1
    .param p1, "serviceClass"    # I

    .prologue
    .line 613
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 614
    const-string v0, "audio"

    .line 618
    :goto_0
    return-object v0

    .line 615
    :cond_0
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 616
    const-string v0, "video"

    goto :goto_0

    .line 618
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "setCFReason"    # I
    .param p4, "setCFAction"    # I
    .param p5, "setCFServiceClass"    # I
    .param p6, "setCFNumber"    # Ljava/lang/String;
    .param p7, "setCFTimeSeconds"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 4070
    invoke-virtual {p2, p9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 4071
    .local v2, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 4072
    .local v1, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 4073
    .local v0, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCreateNewRuleForCFInTimeSlot(): reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cfTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    const/4 v3, 0x1

    if-ne p5, v3, :cond_3

    .line 4079
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4087
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 4088
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 4098
    :cond_1
    :goto_1
    invoke-virtual {v1, p8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 4099
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4100
    const/4 v3, 0x0

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 4104
    :goto_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 4105
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 4107
    if-eqz p10, :cond_2

    .line 4108
    invoke-virtual {p1, p9}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 4110
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 4080
    :cond_3
    const/16 v3, 0x200

    if-ne p5, v3, :cond_4

    .line 4081
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4082
    :cond_4
    if-nez p5, :cond_0

    .line 4083
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4084
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4089
    :cond_5
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    .line 4090
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 4091
    :cond_6
    const/4 v3, 0x3

    if-ne p3, v3, :cond_7

    .line 4092
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 4093
    :cond_7
    const/4 v3, 0x6

    if-ne p3, v3, :cond_8

    .line 4094
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 4095
    :cond_8
    if-nez p3, :cond_1

    goto :goto_1

    .line 4102
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 15
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "facility"    # Ljava/lang/String;
    .param p5, "lockState"    # I
    .param p6, "setCBServiceClass"    # I
    .param p7, "RuleID"    # Ljava/lang/String;
    .param p8, "updateSingleRule"    # Z
    .param p9, "num_of_expansion"    # I
    .param p10, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 1882
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 1883
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 1884
    .local v2, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    .line 1885
    .local v5, "cbAllow":Z
    const/4 v3, 0x0

    .line 1888
    .local v3, "addRuleDeactivatedNode":Z
    const-string v12, "persist.radio.ss.xrdm"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1889
    .local v11, "sDisableRuleMode":Ljava/lang/String;
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleCreateNewRuleForExistingCB():sDisableRuleMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 1892
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    .line 1894
    const/4 v5, 0x0

    .line 1912
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 1913
    .local v7, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 1914
    .local v6, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1917
    .local v4, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1918
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_9

    .line 1919
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1929
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 1930
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1933
    :cond_2
    const-string v12, "IR"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1934
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 1935
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 1950
    :cond_3
    :goto_2
    if-eqz p8, :cond_4

    const/4 v12, 0x1

    move/from16 v0, p9

    if-ne v12, v0, :cond_4

    .line 1951
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v12, :cond_f

    move-object/from16 v10, p1

    .line 1952
    check-cast v10, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1953
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 1960
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .end local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_4
    return v12

    .line 1897
    :cond_5
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 1898
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable CB for serviceClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,not create new rule for it to put in the new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    if-eqz p8, :cond_6

    .line 1900
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCB(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 1903
    :cond_7
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 1905
    const/4 v3, 0x1

    .line 1906
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1907
    :cond_8
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 1908
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1920
    .restart local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    .line 1921
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1922
    :cond_a
    if-nez p6, :cond_1

    .line 1923
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1924
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1936
    :cond_b
    const-string v12, "AI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1938
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 1939
    :cond_c
    const-string v12, "OI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1940
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 1941
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 1942
    :cond_d
    const-string v12, "OX"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1943
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 1944
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 1945
    :cond_e
    const-string v12, "AO"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1947
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 1954
    :cond_f
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v12, :cond_4

    move-object/from16 v9, p1

    .line 1955
    check-cast v9, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1956
    .local v9, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z
    .locals 15
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "setCFReason"    # I
    .param p5, "setCFAction"    # I
    .param p6, "setCFServiceClass"    # I
    .param p7, "setCFNumber"    # Ljava/lang/String;
    .param p8, "setCFTimeSeconds"    # I
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .param p11, "numExpansion"    # I
    .param p12, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 1762
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1765
    .local v4, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v12, "persist.radio.ss.xrdm"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1766
    .local v11, "sDisableRuleMode":Ljava/lang/String;
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleCreateNewRuleForExistingCF():sDisableRuleMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 1770
    const/4 v12, 0x1

    move/from16 v0, p5

    if-eq v0, v12, :cond_0

    const/4 v12, 0x3

    move/from16 v0, p5

    if-ne v0, v12, :cond_b

    .line 1772
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 1773
    .local v7, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 1774
    .local v6, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 1775
    .local v5, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleCreateNewRuleForExistingCF():Enable CF with reason="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",serviceClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",number="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",cfTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1778
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_4

    .line 1779
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1788
    :cond_1
    :goto_0
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_6

    .line 1789
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 1799
    :cond_2
    :goto_1
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1800
    const/4 v12, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v5, v0, v12}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 1804
    :goto_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 1805
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 1806
    if-eqz p10, :cond_3

    const/4 v12, 0x1

    move/from16 v0, p11

    if-ne v12, v0, :cond_3

    .line 1807
    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 1809
    :cond_3
    const/4 v12, 0x1

    .line 1871
    .end local v5    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v12

    .line 1780
    .restart local v5    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_5

    .line 1781
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1782
    :cond_5
    if-nez p6, :cond_1

    .line 1783
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1784
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    :cond_6
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_7

    .line 1791
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 1792
    :cond_7
    const/4 v12, 0x3

    move/from16 v0, p4

    if-ne v0, v12, :cond_8

    .line 1793
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 1794
    :cond_8
    const/4 v12, 0x6

    move/from16 v0, p4

    if-ne v0, v12, :cond_9

    .line 1795
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 1796
    :cond_9
    if-nez p4, :cond_2

    goto :goto_1

    .line 1802
    :cond_a
    const/4 v12, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v5, v0, v12}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1812
    .end local v5    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_b
    if-nez p6, :cond_f

    .line 1813
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 1814
    const-string v12, "MMTelSS"

    const-string v13, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    if-eqz p10, :cond_c

    .line 1816
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 1819
    :cond_d
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_17

    .line 1820
    const-string v12, "MMTelSS"

    const-string v13, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v10

    .line 1822
    .local v10, "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1823
    if-eqz p10, :cond_e

    const/4 v12, 0x1

    move/from16 v0, p11

    if-ne v12, v0, :cond_e

    .line 1824
    iget-object v12, v10, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 1826
    :cond_e
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1828
    .end local v10    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_f
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1829
    if-eqz p10, :cond_11

    const/4 v12, 0x1

    move/from16 v0, p11

    if-ne v12, v0, :cond_11

    .line 1831
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p12

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v9

    .line 1833
    .local v9, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v9, :cond_10

    .line 1834
    iget-object v12, v9, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 1836
    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1838
    .end local v9    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    .line 1839
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":copy old rule with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<rule-deactivated> for this media types to new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v10

    .line 1842
    .restart local v10    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1845
    .end local v10    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_12
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":copy old rule for remaining media types to new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p12

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    .line 1850
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1853
    :cond_13
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 1854
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":not copy old rule to new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    if-eqz p10, :cond_14

    .line 1857
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1860
    :cond_15
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_17

    .line 1861
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":copy old rule with <rule-deactivated> to new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v10

    .line 1864
    .restart local v10    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1865
    if-eqz p10, :cond_16

    const/4 v12, 0x1

    move/from16 v0, p11

    if-ne v12, v0, :cond_16

    .line 1866
    iget-object v12, v10, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 1868
    :cond_16
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1871
    .end local v10    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 9
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "lockState"    # I
    .param p5, "setCBServiceClass"    # I
    .param p6, "RuleID"    # Ljava/lang/String;
    .param p7, "updateSingleRule"    # Z
    .param p8, "num_of_expansion"    # I
    .param p9, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 1968
    const/4 v2, 0x1

    .line 1970
    .local v2, "cbAllow":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    .line 1972
    const/4 v2, 0x0

    .line 1982
    invoke-virtual {p2, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 1983
    .local v4, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 1984
    .local v3, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 1987
    .local v1, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1988
    const/4 v7, 0x1

    if-ne p5, v7, :cond_4

    .line 1989
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1998
    :cond_0
    :goto_0
    const-string v7, "IR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1999
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2000
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2015
    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    const/4 v7, 0x1

    move/from16 v0, p8

    if-ne v7, v0, :cond_2

    .line 2016
    instance-of v7, p1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v7, :cond_a

    move-object v6, p1

    .line 2017
    check-cast v6, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2018
    .local v6, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v6, p6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2025
    .end local v6    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .end local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v7

    .line 1977
    :cond_3
    const/4 v2, 0x1

    .line 1978
    const-string v7, "MMTelSS"

    const-string v8, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/4 v7, 0x0

    goto :goto_3

    .line 1990
    .restart local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    const/16 v7, 0x200

    if-ne p5, v7, :cond_5

    .line 1991
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1992
    :cond_5
    if-nez p5, :cond_0

    .line 1993
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1994
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :cond_6
    const-string v7, "AI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2003
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2004
    :cond_7
    const-string v7, "OI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2005
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2006
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2007
    :cond_8
    const-string v7, "OX"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2008
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2009
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2010
    :cond_9
    const-string v7, "AO"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2012
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2019
    :cond_a
    instance-of v7, p1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 2020
    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2021
    .local v5, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v5, p6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 29
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1120
    const/16 v23, -0x1

    .line 1121
    .local v23, "reqNo":I
    const/16 v26, -0x1

    .line 1122
    .local v26, "serialNo":I
    const/4 v11, -0x1

    .line 1124
    .local v11, "cbServiceClass":I
    const-string v10, ""

    .line 1125
    .local v10, "cBFacility":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v15, v2, [I

    .line 1127
    .local v15, "get_cb_response":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    .line 1130
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1131
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1132
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1133
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1134
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1135
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1136
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1141
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): !isSupportXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1342
    .end local v8    # "phoneId":I
    :catch_0
    move-exception v27

    .line 1343
    .local v27, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_12

    .line 1344
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1345
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1409
    .end local v27    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1145
    .restart local v8    # "phoneId":I
    :cond_1
    const/16 v20, 0x0

    .line 1148
    .local v20, "num_of_comparision":I
    const/16 v2, 0x210

    if-ne v11, v2, :cond_2

    .line 1149
    const/16 v11, 0x200

    .line 1152
    :cond_2
    if-nez v11, :cond_6

    .line 1153
    const/4 v11, 0x1

    .line 1155
    const/16 v20, 0x2

    .line 1156
    :try_start_1
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :goto_1
    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1168
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1174
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v21

    .line 1176
    .local v21, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v25

    .line 1177
    .local v25, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v24, 0x0

    .line 1179
    .local v24, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v25, :cond_8

    .line 1180
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v24

    .line 1181
    if-nez v24, :cond_7

    .line 1182
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :goto_2
    if-eqz v24, :cond_11

    .line 1192
    const/16 v18, 0x0

    .local v18, "it":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 1193
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 1195
    const/16 v11, 0x200

    .line 1196
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_4
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 1200
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1201
    .local v22, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1202
    .local v13, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1203
    .local v9, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v19, 0x0

    .line 1205
    .local v19, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    if-eqz v13, :cond_9

    .line 1207
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v19

    .line 1213
    :goto_5
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1216
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1218
    const/4 v2, 0x0

    aget v3, v15, v2

    or-int/2addr v3, v11

    aput v3, v15, v2

    .line 1192
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1159
    .end local v16    # "i":I
    .end local v18    # "it":I
    .end local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_6
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 1184
    .restart local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_7
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MO CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 1351
    .end local v8    # "phoneId":I
    .end local v20    # "num_of_comparision":I
    .end local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_1
    move-exception v28

    .line 1352
    .local v28, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1354
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_12

    .line 1355
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1356
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1361
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1187
    .end local v28    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v8    # "phoneId":I
    .restart local v20    # "num_of_comparision":I
    .restart local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8
    :try_start_2
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1367
    .end local v8    # "phoneId":I
    .end local v20    # "num_of_comparision":I
    .end local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_2
    move-exception v14

    .line 1368
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    .line 1370
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_12

    .line 1372
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 1373
    .local v12, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1374
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1210
    .end local v12    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v16    # "i":I
    .restart local v18    # "it":I
    .restart local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "num_of_comparision":I
    .restart local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_9
    :try_start_3
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1220
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto/16 :goto_6

    .line 1223
    :cond_b
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1226
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1228
    const/4 v2, 0x0

    aget v3, v15, v2

    or-int/2addr v3, v11

    aput v3, v15, v2

    .line 1199
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 1230
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto :goto_8

    .line 1232
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1236
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v13, :cond_f

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1238
    :cond_f
    const/4 v2, 0x0

    aget v3, v15, v2

    or-int/2addr v3, v11

    aput v3, v15, v2

    goto/16 :goto_6

    .line 1240
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto/16 :goto_6

    .line 1248
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v16    # "i":I
    .end local v18    # "it":I
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MO CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1384
    .end local v8    # "phoneId":I
    .end local v20    # "num_of_comparision":I
    .end local v21    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_12
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_13

    .line 1402
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1403
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1406
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1252
    .restart local v8    # "phoneId":I
    .restart local v20    # "num_of_comparision":I
    :cond_14
    :try_start_4
    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1255
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1261
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v17

    .line 1263
    .local v17, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v25

    .line 1264
    .restart local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v24, 0x0

    .line 1266
    .restart local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v25, :cond_19

    .line 1267
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v24

    .line 1268
    if-nez v24, :cond_18

    .line 1269
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :goto_a
    if-eqz v24, :cond_20

    .line 1279
    const/16 v18, 0x0

    .restart local v18    # "it":I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 1280
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_16

    const/4 v2, 0x1

    if-ne v11, v2, :cond_16

    .line 1282
    const/16 v11, 0x200

    .line 1283
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_16
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_c
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1f

    .line 1286
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1287
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1288
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1289
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v19, 0x0

    .line 1291
    .restart local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-eqz v13, :cond_1a

    .line 1293
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",anonymous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v19

    .line 1299
    :goto_d
    if-eqz v13, :cond_1c

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1302
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_1b

    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1304
    const/4 v2, 0x0

    aget v3, v15, v2

    or-int/2addr v3, v11

    aput v3, v15, v2

    .line 1285
    :cond_17
    :goto_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 1271
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v16    # "i":I
    .end local v18    # "it":I
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_18
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MT CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1274
    :cond_19
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1296
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v16    # "i":I
    .restart local v18    # "it":I
    .restart local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1306
    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto :goto_e

    .line 1308
    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1312
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v13, :cond_1d

    if-eqz v13, :cond_1e

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1314
    :cond_1d
    const/4 v2, 0x0

    aget v3, v15, v2

    or-int/2addr v3, v11

    aput v3, v15, v2

    goto :goto_e

    .line 1316
    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto :goto_e

    .line 1279
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 1324
    .end local v16    # "i":I
    .end local v18    # "it":I
    :cond_20
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MT CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    goto/16 :goto_9

    .line 1339
    .end local v17    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v24    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v25    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_21
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): Not support query for CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_9

    .line 1359
    .end local v8    # "phoneId":I
    .end local v20    # "num_of_comparision":I
    .restart local v28    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_22
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_7
.end method

.method public handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 43
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1412
    const/16 v36, -0x1

    .line 1413
    .local v36, "reqNo":I
    const/16 v39, -0x1

    .line 1414
    .local v39, "serialNo":I
    const/16 v26, 0x1

    .line 1415
    .local v26, "numInfos":I
    const/16 v19, 0x0

    .line 1417
    .local v19, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v30, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/4 v14, -0x1

    .line 1420
    .local v14, "cfAction":I
    const/16 v34, -0x1

    .line 1421
    .local v34, "reason":I
    const/16 v40, -0x1

    .line 1422
    .local v40, "serviceClass":I
    const/16 v29, -0x1

    .line 1423
    .local v29, "orgServiceClass":I
    const-string v15, ""

    .line 1424
    .local v15, "cfNumber":Ljava/lang/String;
    const-string v10, ""

    .line 1425
    .local v10, "CFPhoneNum":Ljava/lang/String;
    const/16 v32, 0x0

    .line 1426
    .local v32, "queryStatus":I
    const/16 v25, 0x14

    .line 1444
    .local v25, "noReplyTimer":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1445
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1446
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 1447
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1448
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1449
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1450
    move/from16 v29, v40

    .line 1451
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1452
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1454
    .local v9, "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1457
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF(): !isSupportXcap()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1674
    .end local v9    # "phoneId":I
    :catch_0
    move-exception v41

    .line 1675
    .local v41, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_1f

    .line 1676
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-static {v3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1677
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1751
    .end local v41    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1462
    .restart local v9    # "phoneId":I
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_2

    .line 1463
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1464
    .local v35, "recvRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 1467
    .end local v35    # "recvRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from CF parcel:req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v36 .. v36}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",cfAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1477
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 1486
    .local v12, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():GetRuleSet from cd"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v38

    .line 1490
    .local v38, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v37, 0x0

    .line 1492
    .local v37, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v38, :cond_b

    .line 1493
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v37

    .line 1499
    :goto_1
    if-eqz v37, :cond_1e

    .line 1501
    const/16 v28, 0x1

    .line 1502
    .local v28, "num_of_expansion":I
    const/4 v3, 0x5

    move/from16 v0, v34

    if-ne v0, v3, :cond_c

    .line 1505
    const/16 v28, 0x4

    .line 1512
    :cond_3
    :goto_2
    const/16 v24, 0x0

    .local v24, "n":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1d

    .line 1513
    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_4

    .line 1514
    if-nez v24, :cond_d

    const/16 v34, 0x1

    .line 1521
    :cond_4
    :goto_4
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "num_of_expansion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": with round="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v24, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",with reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/16 v3, 0x210

    move/from16 v0, v29

    if-ne v0, v3, :cond_5

    .line 1525
    const/16 v40, 0x200

    .line 1530
    :cond_5
    const/16 v27, 0x0

    .line 1532
    .local v27, "num_of_comparision":I
    if-nez v29, :cond_11

    .line 1533
    const/16 v40, 0x1

    .line 1535
    const/16 v27, 0x2

    .line 1536
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_5
    const/16 v21, 0x0

    .local v21, "it":I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 1544
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_6

    .line 1546
    const/16 v40, 0x200

    .line 1547
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_6
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "num_of_comparision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": with round="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v21, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",with service class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_7
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_a

    .line 1554
    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1555
    .local v33, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    .line 1556
    .local v16, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v11

    .line 1557
    .local v11, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v23, 0x0

    .line 1559
    .local v23, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_12

    .line 1560
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCF():busy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NoAnswer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NoReachable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NotRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v23

    .line 1567
    :goto_8
    const/4 v3, 0x2

    if-ne v14, v3, :cond_13

    if-nez v34, :cond_13

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-nez v16, :cond_13

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1574
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFU is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/16 v32, 0x1

    .line 1577
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1578
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v10

    .line 1581
    :cond_9
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 1639
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v16    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v23    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_a
    :goto_9
    new-instance v22, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1640
    .local v22, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1641
    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1642
    move/from16 v0, v40

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1643
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1644
    move-object/from16 v0, v22

    iput-object v10, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1645
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1646
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCF():add one record with reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",queryStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    const/16 v32, 0x0

    .line 1651
    const-string v10, ""

    .line 1652
    const/16 v25, 0x14

    .line 1542
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 1495
    .end local v18    # "i":I
    .end local v21    # "it":I
    .end local v22    # "item":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v24    # "n":I
    .end local v27    # "num_of_comparision":I
    .end local v28    # "num_of_expansion":I
    :cond_b
    const-string v3, "MMTelSS"

    const-string v4, "No CF related rules in remote server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 1683
    .end local v9    # "phoneId":I
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v37    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v38    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_1
    move-exception v42

    .line 1684
    .local v42, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF(): XcapException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1686
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_1f

    .line 1687
    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1688
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF(): xcapException.isConnectionError()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1693
    :goto_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1506
    .end local v42    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v9    # "phoneId":I
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v28    # "num_of_expansion":I
    .restart local v37    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v38    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_c
    const/4 v3, 0x4

    move/from16 v0, v34

    if-ne v0, v3, :cond_3

    .line 1509
    const/16 v28, 0x5

    goto/16 :goto_2

    .line 1515
    .restart local v24    # "n":I
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    const/16 v34, 0x2

    goto/16 :goto_4

    .line 1516
    :cond_e
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_f

    const/16 v34, 0x3

    goto/16 :goto_4

    .line 1517
    :cond_f
    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_10

    const/16 v34, 0x6

    goto/16 :goto_4

    .line 1518
    :cond_10
    const/4 v3, 0x4

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    const/16 v34, 0x0

    goto/16 :goto_4

    .line 1539
    .restart local v27    # "num_of_comparision":I
    :cond_11
    const/16 v27, 0x1

    goto/16 :goto_5

    .line 1563
    .restart local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v16    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v21    # "it":I
    .restart local v23    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_12
    :try_start_2
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .line 1699
    .end local v9    # "phoneId":I
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v21    # "it":I
    .end local v23    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "n":I
    .end local v27    # "num_of_comparision":I
    .end local v28    # "num_of_expansion":I
    .end local v33    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v37    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v38    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_2
    move-exception v17

    .line 1700
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():Start to Print Stack Trace"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 1705
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_1f

    .line 1706
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v13

    .line 1707
    .local v13, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v3, v4, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1708
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1584
    .end local v13    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v9    # "phoneId":I
    .restart local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v16    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v21    # "it":I
    .restart local v23    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "n":I
    .restart local v27    # "num_of_comparision":I
    .restart local v28    # "num_of_expansion":I
    .restart local v33    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v37    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v38    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_13
    const/4 v3, 0x2

    if-ne v14, v3, :cond_15

    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_15

    if-eqz v16, :cond_15

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1587
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFB is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/16 v32, 0x1

    .line 1590
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1591
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v10

    .line 1593
    :cond_14
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 1594
    goto/16 :goto_9

    .line 1596
    :cond_15
    const/4 v3, 0x2

    if-ne v14, v3, :cond_17

    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_17

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1599
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/16 v32, 0x1

    .line 1602
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1603
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v10

    .line 1605
    :cond_16
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 1606
    goto/16 :goto_9

    .line 1608
    :cond_17
    const/4 v3, 0x2

    if-ne v14, v3, :cond_19

    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_19

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1611
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/16 v32, 0x1

    .line 1614
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1615
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v10

    .line 1617
    :cond_18
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 1618
    goto/16 :goto_9

    .line 1620
    :cond_19
    const/4 v3, 0x2

    if-ne v14, v3, :cond_1b

    const/4 v3, 0x6

    move/from16 v0, v34

    if-ne v0, v3, :cond_1b

    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1623
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/16 v32, 0x1

    .line 1626
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1627
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v10

    .line 1629
    :cond_1a
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 1630
    goto/16 :goto_9

    .line 1634
    :cond_1b
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1512
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v16    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v23    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 1660
    .end local v21    # "it":I
    .end local v27    # "num_of_comparision":I
    :cond_1d
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1662
    .local v31, "queriedSize":I
    move/from16 v0, v31

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v19, v0

    .line 1663
    const/16 v20, 0x0

    .local v20, "inx":I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 1664
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v19, v20

    .line 1663
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 1669
    .end local v20    # "inx":I
    .end local v24    # "n":I
    .end local v28    # "num_of_expansion":I
    .end local v31    # "queriedSize":I
    :cond_1e
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():get null ruleList"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v19, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1671
    const/16 v32, 0x0

    .line 1733
    .end local v9    # "phoneId":I
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v37    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v38    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_20

    .line 1744
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1745
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1748
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1691
    .restart local v42    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_21
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_a
.end method

.method public handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 38
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3620
    const/16 v30, -0x1

    .line 3621
    .local v30, "reqNo":I
    const/16 v33, -0x1

    .line 3622
    .local v33, "serialNo":I
    const/16 v17, 0x0

    .line 3623
    .local v17, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3626
    .local v25, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfoEx;>;"
    const/16 v29, -0x1

    .line 3627
    .local v29, "reason":I
    const/16 v34, -0x1

    .line 3628
    .local v34, "serviceClass":I
    const/16 v24, -0x1

    .line 3629
    .local v24, "orgServiceClass":I
    const-string v13, ""

    .line 3630
    .local v13, "cfPhoneNum":Ljava/lang/String;
    const/16 v27, 0x0

    .line 3631
    .local v27, "queryStatus":I
    const/16 v22, 0x14

    .line 3632
    .local v22, "noReplyTimer":I
    const/16 v35, 0x0

    .line 3633
    .local v35, "timeSlot":[J
    const/4 v9, 0x0

    .line 3636
    .local v9, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3637
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 3638
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 3639
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 3640
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 3641
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3642
    move/from16 v24, v34

    .line 3644
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from CF parcel: req = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3650
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): !isSupportXcap()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3791
    :catch_0
    move-exception v36

    .line 3792
    .local v36, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_e

    .line 3793
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-static {v3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3794
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3838
    .end local v36    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 3654
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3660
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v11

    .line 3662
    .local v11, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): GetRuleSet from cd"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v32

    .line 3667
    .local v32, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v31, 0x0

    .line 3669
    .local v31, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v32, :cond_8

    .line 3670
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v31

    .line 3677
    :goto_1
    if-eqz v31, :cond_d

    .line 3679
    const/16 v3, 0x210

    move/from16 v0, v24

    if-ne v0, v3, :cond_2

    .line 3681
    const/16 v34, 0x200

    .line 3684
    :cond_2
    const/16 v23, 0x0

    .line 3686
    .local v23, "numOfComparision":I
    if-nez v24, :cond_9

    .line 3687
    const/16 v34, 0x1

    .line 3690
    const/16 v23, 0x2

    .line 3691
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass == 0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :goto_2
    const/16 v19, 0x0

    .local v19, "it":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 3700
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_3

    .line 3702
    const/16 v34, 0x200

    .line 3703
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass == 0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    :cond_3
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numOfComparision = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": with round = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v19, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", with service class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_7

    .line 3713
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3714
    .local v28, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    .line 3715
    .local v14, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v10

    .line 3716
    .local v10, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 3718
    .local v21, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_a

    .line 3719
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFInTimeSlot(): busy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NoAnswer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NoReachable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NotRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 3730
    :goto_5
    if-nez v29, :cond_b

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-nez v14, :cond_b

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3737
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): CFU is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const/16 v27, 0x1

    .line 3741
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3742
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v13

    .line 3746
    :cond_6
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v22

    .line 3747
    if-eqz v14, :cond_7

    .line 3748
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v35

    .line 3756
    .end local v10    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    new-instance v20, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 3757
    .local v20, "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 3758
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 3759
    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 3760
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 3761
    move-object/from16 v0, v20

    iput-object v13, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3762
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 3763
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 3764
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFInTimeSlot(): add one record with reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", queryStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3772
    const/16 v27, 0x0

    .line 3773
    const-string v13, ""

    .line 3774
    const/16 v22, 0x14

    .line 3775
    const/16 v35, 0x0

    .line 3699
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 3672
    .end local v16    # "i":I
    .end local v19    # "it":I
    .end local v20    # "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v23    # "numOfComparision":I
    :cond_8
    const-string v3, "MMTelSS"

    const-string v4, "No CF related rules in remote server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 3800
    .end local v11    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v31    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v32    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_1
    move-exception v37

    .line 3801
    .local v37, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): XcapException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    invoke-virtual/range {v37 .. v37}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3803
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_e

    .line 3804
    invoke-virtual/range {v37 .. v37}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3805
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): isConnectionError()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3810
    :goto_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 3696
    .end local v37    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v11    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v23    # "numOfComparision":I
    .restart local v31    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v32    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_9
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 3726
    .restart local v10    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v14    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v16    # "i":I
    .restart local v19    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_a
    :try_start_2
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFInTimeSlot(): Empty cond (cond==null) for this rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 3816
    .end local v10    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v14    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v16    # "i":I
    .end local v19    # "it":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "numOfComparision":I
    .end local v28    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v31    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v32    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_2
    move-exception v15

    .line 3817
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 3819
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_e

    .line 3820
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 3822
    .local v12, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v3, v4, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3823
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 3752
    .end local v12    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v11    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v14    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v16    # "i":I
    .restart local v19    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "numOfComparision":I
    .restart local v28    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v31    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v32    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_b
    :try_start_3
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot()from xcap: Not matched this rule!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 3779
    .end local v10    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v16    # "i":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 3781
    .local v26, "queriedSize":I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v17, v0

    .line 3782
    const/16 v18, 0x0

    .local v18, "inx":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 3783
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallForwardInfoEx;

    aput-object v3, v17, v18

    .line 3782
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 3787
    .end local v18    # "inx":I
    .end local v19    # "it":I
    .end local v23    # "numOfComparision":I
    .end local v26    # "queriedSize":I
    :cond_d
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCFInTimeSlot():get null ruleList"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v17, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3789
    const/16 v27, 0x0

    .line 3831
    .end local v11    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v31    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v32    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_f

    .line 3832
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3833
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3835
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 3808
    .restart local v37    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-static {v3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_6
.end method

.method public handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 16
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 744
    const/4 v13, -0x1

    .line 745
    .local v13, "reqNo":I
    const/4 v14, -0x1

    .line 746
    .local v14, "serialNo":I
    const/4 v11, 0x0

    .line 747
    .local v11, "get_clip_result":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 749
    .local v7, "phoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 752
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): !isSupportXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 754
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 755
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 765
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 771
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v12

    .line 773
    .local v12, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP():active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    .line 775
    const/4 v11, 0x1

    .line 811
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 812
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 813
    .local v10, "get_clip_response":[I
    const/4 v1, 0x0

    aput v11, v10, v1

    .line 814
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 815
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 818
    .end local v10    # "get_clip_response":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 777
    .restart local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 780
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_0
    move-exception v15

    .line 781
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 783
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 784
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 785
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 790
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 788
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 796
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 797
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 800
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 801
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 802
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 16
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 652
    const/4 v13, 0x1

    .line 653
    .local v13, "presentation_mode":I
    const/4 v11, 0x0

    .line 654
    .local v11, "get_clir_result":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 656
    .local v7, "phoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 659
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIR(): !isSupportXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 661
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 662
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 673
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 679
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v12

    .line 681
    .local v12, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 682
    .local v14, "restricted":Z
    const/4 v1, 0x1

    if-ne v14, v1, :cond_5

    .line 684
    const/4 v13, 0x3

    .line 685
    const/4 v11, 0x1

    .line 729
    .end local v12    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v14    # "restricted":Z
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 730
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 731
    .local v10, "get_clir_response":[I
    const/4 v1, 0x0

    aput v11, v10, v1

    .line 732
    const/4 v1, 0x1

    aput v13, v10, v1

    .line 733
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 734
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 737
    .end local v10    # "get_clir_response":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 688
    .restart local v12    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v14    # "restricted":Z
    :cond_5
    const/4 v13, 0x4

    .line 689
    const/4 v11, 0x2

    goto :goto_1

    .line 692
    .end local v12    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v14    # "restricted":Z
    :catch_0
    move-exception v15

    .line 693
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIR(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 695
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 696
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 697
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIR(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 702
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 700
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 708
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 710
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v13, 0x2

    .line 712
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 714
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 715
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 716
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 829
    const/4 v10, -0x1

    .line 830
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 831
    .local v11, "serialNo":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 832
    .local v9, "get_colp_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 834
    .local v6, "phoneId":I
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 840
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 909
    :cond_1
    :goto_0
    return-void

    .line 850
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 856
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 858
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 861
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0

    .line 862
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 898
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 902
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 903
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 864
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    aput v1, v9, v0

    .line 865
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 868
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_0
    move-exception v13

    .line 869
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 871
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 872
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 873
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 878
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 876
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 884
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v8

    .line 885
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 887
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 888
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 889
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 890
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 914
    const/4 v10, -0x1

    .line 915
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 916
    .local v11, "serialNo":I
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 917
    .local v9, "get_colr_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 919
    .local v6, "phoneId":I
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 925
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 993
    :cond_1
    :goto_0
    return-void

    .line 935
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 941
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 943
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 983
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 986
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 987
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 990
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 949
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 952
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_0
    move-exception v13

    .line 953
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 955
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 956
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 957
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 962
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 960
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 968
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v8

    .line 969
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 971
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 972
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 973
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 974
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 17
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 997
    const/4 v13, -0x1

    .line 998
    .local v13, "reqNo":I
    const/4 v14, -0x1

    .line 999
    .local v14, "serialNo":I
    const/4 v10, -0x1

    .line 1000
    .local v10, "cwServiceClass":I
    const/4 v1, 0x2

    new-array v12, v1, [I

    .line 1001
    .local v12, "get_cw_response":[I
    const/4 v7, 0x0

    .line 1007
    .local v7, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1008
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1009
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1010
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1011
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1012
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read GET_CW serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCW(): !isSupportXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1041
    :catch_0
    move-exception v15

    .line 1042
    .local v15, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 1043
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1044
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1117
    .end local v15    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    const/16 v1, 0x210

    if-ne v10, v1, :cond_2

    .line 1023
    const/16 v10, 0x200

    .line 1026
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1032
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v9

    .line 1034
    .local v9, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1035
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v12, v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1083
    .end local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_5

    .line 1086
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1096
    if-nez v10, :cond_8

    .line 1099
    const/4 v1, 0x1

    aget v2, v12, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, v12, v1

    .line 1100
    const/4 v1, 0x1

    aget v2, v12, v1

    or-int/lit16 v2, v2, 0x200

    aput v2, v12, v1

    .line 1110
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v12, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1111
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1038
    .restart local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    aput v2, v12, v1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1050
    .end local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_1
    move-exception v16

    .line 1051
    .local v16, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCW(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1053
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 1054
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1055
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCW(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1060
    :goto_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1058
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_3

    .line 1066
    .end local v16    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_2
    move-exception v11

    .line 1067
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1069
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 1070
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 1071
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1072
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1102
    .end local v8    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v1, 0x1

    aget v2, v12, v1

    or-int/2addr v2, v10

    aput v2, v12, v1

    .line 1103
    const/16 v1, 0x200

    if-ne v10, v1, :cond_4

    .line 1106
    const/4 v1, 0x1

    aget v2, v12, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, v12, v1

    goto/16 :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 4157
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v9

    check-cast v7, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4158
    .local v7, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    const/4 v5, 0x0

    .line 4160
    .local v5, "req":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4315
    :cond_0
    :goto_0
    return-void

    .line 4167
    :pswitch_0
    const/4 v1, 0x0

    .line 4168
    .local v1, "alreadySubtracted":Z
    const/4 v6, -0x1

    .line 4169
    .local v6, "reqNo":I
    const/4 v8, -0x1

    .line 4171
    .local v8, "serialNo":I
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): EVENT_SEND:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4176
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4177
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4179
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4180
    const/4 v1, 0x1

    .line 4185
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4188
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v11}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iget v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_1

    .line 4242
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized MMTelSS Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4248
    :catch_0
    move-exception v3

    .line 4249
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4250
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v5

    .line 4253
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): RuntimeException:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    if-nez v5, :cond_1

    if-nez v1, :cond_2

    .line 4257
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 4258
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4264
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)V

    .line 4268
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    :goto_1
    if-nez v1, :cond_3

    .line 4269
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): !alreadySubtracted:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4277
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v9, :cond_4

    .line 4278
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 4279
    iput-object v12, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 4282
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 4283
    :cond_5
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): ERROR wakeLock:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4177
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4264
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)V

    throw v9

    .line 4192
    :pswitch_1
    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4264
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)V

    goto/16 :goto_1

    .line 4195
    :pswitch_2
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4198
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4201
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4204
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4207
    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4210
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4213
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4216
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4219
    :pswitch_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4222
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4225
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4228
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4231
    :pswitch_e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4235
    :pswitch_f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4238
    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 4293
    .end local v1    # "alreadySubtracted":Z
    .end local v6    # "reqNo":I
    .end local v8    # "serialNo":I
    :pswitch_11
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 4294
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4296
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4297
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4298
    .local v2, "count":I
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v13, v13, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 4303
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v0

    .line 4304
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4308
    :cond_6
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4310
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4312
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v9

    .line 4308
    :catchall_3
    move-exception v9

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 4190
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 93
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3026
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3027
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 3028
    .local v89, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v91

    .line 3029
    .local v91, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3030
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v88, v13

    .line 3031
    .local v88, "original_facility":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3032
    .local v14, "lockState":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3033
    .local v15, "setCBServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3035
    .local v8, "phoneId":I
    const/16 v70, 0x0

    .line 3036
    .local v70, "AddRuleForBAOCWithAllMediaType":Z
    const/16 v71, 0x0

    .line 3037
    .local v71, "AddRuleForBAOICWithAllMediaType":Z
    const/16 v72, 0x0

    .line 3038
    .local v72, "AddRuleForBAOICxHWithAllMediaType":Z
    const/16 v68, 0x0

    .line 3039
    .local v68, "AddRuleForBAICWithAllMediaType":Z
    const/16 v69, 0x0

    .line 3041
    .local v69, "AddRuleForBAICrWithAllMediaType":Z
    const-string v34, "AO"

    .line 3042
    .local v34, "BAOC_RuleID":Ljava/lang/String;
    const-string v16, "OI"

    .line 3043
    .local v16, "BAOIC_RuleID":Ljava/lang/String;
    const-string v26, "OX"

    .line 3044
    .local v26, "BAOICExHC_RuleID":Ljava/lang/String;
    const-string v57, "AI"

    .line 3045
    .local v57, "BAIC_RuleID":Ljava/lang/String;
    const-string v49, "IR"

    .line 3047
    .local v49, "BAICR_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CB parcel:req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v89 .. v89}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lockState(enabled)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/16 v2, 0x210

    if-ne v15, v2, :cond_0

    .line 3051
    const/16 v15, 0x200

    .line 3054
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3057
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): !isSupportXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 3059
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3060
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3062
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3616
    :cond_2
    :goto_0
    return-void

    .line 3081
    :cond_3
    const/16 v18, 0x1

    .line 3082
    .local v18, "num_of_expansion":I
    :try_start_0
    const-string v2, "AB"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v14, :cond_6

    .line 3083
    const/16 v18, 0x5

    .line 3090
    :cond_4
    :goto_1
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "AG"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "AC"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3091
    :cond_5
    if-eqz v14, :cond_8

    .line 3093
    const-string v2, "MMTelSS"

    const-string v3, "Not allow lockState=1 for AB(330)/AG(333)/AC(353)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_8

    .line 3098
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v75

    .line 3099
    .local v75, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v75

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3569
    .end local v75    # "ce":Lcom/android/internal/telephony/CommandException;
    :catch_0
    move-exception v92

    .line 3570
    .local v92, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    invoke-virtual/range {v92 .. v92}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3572
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_52

    .line 3573
    invoke-virtual/range {v92 .. v92}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3574
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3579
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 3084
    .end local v92    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    :try_start_1
    const-string v2, "AG"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v14, :cond_7

    .line 3085
    const/16 v18, 0x3

    goto/16 :goto_1

    .line 3086
    :cond_7
    const-string v2, "AC"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v14, :cond_4

    .line 3087
    const/16 v18, 0x2

    goto/16 :goto_1

    .line 3106
    :cond_8
    const/16 v81, 0x0

    .local v81, "it":I
    :goto_3
    move/from16 v0, v81

    move/from16 v1, v18

    if-ge v0, v1, :cond_52

    .line 3107
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_9

    .line 3108
    const-string v2, "AG"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3109
    if-nez v81, :cond_e

    const-string v13, "OI"

    .line 3126
    :cond_9
    :goto_4
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():num_of_expansion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", round="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v81

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",for facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",with lockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3133
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3139
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3142
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v86

    .line 3143
    .local v86, "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v90, 0x0

    .line 3144
    .local v90, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3145
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v74, 0x0

    .line 3147
    .local v74, "addedNewRule":Z
    if-eqz v86, :cond_17

    .line 3148
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v90

    .line 3154
    :goto_5
    if-eqz v90, :cond_27

    .line 3155
    const/16 v78, 0x0

    .local v78, "i":I
    :goto_6
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_27

    .line 3156
    move-object/from16 v0, v90

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3157
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v76

    .line 3158
    .local v76, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v73

    .line 3159
    .local v73, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v82, 0x0

    .line 3161
    .local v82, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v76, :cond_1a

    .line 3162
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",internationalExHC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v82

    .line 3164
    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3165
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3166
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAOIC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_b
    :goto_7
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v76, :cond_1e

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3196
    if-nez v15, :cond_c

    if-nez v15, :cond_1d

    if-nez v71, :cond_1d

    .line 3197
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v17

    move-object/from16 v9, p0

    move/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3201
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():OI-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    if-eqz v15, :cond_1c

    .line 3204
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v15, v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v83

    .line 3207
    .local v83, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v83, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 3208
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3155
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    :goto_8
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_6

    .line 3110
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v74    # "addedNewRule":Z
    .end local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    .end local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_e
    const/4 v2, 0x1

    move/from16 v0, v81

    if-ne v0, v2, :cond_f

    const-string v13, "OX"

    goto/16 :goto_4

    .line 3111
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v81

    if-ne v0, v2, :cond_9

    const-string v13, "AO"

    goto/16 :goto_4

    .line 3113
    :cond_10
    const-string v2, "AC"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3114
    if-nez v81, :cond_11

    const-string v13, "IR"

    goto/16 :goto_4

    .line 3115
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v81

    if-ne v0, v2, :cond_9

    const-string v13, "AI"

    goto/16 :goto_4

    .line 3117
    :cond_12
    const-string v2, "AB"

    move-object/from16 v0, v88

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3118
    if-nez v81, :cond_13

    const-string v13, "OI"

    goto/16 :goto_4

    .line 3119
    :cond_13
    const/4 v2, 0x1

    move/from16 v0, v81

    if-ne v0, v2, :cond_14

    const-string v13, "OX"

    goto/16 :goto_4

    .line 3120
    :cond_14
    const/4 v2, 0x2

    move/from16 v0, v81

    if-ne v0, v2, :cond_15

    const-string v13, "AO"

    goto/16 :goto_4

    .line 3121
    :cond_15
    const/4 v2, 0x3

    move/from16 v0, v81

    if-ne v0, v2, :cond_16

    const-string v13, "IR"

    goto/16 :goto_4

    .line 3122
    :cond_16
    const/4 v2, 0x4

    move/from16 v0, v81

    if-ne v0, v2, :cond_9

    const-string v13, "AI"

    goto/16 :goto_4

    .line 3150
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v74    # "addedNewRule":Z
    .restart local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_17
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 3585
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v74    # "addedNewRule":Z
    .end local v81    # "it":I
    .end local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :catch_1
    move-exception v77

    .line 3589
    .local v77, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Exception;->printStackTrace()V

    .line 3595
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_52

    .line 3596
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v75

    .line 3597
    .restart local v75    # "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v75

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3598
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 3167
    .end local v75    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v77    # "e":Ljava/lang/Exception;
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v74    # "addedNewRule":Z
    .restart local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v78    # "i":I
    .restart local v81    # "it":I
    .restart local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_18
    :try_start_2
    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3168
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3169
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAOICExHC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3171
    :cond_19
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3172
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAOC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3176
    :cond_1a
    if-nez v76, :cond_1b

    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3177
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():cond=null but AO case!MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const/16 v82, 0x0

    .line 3179
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3180
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3181
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAOC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3184
    :cond_1b
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3186
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3187
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAOC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3211
    :cond_1c
    const/16 v71, 0x1

    goto/16 :goto_8

    .line 3213
    :cond_1d
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_d

    .line 3214
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3217
    :cond_1e
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v76, :cond_22

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3221
    if-nez v15, :cond_1f

    if-nez v15, :cond_21

    if-nez v72, :cond_21

    .line 3222
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v27

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v28, v18

    move/from16 v29, v8

    invoke-virtual/range {v19 .. v29}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3226
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():OX-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    if-eqz v15, :cond_20

    .line 3229
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v15, v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v83

    .line 3232
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v83, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 3233
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3237
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_20
    const/16 v72, 0x1

    goto/16 :goto_8

    .line 3239
    :cond_21
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v72

    if-ne v0, v2, :cond_d

    .line 3240
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3243
    :cond_22
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3246
    if-nez v15, :cond_23

    if-nez v15, :cond_25

    if-nez v70, :cond_25

    .line 3247
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v35

    move-object/from16 v27, p0

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    move/from16 v36, v18

    move/from16 v37, v8

    invoke-virtual/range {v27 .. v37}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3251
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():AO-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    if-eqz v15, :cond_24

    .line 3254
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v15, v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v83

    .line 3257
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v83, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 3258
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3261
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_24
    const/16 v70, 0x1

    goto/16 :goto_8

    .line 3263
    :cond_25
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v70

    if-ne v0, v2, :cond_d

    .line 3264
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3269
    :cond_26
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_8

    .line 3279
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    .end local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    if-nez v74, :cond_29

    .line 3283
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MO add new rule for this time\'s request-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const-string v41, ""

    .line 3286
    .local v41, "newRuleID":Ljava/lang/String;
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3287
    move-object/from16 v41, v34

    .line 3293
    :cond_28
    :goto_9
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MO add new rule with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v42

    move-object/from16 v35, p0

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v43, v18

    move/from16 v44, v8

    invoke-virtual/range {v35 .. v44}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3301
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_29
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3302
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump MO SetCB  XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3308
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3106
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v74    # "addedNewRule":Z
    .end local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_2a
    :goto_b
    add-int/lit8 v81, v81, 0x1

    goto/16 :goto_3

    .line 3288
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v41    # "newRuleID":Ljava/lang/String;
    .restart local v74    # "addedNewRule":Z
    .restart local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_2b
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3289
    move-object/from16 v41, v16

    goto :goto_9

    .line 3290
    :cond_2c
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3291
    move-object/from16 v41, v26

    goto :goto_9

    .line 3304
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_2d
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3310
    :cond_2e
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_2a

    .line 3311
    const/16 v84, 0x0

    .line 3312
    .local v84, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3313
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_c
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_2a

    .line 3314
    move-object/from16 v0, v84

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3315
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3313
    add-int/lit8 v78, v78, 0x1

    goto :goto_c

    .line 3319
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v74    # "addedNewRule":Z
    .end local v78    # "i":I
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v86    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_2f
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3323
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3329
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v43

    .line 3332
    .local v43, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v80

    .line 3333
    .local v80, "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v90, 0x0

    .line 3334
    .restart local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3335
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v74, 0x0

    .line 3337
    .restart local v74    # "addedNewRule":Z
    if-eqz v80, :cond_34

    .line 3338
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v90

    .line 3344
    :goto_d
    if-eqz v90, :cond_3e

    .line 3345
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_e
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_3e

    .line 3346
    move-object/from16 v0, v90

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3347
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v76

    .line 3348
    .restart local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v73

    .line 3349
    .restart local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v82, 0x0

    .line 3351
    .restart local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v76, :cond_36

    .line 3352
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MT-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v82

    .line 3354
    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3355
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 3356
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAICR_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_31
    :goto_f
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz v76, :cond_39

    invoke-virtual/range {v76 .. v76}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3373
    if-nez v15, :cond_32

    if-nez v15, :cond_38

    if-nez v69, :cond_38

    .line 3375
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v50

    move-object/from16 v42, p0

    move-object/from16 v44, v11

    move-object/from16 v45, v12

    move-object/from16 v46, v13

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v51, v18

    move/from16 v52, v8

    invoke-virtual/range {v42 .. v52}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3379
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():IR-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    if-eqz v15, :cond_37

    .line 3382
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v15, v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v83

    .line 3385
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v83, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_33

    .line 3386
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3345
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_33
    :goto_10
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_e

    .line 3340
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    .end local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3358
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v78    # "i":I
    .restart local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3359
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAIC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3362
    :cond_36
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    const-string v2, "AI"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3364
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3365
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update BAIC_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3389
    :cond_37
    const/16 v69, 0x1

    goto :goto_10

    .line 3391
    :cond_38
    if-nez v15, :cond_33

    const/4 v2, 0x1

    move/from16 v0, v69

    if-ne v0, v2, :cond_33

    .line 3392
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3395
    :cond_39
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3399
    if-nez v15, :cond_3a

    if-nez v15, :cond_3c

    if-nez v68, :cond_3c

    .line 3400
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v58

    move-object/from16 v50, p0

    move-object/from16 v51, v43

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object/from16 v54, v13

    move/from16 v55, v14

    move/from16 v56, v15

    move/from16 v59, v18

    move/from16 v60, v8

    invoke-virtual/range {v50 .. v60}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3404
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():AI-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    if-eqz v15, :cond_3b

    .line 3407
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v15, v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v83

    .line 3410
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v83, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_33

    .line 3411
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3414
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3b
    const/16 v68, 0x1

    goto/16 :goto_10

    .line 3416
    :cond_3c
    if-nez v15, :cond_33

    const/4 v2, 0x1

    move/from16 v0, v68

    if-ne v0, v2, :cond_33

    .line 3417
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3422
    :cond_3d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_10

    .line 3430
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v76    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    .end local v82    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    if-nez v74, :cond_40

    .line 3434
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MT add new rule for this time\'s request-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    const-string v41, ""

    .line 3437
    .restart local v41    # "newRuleID":Ljava/lang/String;
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3438
    move-object/from16 v41, v57

    .line 3442
    :cond_3f
    :goto_11
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCB():MT add new rule with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v65

    move-object/from16 v58, p0

    move-object/from16 v59, v43

    move-object/from16 v60, v11

    move-object/from16 v61, v13

    move/from16 v62, v14

    move/from16 v63, v15

    move-object/from16 v64, v41

    move/from16 v66, v18

    move/from16 v67, v8

    invoke-virtual/range {v58 .. v67}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v74

    .line 3450
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_40
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 3451
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump MT SetCB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3457
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_b

    .line 3439
    .restart local v41    # "newRuleID":Ljava/lang/String;
    :cond_41
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3440
    move-object/from16 v41, v49

    goto :goto_11

    .line 3453
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_42
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 3459
    :cond_43
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_2a

    .line 3460
    const/16 v84, 0x0

    .line 3461
    .restart local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3462
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_13
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_2a

    .line 3463
    move-object/from16 v0, v84

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3464
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3462
    add-int/lit8 v78, v78, 0x1

    goto :goto_13

    .line 3468
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v43    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v74    # "addedNewRule":Z
    .end local v78    # "i":I
    .end local v80    # "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_44
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    if-nez v14, :cond_50

    .line 3472
    const/16 v79, 0x0

    .line 3473
    .local v79, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v85, 0x0

    .line 3474
    .local v85, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v87, 0x0

    .line 3475
    .local v87, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v90, 0x0

    .line 3477
    .restart local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3483
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3488
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v87

    .line 3489
    if-eqz v87, :cond_45

    .line 3490
    invoke-virtual/range {v87 .. v87}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v90

    .line 3495
    :goto_14
    if-eqz v90, :cond_4a

    .line 3496
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v85

    .line 3497
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_15
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_46

    .line 3498
    move-object/from16 v0, v90

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3499
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V

    .line 3497
    add-int/lit8 v78, v78, 0x1

    goto :goto_15

    .line 3492
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v78    # "i":I
    :cond_45
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3502
    .restart local v78    # "i":I
    :cond_46
    invoke-virtual/range {v85 .. v85}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 3503
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump MO Disable All CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v85 .. v85}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 3508
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3521
    .end local v78    # "i":I
    :cond_47
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3527
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v43

    .line 3530
    .restart local v43    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v87

    .line 3531
    if-eqz v87, :cond_4b

    .line 3532
    invoke-virtual/range {v87 .. v87}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v90

    .line 3537
    :goto_18
    if-eqz v90, :cond_4f

    .line 3538
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v79

    .line 3539
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_19
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_4c

    .line 3540
    move-object/from16 v0, v90

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3541
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V

    .line 3539
    add-int/lit8 v78, v78, 0x1

    goto :goto_19

    .line 3505
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v43    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_48
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 3510
    :cond_49
    const/16 v84, 0x0

    .line 3511
    .restart local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v85 .. v85}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3512
    const/16 v78, 0x0

    :goto_1a
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_47

    .line 3513
    move-object/from16 v0, v84

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3514
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3512
    add-int/lit8 v78, v78, 0x1

    goto :goto_1a

    .line 3518
    .end local v78    # "i":I
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_4a
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 3534
    .restart local v43    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_4b
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 3544
    .restart local v78    # "i":I
    :cond_4c
    invoke-virtual/range {v79 .. v79}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 3545
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump MT Disable All CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v79 .. v79}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3550
    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_b

    .line 3547
    :cond_4d
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 3552
    :cond_4e
    const/16 v84, 0x0

    .line 3553
    .restart local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v79 .. v79}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3554
    const/16 v78, 0x0

    :goto_1c
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_2a

    .line 3555
    move-object/from16 v0, v84

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3556
    .restart local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v83

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3554
    add-int/lit8 v78, v78, 0x1

    goto :goto_1c

    .line 3560
    .end local v78    # "i":I
    .end local v83    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v84    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_4f
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3565
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v43    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v79    # "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v85    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v87    # "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v90    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_50
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized SET_CB facility= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and its parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3577
    .end local v81    # "it":I
    .restart local v92    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_51
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v92

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_2

    .line 3608
    .end local v92    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_52
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_53

    .line 3609
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3610
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3613
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 89
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2662
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2663
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 2664
    .local v81, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 2666
    .local v85, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2667
    .local v14, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2668
    .local v13, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2669
    .local v15, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2670
    .local v16, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2671
    .local v17, "setCFTimeSeconds":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2672
    .local v8, "phoneId":I
    const/16 v80, 0x0

    .line 2674
    .local v80, "reportFlag":I
    const/16 v68, 0x0

    .line 2675
    .local v68, "AddRuleForCFUWithAllMediaType":Z
    const/16 v64, 0x0

    .line 2676
    .local v64, "AddRuleForCFBWithAllMediaType":Z
    const/16 v65, 0x0

    .line 2677
    .local v65, "AddRuleForCFNoAnswerWithAllMediaType":Z
    const/16 v66, 0x0

    .line 2678
    .local v66, "AddRuleForCFNotReachableWithAllMediaType":Z
    const/16 v67, 0x0

    .line 2680
    .local v67, "AddRuleForCFNotRegisteredWithAllMediaType":Z
    const-string v60, "CFU"

    .line 2681
    .local v60, "CFU_RuleID":Ljava/lang/String;
    const-string v18, "CFB"

    .line 2682
    .local v18, "CFB_RuleID":Ljava/lang/String;
    const-string v30, "CFNoAnswer"

    .line 2683
    .local v30, "CFNoAnswer_RuleID":Ljava/lang/String;
    const-string v40, "CFNotReachable"

    .line 2684
    .local v40, "CFNotReachable_RuleID":Ljava/lang/String;
    const-string v50, "CFNotReachable"

    .line 2686
    .local v50, "CFNotRegistered_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel:req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v81 .. v81}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",timeSec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 2689
    .local v69, "XcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2690
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():get call forwarding num from EM setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 2692
    .local v87, "ss_mode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():ss_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v87

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2694
    move-object/from16 v16, v69

    .line 2699
    .end local v87    # "ss_mode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v15, v2, :cond_2

    .line 2700
    const/16 v15, 0x200

    .line 2703
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2706
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): !isSupportXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 2708
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2709
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2711
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3023
    :cond_4
    :goto_0
    return-void

    .line 2717
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    move-object/from16 v86, v0

    check-cast v86, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2718
    .local v86, "setCFRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v86

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2722
    const/16 v20, 0x1

    .line 2724
    .local v20, "num_of_expansion":I
    const/4 v2, 0x5

    if-ne v13, v2, :cond_c

    .line 2726
    const/16 v20, 0x4

    .line 2732
    :cond_6
    :goto_1
    const/16 v76, 0x0

    .local v76, "it":I
    :goto_2
    move/from16 v0, v76

    move/from16 v1, v20

    if-ge v0, v1, :cond_38

    .line 2733
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_7

    .line 2734
    if-nez v76, :cond_d

    const/4 v13, 0x1

    .line 2742
    :cond_7
    :goto_3
    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_8

    .line 2743
    const/16 v80, 0x1

    .line 2746
    :cond_8
    :try_start_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():it="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v76

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num_of_expansion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2754
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 2756
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v84

    .line 2757
    .local v84, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v83, 0x0

    .line 2758
    .local v83, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 2759
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v71, 0x0

    .line 2762
    .local v71, "addedNewRule":Z
    if-eqz v84, :cond_11

    .line 2763
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v83

    .line 2769
    :goto_4
    if-eqz v83, :cond_29

    .line 2771
    const/16 v75, 0x0

    .local v75, "i":I
    :goto_5
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v75

    if-ge v0, v2, :cond_29

    .line 2772
    move-object/from16 v0, v83

    move/from16 v1, v75

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2773
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 2774
    .local v73, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 2775
    .local v70, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 2777
    .local v77, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v73, :cond_16

    .line 2778
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 2779
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():busy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoAnswer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoReachable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NotRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2781
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2782
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFB_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :cond_9
    :goto_6
    const/4 v2, 0x1

    if-ne v13, v2, :cond_18

    if-eqz v73, :cond_18

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2810
    if-nez v15, :cond_a

    if-nez v15, :cond_17

    if-nez v64, :cond_17

    .line 2811
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    move/from16 v21, v8

    invoke-virtual/range {v9 .. v21}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 2815
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFB-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    if-nez v15, :cond_b

    .line 2817
    const/16 v64, 0x1

    .line 2771
    :cond_b
    :goto_7
    add-int/lit8 v75, v75, 0x1

    goto/16 :goto_5

    .line 2727
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v71    # "addedNewRule":Z
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v75    # "i":I
    .end local v76    # "it":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_c
    const/4 v2, 0x4

    if-ne v13, v2, :cond_6

    .line 2729
    const/16 v20, 0x5

    goto/16 :goto_1

    .line 2735
    .restart local v76    # "it":I
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_e

    const/4 v13, 0x2

    goto/16 :goto_3

    .line 2736
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_f

    const/4 v13, 0x3

    goto/16 :goto_3

    .line 2737
    :cond_f
    const/4 v2, 0x3

    move/from16 v0, v76

    if-ne v0, v2, :cond_10

    const/4 v13, 0x6

    goto/16 :goto_3

    .line 2738
    :cond_10
    const/4 v2, 0x4

    move/from16 v0, v76

    if-ne v0, v2, :cond_7

    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2765
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v71    # "addedNewRule":Z
    .restart local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_11
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 2982
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v71    # "addedNewRule":Z
    .end local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_0
    move-exception v88

    .line 2983
    .local v88, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    invoke-virtual/range {v88 .. v88}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2985
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_38

    .line 2986
    invoke-virtual/range {v88 .. v88}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2987
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2992
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2783
    .end local v88    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v71    # "addedNewRule":Z
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v75    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_12
    :try_start_1
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2784
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2785
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNoAnswer_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 2998
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v71    # "addedNewRule":Z
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v75    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_1
    move-exception v74

    .line 3001
    .local v74, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Exception;->printStackTrace()V

    .line 3003
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    move/from16 v0, v80

    if-ne v0, v2, :cond_38

    .line 3004
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v72

    .line 3005
    .local v72, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3006
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2786
    .end local v72    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v74    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v71    # "addedNewRule":Z
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v75    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_13
    :try_start_2
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2787
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 2788
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotReachable_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2789
    :cond_14
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2790
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 2791
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotRegistered_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2793
    :cond_15
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 2794
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2797
    :cond_16
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const-string v2, "CFU"

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2800
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 2801
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2819
    :cond_17
    if-nez v15, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_b

    .line 2820
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2823
    :cond_18
    const/4 v2, 0x2

    if-ne v13, v2, :cond_1d

    if-eqz v73, :cond_1d

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2827
    if-nez v15, :cond_19

    if-nez v15, :cond_1c

    if-nez v65, :cond_1c

    .line 2828
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v31

    move-object/from16 v21, p0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v29, v17

    move/from16 v32, v20

    move/from16 v33, v8

    invoke-virtual/range {v21 .. v33}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 2832
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoAnswer-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_1b

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1a

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1b

    .line 2836
    :cond_1a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C1]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 2840
    :cond_1b
    if-nez v15, :cond_b

    .line 2841
    const/16 v65, 0x1

    goto/16 :goto_7

    .line 2843
    :cond_1c
    if-nez v15, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_b

    .line 2844
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2847
    :cond_1d
    const/4 v2, 0x3

    if-ne v13, v2, :cond_20

    if-eqz v73, :cond_20

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2851
    if-nez v15, :cond_1e

    if-nez v15, :cond_1f

    if-nez v66, :cond_1f

    .line 2852
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v41

    move-object/from16 v31, p0

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 v38, v16

    move/from16 v39, v17

    move/from16 v42, v20

    move/from16 v43, v8

    invoke-virtual/range {v31 .. v43}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 2856
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoReachable-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    if-nez v15, :cond_b

    .line 2858
    const/16 v66, 0x1

    goto/16 :goto_7

    .line 2860
    :cond_1f
    if-nez v15, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v66

    if-ne v0, v2, :cond_b

    .line 2861
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2864
    :cond_20
    const/4 v2, 0x6

    if-ne v13, v2, :cond_23

    if-eqz v73, :cond_23

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2868
    if-nez v15, :cond_21

    if-nez v15, :cond_22

    if-nez v67, :cond_22

    .line 2869
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v51

    move-object/from16 v41, p0

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    move/from16 v45, v13

    move/from16 v46, v14

    move/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    move/from16 v52, v20

    move/from16 v53, v8

    invoke-virtual/range {v41 .. v53}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 2873
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoRegistered-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    if-nez v15, :cond_b

    .line 2875
    const/16 v67, 0x1

    goto/16 :goto_7

    .line 2877
    :cond_22
    if-nez v15, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v67

    if-ne v0, v2, :cond_b

    .line 2878
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2880
    :cond_23
    if-nez v13, :cond_28

    if-eqz v73, :cond_24

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    if-nez v73, :cond_28

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2887
    if-nez v15, :cond_26

    if-nez v15, :cond_27

    if-nez v68, :cond_27

    .line 2888
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v61

    move-object/from16 v51, p0

    move-object/from16 v52, v10

    move-object/from16 v53, v11

    move-object/from16 v54, v12

    move/from16 v55, v13

    move/from16 v56, v14

    move/from16 v57, v15

    move-object/from16 v58, v16

    move/from16 v59, v17

    move/from16 v62, v20

    move/from16 v63, v8

    invoke-virtual/range {v51 .. v63}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 2892
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFU-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    if-nez v15, :cond_b

    .line 2894
    const/16 v68, 0x1

    goto/16 :goto_7

    .line 2896
    :cond_27
    if-nez v15, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v68

    if-ne v0, v2, :cond_b

    .line 2897
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2902
    :cond_28
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_7

    .line 2911
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v75    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    if-nez v71, :cond_2d

    const/4 v2, 0x1

    if-eq v14, v2, :cond_2a

    const/4 v2, 0x3

    if-ne v14, v2, :cond_2d

    .line 2912
    :cond_2a
    const/16 v71, 0x1

    .line 2913
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v82

    .line 2914
    .local v82, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v82 .. v82}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 2915
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v82 .. v82}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 2916
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2917
    const/4 v2, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2921
    :goto_9
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2922
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2924
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Add rule for this time\'s enable reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    const/4 v2, 0x1

    if-ne v13, v2, :cond_30

    .line 2927
    move-object/from16 v0, v82

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2928
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2945
    :cond_2b
    :goto_a
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2946
    const/4 v2, 0x1

    if-ne v15, v2, :cond_34

    .line 2947
    const-string v2, "audio"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2954
    :cond_2c
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2d

    .line 2955
    move-object/from16 v0, v82

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2961
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v82    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2d
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 2962
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 2968
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 2732
    :cond_2e
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_2

    .line 2919
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v82    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2f
    const/4 v2, 0x1

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 2929
    :cond_30
    const/4 v2, 0x2

    if-ne v13, v2, :cond_31

    .line 2931
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C2]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 2933
    move-object/from16 v0, v82

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_a

    .line 2935
    :cond_31
    const/4 v2, 0x3

    if-ne v13, v2, :cond_32

    .line 2936
    move-object/from16 v0, v82

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2937
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_a

    .line 2938
    :cond_32
    const/4 v2, 0x6

    if-ne v13, v2, :cond_33

    .line 2939
    move-object/from16 v0, v82

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2940
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_a

    .line 2941
    :cond_33
    if-nez v13, :cond_2b

    .line 2942
    move-object/from16 v0, v82

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2948
    :cond_34
    const/16 v2, 0x200

    if-ne v15, v2, :cond_2c

    .line 2950
    const-string v2, "video"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2964
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v82    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_35
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2970
    :cond_36
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_2e

    .line 2971
    const/16 v79, 0x0

    .line 2972
    .local v79, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 2973
    const/16 v75, 0x0

    .restart local v75    # "i":I
    :goto_d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v75

    if-ge v0, v2, :cond_2e

    .line 2974
    move-object/from16 v0, v79

    move/from16 v1, v75

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2975
    .local v78, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2973
    add-int/lit8 v75, v75, 0x1

    goto :goto_d

    .line 2990
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v71    # "addedNewRule":Z
    .end local v75    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v83    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v88    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_37
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v88

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_8

    .line 3015
    .end local v88    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_38
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    move/from16 v0, v80

    if-ne v0, v2, :cond_39

    .line 3016
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3017
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3020
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 48
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3841
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3842
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3843
    .local v40, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 3845
    .local v43, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 3846
    .local v13, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3847
    .local v12, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3848
    .local v14, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3849
    .local v15, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3850
    .local v16, "setCFTimeSeconds":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v45, v0

    .line 3852
    .local v45, "timeSlot":[J
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3856
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v17

    .line 3857
    .local v17, "timeSlotString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3859
    .local v8, "phoneId":I
    const/16 v33, 0x0

    .line 3860
    .local v33, "addRuleForCFUWithAllMediaType":Z
    const-string v18, "CFU"

    .line 3862
    .local v18, "cfuRuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel: req = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v40 .. v40}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cfAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeSec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timsSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3869
    .local v46, "xcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3872
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): get call forwarding num from EM setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 3875
    .local v44, "ssMode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): ssMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3877
    move-object/from16 v15, v46

    .line 3882
    .end local v44    # "ssMode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v14, v2, :cond_2

    .line 3884
    const/16 v14, 0x200

    .line 3887
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3890
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): !isSupportXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 3892
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3893
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3895
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4063
    :cond_4
    :goto_1
    return-void

    .line 3853
    .end local v8    # "phoneId":I
    .end local v17    # "timeSlotString":Ljava/lang/String;
    .end local v18    # "cfuRuleID":Ljava/lang/String;
    .end local v33    # "addRuleForCFUWithAllMediaType":Z
    .end local v46    # "xcapCFNum":Ljava/lang/String;
    :catch_0
    move-exception v37

    .line 3854
    .local v37, "e":Ljava/lang/Exception;
    const/16 v45, 0x0

    goto/16 :goto_0

    .line 3902
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v17    # "timeSlotString":Ljava/lang/String;
    .restart local v18    # "cfuRuleID":Ljava/lang/String;
    .restart local v33    # "addRuleForCFUWithAllMediaType":Z
    .restart local v46    # "xcapCFNum":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3908
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3909
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v42

    .line 3910
    .local v42, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v41, 0x0

    .line 3911
    .local v41, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3912
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 3914
    .local v34, "addedNewRule":Z
    if-eqz v42, :cond_c

    .line 3915
    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v41

    .line 3922
    :goto_2
    if-eqz v41, :cond_15

    .line 3924
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_3
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_15

    .line 3925
    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3926
    .local v22, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v36

    .line 3927
    .local v36, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v32

    .line 3928
    .local v32, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v39, 0x0

    .line 3930
    .local v39, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v36, :cond_11

    .line 3931
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v39

    .line 3932
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): busy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoAnswer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoReachable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3938
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    :cond_6
    :goto_4
    if-nez v12, :cond_14

    if-eqz v36, :cond_7

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    if-nez v36, :cond_14

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3966
    if-nez v14, :cond_9

    if-nez v14, :cond_13

    if-nez v33, :cond_13

    .line 3969
    :cond_9
    const/4 v2, 0x1

    if-eq v13, v2, :cond_a

    const/4 v2, 0x3

    if-ne v13, v2, :cond_12

    .line 3971
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v34

    .line 3981
    :goto_5
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): CFU-addedNewRule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    if-nez v14, :cond_b

    .line 3984
    const/16 v33, 0x1

    .line 3924
    :cond_b
    :goto_6
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 3917
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v38    # "i":I
    .end local v39    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 4022
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_1
    move-exception v47

    .line 4023
    .local v47, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    invoke-virtual/range {v47 .. v47}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4025
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_18

    .line 4026
    invoke-virtual/range {v47 .. v47}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4027
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4032
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_1

    .line 3939
    .end local v47    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v34    # "addedNewRule":Z
    .restart local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v38    # "i":I
    .restart local v39    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_d
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3940
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNoAnswer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 4038
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v34    # "addedNewRule":Z
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v38    # "i":I
    .end local v39    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_2
    move-exception v37

    .line 4041
    .restart local v37    # "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 4043
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_18

    .line 4044
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v35

    .line 4046
    .local v35, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4047
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_1

    .line 3941
    .end local v35    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v34    # "addedNewRule":Z
    .restart local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v38    # "i":I
    .restart local v39    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_e
    :try_start_3
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3942
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotReachable"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3943
    :cond_f
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3944
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotRegistered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3946
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3947
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3950
    :cond_11
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): Empty cond (cond==null) for this rule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    const-string v2, "CFU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3954
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3955
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3976
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v27, v16

    move-object/from16 v28, v18

    move/from16 v31, v8

    invoke-virtual/range {v19 .. v31}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v34

    goto/16 :goto_5

    .line 3986
    :cond_13
    if-nez v14, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_b

    .line 3988
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3992
    :cond_14
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_6

    .line 4001
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v38    # "i":I
    .end local v39    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    if-nez v34, :cond_17

    const/4 v2, 0x1

    if-eq v13, v2, :cond_16

    const/4 v2, 0x3

    if-ne v13, v2, :cond_17

    .line 4004
    :cond_16
    const/16 v34, 0x1

    .line 4005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4013
    :cond_17
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 4014
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4020
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4056
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_19

    .line 4057
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4058
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4060
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_1

    .line 4016
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "addedNewRule":Z
    .restart local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1a
    :try_start_4
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 4030
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v41    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v42    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v47    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_7
.end method

.method public handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2338
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2339
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2340
    .local v11, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2342
    .local v12, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2343
    .local v8, "clipEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2344
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIP parcel:clipMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2348
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2349
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2352
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2415
    :cond_1
    :goto_0
    return-void

    .line 2362
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2363
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2364
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2368
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v10

    .line 2370
    .local v10, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2371
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2408
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2409
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2410
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2412
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto :goto_0

    .line 2373
    .restart local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2375
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_0
    move-exception v13

    .line 2376
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2378
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2379
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2380
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2385
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2383
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 2391
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 2394
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2396
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2397
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2398
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2399
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2400
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2256
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2257
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2258
    .local v11, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2260
    .local v12, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2261
    .local v8, "clirMode":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2262
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2267
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIR(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2270
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2335
    :cond_1
    :goto_0
    return-void

    .line 2280
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2284
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2286
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v10

    .line 2288
    .local v10, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2289
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2328
    .end local v10    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2329
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2330
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2332
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto :goto_0

    .line 2290
    .restart local v10    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 2291
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2295
    .end local v10    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_0
    move-exception v13

    .line 2296
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2298
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2299
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2300
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2305
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2307
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2293
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2311
    .end local v10    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v9

    .line 2314
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2316
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2317
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2318
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2319
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2320
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2303
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2
.end method

.method public handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2501
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2502
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2503
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2505
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2506
    .local v8, "colpEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2507
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLP parcel:colpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2512
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2514
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2515
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2578
    :cond_1
    :goto_0
    return-void

    .line 2525
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2531
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 2533
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2534
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2571
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2572
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2573
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2575
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2576
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto :goto_0

    .line 2536
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2538
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_0
    move-exception v13

    .line 2539
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2541
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2542
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2543
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2548
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2550
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2546
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 2554
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 2557
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2559
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2560
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2561
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2562
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2419
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2420
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2421
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2423
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2424
    .local v8, "colrMode":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2425
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2429
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2430
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): !isSupportXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2433
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2498
    :cond_1
    :goto_0
    return-void

    .line 2443
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2449
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 2451
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2452
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2491
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2492
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2493
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2495
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto :goto_0

    .line 2453
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 2454
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2458
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_0
    move-exception v13

    .line 2459
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2461
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2462
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2463
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2468
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2469
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2456
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2474
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v9

    .line 2477
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2479
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2480
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2481
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2482
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2484
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2466
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2
.end method

.method public handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 16
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2583
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2584
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2585
    .local v12, "reqNo":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2586
    .local v13, "serialNo":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2587
    .local v11, "enabled":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2588
    .local v14, "serviceClass":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2590
    .local v7, "phoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2593
    const-string v1, "MMTelSS"

    const-string v2, "handleSetCW(): !isSupportXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 2595
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2596
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2598
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2659
    :cond_1
    :goto_0
    return-void

    .line 2606
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2612
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v9

    .line 2613
    .local v9, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 2614
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2651
    .end local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 2652
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2653
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2656
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2616
    .restart local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v9, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2618
    .end local v9    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v15

    .line 2619
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleSetCW(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2621
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 2622
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2623
    const-string v1, "MMTelSS"

    const-string v2, "handleSetCW(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2628
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2626
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 2634
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v10

    .line 2637
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2639
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 2640
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 2641
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2642
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public hasExtraMedia(Ljava/util/List;I)Z
    .locals 3
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "found":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 608
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 636
    if-nez p1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 623
    if-nez p1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method
