.class public Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;
.super Ljava/lang/Object;
.source "ManageCalendarsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ManageCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeCalendarAction"
.end annotation


# instance fields
.field mCalendarIds:[J

.field private mCheckedCount:I

.field mIsChecked:[Z

.field mNumItems:I

.field private mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

.field mRemove:Z

.field final synthetic this$0:Lcom/htc/calendar/ManageCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/ManageCalendarsActivity;Z)V
    .locals 0
    .parameter
    .parameter "remove"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-boolean p2, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    .line 325
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 347
    const/4 v7, -0x2

    if-ne p2, v7, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v0, 0x0

    .line 352
    .local v0, changesFound:Z
    const/4 v3, 0x0

    .local v3, position:I
    :goto_1
    iget v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    if-ge v3, v7, :cond_4

    .line 354
    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    aget-boolean v7, v7, v3

    if-nez v7, :cond_2

    .line 352
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    :cond_2
    const/4 v0, 0x1

    .line 359
    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    aget-wide v1, v7, v3

    .line 360
    .local v1, id:J
    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 361
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v6, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    .line 363
    .local v4, selected:I
    iget-boolean v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    if-eqz v7, :cond_3

    .line 364
    const/4 v4, 0x0

    .line 366
    :cond_3
    const-string v7, "visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v7, "sync_events"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/htc/calendar/ManageCalendarsActivity;->access$200(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 373
    .end local v1           #id:J
    .end local v4           #selected:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz v0, :cond_0

    .line 374
    const-string v7, "ManageCalendars"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changesFound:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #calls: Lcom/htc/calendar/ManageCalendarsActivity;->startQueryCalendars()V
    invoke-static {v7}, Lcom/htc/calendar/ManageCalendarsActivity;->access$300(Lcom/htc/calendar/ManageCalendarsActivity;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    aput-boolean p3, v0, p2

    .line 333
    if-eqz p3, :cond_0

    .line 334
    iget v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    iget v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    return-void

    .line 336
    :cond_0
    iget v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    .line 381
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-boolean v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    if-eqz v0, :cond_0

    .line 384
    const v0, 0x7f080089

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 386
    const-string v3, "sync_events=1"

    .line 392
    .local v3, selection:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND account_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$200(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/calendar/ManageCalendarsActivity;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "calendar_displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 396
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 397
    const-string v0, "ManageCalendars"

    const-string v1, "Cannot get cursor for calendars"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x1

    .line 437
    :goto_1
    return v0

    .line 388
    .end local v3           #selection:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_0
    const v0, 0x7f080088

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 389
    const-string v3, "sync_events=0"

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    .line 401
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 402
    .local v8, count:I
    iput v8, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    .line 403
    new-array v7, v8, [Ljava/lang/CharSequence;

    .line 404
    .local v7, calendarNames:[Ljava/lang/CharSequence;
    new-array v0, v8, [J

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    .line 405
    new-array v0, v8, [Z

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    .line 408
    const/4 v11, 0x0

    .line 409
    .local v11, pos:I
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v11

    .line 411
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 415
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_3
    const/4 v9, 0x0

    .line 421
    const-string v0, "ManageCalendars"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    if-nez v0, :cond_5

    .line 424
    const v0, 0x104000a

    invoke-virtual {v6, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .line 433
    .local v10, dialog:Lcom/htc/widget/HtcAlertDialog;
    :goto_3
    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 434
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    .line 435
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 415
    .end local v10           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 416
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_4
    const/4 v9, 0x0

    throw v0

    .line 428
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .restart local v10       #dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_3
.end method
