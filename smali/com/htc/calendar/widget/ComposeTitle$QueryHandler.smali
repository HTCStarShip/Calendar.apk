.class Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 3266
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    .line 3267
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3268
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cCursor"

    .prologue
    .line 3272
    invoke-super/range {p0 .. p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    move-object/from16 v9, p2

    .line 3273
    check-cast v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 3274
    .local v9, receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    const-string v5, ""

    .line 3275
    .local v5, dispName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3323
    :goto_0
    return-void

    .line 3277
    :pswitch_0
    const/4 v4, -0x1

    .line 3278
    .local v4, contactId:I
    const/4 v7, -0x1

    .line 3280
    .local v7, methodId:I
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3281
    const-string v10, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3282
    .local v2, _mId:Ljava/lang/String;
    const-string v10, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3283
    .local v1, _Id:Ljava/lang/String;
    const-string v10, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3284
    .local v8, name:Ljava/lang/String;
    iput-object v8, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    .line 3285
    iget-object v5, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    .line 3286
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3287
    iget-object v5, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3291
    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3292
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 3300
    .end local v1           #_Id:Ljava/lang/String;
    .end local v2           #_mId:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 3301
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 3304
    :cond_2
    :goto_2
    if-ltz v4, :cond_5

    if-ltz v7, :cond_5

    .line 3305
    int-to-long v10, v4

    iput-wide v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 3306
    int-to-long v10, v7

    iput-wide v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    .line 3311
    :goto_3
    iget-object v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    const v11, 0x7f0d00ef

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 3312
    .local v3, btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3313
    invoke-virtual {v3, v5}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 3315
    :cond_3
    iget-wide v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 3316
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3320
    :goto_4
    invoke-virtual {v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->requestLayout()V

    goto :goto_0

    .line 3293
    .end local v3           #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    .restart local v1       #_Id:Ljava/lang/String;
    .restart local v2       #_mId:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3294
    .local v6, e:Ljava/lang/NumberFormatException;
    :try_start_2
    iget-object v10, p0, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v11, "NumberFormatException occurs in getContactId()"

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/htc/calendar/widget/ComposeTitle;->access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3297
    .end local v1           #_Id:Ljava/lang/String;
    .end local v2           #_mId:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v8           #name:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 3298
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v10, p0, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "queryContactId() Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/htc/calendar/widget/ComposeTitle;->access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3300
    if-eqz p3, :cond_2

    .line 3301
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3300
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz p3, :cond_4

    .line 3301
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v10

    .line 3308
    :cond_5
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 3309
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    goto :goto_3

    .line 3318
    .restart local v3       #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    :cond_6
    const v10, 0x7f02008c

    invoke-virtual {v3, v10}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    goto :goto_4

    .line 3275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
