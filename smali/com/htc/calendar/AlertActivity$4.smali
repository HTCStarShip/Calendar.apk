.class Lcom/htc/calendar/AlertActivity$4;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xdbba0

    add-long v7, v14, v16

    .line 366
    .local v7, alarmTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    const-string v14, "notification"

    invoke-virtual {v9, v14}, Lcom/htc/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 368
    .local v10, nm:Landroid/app/NotificationManager;
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #calls: Lcom/htc/calendar/AlertActivity;->dismissFiredAlarms()V
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$600(Lcom/htc/calendar/AlertActivity;)V

    .line 372
    const-wide/16 v11, 0x0

    .line 373
    .local v11, scheduleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v14, -0x1

    invoke-interface {v9, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 374
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v14, 0x6

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 376
    .local v1, eventId:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v14, 0x4

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 377
    .local v3, begin:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v14, 0x5

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 382
    .local v5, end:J
    const/4 v9, 0x0

    #calls: Lcom/htc/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;
    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/AlertActivity;->access$700(JJJJI)Landroid/content/ContentValues;

    move-result-object v13

    .line 386
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 387
    move-wide v11, v7

    .line 391
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;
    invoke-static {v9}, Lcom/htc/calendar/AlertActivity;->access$800(Lcom/htc/calendar/AlertActivity;)Lcom/htc/calendar/AlertActivity$QueryHandler;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    sget-object v16, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0, v13}, Lcom/htc/calendar/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 393
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/AlertActivity$4;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v9}, Lcom/htc/calendar/AlertActivity;->finish()V

    .line 394
    return-void
.end method
