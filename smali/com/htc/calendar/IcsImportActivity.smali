.class public Lcom/htc/calendar/IcsImportActivity;
.super Landroid/app/Activity;
.source "IcsImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/IcsImportActivity$CalendarInfo;
    }
.end annotation


# static fields
.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "IcsImportActivity"


# instance fields
.field private mImportListener:Landroid/content/DialogInterface$OnClickListener;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/IcsImportActivity$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mVCalString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/IcsImportActivity;->mVCalString:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/htc/calendar/IcsImportActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/IcsImportActivity$1;-><init>(Lcom/htc/calendar/IcsImportActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/IcsImportActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 67
    new-instance v0, Lcom/htc/calendar/IcsImportActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/IcsImportActivity$2;-><init>(Lcom/htc/calendar/IcsImportActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/IcsImportActivity;->mImportListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/IcsImportActivity;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/calendar/IcsImportActivity;->findCalendarIdByPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/IcsImportActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/IcsImportActivity;->importCalendar(J)V

    return-void
.end method

.method private findCalendarIdByPosition(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 84
    const-string v3, "IcsImportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findCalendarIdByPosition position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-wide/16 v0, 0x0

    .line 87
    .local v0, calendar_id:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/IcsImportActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;

    iget-wide v0, v3, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-wide v0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "IcsImportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find CalendarId exception : get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/IcsImportActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importCalendar(J)V
    .locals 10
    .parameter "calendar_id"

    .prologue
    const v9, 0x7f080044

    const/4 v8, 0x1

    .line 216
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v0

    .line 217
    .local v0, calMgr:Lcom/htc/util/calendar/HtcCalendarManager;
    const/4 v2, 0x0

    .line 219
    .local v2, numEvents:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/IcsImportActivity;->mVCalString:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, p2, v5}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/lang/String;)I

    move-result v2

    .line 220
    const-string v3, ""

    .line 221
    .local v3, toastMessage:Ljava/lang/String;
    if-le v2, v8, :cond_0

    .line 223
    const v4, 0x7f080043

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/htc/calendar/IcsImportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    :goto_0
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 233
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/calendar/IcsImportActivity;->setResult(I)V

    .line 240
    .end local v3           #toastMessage:Ljava/lang/String;
    :goto_1
    return-void

    .line 224
    .restart local v3       #toastMessage:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 225
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/htc/calendar/IcsImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 228
    :cond_1
    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Lcom/htc/calendar/IcsImportActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 234
    .end local v3           #toastMessage:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "IcsImportActivity"

    const-string v5, "Can\'t import this vcs"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, v9}, Lcom/htc/calendar/IcsImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private populateCalendars()I
    .locals 18

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 157
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "calendar_displayName"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "visible"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "calendar_access_level"

    aput-object v5, v3, v4

    const-string v4, "visible=1 AND calendar_access_level>=500"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 167
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 168
    const/4 v14, 0x0

    .line 211
    :goto_0
    return v14

    .line 171
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 172
    .local v14, nCount:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v14, :cond_2

    .line 173
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 176
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/IcsImportActivity;->mItems:Ljava/util/ArrayList;

    .line 177
    new-array v13, v14, [Ljava/lang/String;

    .line 180
    .local v13, itemArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 181
    .local v9, i:I
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 182
    .local v12, idColumn:I
    const-string v2, "calendar_displayName"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 184
    .local v16, nameColumn:I
    :cond_3
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 185
    .local v10, id:J
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 187
    .local v15, name:Ljava/lang/String;
    const-string v2, "IcsImportActivity"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "id:%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/IcsImportActivity;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;

    invoke-direct {v3, v10, v11, v15}, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    aput-object v15, v13, v9

    .line 190
    add-int/lit8 v9, v9, 0x1

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 197
    const-string v2, "IcsImportActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/IcsImportActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800b3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/IcsImportActivity;->mImportListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c01d6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/IcsImportActivity;->mImportListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/IcsImportActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/IcsImportActivity;->mImportListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v13, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    .line 209
    .local v7, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 194
    .end local v7           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v10           #id:J
    .end local v12           #idColumn:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nameColumn:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 101
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/htc/calendar/IcsImportActivity;->requestWindowFeature(I)Z

    .line 103
    const v12, 0x7f03002f

    invoke-virtual {p0, v12}, Lcom/htc/calendar/IcsImportActivity;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/htc/calendar/IcsImportActivity;->populateCalendars()I

    move-result v10

    .line 107
    .local v10, nCountOfCalendar:I
    invoke-virtual {p0}, Lcom/htc/calendar/IcsImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 108
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "ics"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, data:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 110
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 111
    .local v3, content:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 112
    const/4 v9, 0x0

    .line 114
    .local v9, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x1fa0

    new-array v1, v12, [B

    .line 117
    .local v1, buf:[B
    const/4 v2, -0x1

    .line 118
    .local v2, bytesRead:I
    const/4 v11, 0x0

    .line 119
    .local v11, pos:I
    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    .line 120
    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 121
    add-int/2addr v11, v2

    goto :goto_0

    .line 123
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v5, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    .end local v4           #data:Ljava/lang/String;
    .local v5, data:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 131
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    .line 139
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v3           #content:Landroid/net/Uri;
    .end local v5           #data:Ljava/lang/String;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #pos:I
    .restart local v4       #data:Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    .line 140
    const-string v12, "IcsImportActivity"

    const-string v13, "No iCalendar data to parse."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/htc/calendar/IcsImportActivity;->finish()V

    .line 153
    :cond_2
    :goto_2
    return-void

    .line 132
    .end local v4           #data:Ljava/lang/String;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bytesRead:I
    .restart local v3       #content:Landroid/net/Uri;
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #pos:I
    :catch_0
    move-exception v8

    .line 133
    .local v8, ioe:Ljava/io/IOException;
    const-string v12, "IcsImportActivity"

    const-string v13, "Could not close InputStream."

    invoke-static {v12, v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 134
    .end local v5           #data:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    goto :goto_1

    .line 124
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v11           #pos:I
    :catch_1
    move-exception v6

    .line 125
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v12, "IcsImportActivity"

    const-string v13, "Could not open data."

    invoke-static {v12, v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v9, :cond_1

    .line 131
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 132
    :catch_2
    move-exception v8

    .line 133
    .restart local v8       #ioe:Ljava/io/IOException;
    const-string v12, "IcsImportActivity"

    const-string v13, "Could not close InputStream."

    invoke-static {v12, v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 126
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .end local v8           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 127
    .restart local v8       #ioe:Ljava/io/IOException;
    :try_start_4
    const-string v12, "IcsImportActivity"

    const-string v13, "Could not read data."

    invoke-static {v12, v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v9, :cond_1

    .line 131
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 132
    :catch_4
    move-exception v8

    .line 133
    const-string v12, "IcsImportActivity"

    const-string v13, "Could not close InputStream."

    invoke-static {v12, v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v8           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v9, :cond_3

    .line 131
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 134
    :cond_3
    :goto_3
    throw v12

    .line 132
    :catch_5
    move-exception v8

    .line 133
    .restart local v8       #ioe:Ljava/io/IOException;
    const-string v13, "IcsImportActivity"

    const-string v14, "Could not close InputStream."

    invoke-static {v13, v14, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 144
    .end local v3           #content:Landroid/net/Uri;
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v9           #is:Ljava/io/InputStream;
    :cond_4
    const-string v12, "IcsImportActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object v4, p0, Lcom/htc/calendar/IcsImportActivity;->mVCalString:Ljava/lang/String;

    .line 146
    const-string v12, "IcsImportActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nCountOfCalendar:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-gtz v10, :cond_2

    .line 148
    const-string v12, "None Calendar exists."

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 151
    invoke-virtual {p0}, Lcom/htc/calendar/IcsImportActivity;->finish()V

    goto/16 :goto_2

    .end local v4           #data:Ljava/lang/String;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bytesRead:I
    .restart local v3       #content:Landroid/net/Uri;
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #pos:I
    :cond_5
    move-object v4, v5

    .end local v5           #data:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected final onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    return-void
.end method
