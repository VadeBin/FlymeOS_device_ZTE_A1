.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppTransferAdapter"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 77
    .local v13, "r":Landroid/content/res/Resources;
    const v23, 0x7f08000a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 78
    .local v12, "iv":Landroid/widget/ImageView;
    const/4 v15, -0x1

    .line 79
    .local v15, "status":I
    const/4 v10, -0x1

    .line 81
    .local v10, "dir":I
    :try_start_0
    const-string v23, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 82
    const-string v23, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 88
    :goto_0
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 89
    const v23, 0x1080078

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_1
    const v23, 0x7f08000b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 100
    .local v22, "tv":Landroid/widget/TextView;
    const-string v23, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, "title":Ljava/lang/String;
    if-nez v17, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f050041

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 105
    :cond_0
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v23, 0x7f08000c

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 109
    .restart local v22    # "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 110
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v23, "destination"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 111
    .local v8, "destinationColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    .line 113
    .local v14, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "deviceName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string v23, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 118
    .local v20, "totalBytes":J
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 119
    const v23, 0x7f08000e

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 120
    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v15, v9}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_2
    const-string v23, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, "dateColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 137
    .local v18, "time":J
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 138
    .local v6, "d":Ljava/util/Date;
    invoke-static/range {v18 .. v19}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, "str":Ljava/lang/CharSequence;
    :goto_3
    const v23, 0x7f08000d

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 141
    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v6    # "d":Ljava/util/Date;
    .end local v7    # "dateColumnId":I
    .end local v16    # "str":Ljava/lang/CharSequence;
    .end local v18    # "time":J
    :cond_1
    return-void

    .line 83
    .end local v4    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "destinationColumnId":I
    .end local v9    # "deviceName":Ljava/lang/String;
    .end local v14    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "totalBytes":J
    .end local v22    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v11

    .line 84
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v23, "[Bluetooth.OPP]BluetoothOppTransferAdapter"

    const-string v24, "bindview exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    if-nez v10, :cond_3

    .line 92
    const v23, 0x1080089

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 94
    :cond_3
    const v23, 0x1080082

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 125
    .restart local v4    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v8    # "destinationColumnId":I
    .restart local v9    # "deviceName":Ljava/lang/String;
    .restart local v14    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v20    # "totalBytes":J
    .restart local v22    # "tv":Landroid/widget/TextView;
    :cond_4
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    .line 126
    const v23, 0x7f05005c

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "completeText":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 129
    .end local v5    # "completeText":Ljava/lang/String;
    :cond_5
    const v23, 0x7f05005d

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "completeText":Ljava/lang/String;
    goto :goto_4

    .line 138
    .end local v5    # "completeText":Ljava/lang/String;
    .restart local v6    # "d":Ljava/util/Date;
    .restart local v7    # "dateColumnId":I
    .restart local v18    # "time":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3
.end method
