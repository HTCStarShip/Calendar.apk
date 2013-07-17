.class Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesByLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesByLabelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AttendeesByLabelAdapter;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    .line 330
    invoke-direct {p0, p3}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 331
    iput-object p2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->mContext:Landroid/content/Context;

    .line 332
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "type"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 336
    if-nez p3, :cond_1

    .line 337
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    #getter for: Lcom/htc/calendar/AttendeesByLabelAdapter;->DEBUG:Z
    invoke-static {v1}, Lcom/htc/calendar/AttendeesByLabelAdapter;->access$000(Lcom/htc/calendar/AttendeesByLabelAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "AttendeesByLabel"

    const-string v2, "onQueryComplete: cursor == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 343
    .local v8, cnt:I
    const-string v1, "AttendeesByLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PresenceQueryHandler::onQueryComplete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v8, :cond_0

    .line 348
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    const-string v1, "AttendeesByLabel"

    const-string v2, "Can\'t move to first"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 353
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 354
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v11, handledEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    iget v1, v1, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, email:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    iget v1, v1, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 359
    .local v9, contactId:I
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    iget v1, v1, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 360
    .local v12, photoId:I
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 399
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    :cond_5
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v1, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v14, 0x0

    .line 373
    .local v14, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    #getter for: Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;
    invoke-static {v1}, Lcom/htc/calendar/AttendeesByLabelAdapter;->access$100(Lcom/htc/calendar/AttendeesByLabelAdapter;)Lcom/htc/calendar/AttendeesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/calendar/AttendeesAdapter;->viewCache:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 374
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesByLabelAdapter;

    #getter for: Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;
    invoke-static {v1}, Lcom/htc/calendar/AttendeesByLabelAdapter;->access$100(Lcom/htc/calendar/AttendeesByLabelAdapter;)Lcom/htc/calendar/AttendeesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/calendar/AttendeesAdapter;->viewCache:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #view:Landroid/view/View;
    check-cast v14, Landroid/view/View;

    .line 379
    .restart local v14       #view:Landroid/view/View;
    :goto_2
    if-eqz v14, :cond_4

    .line 380
    const v1, 0x7f0d002c

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 384
    .local v13, qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;
    if-lez v12, :cond_4

    if-lez v9, :cond_4

    .line 388
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 389
    .local v3, personUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const v7, 0x20800c2

    invoke-static/range {v1 .. v7}, Lcom/htc/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 399
    .end local v3           #personUri:Landroid/net/Uri;
    .end local v9           #contactId:I
    .end local v10           #email:Ljava/lang/String;
    .end local v11           #handledEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #photoId:I
    .end local v13           #qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;
    .end local v14           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 400
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 376
    .restart local v9       #contactId:I
    .restart local v10       #email:Ljava/lang/String;
    .restart local v11       #handledEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #photoId:I
    .restart local v14       #view:Landroid/view/View;
    :cond_7
    :try_start_3
    const-string v1, "AttendeesByLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find email view:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
