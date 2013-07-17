.class public Lcom/htc/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_INDEX_END:I = 0x2

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_START:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 56
    .local v15, intent:Landroid/content/Intent;
    if-eqz v15, :cond_3

    .line 57
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 58
    .local v18, uri:Landroid/net/Uri;
    if-eqz v18, :cond_2

    .line 59
    const-string v2, "eid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, eid:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync_data3 LIKE \"%eid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 68
    .local v13, eventCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 70
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 72
    .local v14, eventId:I
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 73
    .local v16, startMillis:J
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 76
    .local v11, endMillis:J
    const/4 v8, 0x0

    .line 77
    .local v8, attendeeStatus:I
    const-string v2, "RESPOND"

    const-string v3, "action"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :try_start_0
    const-string v2, "rst"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v14

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 98
    .local v9, calendarUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    .end local v15           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    const-string v2, "endTime"

    invoke-virtual {v15, v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    if-eqz v8, :cond_1

    .line 102
    const-string v2, "attendeeStatus"

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 119
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #attendeeStatus:I
    .end local v9           #calendarUri:Landroid/net/Uri;
    .end local v10           #eid:Ljava/lang/String;
    .end local v11           #endMillis:J
    .end local v13           #eventCursor:Landroid/database/Cursor;
    .end local v14           #eventId:I
    .end local v16           #startMillis:J
    .end local v18           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 81
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v8       #attendeeStatus:I
    .restart local v10       #eid:Ljava/lang/String;
    .restart local v11       #endMillis:J
    .restart local v13       #eventCursor:Landroid/database/Cursor;
    .restart local v14       #eventId:I
    .restart local v16       #startMillis:J
    .restart local v18       #uri:Landroid/net/Uri;
    :pswitch_0
    const/4 v8, 0x1

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v8, 0x2

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v8, 0x4

    goto :goto_0

    .line 113
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #attendeeStatus:I
    .end local v10           #eid:Ljava/lang/String;
    .end local v11           #endMillis:J
    .end local v13           #eventCursor:Landroid/database/Cursor;
    .end local v14           #eventId:I
    .end local v16           #startMillis:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .end local v18           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_1

    .line 114
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 90
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v8       #attendeeStatus:I
    .restart local v10       #eid:Ljava/lang/String;
    .restart local v11       #endMillis:J
    .restart local v13       #eventCursor:Landroid/database/Cursor;
    .restart local v14       #eventId:I
    .restart local v16       #startMillis:J
    :catch_1
    move-exception v2

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
