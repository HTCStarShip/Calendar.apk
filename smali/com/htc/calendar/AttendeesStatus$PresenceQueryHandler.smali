.class Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/AttendeesStatus;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AttendeesStatus;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    .line 471
    invoke-direct {p0, p3}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 472
    iput-object p3, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 473
    iput-object p2, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->mContext:Landroid/content/Context;

    .line 474
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "type"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 478
    if-nez p3, :cond_1

    .line 480
    const-string v8, "AttendeesStatus"

    const-string v9, "onQueryComplete: cursor == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    const/4 v8, -0x1

    :try_start_0
    invoke-interface {p3, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 487
    :cond_2
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 488
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    iget v8, v8, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    iget v8, v8, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 490
    .local v0, contactId:I
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    #getter for: Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/htc/calendar/AttendeesStatus;->access$100(Lcom/htc/calendar/AttendeesStatus;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 491
    const-string v8, "AttendeesStatus"

    const-string v9, "mViewHolders is empty, this should not happen"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    .end local v0           #contactId:I
    .end local v1           #email:Ljava/lang/String;
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 523
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 494
    .restart local v0       #contactId:I
    .restart local v1       #email:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    #getter for: Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/htc/calendar/AttendeesStatus;->access$100(Lcom/htc/calendar/AttendeesStatus;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 495
    .local v2, hms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    if-nez v2, :cond_6

    .line 496
    const-string v8, "AttendeesStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from mViewHolders is null, this should not happen"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 522
    .end local v0           #contactId:I
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #hms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    :catchall_0
    move-exception v8

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_5

    .line 523
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v8

    .line 499
    .restart local v0       #contactId:I
    .restart local v1       #email:Ljava/lang/String;
    .restart local v2       #hms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    :cond_6
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/AttendeesStatus$ViewHolder;

    .line 500
    .local v7, vh:Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    iget v8, v8, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 502
    .local v4, photoId:I
    const-string v8, "AttendeesStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onQueryComplete Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PhotoId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Email: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v7, :cond_2

    .line 508
    iget-object v5, v7, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->presence:Landroid/widget/ImageView;

    .line 509
    .local v5, presenceView:Landroid/widget/ImageView;
    if-eqz v5, :cond_7

    .line 510
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus;

    iget v8, v8, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 511
    .local v6, status:I
    invoke-static {v6}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    .end local v6           #status:I
    :cond_7
    if-lez v4, :cond_2

    if-lez v0, :cond_2

    .line 516
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v9, v0

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 517
    .local v3, personUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->mContext:Landroid/content/Context;

    iget-object v9, v7, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->badge:Lcom/htc/widget/QuickContactBadge;

    const v10, 0x7f020056

    invoke-static {v8, v9, v3, v10}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
