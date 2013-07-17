.class public Lcom/htc/calendar/SearchResultActivity;
.super Landroid/app/Activity;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/SearchResultActivity$QueryHandler;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final TAG:Ljava/lang/String; = "SearchResultActivity"


# instance fields
.field private final URI_INSTANCES_ID:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastQueryTime:Landroid/text/format/Time;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQueryHandler:Lcom/htc/calendar/SearchResultActivity$QueryHandler;

.field private mQueryIntent:Landroid/content/Intent;

.field private mQueryString:Ljava/lang/String;

.field private mTime:Landroid/text/format/Time;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field public nResultCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    .line 62
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    .line 64
    const-string v0, "content://com.android.calendar/instances_id/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->URI_INSTANCES_ID:Landroid/net/Uri;

    .line 121
    new-instance v0, Lcom/htc/calendar/SearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/SearchResultActivity$1;-><init>(Lcom/htc/calendar/SearchResultActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/htc/calendar/SearchResultActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/SearchResultActivity$2;-><init>(Lcom/htc/calendar/SearchResultActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/SearchResultActivity;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/SearchResultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/calendar/SearchResultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->selectTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/SearchResultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->clearLastQueryTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/calendar/SearchResultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->renewCursor()V

    return-void
.end method

.method private clearLastQueryTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 344
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 345
    return-void
.end method

.method private launchQueryDetail(Landroid/content/Intent;)V
    .locals 23
    .parameter "intentQuery"

    .prologue
    .line 148
    move-object/from16 v20, p1

    .line 149
    .local v20, queryIntent:Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 151
    .local v21, queryUri:Landroid/net/Uri;
    const-string v2, "SearchResultActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v2, "SearchResultActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUri.toString(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 157
    .local v16, instanceId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/SearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->URI_INSTANCES_ID:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 162
    .local v3, uri:Landroid/net/Uri;
    const-string v2, "SearchResultActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instances URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/calendar/EventListView;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 164
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 166
    .local v19, nCount:I
    if-eqz v11, :cond_3

    .line 167
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 168
    if-eqz v19, :cond_2

    .line 169
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    const/16 v2, 0x9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 172
    .local v14, eventId:J
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 173
    .local v9, begin:J
    const/16 v2, 0x8

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 174
    .local v12, end:J
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 176
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    .line 177
    .local v8, allDay:Z
    :goto_0
    if-eqz v8, :cond_1

    .line 178
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 179
    .local v22, time:Landroid/text/format/Time;
    const-wide/16 v4, 0x0

    invoke-static {v9, v10, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 182
    const-wide/16 v4, 0x0

    invoke-static {v12, v13, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 186
    .end local v22           #time:Landroid/text/format/Time;
    :cond_1
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    const-string v2, "endTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/SearchResultActivity;->finish()V

    .line 193
    .end local v8           #allDay:Z
    .end local v9           #begin:J
    .end local v12           #end:J
    .end local v14           #eventId:J
    .end local v18           #intent:Landroid/content/Intent;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v3           #uri:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #instanceId:J
    .end local v19           #nCount:I
    :cond_3
    return-void

    .line 176
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #begin:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #end:J
    .restart local v14       #eventId:J
    .restart local v16       #instanceId:J
    .restart local v19       #nCount:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private renewCursor()V
    .locals 18

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    .line 395
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 356
    .local v16, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v16

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v16

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 358
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v14

    .line 360
    .local v14, start:J
    move-object/from16 v0, v16

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 361
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 363
    .local v9, end:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v12, path:Ljava/lang/StringBuilder;
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    const/16 v1, 0x2f

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 369
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 370
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 373
    .local v11, hideDeclined:Z
    const-string v1, "content://com.android.calendar/suggestion/search_suggest_query"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 376
    .local v4, uri:Landroid/net/Uri;
    if-eqz v11, :cond_1

    .line 377
    const-string v6, "visible=1 AND selfAttendeeStatus!=2"

    .line 388
    .local v6, selection:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mQueryHandler:Lcom/htc/calendar/SearchResultActivity$QueryHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->cancelOperation(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/SearchResultActivity;->mQueryHandler:Lcom/htc/calendar/SearchResultActivity$QueryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v5, Lcom/htc/calendar/EventListView;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/SearchResultActivity;->mQueryString:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v7, v8

    const-string v8, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v1 .. v8}, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v6           #selection:Ljava/lang/String;
    :cond_1
    const-string v6, "visible=1"

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_1
.end method

.method private selectTime()V
    .locals 4

    .prologue
    .line 399
    iget-object v2, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventListView;

    .line 400
    .local v0, current:Lcom/htc/calendar/EventListView;
    invoke-virtual {v0}, Lcom/htc/calendar/EventListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/htc/calendar/EventListView;->getDayAdapter()Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/EventByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v1

    .line 405
    .local v1, position:I
    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventListView;->setSelection(I)V

    goto :goto_0
.end method

.method private setHtcTitle()V
    .locals 6

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 464
    const-string v4, "SearchResultActivity"

    const-string v5, "res is null, on setHtcTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    const v4, 0x7f080021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, strTitle:Ljava/lang/String;
    const v4, 0x2020053

    invoke-virtual {p0, v4}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 470
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const v4, 0x2020054

    invoke-virtual {p0, v4}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 473
    .local v3, tvShadow:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    return-void
.end method

.method private showEmpty()V
    .locals 3

    .prologue
    const v2, 0x7f080021

    .line 70
    const v0, 0x2020054

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x2020053

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 75
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public getAllDay()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 6

    .prologue
    .line 445
    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventListView;

    .line 446
    .local v0, current:Lcom/htc/calendar/EventListView;
    invoke-virtual {v0}, Lcom/htc/calendar/EventListView;->getSelectedItemPosition()I

    move-result v2

    .line 447
    .local v2, position:I
    invoke-virtual {v0}, Lcom/htc/calendar/EventListView;->getDayAdapter()Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/calendar/EventByDayAdapter;->getCursorPosition(I)I

    move-result v2

    .line 448
    invoke-virtual {v0}, Lcom/htc/calendar/EventListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 449
    .local v1, cursor:Landroid/database/Cursor;
    if-ltz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 450
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 454
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 2
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iget v1, p1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iget v1, p1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    .line 432
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    .line 433
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->selectTime()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 0
    .parameter "time"
    .parameter "animate"
    .parameter "focusOn"

    .prologue
    .line 441
    return-void
.end method

.method public goToToday()V
    .locals 3

    .prologue
    .line 425
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 426
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 427
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/SearchResultActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 428
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 410
    new-instance v0, Lcom/htc/calendar/EventListView;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, eventListView:Lcom/htc/calendar/EventListView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {v0, p0}, Lcom/htc/calendar/EventListView;->setActivity(Landroid/app/Activity;)V

    .line 417
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventListView;->setBackgroundColor(I)V

    .line 420
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 206
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 210
    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryString:Ljava/lang/String;

    .line 223
    :cond_0
    new-instance v0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;

    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/SearchResultActivity$QueryHandler;-><init>(Lcom/htc/calendar/SearchResultActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryHandler:Lcom/htc/calendar/SearchResultActivity$QueryHandler;

    .line 227
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    const-string v1, "key_restore_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 234
    :goto_0
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 235
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 237
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 238
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->setHtcTitle()V

    .line 239
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 312
    sparse-switch p1, :sswitch_data_0

    .line 335
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 315
    :sswitch_0
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/EventListView;

    .line 316
    .local v8, current:Lcom/htc/calendar/EventListView;
    invoke-virtual {v8}, Lcom/htc/calendar/EventListView;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 317
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 318
    invoke-virtual {v8}, Lcom/htc/calendar/EventListView;->getSelectedItemPosition()I

    move-result v10

    .line 319
    .local v10, position:I
    invoke-virtual {v8}, Lcom/htc/calendar/EventListView;->getDayAdapter()Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/htc/calendar/EventByDayAdapter;->getCursorPosition(I)I

    move-result v10

    .line 320
    if-ltz v10, :cond_0

    .line 321
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 322
    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 323
    .local v1, begin:J
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 324
    .local v3, end:J
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 325
    .local v5, eventId:J
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJJI)V

    goto :goto_0

    .line 332
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v5           #eventId:J
    .end local v8           #current:Lcom/htc/calendar/EventListView;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #position:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->finish()V

    .line 333
    const/4 v0, 0x1

    goto :goto_1

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 244
    const-string v0, "SearchResultActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1}, Lcom/htc/calendar/SearchResultActivity;->setIntent(Landroid/content/Intent;)V

    .line 246
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mQueryString:Ljava/lang/String;

    .line 258
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 289
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SearchResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 264
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->clearLastQueryTime()V

    .line 265
    invoke-direct {p0}, Lcom/htc/calendar/SearchResultActivity;->renewCursor()V

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/calendar/SearchResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/calendar/SearchResultActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/htc/calendar/SearchResultActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 282
    return-void
.end method
