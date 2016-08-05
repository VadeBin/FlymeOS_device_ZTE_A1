.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# static fields
.field private static final D:Z = true

.field static final SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppSendFileInfo"

.field private static final V:Z = true


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const-wide/16 v4, 0x0

    const/16 v7, 0x1ec

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 101
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 102
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "inputStream"    # Ljava/io/FileInputStream;
    .param p6, "status"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 89
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 90
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 91
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 108
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 109
    .local v19, "scheme":Ljava/lang/String;
    const/4 v15, 0x0

    .line 111
    .local v15, "fileName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 112
    .local v16, "length":J
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "generateFileInfo ++"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v3, "content"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "contentType":Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v9, "_display_name"

    aput-object v9, v4, v3

    const/4 v3, 0x1

    const-string v9, "_size"

    aput-object v9, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 127
    .local v18, "metadataCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v18, :cond_8

    .line 129
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 131
    .end local v15    # "fileName":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    int-to-long v6, v3

    .line 132
    .end local v16    # "length":J
    .local v6, "length":J
    :try_start_3
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fileName = "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, " length = "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 138
    :goto_2
    if-nez v4, :cond_0

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v5, v10

    .line 151
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v18    # "metadataCursor":Landroid/database/Cursor;
    .local v5, "contentType":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    .line 152
    .local v8, "is":Ljava/io/FileInputStream;
    const-string v3, "content"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :try_start_4
    const-string v3, "r"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    .line 159
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v20

    .line 160
    .local v20, "statLength":J
    cmp-long v3, v6, v20

    if-eqz v3, :cond_1

    const-wide/16 v22, 0x0

    cmp-long v3, v20, v22

    if-lez v3, :cond_1

    .line 161
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content provider length is wrong ("

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, "), using stat length ("

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, ")"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 163
    move-wide/from16 v6, v20

    .line 169
    :cond_1
    :try_start_5
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v8

    .line 187
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v20    # "statLength":J
    :cond_2
    :goto_4
    if-nez v8, :cond_3

    .line 188
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "is == null"

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .end local v8    # "is":Ljava/io/FileInputStream;
    check-cast v8, Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 199
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :cond_3
    const-wide/16 v22, 0x0

    cmp-long v3, v6, v22

    if-nez v3, :cond_4

    .line 201
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v6, v3

    .line 202
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "file length is "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 209
    :cond_4
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    .end local v5    # "contentType":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/FileInputStream;
    :goto_5
    return-object v3

    .line 123
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :catch_0
    move-exception v11

    .line 125
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    const/16 v18, 0x0

    .restart local v18    # "metadataCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 135
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 142
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v18    # "metadataCursor":Landroid/database/Cursor;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_5
    const-string v3, "file"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 144
    .end local v15    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    move-object/from16 v5, p2

    .line 145
    .restart local v5    # "contentType":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 147
    .end local v16    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_3

    .line 149
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v13    # "f":Ljava/io/File;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_6
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto :goto_5

    .line 170
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v20    # "statLength":J
    :catch_1
    move-exception v11

    .line 172
    .local v11, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 178
    :goto_7
    :try_start_9
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "createInputStream exception"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 181
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v20    # "statLength":J
    :catch_2
    move-exception v11

    .line 183
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "file not found exception"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 173
    .local v11, "e":Ljava/io/IOException;
    .restart local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v20    # "statLength":J
    :catch_3
    move-exception v12

    .line 175
    .local v12, "e2":Ljava/io/IOException;
    :try_start_a
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "close exception"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .line 191
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e2":Ljava/io/IOException;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v20    # "statLength":J
    :catch_4
    move-exception v11

    .line 192
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "return send_file_info_error"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 194
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    goto :goto_5

    .line 203
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    .line 204
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "[Bluetooth.OPP]BluetoothOppSendFileInfo"

    const-string v9, "Read stream exception: "

    invoke-static {v3, v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    goto :goto_5

    .line 135
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v16    # "length":J
    .restart local v18    # "metadataCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    goto :goto_6

    :catchall_2
    move-exception v3

    goto :goto_6

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_7
    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_8
    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_2
.end method
