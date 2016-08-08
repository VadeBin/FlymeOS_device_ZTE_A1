.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$1;,
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x200000000000000L

.field private static final HANDLE_TYPE_MASK:J = 0xf00000000000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x100000000000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x800000000000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x400000000000000L

.field private static final TAG:Ljava/lang/String; = "[MAP]MapUtils"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static detectCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    :try_start_0
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 166
    .local v1, "detector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 167
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 173
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "detector":Landroid/location/CountryDetector;
    :goto_0
    return-object v3

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->detectCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v3

    .line 179
    .local v3, "mFormatter":Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 180
    .local v0, "cha":[C
    array-length v2, v0

    .line 181
    .local v2, "ii":I
    const/4 v4, 0x0

    .local v4, "num":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 182
    aget-char v5, v0, v4

    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object p0

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-object p0
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 5
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 133
    .local v0, "cpHandle":J
    const-string v2, "[MAP]MapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> MAP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide v2, -0xf00000000000001L    # -2.034916513940385E236

    and-long/2addr v0, v2

    .line 136
    const-string v2, "[MAP]MapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->CP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-wide v0
.end method

.method public static getLongAsString(J)Ljava/lang/String;
    .locals 14
    .param p0, "v"    # J

    .prologue
    const-wide/16 v12, -0x1

    const/16 v7, 0x37

    const/16 v6, 0x30

    const/16 v10, 0xa

    .line 70
    const/16 v5, 0x10

    new-array v2, v5, [C

    .line 71
    .local v2, "result":[C
    and-long v8, p0, v12

    long-to-int v3, v8

    .line 72
    .local v3, "v1":I
    const/16 v5, 0x20

    shr-long v8, p0, v5

    and-long/2addr v8, v12

    long-to-int v4, v8

    .line 74
    .local v4, "v2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_2

    .line 75
    and-int/lit8 v0, v4, 0xf

    .line 76
    .local v0, "c":I
    if-ge v0, v10, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v0, v5

    .line 77
    rsub-int/lit8 v5, v1, 0x7

    int-to-char v8, v0

    aput-char v8, v2, v5

    .line 78
    shr-int/lit8 v4, v4, 0x4

    .line 79
    and-int/lit8 v0, v3, 0xf

    .line 80
    if-ge v0, v10, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v0, v5

    .line 81
    rsub-int/lit8 v5, v1, 0xf

    int-to-char v8, v0

    aput-char v8, v2, v5

    .line 82
    shr-int/lit8 v3, v3, 0x4

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 76
    goto :goto_1

    :cond_1
    move v5, v7

    .line 80
    goto :goto_2

    .line 84
    .end local v0    # "c":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 4
    .param p0, "cpHandle"    # J
    .param p2, "messageType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 94
    const-string v0, "-1"

    .line 95
    .local v0, "mapHandle":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :pswitch_0
    const-wide/high16 v2, 0x100000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 102
    :pswitch_1
    const-wide/high16 v2, 0x400000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    const-wide/high16 v2, 0x800000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const-wide/high16 v2, 0x200000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 123
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    .local v0, "cpHandle":J
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 156
    :goto_0
    return-object v2

    .line 151
    :cond_0
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 152
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 153
    :cond_1
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 154
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 155
    :cond_2
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 156
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 158
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message type not found in handle string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isLegalArgument(Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    :goto_0
    return v3

    .line 194
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 195
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 197
    .local v2, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    const-string v5, ""

    const-string v6, "test"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    const-string v5, ""

    const-string v6, "str"

    invoke-interface {v2, v5, v6, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "[MAP]MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[islegalArgument] IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 203
    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "[MAP]MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[islegalArgument] IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 206
    goto :goto_0
.end method

.method public static removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v5, "[MAP]MapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeInvalidChar] begin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 217
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 219
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "c":C
    const/16 v5, 0x20

    if-lt v1, v5, :cond_1

    const v5, 0xd7ff

    if-le v1, v5, :cond_2

    :cond_1
    const v5, 0xe000

    if-lt v1, v5, :cond_4

    const v5, 0xfffd

    if-gt v1, v5, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 222
    .local v4, "valid":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    .end local v4    # "valid":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 226
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "newStr":Ljava/lang/String;
    const-string v5, "[MAP]MapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeInvalidChar] end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    .line 228
    goto :goto_0
.end method
