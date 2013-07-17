.class Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MeetingInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MeetingInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field mQContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/MeetingInvitationActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "cr"
    .parameter "context"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    .line 282
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 283
    iput-object p3, p0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->mQContext:Landroid/content/Context;

    .line 284
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    new-instance v18, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)V

    .line 291
    .local v18, thread:Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OnQueryCmplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;->setName(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;->start()V

    .line 419
    .end local v18           #thread:Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    if-eqz p3, :cond_0

    .line 298
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    const-string v2, "MeetingInvitationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, Exchange default folder counts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$302(Lcom/htc/calendar/MeetingInvitationActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 303
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$300(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "_defaultFolderId"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 309
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, where:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/calendar/MeetingInvitationActivity;->access$400()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$502(Lcom/htc/calendar/MeetingInvitationActivity;I)I

    goto/16 :goto_0

    .line 322
    .end local v7           #where:Ljava/lang/String;
    :pswitch_1
    const-string v2, "MeetingInvitationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, Exchange calendar counts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v13, 0x0

    .line 326
    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$300(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 327
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    :cond_4
    const-string v2, "MeetingInvitationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mail folder id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/calendar/MeetingInvitationActivity;->access$300(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", color : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$600(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$300(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    add-int/lit8 v13, v13, 0x1

    .line 332
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 337
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v10, easAcntIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v11, -0x1

    .line 339
    .local v11, exchangeAcntId:J
    const-string v16, "_account = %d"

    .line 340
    .local v16, strAccount:Ljava/lang/String;
    const-string v17, ""

    .line 341
    .local v17, strWhereAccount:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 343
    :cond_6
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->mQContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/EASMailUtils;->getExchangeAccountIDsByAccount(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 345
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 350
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 351
    .local v15, nCount:I
    const-string v2, "MeetingInvitationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail account>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    if-ge v14, v15, :cond_a

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 354
    add-int/lit8 v2, v15, -0x1

    if-ge v14, v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 352
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 357
    :cond_a
    if-eqz v15, :cond_b

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_del != 1 AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_messageClass = \'IPM.Schedule.Meeting.Request\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_mailBoxId in (select _defaultFolderId from accounts where _protocol = 4)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    .restart local v7       #where:Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/calendar/MeetingInvitationActivity;->access$700()Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/htc/calendar/MeetingInvitationActivity;->access$800()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "_date desc"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    const/4 v3, 0x2

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$502(Lcom/htc/calendar/MeetingInvitationActivity;I)I

    goto/16 :goto_0

    .line 372
    .end local v7           #where:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 375
    :cond_c
    const-string v2, "MeetingInvitationActivity"

    const-string v3, "QUERY_TOKEN_CALENDAR,mUIHandler == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v10           #easAcntIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11           #exchangeAcntId:J
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #nCount:I
    .end local v16           #strAccount:Ljava/lang/String;
    .end local v17           #strWhereAccount:Ljava/lang/String;
    :pswitch_2
    const-string v2, "MeetingInvitationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, unresponse meeting invitation counts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1000(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/database/Cursor;

    move-result-object v3

    #calls: Lcom/htc/calendar/MeetingInvitationActivity;->closeCursor(Landroid/database/Cursor;)V
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1100(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v0, p3

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1002(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1000(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_f

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1200(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    move-result-object v2

    if-nez v2, :cond_d

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    new-instance v3, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    const v6, 0x7f030012

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1000(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1202(Lcom/htc/calendar/MeetingInvitationActivity;Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$000(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    invoke-static {v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1200(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 415
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    const/4 v3, -0x1

    #setter for: Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I
    invoke-static {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$502(Lcom/htc/calendar/MeetingInvitationActivity;I)I

    goto/16 :goto_0

    .line 399
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1200(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1000(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 405
    :cond_e
    const-string v2, "MeetingInvitationActivity"

    const-string v3, "mUIHandler == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 408
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/calendar/MeetingInvitationActivity;->access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 411
    :cond_10
    const-string v2, "MeetingInvitationActivity"

    const-string v3, "mUIHandler == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
