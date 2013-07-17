.class Lcom/htc/calendar/EventInfoActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EventInfoActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    .line 2268
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2269
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 2273
    if-eqz p3, :cond_0

    move-object v0, p2

    .line 2274
    check-cast v0, Ljava/lang/Long;

    .line 2276
    .local v0, alarmTime:Ljava/lang/Long;
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/calendar/HtcUtils;->setAlarmTime(Landroid/content/Context;J)V

    .line 2278
    .end local v0           #alarmTime:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 21
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2282
    invoke-super/range {p0 .. p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/calendar/EventInfoActivity;->isFinishing()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2284
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2285
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2287
    :cond_0
    const/16 p3, 0x0

    .line 2294
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2383
    :cond_2
    :goto_0
    return-void

    .line 2289
    :cond_3
    if-nez p3, :cond_1

    goto :goto_0

    .line 2296
    :pswitch_0
    const-wide/16 v9, 0x0

    .line 2297
    .local v9, event_Id:J
    const-string v12, ""

    .line 2298
    .local v12, rules:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 2299
    .local v13, startTime:J
    const-wide/16 v7, 0x0

    .line 2302
    .local v7, endTime:J
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2304
    :cond_4
    const-string v17, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2305
    const-string v17, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2306
    const-string v17, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2307
    const-string v17, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v0, v9, v10}, Lcom/htc/calendar/EventInfoActivity;->access$1002(Lcom/htc/calendar/EventInfoActivity;J)J

    .line 2310
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://com.android.calendar/events/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static/range {v19 .. v19}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v18}, Lcom/htc/calendar/EventInfoActivity;->access$1402(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J
    invoke-static {v0, v13, v14}, Lcom/htc/calendar/EventInfoActivity;->access$1102(Lcom/htc/calendar/EventInfoActivity;J)J

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J
    invoke-static {v0, v7, v8}, Lcom/htc/calendar/EventInfoActivity;->access$1202(Lcom/htc/calendar/EventInfoActivity;J)J

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    if-eqz p3, :cond_2

    .line 2329
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2330
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 2317
    :cond_5
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-nez v17, :cond_4

    .line 2328
    :goto_1
    if-eqz p3, :cond_6

    .line 2329
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_6

    .line 2330
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 p3, 0x0

    .line 2335
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/htc/calendar/EventInfoActivity;->startQueryCalInstanceOnBackgroud(JJ)V
    invoke-static {v0, v9, v10, v13, v14}, Lcom/htc/calendar/EventInfoActivity;->access$1600(Lcom/htc/calendar/EventInfoActivity;JJ)V

    goto/16 :goto_0

    .line 2321
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v18}, Lcom/htc/calendar/EventInfoActivity;->access$1402(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2324
    :catch_0
    move-exception v4

    .line 2325
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2328
    if-eqz p3, :cond_6

    .line 2329
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_6

    .line 2330
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 p3, 0x0

    goto :goto_2

    .line 2328
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz p3, :cond_8

    .line 2329
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_8

    .line 2330
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 p3, 0x0

    :cond_8
    throw v17

    .line 2340
    .end local v7           #endTime:J
    .end local v9           #event_Id:J
    .end local v12           #rules:Ljava/lang/String;
    .end local v13           #startTime:J
    :pswitch_1
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 2341
    .local v11, now:Landroid/text/format/Time;
    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 2342
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 2343
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 2345
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 2349
    .local v15, todayInMillis:J
    :try_start_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2351
    :cond_9
    const-string v17, "begin"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2352
    .local v2, begin:J
    const-string v17, "end"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2354
    .local v5, end:J
    cmp-long v17, v2, v15

    if-ltz v17, :cond_a

    .line 2360
    :goto_3
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v17

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://com.android.calendar/events/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static/range {v19 .. v19}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v18}, Lcom/htc/calendar/EventInfoActivity;->access$1402(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J
    invoke-static {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->access$1102(Lcom/htc/calendar/EventInfoActivity;J)J

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J
    invoke-static {v0, v5, v6}, Lcom/htc/calendar/EventInfoActivity;->access$1202(Lcom/htc/calendar/EventInfoActivity;J)J

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2374
    .end local v2           #begin:J
    .end local v5           #end:J
    :goto_4
    if-eqz p3, :cond_2

    .line 2375
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2377
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 2358
    .restart local v2       #begin:J
    .restart local v5       #end:J
    :cond_a
    :try_start_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_9

    goto :goto_3

    .line 2366
    .end local v2           #begin:J
    .end local v5           #end:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v18}, Lcom/htc/calendar/EventInfoActivity;->access$1402(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 2370
    :catch_1
    move-exception v4

    .line 2371
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2374
    if-eqz p3, :cond_2

    .line 2375
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2377
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 2374
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    if-eqz p3, :cond_c

    .line 2375
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_c

    .line 2376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2377
    const/16 p3, 0x0

    :cond_c
    throw v17

    .line 2294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
