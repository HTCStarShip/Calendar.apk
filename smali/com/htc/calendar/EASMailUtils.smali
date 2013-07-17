.class public Lcom/htc/calendar/EASMailUtils;
.super Ljava/lang/Object;
.source "EASMailUtils.java"


# static fields
.field private static final EXTRA_SYNC_MANUALLY:Ljava/lang/String; = "com.htc.eas.extra.sync_manually"

.field private static final EXTRA_SYNC_WHEN_OPEN:Ljava/lang/String; = "com.htc.eas.extra.sync_when_open"

.field private static final MAIL_BOX_ID:Ljava/lang/String; = "_mailboxId"

.field private static final MAIL_END_TIME:Ljava/lang/String; = "_endTime"

.field private static final MAIL_GLOBAL_OBJ_ID:Ljava/lang/String; = "_globalObjId"

.field private static final MAIL_ID:Ljava/lang/String; = "_id"

.field private static final MAIL_INST_TYPE:Ljava/lang/String; = "_instanceType"

.field private static final MAIL_LOCATION:Ljava/lang/String; = "_location"

.field private static final MAIL_ORGANIZER:Ljava/lang/String; = "_organizer"

.field private static MAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final MAIL_START_TIME:Ljava/lang/String; = "_startTime"

.field private static final MAIL_SUBJECT:Ljava/lang/String; = "_subject"

.field private static final TAG:Ljava/lang/String; = "EASMailUtils"

.field public static mMailID:J = 0x0L

.field private static final sMeetingMsgURI:Landroid/net/Uri; = null

.field private static final vCalUid:Ljava/lang/String; = "7643616c2d55696401000000"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "content://mail/meetingMsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/EASMailUtils;->sMeetingMsgURI:Landroid/net/Uri;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_globalObjId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_instanceType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_startTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_endTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EASMailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    .line 55
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/calendar/EASMailUtils;->mMailID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMailExist(Landroid/content/Context;JLjava/lang/String;JJ)J
    .locals 36
    .parameter "context"
    .parameter "eventId"
    .parameter "calGUID"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v35, 0x0

    .line 61
    .local v35, parentID:Ljava/lang/String;
    const/16 v25, 0x0

    .line 62
    .local v25, eventSubject:Ljava/lang/String;
    const/16 v23, 0x0

    .line 63
    .local v23, eventLocation:Ljava/lang/String;
    const/16 v24, 0x0

    .line 65
    .local v24, eventOrganizer:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountID(Landroid/content/Context;)J

    move-result-wide v27

    .line 66
    .local v27, mAccountId:J
    const-wide/16 v8, 0x0

    cmp-long v4, v27, v8

    if-gez v4, :cond_1

    .line 67
    const-string v4, "EASMailUtils"

    const-string v6, "Error: Can\'t get EAS account ID"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-wide/16 v15, -0x1

    .line 244
    :cond_0
    :goto_0
    return-wide v15

    .line 71
    :cond_1
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 72
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 73
    .local v18, cEvent:Landroid/database/Cursor;
    if-eqz v18, :cond_2

    .line 75
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const-string v4, "parentID"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 77
    const-string v4, "title"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 78
    const-string v4, "eventLocation"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 82
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 84
    const/16 v18, 0x0

    .line 90
    :cond_2
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/htc/calendar/EASMailUtils;->convert2MailGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 92
    .local v21, convertResult:Ljava/lang/String;
    const-string v4, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertResult: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-wide/16 v15, -0x1

    .line 95
    .local v15, _mail_id:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/meetingMsg?type=all&accountId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 96
    .local v5, queryUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 98
    .local v7, where:Ljava/lang/String;
    const/16 v20, 0x0

    .line 99
    .local v20, cMail:Landroid/database/Cursor;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 101
    const/4 v4, 0x1

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v4, v6, :cond_5

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_globalObjId=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    sget-object v6, Lcom/htc/calendar/EASMailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 110
    :goto_2
    const/16 v19, 0x0

    .line 112
    .local v19, cExAccount:Landroid/database/Cursor;
    if-eqz v20, :cond_0

    .line 114
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 115
    const-string v4, "EASMailUtils"

    const-string v6, "no matched meeting request found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 195
    const/16 v20, 0x0

    .line 197
    :cond_3
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 199
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 79
    .end local v5           #queryUri:Landroid/net/Uri;
    .end local v7           #where:Ljava/lang/String;
    .end local v15           #_mail_id:J
    .end local v19           #cExAccount:Landroid/database/Cursor;
    .end local v20           #cMail:Landroid/database/Cursor;
    .end local v21           #convertResult:Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 80
    .local v22, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to query parent ID: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 84
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 82
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 83
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 84
    const/16 v18, 0x0

    :cond_4
    throw v4

    .line 107
    .restart local v5       #queryUri:Landroid/net/Uri;
    .restart local v7       #where:Ljava/lang/String;
    .restart local v15       #_mail_id:J
    .restart local v20       #cMail:Landroid/database/Cursor;
    .restart local v21       #convertResult:Ljava/lang/String;
    :cond_5
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v8}, Lcom/htc/calendar/EASMailUtils;->getMeetings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v20

    goto :goto_2

    .line 117
    .restart local v19       #cExAccount:Landroid/database/Cursor;
    :cond_6
    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    const/16 v26, 0x0

    .line 120
    .local v26, exAddress:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_emailaddress"

    aput-object v6, v10, v4

    const-string v11, "_protocol=4"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 121
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 122
    const-string v4, "_emailaddress"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 123
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 124
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 127
    :cond_7
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 128
    .local v34, organizer:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 129
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    .line 131
    :cond_8
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    if-eqz v4, :cond_a

    .line 132
    const-wide/16 v15, -0x1

    .line 193
    .end local v15           #_mail_id:J
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 195
    const/16 v20, 0x0

    .line 197
    :cond_9
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 199
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v15       #_mail_id:J
    :cond_a
    const/4 v4, 0x1

    :try_start_4
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v4, v6, :cond_b

    .line 137
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto/16 :goto_3

    .line 144
    :cond_b
    const-string v14, "event_id=%d AND attendeeRelationship=%d"

    .line 146
    .local v14, ATTENDEES_WHERE:Ljava/lang/String;
    :cond_c
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 147
    .local v30, mailInstType:Ljava/lang/String;
    const-string v4, "3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 186
    :cond_d
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    .line 151
    :cond_e
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 152
    .local v32, mailOrganizer:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 153
    .local v33, mailSubject:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 155
    .local v31, mailLocation:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 156
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d AND attendeeRelationship=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 157
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v17

    .line 158
    .local v17, cAttendee:Landroid/database/Cursor;
    if-eqz v17, :cond_f

    .line 160
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v24

    .line 165
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f

    .line 166
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 167
    const/16 v17, 0x0

    .line 172
    :cond_f
    :goto_5
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 173
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    .line 175
    :cond_10
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 176
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 179
    :cond_11
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v33, :cond_12

    if-eqz v25, :cond_13

    :cond_12
    if-eqz v33, :cond_d

    if-eqz v25, :cond_d

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_13
    if-nez v31, :cond_14

    if-eqz v23, :cond_15

    :cond_14
    if-eqz v31, :cond_d

    if-eqz v23, :cond_d

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 184
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-wide v15

    goto/16 :goto_4

    .line 162
    :catch_1
    move-exception v22

    .line 163
    .restart local v22       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v4, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to query organizer info: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 165
    :try_start_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f

    .line 166
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 167
    const/16 v17, 0x0

    goto :goto_5

    .line 165
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_16

    .line 166
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 167
    const/16 v17, 0x0

    :cond_16
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 189
    .end local v14           #ATTENDEES_WHERE:Ljava/lang/String;
    .end local v17           #cAttendee:Landroid/database/Cursor;
    .end local v26           #exAddress:Ljava/lang/String;
    .end local v30           #mailInstType:Ljava/lang/String;
    .end local v31           #mailLocation:Ljava/lang/String;
    .end local v32           #mailOrganizer:Ljava/lang/String;
    .end local v33           #mailSubject:Ljava/lang/String;
    .end local v34           #organizer:Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 190
    .restart local v22       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v4, "EASMailUtils"

    const-string v6, "fail to get meeting request info: "

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 191
    const-wide/16 v15, -0x1

    .line 193
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    .line 194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 195
    const/16 v20, 0x0

    .line 197
    :cond_17
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 199
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 193
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_18

    .line 194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 195
    const/16 v20, 0x0

    .line 197
    :cond_18
    if-eqz v19, :cond_19

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_19

    .line 198
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 199
    const/16 v19, 0x0

    :cond_19
    throw v4

    .line 209
    .end local v19           #cExAccount:Landroid/database/Cursor;
    :cond_1a
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v8}, Lcom/htc/calendar/EASMailUtils;->getMeetings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v20

    .line 210
    const-string v4, "EASMailUtils"

    const-string v6, "decodeCalGUID for local meetings"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v20, :cond_0

    .line 215
    :try_start_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1b

    .line 216
    const-string v4, "EASMailUtils"

    const-string v6, "no matched meeting request found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 236
    :goto_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 238
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 218
    :cond_1b
    :try_start_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    :cond_1c
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 222
    .local v29, mailGUID:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/htc/calendar/EASMailUtils;->decodeCalGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 223
    const-string v4, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeCalGUID is :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 226
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 227
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 230
    :cond_1d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_6

    .line 232
    .end local v29           #mailGUID:Ljava/lang/String;
    :catch_3
    move-exception v22

    .line 233
    .restart local v22       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v4, "EASMailUtils"

    const-string v6, "fail to get meeting request info: "

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 234
    const-wide/16 v15, -0x1

    .line 236
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 238
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 236
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 237
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 238
    const/16 v20, 0x0

    :cond_1e
    throw v4
.end method

.method public static checkSyncOnOpen(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 539
    const/4 v6, 0x0

    .line 540
    .local v6, cur:Landroid/database/Cursor;
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_emailaddress"

    aput-object v0, v2, v1

    .line 541
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_protocol=\'4\' AND _refreshMailWhenOpenFolder=\'1\' AND _del!=1"

    .line 543
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 544
    if-eqz v6, :cond_2

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    const-string v7, ""

    .line 550
    .local v7, emailAddress:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {p0, v7, v0, v1}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 554
    const-string v7, ""

    .line 556
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 560
    .end local v7           #emailAddress:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_4

    .line 561
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_3
    const/4 v6, 0x0

    .line 567
    :cond_4
    return-void

    .line 560
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 561
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_5
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method private static convert2MailGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "calGUID"

    .prologue
    .line 281
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->needConvert2MailGUID(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    const-string v3, ""

    .line 299
    :goto_0
    return-object v3

    .line 285
    :cond_0
    const/4 v1, 0x0

    .line 286
    .local v1, byteGUID64:[B
    :try_start_0
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 290
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 292
    .local v0, UTF_8:Ljava/nio/charset/Charset;
    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, result:Ljava/lang/String;
    const-string v4, "\\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v0           #UTF_8:Ljava/nio/charset/Charset;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 296
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EASMailUtils"

    const-string v5, "Base64 encode error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const-string v3, ""

    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 9
    .parameter "string"

    .prologue
    const/16 v8, 0x61

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v1, v6, [B

    .line 258
    .local v1, bytes:[B
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, buf:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 262
    .local v4, left:C
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 263
    .local v5, right:C
    div-int/lit8 v3, v2, 0x2

    .line 265
    .local v3, index:I
    if-ge v4, v8, :cond_0

    .line 266
    add-int/lit8 v6, v4, -0x30

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 270
    :goto_1
    if-ge v5, v8, :cond_1

    .line 271
    aget-byte v6, v1, v3

    add-int/lit8 v7, v5, -0x30

    int-to-byte v7, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 260
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 268
    :cond_0
    add-int/lit8 v6, v4, -0x61

    add-int/lit8 v6, v6, 0xa

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    goto :goto_1

    .line 273
    :cond_1
    aget-byte v6, v1, v3

    add-int/lit8 v7, v5, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-byte v7, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    goto :goto_2

    .line 276
    .end local v3           #index:I
    .end local v4           #left:C
    .end local v5           #right:C
    :cond_2
    return-object v1
.end method

.method public static decodeCalGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "calGUID"

    .prologue
    const/4 v11, 0x0

    .line 627
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 628
    const/4 v1, 0x0

    .line 662
    :goto_0
    return-object v1

    .line 631
    :cond_0
    const-string v7, "EASMailUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_mailguid is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    .line 633
    .local v0, byteGUIDb64:[B
    if-eqz v0, :cond_1

    array-length v7, v0

    if-nez v7, :cond_2

    .line 635
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 638
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v6, sCalGUID:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 640
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-byte v10, v0, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 642
    :cond_3
    const-string v7, "EASMailUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailguiddecode return  is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, guid:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, lowerCalGUID:Ljava/lang/String;
    const-string v7, "7643616c2d55696401000000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 648
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    .line 649
    const-string v7, "EASMailUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeCalGUID: index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v7, "7643616c2d55696401000000"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, hexGuid:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    const-string v7, "00"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v7, v8, :cond_4

    .line 654
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 656
    :cond_4
    const-string v7, "EASMailUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeCalGUID(hexGuid): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {v2}, Lcom/htc/calendar/EASMailUtils;->decodeHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    goto/16 :goto_0

    .line 660
    .end local v2           #hexGuid:Ljava/lang/String;
    :cond_5
    const-string v7, "EASMailUtils"

    const-string v8, "decodeCalGUID: index -1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v1, hexString:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 668
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, output:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 670
    .local v0, decimal:I
    int-to-char v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 672
    .end local v0           #decimal:I
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static fetchEASAccountUnResponse(Landroid/content/Context;J)I
    .locals 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/meetingMsg/?type=inbox&accountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, querUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/calendar/EASMailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    const-string v3, "_read = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 481
    .local v6, cMail:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 482
    const/4 v7, 0x0

    .line 483
    .local v7, nCount:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 485
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/calendar/EASMailUtils;->mMailID:J

    .line 487
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 492
    .end local v7           #nCount:I
    :cond_1
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getEventProtocol(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 513
    const/4 v6, 0x0

    .line 514
    .local v6, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_easSvrProtocol"

    aput-object v0, v2, v1

    .line 515
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_emailaddress = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    if-nez v6, :cond_2

    .line 519
    const-string v7, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    if-eqz v6, :cond_1

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_0
    const/4 v6, 0x0

    .line 534
    :cond_1
    :goto_0
    return-object v7

    .line 521
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 527
    .local v7, protocol:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 527
    .end local v7           #protocol:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_6

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_5
    const/4 v6, 0x0

    .line 534
    :cond_6
    const-string v7, ""

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_7
    const/4 v6, 0x0

    :cond_8
    throw v0
.end method

.method protected static getExchangeAccountDefalutFolderID(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v7, accountIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "_defaultfolderId"

    .line 596
    .local v6, DEFAULD_FOLDER_ID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 597
    .local v8, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_defaultfolderId"

    aput-object v1, v2, v0

    .line 598
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_protocol = \'4\'"

    .line 600
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 601
    if-eqz v8, :cond_2

    .line 602
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "_defaultfolderId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 608
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_0
    const/4 v8, 0x0

    :cond_1
    throw v0

    .line 607
    :cond_2
    if-eqz v8, :cond_4

    .line 608
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 609
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_3
    const/4 v8, 0x0

    .line 614
    :cond_4
    return-object v7
.end method

.method private static getExchangeAccountID(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    .line 368
    const-string v6, "_id"

    .line 369
    .local v6, ACCOUNT_ID:Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 370
    .local v8, exchangeAcntId:J
    const/4 v7, 0x0

    .line 371
    .local v7, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 372
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_protocol = \'4\'"

    .line 374
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 375
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 378
    :cond_0
    if-eqz v7, :cond_2

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_1
    const/4 v7, 0x0

    .line 385
    :cond_2
    return-wide v8

    .line 378
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 380
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_3
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method protected static getExchangeAccountIDs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const-string v6, "_id"

    .line 339
    .local v6, ACCOUNT_ID:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v9, easAcntIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 341
    .local v7, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 342
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_protocol = \'4\'"

    .line 344
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 345
    if-eqz v7, :cond_1

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 349
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 350
    .local v10, exchangeAcntId:J
    const-string v0, "EASMailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExchangeAccountIDs --> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 357
    .end local v10           #exchangeAcntId:J
    :cond_1
    if-eqz v7, :cond_3

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_2
    const/4 v7, 0x0

    .line 364
    :cond_3
    :goto_0
    return-object v9

    .line 354
    :catch_0
    move-exception v8

    .line 355
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EASMailUtils"

    const-string v1, "getExchangeAccountIDs exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    if-eqz v7, :cond_3

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 357
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_5
    const/4 v7, 0x0

    :cond_6
    throw v0
.end method

.method protected static getExchangeAccountIDsByAccount(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "StrAccount"

    .prologue
    .line 304
    const-string v6, "_id"

    .line 306
    .local v6, ACCOUNT_ID:Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 307
    .local v9, exchangeAcntId:J
    const/4 v7, 0x0

    .line 308
    .local v7, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 309
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_protocol = \'4\' AND _emailaddress = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    if-eqz v7, :cond_0

    .line 313
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 314
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 315
    const-string v0, "EASMailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExchangeAccountIDs --> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    if-eqz v7, :cond_2

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_1
    const/4 v7, 0x0

    .line 334
    :cond_2
    :goto_0
    return-wide v9

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EASMailUtils"

    const-string v1, "getExchangeAccountIDs exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-eqz v7, :cond_2

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 327
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 329
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_4
    const/4 v7, 0x0

    :cond_5
    throw v0
.end method

.method private static getMeetings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "mAccountId"

    .prologue
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/meetingMsg?type=all&accountId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 682
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 684
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 686
    .local v3, where:Ljava/lang/String;
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 687
    .local v9, t:Landroid/text/format/Time;
    const-string v2, "UTC"

    invoke-virtual {v9, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 689
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d-%02d-%02dT%02d:%02d:%02d.000Z"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v9, Landroid/text/format/Time;->year:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    iget v11, v9, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    iget v11, v9, Landroid/text/format/Time;->monthDay:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x3

    iget v11, v9, Landroid/text/format/Time;->hour:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x4

    iget v11, v9, Landroid/text/format/Time;->minute:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x5

    iget v11, v9, Landroid/text/format/Time;->second:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 692
    .local v7, strBegin:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 693
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d-%02d-%02dT%02d:%02d:%02d.000Z"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v9, Landroid/text/format/Time;->year:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    iget v11, v9, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    iget v11, v9, Landroid/text/format/Time;->monthDay:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x3

    iget v11, v9, Landroid/text/format/Time;->hour:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x4

    iget v11, v9, Landroid/text/format/Time;->minute:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x5

    iget v11, v9, Landroid/text/format/Time;->second:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, strEnd:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_startTime=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_endTime=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    sget-object v2, Lcom/htc/calendar/EASMailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 700
    return-object v6
.end method

.method public static getUnResponseEASCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10
    .parameter "context"

    .prologue
    .line 571
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountDefalutFolderID(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 572
    .local v7, defalutFolderIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 573
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v9, ""

    .line 576
    .local v9, mailBoxIDWhere:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_1

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_mailboxID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 578
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v8, v2, :cond_0

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 576
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const-string v2, "content://mail/messages/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    .local v1, querUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_del != 1 AND _messageClass = \'IPM.Schedule.Meeting.Request\' AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, where:Ljava/lang/String;
    sget-object v2, Lcom/htc/calendar/EASMailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 590
    .local v6, cMail:Landroid/database/Cursor;
    return-object v6
.end method

.method public static launchDetail(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 389
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountID(Landroid/content/Context;)J

    move-result-wide v2

    .line 390
    .local v2, mAccountId:J
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    .line 391
    const-string v5, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: launchDetail: messageId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    const-string v5, "EASMailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchDetail: mAccountId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", messageId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", account = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/messages/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 397
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 399
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "accountID"

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    const-string v5, "sortRule"

    const-string v6, "_internaldate collate nocase desc, _internaldate desc"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v5, "isExchange"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v5, "fromCalendarApp"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v5, "where"

    const-string v6, "_del != 1 AND _messageClass = \'IPM.Schedule.Meeting.Request\'"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static launchEASMeetingTab(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 497
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountID(Landroid/content/Context;)J

    move-result-wide v0

    .line 498
    .local v0, accountId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 499
    const-string v4, "EASMailUtils"

    const-string v5, "Can\'t get account id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 503
    .local v3, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 504
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x408

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    const-string v4, "com.htc.android.mail"

    const-string v5, "com.htc.android.mail.MailListTab"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v4, "GO_TO_TAB"

    const-string v5, "tab_meeting"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v4, "dont_set_last_acct_entry"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static needConvert2MailGUID(Ljava/lang/String;)Z
    .locals 1
    .parameter "calGUID"

    .prologue
    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static queryUnResponseEAS(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 464
    invoke-static {p0}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountIDs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    .local v0, accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gez v4, :cond_1

    .line 466
    const-string v4, "EASMailUtils"

    const-string v5, "Can\'t get account id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    .line 474
    :cond_0
    return v1

    .line 470
    :cond_1
    const/4 v1, 0x0

    .line 471
    .local v1, count:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 472
    .local v3, id:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/htc/calendar/EASMailUtils;->fetchEASAccountUnResponse(Landroid/content/Context;J)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public static syncEASCalendar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 419
    const-string v0, ""

    invoke-static {p0, v0, v1, v1}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 420
    return-void
.end method

.method public static syncEASCalendar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-static {p0, p1, v0, v0}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 412
    return-void
.end method

.method public static syncEASCalendar(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "accountName"
    .parameter "eventId"

    .prologue
    .line 423
    const-string v1, "EASMailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncEASCalendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncCalendar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    const-string v1, "extra.eas.account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 432
    const-string v1, "com.htc.eas.extra.calendar.event_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 435
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 436
    return-void
.end method

.method private static syncEASCalendar(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "context"
    .parameter "accountName"
    .parameter "isManually"
    .parameter "is_sync_when_open"

    .prologue
    .line 444
    const-string v1, "EASMailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncEASCalendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncCalendar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const-string v1, "extra.eas.account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    :cond_0
    if-eqz p3, :cond_1

    .line 453
    const-string v1, "com.htc.eas.extra.sync_when_open"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    :cond_1
    if-eqz p2, :cond_2

    .line 458
    const-string v1, "com.htc.eas.extra.sync_manually"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    return-void
.end method

.method public static syncEASCalendarByManual(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 415
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 416
    return-void
.end method
