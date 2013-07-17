.class public Lcom/htc/calendar/DismissAllAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAllAlarmsService.java"


# static fields
.field private static final COLUMN_INDEX_EVENTID:I = 0x2

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_STATE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DismissAllAlarmsService"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "DismissAllAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 18
    .parameter "intent"

    .prologue
    .line 69
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "state=1"

    .line 71
    .local v4, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 73
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 74
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE = fired :: count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 78
    const-wide/16 v8, -0x1

    .line 79
    .local v8, calendarAlertID:J
    const-wide/16 v11, -0x1

    .line 81
    .local v11, calendarEventID:J
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 83
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 84
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarAlertID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calendarEventID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 86
    .local v10, calendarAlertUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 88
    .local v7, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarAlertUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/htc/calendar/HtcUtils;->removeLockscreemReminder(Landroid/content/Context;J)V

    goto :goto_0

    .line 94
    .end local v7           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #calendarAlertUri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    .end local v8           #calendarAlertID:J
    .end local v11           #calendarEventID:J
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_1
    const-string v4, "minutes=0"

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    sget-object v3, Lcom/htc/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 122
    if-eqz v14, :cond_5

    .line 123
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE = 0 ::  = fired :: count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    const-wide/16 v8, -0x1

    .line 129
    .restart local v8       #calendarAlertID:J
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 131
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarAlertID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 133
    .restart local v10       #calendarAlertUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 135
    .restart local v7       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v3, "DismissAllAlarmsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarAlertUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    .end local v7           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #calendarAlertUri:Landroid/net/Uri;
    .restart local v11       #calendarEventID:J
    :catch_0
    move-exception v15

    .line 107
    .local v15, e:Landroid/os/RemoteException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected remote exception"

    invoke-static {v3, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 108
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 109
    .local v15, e:Landroid/content/OperationApplicationException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected exception"

    invoke-static {v3, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 110
    .end local v15           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v17

    .line 111
    .local v17, sde:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected SQLiteDiskIOException"

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 115
    .end local v8           #calendarAlertID:J
    .end local v11           #calendarEventID:J
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17           #sde:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_2
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "STATE = fired cursor is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 140
    .restart local v8       #calendarAlertID:J
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 164
    .end local v8           #calendarAlertID:J
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_3
    new-instance v13, Landroid/content/Intent;

    const-string v3, "Intent.action.remove.pendings"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v13, clearIntent:Landroid/content/Intent;
    const-string v3, "PKG_NAME"

    const-string v5, "com.htc.calendar"

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/calendar/DismissAllAlarmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/DismissAllAlarmsService;->stopSelf()V

    .line 171
    return-void

    .line 152
    .end local v13           #clearIntent:Landroid/content/Intent;
    .restart local v8       #calendarAlertID:J
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_3
    move-exception v15

    .line 153
    .local v15, e:Landroid/os/RemoteException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected remote exception"

    invoke-static {v3, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 154
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v15

    .line 155
    .local v15, e:Landroid/content/OperationApplicationException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected exception"

    invoke-static {v3, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 156
    .end local v15           #e:Landroid/content/OperationApplicationException;
    :catch_5
    move-exception v17

    .line 157
    .restart local v17       #sde:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "Ignoring unexpected SQLiteDiskIOException"

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 161
    .end local v8           #calendarAlertID:J
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17           #sde:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_5
    const-string v3, "DismissAllAlarmsService"

    const-string v5, "STATE = 0 cursor is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
