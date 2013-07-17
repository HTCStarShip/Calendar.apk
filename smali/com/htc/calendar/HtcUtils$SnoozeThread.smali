.class Lcom/htc/calendar/HtcUtils$SnoozeThread;
.super Ljava/lang/Thread;
.source "HtcUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/HtcUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnoozeThread"
.end annotation


# instance fields
.field private mAlertId:J

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mEventId:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJJJ)V
    .locals 3
    .parameter "context"
    .parameter "eventId"
    .parameter "alertId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    const-wide/16 v1, -0x1

    .line 1293
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mContext:Landroid/content/Context;

    .line 1288
    iput-wide v1, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEventId:J

    .line 1289
    iput-wide v1, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mStartTime:J

    .line 1290
    iput-wide v1, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEndTime:J

    .line 1291
    iput-wide v1, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mAlertId:J

    .line 1294
    iput-object p1, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mContext:Landroid/content/Context;

    .line 1295
    iput-wide p2, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEventId:J

    .line 1296
    iput-wide p6, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mStartTime:J

    .line 1297
    iput-wide p8, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEndTime:J

    .line 1298
    iput-wide p4, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mAlertId:J

    .line 1299
    return-void
.end method

.method private declared-synchronized doEventSnooze()V
    .locals 18

    .prologue
    .line 1312
    monitor-enter p0

    const/4 v11, 0x0

    .line 1313
    .local v11, mCalendarAlertIdList:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1316
    .local v12, mCr:Landroid/content/ContentResolver;
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1322
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mAlertId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mAlertId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1324
    .local v15, selection:Ljava/lang/String;
    const-string v1, "state"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1325
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v1, v0, v15, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1335
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1336
    .local v13, now:J
    const-wide/32 v1, 0xdbba0

    add-long v7, v13, v1

    .line 1338
    .local v7, alarmTime:J
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1339
    .local v17, values2:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mEndTime:J

    const/4 v9, 0x0

    #calls: Lcom/htc/calendar/HtcUtils;->makeContentValues(JJJJI)Landroid/content/ContentValues;
    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/HtcUtils;->access$100(JJJJI)Landroid/content/ContentValues;

    move-result-object v17

    .line 1347
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mStartTime:J

    cmp-long v1, v7, v1

    if-gez v1, :cond_0

    .line 1348
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8}, Lcom/htc/calendar/HtcUtils;->setAlarmTime(Landroid/content/Context;J)V

    .line 1354
    :cond_0
    const-string v1, "HtcUtils"

    const-string v2, "SnoozeThread finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1358
    :try_start_2
    const-string v1, "HtcUtils"

    const-string v2, "FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1360
    .end local v7           #alarmTime:J
    .end local v13           #now:J
    .end local v15           #selection:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    .end local v17           #values2:Landroid/content/ContentValues;
    :goto_1
    monitor-exit p0

    return-void

    .line 1327
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_3
    const-string v15, ""

    .line 1328
    .restart local v15       #selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1330
    const-string v1, "state"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v1, v0, v15, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1355
    .end local v15           #selection:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 1356
    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "HtcUtils"

    const-string v2, "SnoozeThread failed"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1358
    :try_start_5
    const-string v1, "HtcUtils"

    const-string v2, "FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1312
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #mCr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1358
    .restart local v12       #mCr:Landroid/content/ContentResolver;
    :catchall_1
    move-exception v1

    :try_start_6
    const-string v2, "HtcUtils"

    const-string v3, "FINISH!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 1302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/HtcUtils$SnoozeThread;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1304
    const-string v0, "HtcUtils"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    :goto_0
    monitor-exit p0

    return-void

    .line 1308
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/calendar/HtcUtils$SnoozeThread;->doEventSnooze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
