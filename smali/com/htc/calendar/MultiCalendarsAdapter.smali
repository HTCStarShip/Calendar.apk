.class public Lcom/htc/calendar/MultiCalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "MultiCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFY_CAL_WIDGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiCalendarsAdapter"

.field private static final UPDATE_ALL_CALENDAR:I = 0x1

.field private static mCheckedNum:I

.field private static mSelected:Lcom/htc/calendar/SyncedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/calendar/SyncedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackGroundHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    .line 52
    new-instance v0, Lcom/htc/calendar/SyncedHashMap;

    invoke-direct {v0}, Lcom/htc/calendar/SyncedHashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    .line 59
    invoke-static {}, Lcom/htc/calendar/CalendarCarouselActivity;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mBackGroundHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/htc/calendar/MultiCalendarsAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MultiCalendarsAdapter$1;-><init>(Lcom/htc/calendar/MultiCalendarsAdapter;)V

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/MultiCalendarsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->msg_send_to_calendar_widget()V

    return-void
.end method

.method static synthetic access$100()Lcom/htc/calendar/SyncedHashMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/MultiCalendarsAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->msg_update_all_calendars(Z)V

    return-void
.end method

.method private initListData(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 240
    sget-object v5, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v5}, Lcom/htc/calendar/SyncedHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 243
    .local v1, calendarId:J
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 244
    .local v0, calendarChecked:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 245
    sget-object v5, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget v5, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_0

    .end local v0           #calendarChecked:Z
    :cond_0
    move v0, v4

    .line 243
    goto :goto_1

    .line 248
    .restart local v0       #calendarChecked:Z
    :cond_1
    sget-object v5, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 252
    .end local v0           #calendarChecked:Z
    .end local v1           #calendarId:J
    :cond_2
    return-void
.end method

.method private msg_send_to_calendar_widget()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.calendars.picker.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private msg_update_all_calendars(Z)V
    .locals 13
    .parameter "closeDialog"

    .prologue
    const/4 v10, 0x1

    .line 86
    sget-object v9, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v9}, Lcom/htc/calendar/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 87
    .local v4, iter:Ljava/util/Iterator;
    const-string v9, "MultiCalendarsAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "all calendars, mSelected size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v12}, Lcom/htc/calendar/SyncedHashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 92
    .local v3, id:Ljava/lang/Long;
    sget-object v9, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v9, v3}, Lcom/htc/calendar/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 93
    .local v1, checked:Z
    sget-object v9, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v9, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 94
    .local v8, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 95
    iget-object v11, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    const-string v12, "visible"

    if-eqz v1, :cond_0

    move v9, v10

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    const-string v11, "sync_events"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 99
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 103
    .end local v1           #checked:Z
    .end local v3           #id:Ljava/lang/Long;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "com.android.calendar"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_2
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 117
    .local v5, msgNotifyCalWidget:Landroid/os/Message;
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    if-eqz p1, :cond_2

    .line 119
    iget-object v9, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 120
    .local v7, refActivity:Landroid/app/Activity;
    if-nez v7, :cond_3

    .line 130
    .end local v7           #refActivity:Landroid/app/Activity;
    :cond_2
    :goto_3
    return-void

    .line 110
    .end local v5           #msgNotifyCalWidget:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 111
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "MultiCalendarsAdapter"

    const-string v10, "Ignoring unexpected remote exception"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 112
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 113
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v9, "MultiCalendarsAdapter"

    const-string v10, "Ignoring unexpected exception"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 124
    .end local v2           #e:Landroid/content/OperationApplicationException;
    .restart local v5       #msgNotifyCalWidget:Landroid/os/Message;
    .restart local v7       #refActivity:Landroid/app/Activity;
    :cond_3
    instance-of v9, v7, Lcom/htc/calendar/ManageCalendarsActivity;

    if-eqz v9, :cond_4

    .line 125
    check-cast v7, Lcom/htc/calendar/ManageCalendarsActivity;

    .end local v7           #refActivity:Landroid/app/Activity;
    invoke-virtual {v7}, Lcom/htc/calendar/ManageCalendarsActivity;->dismissProgressDialog()V

    goto :goto_3

    .line 126
    .restart local v7       #refActivity:Landroid/app/Activity;
    :cond_4
    instance-of v9, v7, Lcom/htc/calendar/CalendarCarouselActivity;

    if-eqz v9, :cond_2

    .line 127
    check-cast v7, Lcom/htc/calendar/CalendarCarouselActivity;

    .end local v7           #refActivity:Landroid/app/Activity;
    invoke-virtual {v7}, Lcom/htc/calendar/CalendarCarouselActivity;->dismissProgressDialog()V

    goto :goto_3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 175
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 176
    .local v4, calendarId:J
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, calendarName:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 178
    .local v3, calendarColor:I
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, syncAccountType:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->getRowInfo(J)Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    move-result-object v12

    .line 185
    .local v12, rowInfo:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    const v15, 0x7f0d002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItemColorBar;

    .line 186
    .local v8, colorBar:Lcom/htc/widget/HtcListItemColorBar;
    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v14}, Lcom/htc/util/calendar/tools/IconTools;->getTypeIconByAccountType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 189
    .local v11, mAccountIcon:Landroid/graphics/drawable/Drawable;
    const v15, 0x7f0d00c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 190
    .local v1, appIcon:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v14}, Lcom/htc/util/calendar/tools/IconTools;->getAppNameByAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, appName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 194
    move-object v2, v6

    .line 195
    const/4 v15, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    :cond_0
    const v15, 0x7f0d002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineText;

    .line 198
    .local v9, displayName:Lcom/htc/widget/HtcListItem2LineText;
    const v15, 0x2030012

    invoke-virtual {v9, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 199
    const v15, 0x2030026

    invoke-virtual {v9, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 200
    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080064

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 203
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 210
    :goto_0
    sget-object v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/calendar/SyncedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 211
    sget-object v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/calendar/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 223
    .local v7, checked:Z
    :goto_1
    const v15, 0x7f0d00c8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemCheckBox;

    .line 224
    .local v10, iv:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 225
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 226
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    .line 230
    .local v13, ss:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v13, v4, v5}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->setId(J)V

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    return-void

    .line 205
    .end local v7           #checked:Z
    .end local v10           #iv:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v13           #ss:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 213
    :cond_2
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v7, 0x1

    .line 214
    .restart local v7       #checked:Z
    :goto_2
    if-eqz v7, :cond_4

    .line 215
    sget-object v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v15 .. v17}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_1

    .line 213
    .end local v7           #checked:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 218
    .restart local v7       #checked:Z
    :cond_4
    sget-object v15, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v15 .. v17}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 314
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    .line 315
    .local v0, tmp_cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/calendar/MultiCalendarsAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/MultiCalendarsAdapter$2;-><init>(Lcom/htc/calendar/MultiCalendarsAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    .end local v0           #tmp_cursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    .line 325
    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->cleanAll()V

    .line 327
    if-eqz p1, :cond_2

    .line 328
    sget-object v2, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    monitor-enter v2

    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->initListData(Landroid/database/Cursor;)V

    .line 330
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 333
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mRowIDColumn:I

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mDataValid:Z

    .line 336
    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 338
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mRowIDColumn:I

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mDataValid:Z

    .line 341
    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public checkAllCalendars(Z)V
    .locals 4
    .parameter "checkAll"

    .prologue
    .line 279
    sget-object v2, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v2}, Lcom/htc/calendar/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 282
    .local v0, id:Ljava/lang/Long;
    sget-object v3, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    if-eqz p1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 284
    .end local v0           #id:Ljava/lang/Long;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCount()I

    move-result v2

    :goto_2
    sput v2, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    .line 285
    return-void

    .line 284
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public cleanAll()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "MultiCalendarsAdapter"

    const-string v1, "cleanAll in Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v0}, Lcom/htc/calendar/SyncedHashMap;->clear()V

    .line 355
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    .line 356
    return-void
.end method

.method public getCheckedCalendarCount()I
    .locals 1

    .prologue
    .line 346
    sget v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    return v0
.end method

.method public getSelectedCalendarHashMap()Lcom/htc/calendar/SyncedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/calendar/SyncedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v0}, Lcom/htc/calendar/SyncedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/SyncedHashMap;

    return-object v0
.end method

.method public isAllCalendarsChecked()Z
    .locals 2

    .prologue
    .line 295
    sget v0, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    const-string v2, "item"

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, htcItemTag:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    return-object v1
.end method

.method public saveAllCalendars(Z)V
    .locals 5
    .parameter "bNeedCloseProgressDialog"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    iget-object v4, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 290
    goto :goto_0
.end method

.method public setIntoCalendarDB(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v4}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->getId()J

    move-result-wide v0

    .line 257
    .local v0, calendarId:J
    sget-object v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/calendar/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 258
    .local v2, checked:Z
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 260
    :goto_0
    sget-object v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/calendar/SyncedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    sget-object v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/calendar/SyncedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    if-eqz v2, :cond_2

    .line 265
    sget-object v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    .line 272
    :goto_1
    const v4, 0x7f0d00c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 273
    .local v3, chkBox:Landroid/widget/CheckBox;
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 274
    return v2

    .line 258
    .end local v3           #chkBox:Landroid/widget/CheckBox;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 268
    :cond_2
    sget-object v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mSelected:Lcom/htc/calendar/SyncedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/htc/calendar/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/calendar/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_1
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method
