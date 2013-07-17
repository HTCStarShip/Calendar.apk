.class Lcom/htc/calendar/EventListView$1;
.super Ljava/lang/Object;
.source "EventListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventListView;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 24
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, a:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-eqz v3, :cond_9

    .line 247
    add-int/lit8 v3, p3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/calendar/EventByDayAdapter;->getCount()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 248
    const-string v3, "EventListView"

    const-string v4, "Position out of bounds!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/16 v17, 0x0

    .line 255
    .local v17, isIndexOutOfBounds:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mShowDayInfo:Z
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$100(Lcom/htc/calendar/EventListView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/htc/calendar/EventByDayAdapter;->getCursorPosition(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_1
    if-nez v17, :cond_0

    .line 270
    const/4 v15, 0x0

    .line 274
    .local v15, holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 275
    .local v19, tag:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    check-cast v15, Lcom/htc/calendar/EventAdapter$ViewHolder;

    .line 278
    .restart local v15       #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    :cond_2
    if-nez v15, :cond_4

    .line 279
    const-string v3, "EventListView"

    const-string v4, "No data!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v15           #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    .end local v19           #tag:Ljava/lang/Object;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    add-int/lit8 p3, p3, -0x1

    move/from16 v0, p3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 260
    :catch_0
    move-exception v14

    .line 261
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const/16 v17, 0x1

    goto :goto_1

    .line 282
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v15       #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    .restart local v19       #tag:Ljava/lang/Object;
    :cond_4
    iget-wide v5, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->eventId:J

    .line 283
    .local v5, eventId:J
    iget-wide v9, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->begin:J

    .line 284
    .local v9, begin:J
    iget-wide v11, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->end:J

    .line 285
    .local v11, end:J
    iget-boolean v13, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->allDay:Z

    .line 286
    .local v13, allDay:Z
    iget-object v0, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->syncAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 288
    .local v18, syncAccountType:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 289
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 290
    .local v20, time:Landroid/text/format/Time;
    const-wide/16 v3, 0x0

    invoke-static {v9, v10, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 291
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 293
    const-wide/16 v3, 0x0

    invoke-static {v11, v12, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 297
    .end local v20           #time:Landroid/text/format/Time;
    :cond_5
    iget-object v8, v15, Lcom/htc/calendar/EventAdapter$ViewHolder;->guid:Ljava/lang/String;

    .line 298
    .local v8, guid:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 301
    .local v7, uri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 303
    :cond_6
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 304
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "beginTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    const-string v3, "endTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 308
    .end local v16           #intent:Landroid/content/Intent;
    :cond_7
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 310
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "beginTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    const-string v3, "endTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 315
    .end local v16           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v4

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f0800ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    #setter for: Lcom/htc/calendar/EventListView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3, v4}, Lcom/htc/calendar/EventListView;->access$402(Lcom/htc/calendar/EventListView;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 316
    new-instance v2, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventListView$1;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct/range {v2 .. v12}, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;-><init>(Lcom/htc/calendar/EventListView;Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;JJ)V

    .line 317
    .local v2, t:Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;
    invoke-virtual {v2}, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->start()V

    goto/16 :goto_0

    .line 334
    .end local v2           #t:Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;
    .end local v5           #eventId:J
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #guid:Ljava/lang/String;
    .end local v9           #begin:J
    .end local v11           #end:J
    .end local v13           #allDay:Z
    .end local v15           #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    .end local v17           #isIndexOutOfBounds:Z
    .end local v18           #syncAccountType:Ljava/lang/String;
    .end local v19           #tag:Ljava/lang/Object;
    :cond_9
    const-string v3, "EventListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onItemClick: "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
