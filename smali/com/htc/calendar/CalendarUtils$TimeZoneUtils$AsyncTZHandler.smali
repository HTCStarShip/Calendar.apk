.class Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    .line 90
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected doQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 113
    const/4 v10, 0x0

    .line 115
    .local v10, writePrefs:Z
    :try_start_0
    const-string v11, "key"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 116
    .local v5, keyColumn:I
    const-string v11, "value"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 117
    .local v9, valueColumn:I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 118
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, value:Ljava/lang/String;
    const-string v11, "timezoneType"

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 121
    const-string v11, "auto"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v7, 0x1

    .line 123
    .local v7, useHomeTZ:Z
    :goto_1
    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    if-eq v7, v11, :cond_0

    .line 124
    const/4 v10, 0x1

    .line 125
    invoke-static {v7}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    goto :goto_0

    .line 159
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keyColumn:I
    .end local v7           #useHomeTZ:Z
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #valueColumn:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 121
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #keyColumn:I
    .restart local v8       #value:Ljava/lang/String;
    .restart local v9       #valueColumn:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 127
    :cond_2
    :try_start_1
    const-string v11, "timezoneInstancesPrevious"

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 129
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 130
    const/4 v10, 0x1

    .line 131
    invoke-static {v8}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 138
    move-object/from16 v0, p2

    check-cast v0, Landroid/content/Context;

    move-object v11, v0

    iget-object v13, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    #getter for: Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$300(Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/htc/calendar/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 140
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v11, "preferences_home_tz_enabled"

    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v13

    invoke-static {v6, v11, v13}, Lcom/htc/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 141
    const-string v11, "preferences_home_tz"

    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v11, v13}, Lcom/htc/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$402(Z)Z

    .line 145
    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .local v1, callback:Ljava/lang/Runnable;
    if-eqz v1, :cond_5

    .line 150
    :try_start_2
    new-instance v13, Landroid/os/Handler;

    move-object/from16 v0, p2

    check-cast v0, Landroid/content/Context;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v13, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v11, "CalendarUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", callback : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", cookie : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 158
    .end local v1           #callback:Ljava/lang/Runnable;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 159
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 162
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 95
    move v2, p1

    .line 96
    .local v2, t:I
    move-object v0, p2

    .line 97
    .local v0, c:Ljava/lang/Object;
    move-object v1, p3

    .line 99
    .local v1, cr:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;-><init>(Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;ILjava/lang/Object;Landroid/database/Cursor;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method
